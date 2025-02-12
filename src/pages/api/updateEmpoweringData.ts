import prisma from "@/lib/prisma";
import { z } from "zod";
import { NextApiRequest, NextApiResponse } from "next";
import { updateEmpoweringSchema } from "@/lib/zod";

const handler = async (req: NextApiRequest, res: NextApiResponse) => {
  if (req.method === "PUT") {
    const parseData = await updateEmpoweringSchema.parseAsync(req.body);
    const numberId = Number(parseData.id);
    try {
      const dataEmpowering = await prisma.empoweringData.update({
        where: {
          id: numberId,
        },
        data: {
          npwpId: parseData.npwpId,
          tahunPajak: Number(parseData.tahunPajak),
          pelaksanaanKegiatan: parseData.pelaksanaanKegiatan,
          pph21: parseData.pph21,
          pph22: parseData.pph22,
          pph23: parseData.pph23,
          pph2529: parseData.pph2529,
          pph26: parseData.pph26,
          pphFinal: parseData.pphFinal,
          pph15: parseData.pph15,
          kunci: parseData.kunci,
          ppn: parseData.ppn,
          pajakLainnya: parseData.pajakLainnya,
          userId: parseData.userId,
        },
      });
      res
        .status(200)
        .json({ message: "Data Berhasil di Input", dataEmpowering });
    } catch (error) {
      if (error instanceof z.ZodError) {
        res.status(400).json({ errors: error.errors });
      } else {
        res.status(500).json({ error: "Internal Server Error" });
      }
    }
  } else {
    res.setHeader("Allow", ["PUT"]);
    res.status(405).end(`Method ${req.method} Not Allowed`);
  }
};

export default handler;
