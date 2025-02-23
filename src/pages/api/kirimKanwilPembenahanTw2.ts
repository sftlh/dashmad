import { firstDateOfTheYear, quarterOne, quarterTwo } from "@/lib/getaction";
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
          lte: quarterTwo,
          gte: quarterOne,
        },
        sendingDataToKanwilId: null,
      },
      select: {
        id: true,
      },
    });
    const selectedId = dataKirim.map((item) => item.id);
    try {
      const { nomorNd, tanggalKirimNd } = req.body;
      const data = await prisma.sendingDataToKanwil.create({
        data: {
          nomorNd,
          tanggalKirimNd,
          statusKirim: "sudah",
          finalPembenahanWp: {
            connect: selectedId.map((id) => ({ id })),
          },
        },
      });
      res.status(201).json({ message: "Data Berhasil di Input", data: data });
    } catch (error) {
      res.status(500).json({ error: "Something went wrong" });
    }
  }
}
