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
  const expectedFileName = "uploadFormTTL.csv"; // Change to your specific filename
  return fileName === expectedFileName;
};

const uploadQueue = new Bull("upload");
uploadQueue.process(async (job) => {
  await uploadCSV(job.data.filepath);
});

const uploadCSV = async (filePath: fs.PathLike, res?: any) => {
  const records: {
    npwp: string | undefined;
    nama: string | undefined;
    nik: string | undefined;
    alamat: string | undefined;
    nomorHp: string | undefined;
    email: string | undefined;
    tmpLahir: string | undefined;
    tglLahir: string | undefined;
    kpp: string | undefined;
    kanwil: string | undefined;
    nipId: string | undefined;
    seksi?: string;
    status?: string;
    noKep?: number;
    stsValid?: string;
    thnLaporTerakhir?: number;
    jmlLapor10Thn?: number;
    tglBayarTerakhir?: string;
    jmlBayar10thn?: number;
    thnPhTerakhir?: number;
    jmlPh10Thn?: number;
    saldoUtang?: number;
    tglUpdateTerakhir?: string;
    npwpSama?: string;
    namaSama?: string;
    nikSama?: string;
    alamatSama?: string;
    nomorHpSama?: string;
    emailSama?: string;
    tmpLahirSama?: string;
    tglLahirSama?: string;
    kppSama?: string;
    kanwilSama?: string;
    arSama?: string;
    seksiSama?: string;
    statusSama?: string;
    noKepSama?: string;
    stsValidSama?: string;
    thnLaporTerakhirSama?: number;
    jmlLapor10ThnSama?: number;
    tglBayarTerakhirSama?: string;
    jmlBayar10ThnSama?: number;
    thnPhTerakhirSama?: number;
    jmlPh10ThnSama?: number;
    saldoUtangSama?: number;
    tglUpdateTerakhirSama?: string;
    skorJwsNama?: number;
    skorJwsTempat?: number;
    skorEdsNama?: number;
    skorEdsTempat?: number;
    tglBentukData?: string;
  }[] = [];
  const chunkSize = 1;
  const stream = fs.createReadStream(filePath).pipe(csvParser());

  stream
    .on("data", async (data) => {
      const nipId = await getUserByNip(data?.nipId);
      try {
        records.push({
          npwp: data.npwp,
          nama: data.nama,
          nik: data.nik,
          alamat: data.alamat,
          nomorHp: data.nomorHp,
          email: data.email,
          tmpLahir: data.tmpLahir,
          tglLahir: data.tglLahir,
          kpp: data.kpp,
          kanwil: data.kanwil,
          nipId: nipId?.id,
          seksi: data.seksi,
          status: data.status,
          noKep: Number(data.noKep),
          stsValid: data.stsValid,
          thnLaporTerakhir: Number(data.thnLaporTerakhir),
          jmlLapor10Thn: Number(data.jmlLapor10Thn),
          tglBayarTerakhir: data.tglBayarTerakhir,
          jmlBayar10thn: Number(data.jmlBayar10thn),
          thnPhTerakhir: Number(data.thnPhTerakhir),
          jmlPh10Thn: Number(data.jmlPh10Thn),
          saldoUtang: Number(data.saldoUtang),
          tglUpdateTerakhir: data.tglUpdateTerakhir,
          npwpSama: data.npwpSama,
          namaSama: data.namaSama,
          nikSama: data.nikSama,
          alamatSama: data.alamatSama,
          nomorHpSama: data.nomorHpSama,
          emailSama: data.emailSama,
          tmpLahirSama: data.tmpLahirSama,
          tglLahirSama: data.tglLahirSama,
          kppSama: data.kppSama,
          kanwilSama: data.kanwilSama,
          arSama: data.arSama,
          seksiSama: data.seksiSama,
          statusSama: data.statusSama,
          noKepSama: data.noKepSama,
          stsValidSama: data.stsValidSama,
          thnLaporTerakhirSama: Number(data.thnLaporTerakhirSama),
          jmlLapor10ThnSama: Number(data.jmlLapor10ThnSama),
          tglBayarTerakhirSama: data.tglBayarTerakhirSama,
          jmlBayar10ThnSama: Number(data.jmlBayar10ThnSama),
          thnPhTerakhirSama: Number(data.thnLaporTerakhirSama),
          jmlPh10ThnSama: Number(data.jmlPh10ThnSama),
          saldoUtangSama: Number(data.saldoUtangSama),
          tglUpdateTerakhirSama: data.tglUpdateTerakhirSama,
          skorJwsNama: Number(data.skorJwsNama),
          skorJwsTempat: Number(data.skorJwsTempat),
          skorEdsNama: Number(data.skorEdsNama),
          skorEdsTempat: Number(data.skorEdsTempat),
          tglBentukData: data.tglBentukData,
        });
      } catch (error) {
        console.log(error);
      }

      //if records reach the chunk size, enqueue a job
      if (records.length >= chunkSize) {
        await prisma.pembenahanWpNamaTtlSama.createMany({
          data: records.splice(0, chunkSize),
          skipDuplicates: true,
        });
      }
    })
    .on("end", async () => {
      //Enqueue remaining records after the stream ends
      if (records.length > 0) {
        await prisma.pembenahanWpNamaTtlSama.createMany({
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
            message: "Nama File Harus uploadFormTTL.csv",
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
