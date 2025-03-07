import prisma from "@/lib/prisma";
import XLSX from "xlsx";
import { NextApiRequest, NextApiResponse } from "next";

const exportUser = async (req: NextApiRequest, res: NextApiResponse) => {
  try {
    //Fetch data from prisma
    const data = await prisma.user.findMany();

    //convert data to a worksheet
    const worksheet = XLSX.utils.json_to_sheet(data);

    //Create a new workbook and append the worksheet
    const workbook = XLSX.utils.book_new();
    XLSX.utils.book_append_sheet(workbook, worksheet, "Sheet1");

    //Write the workbook to a buffer
    const buffer = XLSX.write(workbook, { bookType: "xlsx", type: "buffer" });

    //Set response headers for file download
    res.setHeader("Content-Disposition", "attachment; filename=user.xlsx");
    res.setHeader(
      "Content-Type",
      "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
    );

    // Send the buffer as a response
    res.status(200).send(buffer);
  } catch (error) {
    console.error("Error exporting data:", error);
    res.status(500).json({ error: "Failed to export data" });
  }finally {
    await prisma.$disconnect();
  }
};

export default exportUser;
