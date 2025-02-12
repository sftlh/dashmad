import prisma from "@/lib/prisma";
import { NextApiRequest, NextApiResponse } from "next";

const handler = async (req: NextApiRequest, res: NextApiResponse) => {
  const { userId } = req.query;
  console.log(userId)
  if (req.method === "GET") {
    const db = await prisma.databaseWajibPajak.findMany({
      where: {
        nipId: String(userId),
      },
    });
    res.status(200).json({ exists: db });
  } else {
    res.setHeader("Allow", ["GET"]);
    res.status(405).end(`Method ${req.method} Not Allowed`);
  }
};

export default handler;
