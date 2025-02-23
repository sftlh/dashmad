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
        perluDihapus,
        nomorLhp,
        keterangan,
        npwp,
        nomorBa,
        hasilKlarifikasi,
        namaWajibPajak,
        npwpLawan,
        userId,
      } = req.body;
      const data = await prisma.jawabanPembenahanWpNikGanda.create({
        data: {
          dataId: Number(dataId),
          jawabanLangsung,
          perluDihapus,
          nomorLhp,
          keterangan,
          userId,
        },
      });
      await prisma.pembenahanWpNikGanda.update({
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
          jenisTarget: "Wajib Pajak dengan NIK Ganda",
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
          pembenahanWpNikGandaId: Number(dataId),
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
