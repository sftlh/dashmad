import prisma from "@/lib/prisma";
import { NextApiRequest, NextApiResponse } from "next";

export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse
) {
  if (req.method === "POST") {
    try {
      const {
        dataId,
        npwpCabangPusatQuestion,
        namaCabangPusatQuestion,
        nikCabangPusatQuestion,
        keterangan,
        userId,
        npwp,
        namaWajibPajak,
      } = req.body;
      const data = await prisma.jawabanPembenahanCabangPusatBedaEntitas.create({
        data: {
          dataId: Number(dataId),
          npwpCabangPusatQuestion,
          namaCabangPusatQuestion,
          nikCabangPusatQuestion,
          keterangan,
          userId,
        },
      });
      await prisma.pembenahanCabangPusatBedahEntitas.update({
        where: {
          id: Number(dataId),
        },
        data: {
          currentStatus: "selesai",
        },
      });
      await prisma.finalPembenahanMfwp.create({
        data: {
          npwp,
          namaWajibPajak,
          jenisTarget:
            "Wajib Pajak Cabang dengan Entitas yang Berbeda dengan Pusat",
          hasilUjiValiditas:
            npwpCabangPusatQuestion === "ya" &&
            namaCabangPusatQuestion === "ya" &&
            nikCabangPusatQuestion === "ya"
              ? "Valid"
              : "Tidak Valid",
          keteranganUjiValiditas: keterangan,
          jenisMfwp: "",
          npwpGanda: "",
          detilKeterangan:
            npwpCabangPusatQuestion === "tidak" &&
            namaCabangPusatQuestion === "tidak" &&
            nikCabangPusatQuestion === "tidak"
              ? "NPWP Lawan tidak memiliki hubungan dengan NPWP tervalidasi"
              : "",
          kebutuhanKlarifikasi:
            npwpCabangPusatQuestion === "tidak" &&
            namaCabangPusatQuestion === "tidak" &&
            nikCabangPusatQuestion === "tidak"
              ? "Ya"
              : "Tidak",
          hasilKlarifikasi: "",
          
          keterangan: keterangan,
        },
      });
      res.status(201).json({ message: "Data Berhasil di Input", data: data });
    } catch (error) {
      res.status(500).json({ error: "Something went wrong" });
    }
  }
}
