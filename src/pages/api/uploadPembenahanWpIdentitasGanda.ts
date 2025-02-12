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
  const expectedFileName = "uploadFormIdentitasGanda.csv"; // Change to your specific filename
  return fileName === expectedFileName;
};

const uploadQueue = new Bull("upload");
uploadQueue.process(async (job) => {
  await uploadCSV(job.data.filepath);
});

const uploadCSV = async (filePath: fs.PathLike, res?: any) => {
  const records: {
    npwp1?: string;
    namaWp?: string;
    jnsWp?: string;
    stsWp?: string;
    pjNpwp?: string;
    pjNama?: string;
    pjNoId?: string;
    kpp?: string;
    kanwil?: string;
    nip?: string;
    seksi?: string;
    noAkta?: number;
    aktaTgl?: string;
    aktaTmp?: string;
    notarisInstansi?: string;
    tglDaftar?: string;
    kdWil?: string;
    jalan?: string;
    telp?: string;
    hp?: string;
    email?: string;
    kdKlu?: string;
    thnLaporTerakhir?: number;
    jmlLapor10Thn?: number;
    tglBayarTerakhir?: string;
    jmlBayar10Thn?: number;
    thnPhTerakhir?: number;
    jmlPh10Thn?: number;
    saldoPiutang?: number;
    tglUpdateTerakhir?: string;
    npwp2?: string;
    namaWp2?: string;
    jnsWp2?: string;
    stsWpKe2?: string;
    pjNpwpKe2?: string;
    pjNamaKe2?: string;
    pjNoIdKe2?: string;
    kppKe2?: string;
    kanwilKe2?: string;
    arKe2?: string;
    seksiKe2?: string;
    noAktaKe2?: string;
    aktaTglKe2?: string;
    aktaTmpKe2?: string;
    notarisInstansiKe2?: string;
    tglDaftarKe2?: string;
    kdWilayahKe2?: string;
    jalanKe2?: string;
    telpKe2?: string;
    hpKe2?: string;
    emailKe2?: string;
    kdKluKe2?: string;
    thlLaporTerakhirKe2?: number;
    jmlLapor10ThnKe2?: number;
    tglBayarTerakhirKe2?: string;
    jmlBayar10ThnKe2?: number;
    thnPhTerakhirKe2?: number;
    jmlPhThnKe2?: number;
    saldoPiutangKe2?: number;
    tglUpdateTerakhirKe2?: string;
    skorNama?: number;
    tglBentukData?: string;
  }[] = [];
  const chunkSize = 1;
  const stream = fs.createReadStream(filePath).pipe(csvParser());

  stream
    .on("data", async (data) => {
      try {
        records.push({
          npwp1: data.npwp1,
          namaWp: data.namaWp,
          jnsWp: data.jnsWp,
          stsWp: data.stsWp,
          pjNpwp: data.pjNpwp,
          pjNama: data.pjNama,
          pjNoId: data.pjNoId,
          kpp: data.kpp,
          kanwil: data.kanwil,
          nip: data.nip,
          seksi: data.seksi,
          noAkta: Number(data.noAkta),
          aktaTgl: data.aktaTgl,
          aktaTmp: data.aktaTmp,
          notarisInstansi: data.notarisInstansi,
          tglDaftar: data.tglDaftar,
          kdWil: data.kdWil,
          jalan: data.jalan,
          telp: data.telp,
          hp: data.hp,
          email: data.email,
          kdKlu: data.kdKlu,
          thnLaporTerakhir: Number(data.thnLaporTerakhir),
          jmlLapor10Thn: Number(data.jmlLapor10Thn),
          tglBayarTerakhir: data.tglBayarTerakhir,
          jmlBayar10Thn: Number(data.jmlBayar10Thn),
          thnPhTerakhir: Number(data.thnPhTerakhir),
          jmlPh10Thn: Number(data.jmlPh10Thn),
          saldoPiutang: Number(data.saldoPiutang),
          tglUpdateTerakhir: data.tglUpdateTerakhir,
          npwp2: data.npwp2,
          namaWp2: data.namaWp2,
          jnsWp2: data.jnsWp2,
          stsWpKe2: data.stsWpKe2,
          pjNpwpKe2: data.pjNpwpKe2,
          pjNamaKe2: data.pjNamaKe2,
          pjNoIdKe2: data.pjNoIdKe2,
          kppKe2: data.kppKe2,
          kanwilKe2: data.kanwilKe2,
          arKe2: data.arKe2,
          seksiKe2: data.seksiKe2,
          noAktaKe2: data.noAktaKe2,
          aktaTglKe2: data.aktaTglKe2,
          aktaTmpKe2: data.aktaTmpKe2,
          notarisInstansiKe2: data.notarisInstansiKe2,
          tglDaftarKe2: data.tglDaftarKe2,
          kdWilayahKe2: data.kdWilayahKe2,
          jalanKe2: data.jalanKe2,
          telpKe2: data.telpKe2,
          hpKe2: data.hpKe2,
          emailKe2: data.emailKe2,
          kdKluKe2: data.kdKluKe2,
          thlLaporTerakhirKe2: Number(data.thlLaporTerakhirKe2),
          jmlLapor10ThnKe2: Number(data.jmlLapor10ThnKe2),
          tglBayarTerakhirKe2: data.tglBayarTerakhirKe2,
          jmlBayar10ThnKe2: Number(data.jmlBayar10ThnKe2),
          thnPhTerakhirKe2: Number(data.thnPhTerakhirKe2),
          jmlPhThnKe2: Number(data.jmlPhThnKe2),
          saldoPiutangKe2: Number(data.saldoPiutangKe2),
          tglUpdateTerakhirKe2: data.tglUpdateTerakhirKe2,
          skorNama: Number(data.skorNama),
          tglBentukData: data.tglBentukData,
        });
      } catch (error) {
        console.log(error);
      }

      //if records reach the chunk size, enqueue a job
      if (records.length >= chunkSize) {
        await prisma.pembenahanWpIdentitasGanda.createMany({
          data: records.splice(0, chunkSize),
          skipDuplicates: true,
        });
      }
    })
    .on("end", async () => {
      //Enqueue remaining records after the stream ends
      if (records.length > 0) {
        await prisma.pembenahanWpIdentitasGanda.createMany({
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
            message: "Nama File Harus uploadFormIdentitasGanda.csv",
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
