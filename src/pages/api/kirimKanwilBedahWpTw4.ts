import { quarterFour, quarterThree } from "@/lib/getaction";
import prisma from "@/lib/prisma";
import { NextApiRequest, NextApiResponse } from "next";

export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse
) {
  if (req.method === "POST") {
    const dataKirim = await prisma.bedahWPData.findMany({
      where: {
        OR: [
          {
            createdAt: {
              lte: quarterFour,
              gte: quarterThree,
            },
          },
          {
            pelaksanaanKegiatan: {
              lte: quarterFour,
              gte: quarterThree,
            },
          },
        ],
        AND: [
          {
            sendingDataToKanwilId: null,
          },
          {
            downloaded: "true",
          },
        ],
      },
      select: {
        id: true,
      },
    });
    console.log("Data Kirim", dataKirim);
    if (!dataKirim || dataKirim.length === 0) {
      console.log("Tidak Ada Data Empowering !");
    }
    const selectedId = dataKirim.map((item) => item.id);
    let bedahDataConnection = {};
    if (selectedId && selectedId.length > 0) {
      bedahDataConnection = {
        connect: selectedId.map((id) => ({ id })),
      };
    }
    try {
      const { nomorNd, tanggalKirimNd } = req.body;
      const data = await prisma.sendingDataToKanwil.create({
        data: {
          nomorNd,
          tanggalKirimNd,
          statusKirim: "sudah",
          ...(selectedId.length > 0 && {
            bedahWpData: bedahDataConnection,
          }),
        },
      });
      res.status(201).json({ message: "Data Berhasil di Input", data: data });
    } catch (error) {
      res.status(500).json({ error: "Something went wrong" });
    }
  }
}
