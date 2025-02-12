import prisma from "@/lib/prisma";
import { z } from "zod";
import { NextApiRequest, NextApiResponse } from "next";
import { bedahWpSchema } from "@/lib/zod";

const handler = async (req: NextApiRequest, res: NextApiResponse) => {
  if (req.method === "POST") {
    const {
      npwpId,
      klasifikasi,
      pelaksanaanKegiatan,
      tahunPajak,
      userId,
      pph21,
      pph22,
      pph23,
      pph2529,
      pph26,
      pphFinal,
      pph15,
      kunci,
      ppn,
      pajakLainnya,
    } = req.body;
    const tahunPajakNumber = Number(tahunPajak);
    try {
      const dataBedahWP = await prisma.bedahWPData.create({
        data: {
          npwpId,
          klasifikasi,
          tahunPajak: tahunPajakNumber,
          pelaksanaanKegiatan,
          pph21,
          pph22,
          pph23,
          pph2529,
          pph26,
          pphFinal,
          pph15,
          kunci,
          ppn,
          pajakLainnya,
          userId,
        },
      });
      res
        .status(201)
        .json({ message: "Data Berhasil di Input", data: dataBedahWP });
    } catch (error) {
      if (error instanceof z.ZodError) {
        res.status(400).json({ errors: error.errors });
      } else {
        res.status(500).json({ error: "Internal Server Error" });
      }
    }
  } else {
    res.setHeader("Allow", ["POST"]);
    res.status(405).end(`Method ${req.method} Not Allowed`);
  }
};

export default handler;
