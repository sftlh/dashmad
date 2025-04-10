import prisma from "@/lib/prisma";
import { NextApiRequest, NextApiResponse } from "next";

const handler = async (req: NextApiRequest, res: NextApiResponse) => {
  if (req.method !== "DELETE") {
    return res.status(500).json({ message: "Internal Server Error" });
  }
  const { id } = req.query;

  try {
    const deletedProduct = await prisma.bedahWPData.delete({
      where: {
        id: Number(id),
      },
    });
    return res
      .status(200)
      .json({ message: "Delete Success", product: deletedProduct });
  } catch (error: any) {
    return res.status(500).json({ message: error.message });
  }
};

export default handler;
