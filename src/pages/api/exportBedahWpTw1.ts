import { firstDateOfTheYear, quarterOne, todayYear } from "@/lib/getaction";
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
        OR: [
          {
            pelaksanaanKegiatan: {
              lte: quarterOne,
              gte: firstDateOfTheYear,
            },
          },
          {
            createdAt: {
              lte: quarterOne,
              gte: firstDateOfTheYear,
            },
          },
        ],
      },
      select: {
        user: {
          select: {
            nipPanjang: true,
            firstName: true,
            lastName: true,
          },
        },
        peserta: true,
        kluPenompangPenerimaan: true,
        potensiTambahan: true,
        kesimpulan: true,
        bobotKegiatan: true,
        masukDpp: true,
        alket: true,
        analisisLaporanKeuangan: true,
        analisisTransferPricing: true,
        mirroring: true,
        analisisWpGroup: true,
        kolaborasiDenganPenilai: true,
        pemanfaatanDataEksternal: true,
        dataVisit: true,
        pelaksanaanKegiatan: true,
        klasifikasi: true,
        npwpId: true,
        npwp: {
          select: {
            nama: true,
          },
        },
        tahunPajak: true,
        statusSpt: true,
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
    const worksheet = workbook.addWorksheet("KPP (Potensi Tambahan)");
    const worksheet2 = workbook.addWorksheet("KPP (Validasi)");

    //Build Header and Rows for KPP Validasi
    worksheet2.mergeCells("A1:P1");
    //Main Title KPP Validasi
    worksheet2.getCell("A1").value =
      "LAPORAN HASIL VALIDASI DAN ASSESSMENT KEGIATAN BEDAH WAJIB PAJAK";
    worksheet2.getCell("A1").font = { bold: true };
    //Row 2: Secondary Title
    worksheet2.mergeCells("A2:P2");
    worksheet2.getCell("A2").value =
      "KANTOR PELAYANAN PAJAK MADYA DUA SURABAYA";
    worksheet2.getCell("A2").font = { bold: true };
    //Row 3: Third Title
    worksheet2.mergeCells("A3:P3");
    worksheet2.getCell("A3").value = `TRIWULAN I ${todayYear}`;
    worksheet2.getCell("A3").font = { bold: true };
    worksheet2.addRow(Array(16).fill(""));

    //Row 5: Primary Headers for Data Columns
    const row5_2 = worksheet2.addRow([
      "No.",
      "NPWP-Tahun Pajak",
      "Status Kelengkapan Kegiatan",
      "",
      "",
      "",
      "Bobot Kegiatan",
      "Validasi Subkomponen Kualitas",
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
    const row6_2 = worksheet2.addRow([
      "",
      "",
      "Peserta",
      "KLU Penopang Penerimaan",
      "Potensi Tambahan",
      "Kesimpulan",
      "",
      "Masuk DPP",
      "ALK",
      "TP",
      "Mirroring",
      "WP Grup",
      "Penilai",
      "Data Eksternal",
      "Data Visit",
      "Alket",
    ]);

    const row7_2 = worksheet2.addRow([
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

    // Merge cells for row 5_2 vertically
    worksheet2.mergeCells("A5:A6");
    worksheet2.mergeCells("B5:B6");
    worksheet2.mergeCells("G5:G6");

    // Merge Cells for row 5_2 horizontally
    worksheet2.mergeCells("C5:F5");
    worksheet2.mergeCells("H5:P5");

    // Apply Center Alignment and Fill Color
    [1, 2, 3, 4, 5, 6, 7].forEach((rowNum) => {
      const row = worksheet2.getRow(rowNum);
      row.alignment = { horizontal: "center", vertical: "middle" };
    });

    //Apply Color to Row 5_2
    row5_2.eachCell((cell) => {
      cell.fill = {
        type: "pattern",
        pattern: "solid",
        fgColor: { argb: "FFB4C6E7" },
      };
      cell.alignment = { horizontal: "center", vertical: "middle" };
    });

    //Apply Color to Row 6_2
    row6_2.eachCell((cell) => {
      cell.fill = {
        type: "pattern",
        pattern: "solid",
        fgColor: { argb: "FFB4C6E7" },
      };
      cell.alignment = { horizontal: "center", vertical: "middle" };
    });

    //Apply Color to Row 7_2
    row7_2.eachCell((cell) => {
      cell.fill = {
        type: "pattern",
        pattern: "solid",
        fgColor: { argb: "FFFCE4D6" },
      };
      cell.alignment = { horizontal: "center", vertical: "middle" };
    });

    //Build Header and Rows - KPP Potensi Tambahan
    //Main Title
    worksheet.mergeCells("A1:R1");
    worksheet.getCell("A1").value =
      "LAPORAN POTENSI TAMBAHAN DARI KEGIATAN BEDAH WAJIB PAJAK";
    worksheet.getCell("A1").font = { bold: true };
    //Row 2: Secondary Title
    worksheet.mergeCells("A2:R2");
    worksheet.getCell("A2").value = "KANTOR PELAYANAN PAJAK MADYA DUA SURABAYA";
    worksheet.getCell("A2").font = { bold: true };
    //Row 3: Third Title
    worksheet.mergeCells("A3:R3");
    worksheet.getCell("A3").value = `TRIWULAN I ${todayYear}`;
    worksheet.getCell("A3").font = { bold: true };
    //Row 4: Blank Row
    worksheet.addRow(Array(16).fill(""));

    //Row 5: Primary Headers for Data Columns
    const row5 = worksheet.addRow([
      "No.",
      "Account Representative",
      "",
      "Tanggal Pelaksanaan Kegiatan",
      "Wajib Pajak",
      "",
      "Tahun Pajak",
      "Status SPT",
      "Potensi Tambahan / Pengurangan Kerugian (Rupiah)",
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
      "NIP",
      "Nama",
      "",
      "NPWP",
      "Nama",
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
      "(17)",
      "(18)",
    ]);

    //merge cell for row 5 vertically
    worksheet.mergeCells("A5:A6");
    worksheet.mergeCells("D5:D6");
    worksheet.mergeCells("G5:G6");
    worksheet.mergeCells("H5:H6");

    //merge row 5 horizontally
    worksheet.mergeCells("B5:C5");
    worksheet.mergeCells("E5:F5");
    worksheet.mergeCells("I5:R5");

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
      const npwpTahunPajak = `${item.npwpId}${item.tahunPajak}`;
      const namaAr = `${item?.user?.firstName} ${item?.user?.lastName}`;
      const newRow = worksheet.addRow([
        index + 1,
        item?.user?.nipPanjang || "",
        namaAr,
        item.pelaksanaanKegiatan
          ? item.pelaksanaanKegiatan.toLocaleDateString("id-ID", {
              day: "2-digit",
              month: "long",
              year: "numeric",
            })
          : "",
        item.npwpId || "",
        item.npwp?.nama || "",
        item.tahunPajak || "",
        item.statusSpt || "",
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
      const newRow2 = worksheet2.addRow([
        index + 1,
        npwpTahunPajak,
        String(item.peserta) || "0",
        String(item.kluPenompangPenerimaan) || "0",
        String(item.potensiTambahan) || "0",
        String(item.kesimpulan) || "0",
        item.bobotKegiatan || "0",
        String(item?.masukDpp) || "0",
        String(item?.analisisLaporanKeuangan) || "0",
        String(item?.analisisTransferPricing) || "0",
        String(item?.mirroring) || "0",
        String(item?.analisisWpGroup) || "0",
        String(item?.kolaborasiDenganPenilai) || "0",
        String(item?.pemanfaatanDataEksternal) || "0",
        String(item?.dataVisit) || "0",
        String(item?.alket) || "0",
      ]);
      newRow2.alignment = { horizontal: "center", vertical: "middle" };
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

    //apply borders 2
    for (let i = 5; i <= worksheet2.rowCount; i++) {
      const row = worksheet2.getRow(i);
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
      { width: 15 },
    ];

    worksheet2.columns = [
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
    ];

    //Set response headers for file download
    // --- Write the Workbook to the Response ---
    await prisma.bedahWPData.updateMany({
      where: {
        OR: [
          {
            pelaksanaanKegiatan: {
              lte: quarterOne,
              gte: firstDateOfTheYear,
            },
          },
          {
            createdAt: {
              lte: quarterOne,
              gte: firstDateOfTheYear,
            },
          },
        ],
      },
      data: {
        downloaded: "true", // or set to whatever flag value you need
      },
    });
    res.setHeader(
      "Content-Type",
      "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
    );
    res.setHeader(
      "Content-Disposition",
      `attachment; filename=bedahwptw1_${todayYear}.xlsx`
    );
    await workbook.xlsx.write(res);
    res.end();
  } catch (error) {
    console.error("Export XLSX Error", error);
    return res.status(500).json({ error: "Internal Server Error" });
  }
};

export default handler;
