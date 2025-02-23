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
        jawabanLangsung,
        nomorLhp,
        perluDihapus,
        keterangan,
        userId,
        npwp,
        nomorBa,
        hasilKlarifikasi,
        namaWajibPajak,
        npwpLawan,
      } = req.body;
      const data = await prisma.jawabanPembenahanCabangPusatBedaEntitas.create({
        data: {
          dataId: Number(dataId),
          jawabanLangsung,
          nomorLhp,
          perluDihapus,
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
          hasilUjiValiditas: jawabanLangsung === "ya" ? "Valid" : "Tidak Valid",
          keteranganUjiValiditas: keterangan,
          jenisMfwp: "",
          npwpGanda: "",
          detilKeterangan:
            jawabanLangsung === "tidak"
              ? "NPWP Lawan tidak memiliki hubungan dengan NPWP tervalidasi"
              : "Kedua NPWP merupakan hubungan satu sama lain",
          kebutuhanKlarifikasi: perluDihapus === "sini" ? "Ya" : "Tidak",
          hasilKlarifikasi: hasilKlarifikasi,
          buktiWpTidakMemberikanKlarifikasi: nomorBa,
          pembenahanCabangPusatBedahEntitasId:Number(dataId),
          usulanTindakanPembenahan:
            perluDihapus === "sini" ? "Dihapus" : "Data Residu",
          npwpLawan,
          usulanTindakanPembenahanLawan:
            perluDihapus === "lawan" ? "NPWP Lawan Perlu Dihapus" : "",
          keterangan: keterangan,
        },
      });
      res.status(201).json({ message: "Data Berhasil di Input", data: data });
    } catch (error) {
      res.status(500).json({ error: "Something went wrong" });
    }
  }
}
