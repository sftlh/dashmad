import { firstDateOfTheYear, quarterOne } from "@/lib/getaction";
import prisma from "@/lib/prisma";
import { NextApiRequest, NextApiResponse } from "next";

export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse
) {
  if (req.method === "POST") {
    const dataKirim = await prisma.finalPembenahanMfwp.findMany({
      where: {
        createdAt: {
          lte: quarterOne,
          gte: firstDateOfTheYear,
        },
        sendingDataToKanwilId: null,
      },
      select: {
        id: true,
      },
    });
    console.log("Data Kirim", dataKirim)
    if(!dataKirim || dataKirim.length === 0) {
        console.log("Tidak Ada Data Empowering !")
    }
    const selectedId = dataKirim.map((item) => item.id);
    let pembenahanDataConnection = {};
    if (selectedId && selectedId.length > 0) {
      pembenahanDataConnection = {
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
            finalPembenahanWp: pembenahanDataConnection,
          }),
        },
      });
      res.status(201).json({ message: "Data Berhasil di Input", data: data });
    } catch (error) {
      res.status(500).json({ error: "Something went wrong" });
    }
  }
}
