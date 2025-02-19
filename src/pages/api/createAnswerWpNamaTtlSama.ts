import prisma from "@/lib/prisma";
import { NextApiRequest, NextApiResponse } from "next";

export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse
) {
  if (req.method === "POST") {
    try {
      const { dataId, jawabanLangsung, keterangan, userId } = req.body;
      const data = await prisma.jawabanPembenahanWpNamaTtlSama.create({
        data: {
          dataId: Number(dataId),
          jawabanLangsung,
          keterangan,
          userId,
        },
      });
      await prisma.pembenahanWpNamaTtlSama.update({
        where: {
          id: Number(dataId),
        },
        data: {
          currentStatus: "selesai",
        },
      });
      res.status(201).json({ message: "Data Berhasil di Input", data: data });
    } catch (error) {
      res.status(500).json({ error: "Something went wrong" });
    }
  }
}
