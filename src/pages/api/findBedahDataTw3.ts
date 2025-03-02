import { firstDateOfTheYear, quarterOne, quarterThree, quarterTwo } from "@/lib/getaction";
import prisma from "@/lib/prisma";
import { NextApiRequest, NextApiResponse } from "next";

const handler = async (req: NextApiRequest, res: NextApiResponse) => {
  if (req.method === "GET") {
    const db = await prisma.bedahWPData.findMany({
      where: {
        createdAt: {
          lte: quarterThree,
          gte: quarterTwo,
        },
        sendingDataToKanwilId: null,
      },
      select: {
        id: true,
      },
    });
    res.status(200).json({ exists: db });
  } else {
    res.setHeader("Allow", ["GET"]);
    res.status(405).end(`Method ${req.method} Not Allowed`);
  }
};

export default handler;
