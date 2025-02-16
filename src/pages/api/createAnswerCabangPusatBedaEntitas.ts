import prisma from "@/lib/prisma";
import { NextApiRequest, NextApiResponse } from "next";

export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse
) {
  if (req.method === "POST") {
    try {
      const {
        dataId,
        npwpCabangPusatQuestion,
        namaCabangPusatQuestion,
        nikCabangPusatQuestion,
        keterangan,
        userId,
      } = req.body;
      const data = await prisma.jawabanPembenahanCabangPusatBedaEntitas.create({
        data: {
          dataId:Number(dataId),
          npwpCabangPusatQuestion,
          namaCabangPusatQuestion,
          nikCabangPusatQuestion,
          keterangan,
          userId,
        },
      });
      res.status(201).json({ message: "Data Berhasil di Input", data: data });
    } catch (error) {
      res.status(500).json({ error: "Something went wrong" });
    }
  }
}
