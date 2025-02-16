import { NextApiRequest, NextApiResponse } from "next";
import * as formidable from "formidable";
import Bull from "bull";
import csvParser from "csv-parser";
import prisma from "@/lib/prisma"; // Adjust based on your setup
import fs from "fs";
import path from "path";

// Disable Next.js body parsing for file uploads
export const config = {
  api: {
    bodyParser: false,
  },
};

export const isValidCsvFileName = (fileName: string): boolean => {
  const expectedFileName = "uploadFormNikGanda.csv"; // Change to your specific filename
  return fileName === expectedFileName;
};

const uploadQueue = new Bull("upload");
uploadQueue.process(async (job) => {
  await uploadCSV(job.data.filepath);
});

const uploadCSV = async (filePath: fs.PathLike, res?: any) => {
  const records: {
    no?: number;
    npwp1Id?: string;
    nama1?: string;
    nik1?: string;
    kpp1?: string;
    kanwil1?: string;
    statusValid1?: string;
    statusWp1?: string;
    updatedBy1?: string;
    noKep1?: string;
    penerimanFasilitasPen1?: string;
    dataLapor1?: number;
    dataBayar1?: number;
    dataTunggakan1?: number;
    jumlahData1?: string;
    dataTransaksi1?: string;
    tempatLahir1?: string;
    tanggalLahir1?: string;
    npwp2?: string;
    nama2?: string;
    nik2?: string;
    kpp2?: string;
    kanwil2?: string;
    statusValid2?: string;
    statusWp2?: string;
    updateBy2?: string;
    noKep2?: string;
    penerimaFasilitasPen2?: string;
    dataLapor2?: number;
    dataBayar2?: number;
    dataTunggakan2?: number;
    jumlahData2?: number;
    dataTransaksi2?: string;
    tempatLahir2?: string;
    tanggalLahir2?: string;
    kppTerdaftar1dan2?: string;
    hasilCekNikDukcapil?: string;
    namaDukcapil?: string;
    persenNamaDukcapil?: number;
    edsSkor?: number;
    jswSkor?: number;
    cosSkor?: number;
    diceSkor?: number;
  }[] = [];
  const chunkSize = 1;
  const stream = fs.createReadStream(filePath).pipe(csvParser());

  stream
    .on("data", async (data) => {
      try {
        records.push({
          no: Number(data.no),
          npwp1Id: data.npwp1Id,
          nama1: data.nama1,
          nik1: data.nik1,
          kpp1: data.kpp1,
          kanwil1: data.kanwil1,
          statusValid1: data.statusValid1,
          statusWp1: data.statusWp1,
          updatedBy1: data.updatedBy1,
          noKep1: data.noKep1,
          penerimanFasilitasPen1: data.penerimanFasilitasPen1,
          dataLapor1: Number(data.dataLapor1),
          dataBayar1: Number(data.dataBayar1),
          dataTunggakan1: Number(data.dataTunggakan1),
          jumlahData1: data.jumlahData1,
          dataTransaksi1: data.dataTransaksi1,
          tempatLahir1: data.tempatLahir1,
          tanggalLahir1: data.tanggalLahir1,
          npwp2: data.npwp2,
          nama2: data.nama2,
          nik2: data.nik2,
          kpp2: data.kpp2,
          kanwil2: data.kanwil2,
          statusValid2: data.statusValid2,
          statusWp2: data.statusWp2,
          updateBy2: data.updateBy2,
          noKep2: data.noKep2,
          penerimaFasilitasPen2: data.penerimaFasilitasPen2,
          dataLapor2: Number(data.dataLapor2),
          dataBayar2: Number(data.dataBayar2),
          dataTunggakan2: Number(data.dataTunggakan2),
          jumlahData2: Number(data.jumlahData2),
          dataTransaksi2: data.dataTransaksi2,
          tempatLahir2: data.tempatLahir2,
          tanggalLahir2: data.tanggalLahir2,
          kppTerdaftar1dan2: data.kppTerdaftar1dan2,
          hasilCekNikDukcapil: data.hasilCekNikDukcapil,
          namaDukcapil: data.namaDukcapil,
          persenNamaDukcapil: Number(data.persenNamaDukcapil),
          edsSkor: Number(data.edsSkor),
          jswSkor: Number(data.jswSkor),
          cosSkor: Number(data.cosSkor),
          diceSkor: Number(data.diceSkor),
        });
      } catch (error) {
        console.log(error);
      }

      //if records reach the chunk size, enqueue a job
      if (records.length >= chunkSize) {
        await prisma.pembenahanWpNikGanda.createMany({
          data: records.splice(0, chunkSize),
          skipDuplicates: true,
        });
      }
    })
    .on("end", async () => {
      //Enqueue remaining records after the stream ends
      if (records.length > 0) {
        await prisma.pembenahanWpNikGanda.createMany({
          data: records,
          skipDuplicates: true,
        });
      }
      res.status(200).json({ message: "Upload Successful" });
    })
    .on("error", (error) => {
      console.log(error);
      res.status(500).json({ error: "Error reading CSV File" });
    });
};

const handler = async (req: NextApiRequest, res: NextApiResponse) => {
  if (req.method === "POST") {
    try {
      const form = new formidable.IncomingForm();

      // Parse the incoming request
      form.parse(req, async (err, fields, files) => {
        if (err) {
          return res.status(500).json({ error: "File upload failed." });
        }

        console.log("Isi File", files);
        // Access the uploaded file
        const uploadedFile = files.file;

        if (!uploadedFile) {
          return res
            .status(400)
            .json({ message: "Uploaded file is undefined" });
        }

        const originalName = uploadedFile[0]?.originalFilename;

        // Check if the file exists
        if (
          !uploadedFile ||
          (Array.isArray(uploadedFile) && uploadedFile.length === 0)
        ) {
          return res.status(400).json({ error: "No file uploaded." });
        }

        // Get the path of the first uploaded file
        const filePath = Array.isArray(uploadedFile)
          ? uploadedFile[0].filepath
          : uploadedFile;

        console.log("Nama FilePath", path.basename(filePath));

        if (!isValidCsvFileName(originalName as string)) {
          return res.status(401).json({
            message: "Nama File Harus uploadFormNikGanda.csv",
          });
        }

        uploadQueue.add({ filePath });
        // Read the CSV file
        await uploadCSV(filePath, res);
        res.status(200).json({ message: "Upload Successful" });
      });
    } catch (error) {
      console.log(error);
      res.status(500).json({ error: "Internal Server Error" });
    }
  } else {
    res.setHeader("Allow", ["POST"]);
    res.status(405).end(`Method ${req.method} Not Allowed`);
  }
};

export default handler;
