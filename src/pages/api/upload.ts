import { NextApiRequest, NextApiResponse } from "next";
import * as formidable from "formidable";
import Bull from "bull";
import csvParser from "csv-parser";
import prisma from "@/lib/prisma"; // Adjust based on your setup
import fs from "fs";
import { getUserByNip } from "@/lib/getDataByNip";

// Disable Next.js body parsing for file uploads
export const config = {
  api: {
    bodyParser: false,
  },
};

const convertToTimestamp = (dateString: string): number => {
  //Split the date string into components
  const [day, month, year] = dateString.split("/").map(Number);

  //create a new Date Object
  //Note:Months are zero-indexed in the Date constructor
  const date = new Date(year, month - 1, day);

  //return the timestamp
  return date.getTime();
};

const uploadQueue = new Bull("upload");
uploadQueue.process(async (job) => {
  await uploadCSV(job.data.filepath);
});

const uploadCSV = async (filePath: fs.PathLike, res?: any) => {
  const records: {
    id: string;
    nama: string | undefined;
    alamat: string | undefined;
    kelurahan: string | undefined;
    kecamatan: string | undefined;
    kota: string | undefined;
    propinsi: string | undefined;
    bentukHukum: string;
    jenis: string;
    klu: string;
    tanggalDaftar: Date | null;
    tanggalPKP: Date | null;
    tanggalPencabutanPKP: Date | null;
    nik: string;
    status: string;
    nomorHp: string;
    nipId?: string;
  }[] = [];
  const chunkSize = 1;
  const stream = fs.createReadStream(filePath).pipe(csvParser());

  stream
    .on("data", async (data) => {
      console.log("Data", data.tanggalDaftar);
      const tanggalDaftar = new Date(convertToTimestamp(data.tanggalDaftar));
      const tanggalDaftarValid = isNaN(tanggalDaftar.getTime())
        ? null
        : tanggalDaftar;
      const nipId = await getUserByNip(data.nipId);
      const tanggalPKP = new Date(convertToTimestamp(data.tanggalPKP));
      const tanggalPKPValid = isNaN(tanggalPKP.getTime()) ? null : tanggalPKP;
      const tanggalPencabutanPKP = new Date(
        convertToTimestamp(data.tanggalPencabutanPKP)
      );
      const tanggalPencabutanPKPValid = isNaN(tanggalPencabutanPKP.getTime())
        ? null
        : tanggalPencabutanPKP;
      if (
        !tanggalDaftarValid ||
        !tanggalPKPValid ||
        !tanggalPencabutanPKPValid
      ) {
        records.push({
          id: data.id,
          nama: data.nama,
          alamat: data.alamat,
          kelurahan: data.kelurahan,
          kecamatan: data.kecamatan,
          kota: data.kota,
          propinsi: data.propinsi,
          bentukHukum: data.bentukHukum,
          jenis: data.jenis,
          klu: data.klu,
          tanggalPKP: tanggalPKPValid,
          tanggalPencabutanPKP: tanggalPencabutanPKPValid,
          tanggalDaftar: tanggalDaftarValid,
          nik: data.nik,
          status: data.status,
          nomorHp: data.nomorHp,
          nipId: nipId?.id,
        });
      } else {
        console.warn(`Invalid date format: ${data.tanggalDaftar}`);
      }

      //if records reach the chunk size, enqueue a job
      if (records.length >= chunkSize) {
        await prisma.databaseWajibPajak.createMany({
          data: records.splice(0, chunkSize),
        });
      }
    })
    .on("end", async () => {
      //Enqueue remaining records after the stream ends
      if (records.length > 0) {
        await prisma.databaseWajibPajak.createMany({
          data: records,
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

        // Access the uploaded file
        const uploadedFile = files.file;

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
