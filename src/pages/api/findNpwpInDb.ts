import prisma from "@/lib/prisma";
import { NextApiRequest, NextApiResponse } from "next";

const handler = async (req: NextApiRequest, res: NextApiResponse) => {
  const { npwpId } = req.query;
  if (req.method === "GET") {
    const db = await prisma.databaseWajibPajak.findUnique({
      where: {
        id: String(npwpId),
      },
    });
    res.status(200).json({ exists: !!db });
  } else {
    res.setHeader("Allow", ["GET"]);
    res.status(405).end(`Method ${req.method} Not Allowed`);
  }
};

export default handler;
