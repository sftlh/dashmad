import { firstDateOfTheYear, quarterOne, quarterThree, quarterTwo, todayYear } from "@/lib/getaction";
import prisma from "@/lib/prisma";
import { NextApiRequest, NextApiResponse } from "next";
import ExcelJS from "exceljs";

const handler = async (req: NextApiRequest, res: NextApiResponse) => {
  if (req.method !== "GET") {
    res.setHeader("Allow", "GET");
    return res.status(405).end("Method Not Allowed");
  }
  try {
    const data = await prisma.bedahWPData.findMany({
      where: {
        pelaksanaanKegiatan: {
          lte: quarterThree,
          gte: quarterTwo,
        },
        createdAt: {
          lte: quarterThree,
          gte: quarterTwo,
        },
      },
      select: {
        pelaksanaanKegiatan: true,
        klasifikasi: true,
        npwpId: true,
        npwp: {
          select: {
            nama: true,
          },
        },
        tahunPajak: true,
        pph21: true,
        pph22: true,
        pph23: true,
        pph2529: true,
        pph26: true,
        pphFinal: true,
        pph15: true,
        ppn: true,
        pajakLainnya: true,
      },
    });

    //Create a workbook and append the worksheet
    const workbook = new ExcelJS.Workbook();
    const worksheet = workbook.addWorksheet("KPP");

    //Build Header and Rows
    //Main Title
    worksheet.mergeCells("A1:P1");
    worksheet.getCell("A1").value =
      "LAPORAN POTENSI TAMBAHAN DARI KEGIATAN BEDAH WAJIB PAJAK";
    worksheet.getCell("A1").font = { bold: true };
    //Row 2: Secondary Title
    worksheet.mergeCells("A2:P2");
    worksheet.getCell("A2").value = "KANTOR PELAYANAN PAJAK MADYA DUA SURABAYA";
    worksheet.getCell("A2").font = { bold: true };
    //Row 3: Third Title
    worksheet.mergeCells("A3:P3");
    worksheet.getCell("A3").value = `Triwulan III ${todayYear}`;
    worksheet.getCell("A3").font = { bold: true };
    //Row 4: Blank Row
    worksheet.addRow(Array(16).fill(""));

    //Row 5: Primary Headers for Data Columns
    const row5 = worksheet.addRow([
      "No.",
      "Tanggal Pelaksanaan Kegiatan",
      "Klasifikasi Kegiatan",
      "NPWP",
      "Nama",
      "Tahun Pajak",
      "Potensi Tambahan (Rupiah)",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
      "",
    ]);
    //Row 6: Sub-Header Row
    const row6 = worksheet.addRow([
      "",
      "",
      "",
      "",
      "",
      "",
      "PPh Ps.21",
      "PPh Ps.22",
      "PPh Ps.23",
      "PPh Ps.25/29",
      "PPh Ps.26",
      "PPh Ps.4(2)",
      "PPh Ps.15",
      "PPN/PPnBM",
      "Pajak Lainnya",
      "Total",
    ]);

    const row7 = worksheet.addRow([
      "(1)",
      "(2)",
      "(3)",
      "(4)",
      "(5)",
      "(6)",
      "(7)",
      "(8)",
      "(9)",
      "(10)",
      "(11)",
      "(12)",
      "(13)",
      "(14)",
      "(15)",
      "(16)",
    ]);

    //merge cell for row 5 vertically
    worksheet.mergeCells("A5:A6");
    worksheet.mergeCells("B5:B6");
    worksheet.mergeCells("C5:C6");
    worksheet.mergeCells("D5:D6");
    worksheet.mergeCells("E5:E6");
    worksheet.mergeCells("F5:F6");

    //merge row 5 horizontally
    worksheet.mergeCells("G5:P5");

    //Apply Center Alignment and Fill Color
    [1, 2, 3, 4, 5, 6, 7].forEach((rowNum) => {
      const row = worksheet.getRow(rowNum);
      row.alignment = { horizontal: "center", vertical: "middle" };
    });

    //Apply Color to Row 5
    row5.eachCell((cell) => {
      cell.fill = {
        type: "pattern",
        pattern: "solid",
        fgColor: { argb: "FFB4C6E7" },
      };
      cell.alignment = { horizontal: "center", vertical: "middle" };
    });

    //Apply Color to Row6
    row6.eachCell((cell) => {
      cell.fill = {
        type: "pattern",
        pattern: "solid",
        fgColor: { argb: "FFB4C6E7" },
      };
      cell.alignment = { horizontal: "center", vertical: "middle" };
    });

    //Apply Color to Row7
    row7.eachCell((cell) => {
      cell.fill = {
        type: "pattern",
        pattern: "solid",
        fgColor: { argb: "FFFCE4D6" },
      };
      cell.alignment = { horizontal: "center", vertical: "middle" };
    });

    //start inserting data
    data.forEach((item, index) => {
      const total =
        (item.pph21 ?? 0) +
        (item.pph22 ?? 0) +
        (item.pph23 ?? 0) +
        (item.pph2529 ?? 0) +
        (item.pph26 ?? 0) +
        (item.pphFinal ?? 0) +
        (item.pph15 ?? 0) +
        (item.ppn ?? 0) +
        (item.pajakLainnya ?? 0);
      const newRow = worksheet.addRow([
        index + 1,
        item.pelaksanaanKegiatan
          ? item.pelaksanaanKegiatan.toLocaleDateString("id-ID", {
              day: "2-digit",
              month: "long",
              year: "numeric",
            })
          : "",
        item.klasifikasi || "",
        item.npwpId || "",
        item.npwp?.nama || "",
        item.tahunPajak || "",
        item.pph21 || "",
        item.pph22 || "",
        item.pph23 || "",
        item.pph2529 || "",
        item.pph26 || "",
        item.pphFinal || "",
        item.pph15 || "",
        item.ppn || "",
        item.pajakLainnya || "",
        total,
      ]);
      newRow.alignment = { horizontal: "center", vertical: "middle" };
    });

    //apply borders
    for (let i = 5; i <= worksheet.rowCount; i++) {
      const row = worksheet.getRow(i);
      row.eachCell({ includeEmpty: true }, (cell) => {
        cell.border = {
          top: { style: "thin" },
          bottom: { style: "thin" },
          left: { style: "thin" },
          right: { style: "thin" },
        };
      });
    }

    // Optionally, set column widths
    worksheet.columns = [
      { width: 5 },
      { width: 20 },
      { width: 20 },
      { width: 15 },
      { width: 25 },
      { width: 15 },
      { width: 15 },
      { width: 15 },
      { width: 15 },
      { width: 15 },
      { width: 15 },
      { width: 15 },
      { width: 15 },
      { width: 15 },
      { width: 15 },
      { width: 15 },
      { width: 15 },
    ];

    //Set response headers for file download
    // --- Write the Workbook to the Response ---
    res.setHeader(
      "Content-Type",
      "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
    );
    res.setHeader(
      "Content-Disposition",
      `attachment; filename=bedahwptw3_${todayYear}.xlsx`
    );
    await workbook.xlsx.write(res);
    res.end();
  } catch (error) {
    console.error("Export XLSX Error", error);
    return res.status(500).json({ error: "Internal Server Error" });
  }
};

export default handler;
