import { firstDateOfTheYear, quarterFour, quarterOne, quarterThree } from "@/lib/getaction";
import prisma from "@/lib/prisma";
import { NextApiRequest, NextApiResponse } from "next";

export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse
) {
  if (req.method === "POST") {
    const dataKirim = await prisma.empoweringData.findMany({
      where: {
        createdAt: {
          lte: quarterFour,
          gte: quarterThree,
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
    let empoweringDataConnection = {};
    if (selectedId && selectedId.length > 0) {
      empoweringDataConnection = {
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
            empoweringData: empoweringDataConnection,
          }),
        },
      });
      res.status(201).json({ message: "Data Berhasil di Input", data: data });
    } catch (error) {
      res.status(500).json({ error: "Something went wrong" });
    }
  }
}
