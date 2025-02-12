import prisma from "@/lib/prisma";
import { NextApiRequest, NextApiResponse } from "next";

const handler = async (req: NextApiRequest, res: NextApiResponse) => {
  const { roleId } = req.query;

  if (req.method === "GET") {
    let role: string = "";
    const user = await prisma.user.findUnique({
      where: {
        id: String(roleId),
      },
    });
    switch (user?.role) {
      case "kasipw1":
        role = "ar_1";
        break;
      case "kasipw2":
        role = "ar_2";
        break;
      case "kasipw3":
        role = "ar_3";
        break;
      case "kasipw4":
        role = "ar_4";
        break;
      case "kasipw5":
        role = "ar_5";
        break;
      case "kasipw6":
        role = "ar_6";
        break;
    }

    const db = await prisma.databaseWajibPajak.findMany({
      where: {
        nip: {
          role,
        },
      },
    });
    console.log("DB Wajib Pajak", db);
    res.status(200).json({ exists: db });
  } else {
    res.setHeader("Allow", ["GET"]);
    res.status(405).end(`Method ${req.method} Not Allowed`);
  }
};

export default handler;
