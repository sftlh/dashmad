import { NextApiRequest, NextApiResponse } from "next";
import * as formidable from "formidable";
import Bull from "bull";
import csvParser from "csv-parser";
import prisma from "@/lib/prisma"; // Adjust based on your setup
import fs from "fs";
import path from "path";
import { getUserByNip } from "@/lib/getDataByNip";

// Disable Next.js body parsing for file uploads
export const config = {
  api: {
    bodyParser: false,
  },
};

export const isValidCsvFileName = (fileName: string): boolean => {
  const expectedFileName = "uploadFormCPBE.csv"; // Change to your specific filename
  return fileName === expectedFileName;
};

const uploadQueue = new Bull("upload");
uploadQueue.process(async (job) => {
  await uploadCSV(job.data.filepath);
});

const uploadCSV = async (filePath: fs.PathLike, res?: any) => {
  const records: {
    npwpCabang: string | undefined;
    namaCabang: string | undefined;
    alamatCabang: string | undefined;
    nomorHpCabang: string | undefined;
    emailCabang: string | undefined;
    kppCabang: string | undefined;
    kanwilCabang: string | undefined;
    seksiCabang: string | undefined;
    noKepCabang: number;
    validitasCabang: string | undefined;
    statusCabang: string | undefined;
    npwpPusat: string | undefined;
    namaPusat: string | undefined;
    kppPusat: string | undefined;
    kanwilPusat: string | undefined;
    arPusat: string | undefined;
    seksiPusat: string | undefined;
    kepPusat: number;
    validitasPusat: string | undefined;
    statusPusat: string | undefined;
    namaBersihCabang: string | undefined;
    namaBersihPusat: string | undefined;
    nikBersihPusat: string | undefined;
    nikBersihCabang: string | undefined;
    tglBentukData: string | undefined;
    nipId: string | undefined;
  }[] = [];
  const chunkSize = 1;
  const stream = fs.createReadStream(filePath).pipe(csvParser());

  stream
    .on("data", async (data) => {
      const nipId = await getUserByNip(data?.nipId)
      try {
        records.push({
          npwpCabang: data.npwpCabang,
          namaCabang: data.namaCabang,
          alamatCabang: data.alamatCabang,
          nomorHpCabang: data.nomorHpCabang,
          emailCabang: data.emailCabang,
          kppCabang: data.kppCabang,
          kanwilCabang: data.kanwilCabang,
          seksiCabang: data.seksiCabang,
          noKepCabang: Number(data.noKepCabang),
          validitasCabang: data.validitasCabang,
          statusCabang: data.statusCabang,
          npwpPusat: data.npwpPusat,
          namaPusat: data.namaPusat,
          kppPusat: data.kppPusat,
          kanwilPusat: data.kanwilPusat,
          arPusat: data.arPusat,
          seksiPusat: data.seksiPusat,
          kepPusat: Number(data.kepPusat),
          validitasPusat: data.validitasPusat,
          statusPusat: data.statusPusat,
          namaBersihCabang: data.namaBersihCabang,
          namaBersihPusat: data.namaBersihPusat,
          nikBersihPusat: data.nikBersihPusat,
          nikBersihCabang: data.nikBersihCabang,
          tglBentukData: data.tglBentukData,
          nipId: nipId?.id,
        });
      } catch (error) {
        console.log(error);
      }

      //if records reach the chunk size, enqueue a job
      if (records.length >= chunkSize) {
        await prisma.pembenahanCabangPusatBedahEntitas.createMany({
          data: records.splice(0, chunkSize),
          skipDuplicates: true,
        });
      }
    })
    .on("end", async () => {
      //Enqueue remaining records after the stream ends
      if (records.length > 0) {
        await prisma.pembenahanCabangPusatBedahEntitas.createMany({
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
          return res.status(400).json({ message: "Uploaded file is undefined" });
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
            message: "Nama File Harus uploadFormCPBE.csv",
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
