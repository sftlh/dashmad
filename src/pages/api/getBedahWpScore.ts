import prisma from "@/lib/prisma";
import { NextApiRequest, NextApiResponse } from "next";

type ScoreResponse = {
  totalRealisasiKuantitas: number;
  totalRealisasiKualitas: number;
  capaianKuantitas: number;
  capaianKualitas: number;
  bobotKuantitas: number;
  bobotKualitas: number;
  capaianIKU: number;
};

const handler = async (
  req: NextApiRequest,
  res: NextApiResponse<ScoreResponse | { error: string }>
) => {
  if (req.method !== "GET") {
    res.setHeader("Allow", ["GET"]);
    return res.status(405).json({ error: "Method not allowed !" });
  }

  const { userId } = req.query;

  try {
    const bedahWpData = await prisma.bedahWPData.findMany({
      where: {
        userId: userId as string,
      },
    });

    // Initialize totals for each component
    let totalRealisasiKuantitas = 0;
    let totalRealisasiKualitas = 0;

    // Loop through each record and calculate the individual scores.
    bedahWpData.forEach((record) => {
      //Convert bobotKegiatan into number
      const bobotKegiatan = record.bobotKegiatan
        ? parseFloat(record.bobotKegiatan.replace("%", "")) / 100
        : 0;

      //realisasi kuantitas is obtained only when peserta and potensiTambahan equal 1
      const realisasiKuantitas =
        record.peserta === 1 && record.potensiTambahan === 1
          ? bobotKegiatan
          : 0;

      //calculate totalSkor from multiple factor
      const totalSkor =
        (record.masukDpp || 0) * 0.6 +
        (record.analisisLaporanKeuangan || 0) * 0.2 +
        (record.analisisTransferPricing || 0) * 0.4 +
        (record.mirroring || 0) * 0.1 +
        (record.analisisWpGroup || 0) * 0.4 +
        (record.kolaborasiDenganPenilai || 0) * 0.15 +
        (record.pemanfaatanDataEksternal || 0) * 0.1 +
        (record.dataVisit || 0) * 0.2 +
        (record.alket || 0) * 0.15;

      //realisasi kualitas is the product of realisasiKuantitas * totalSkor
      const realisasiKualitas = realisasiKuantitas * totalSkor;

      //Aggregate the totals
      totalRealisasiKuantitas += realisasiKuantitas;
      totalRealisasiKualitas += realisasiKualitas;
    });

    //calculate capaian for each component by dividing the total by 3,
    //with maximum (cap) of 120% represented as 1.2
    const capaianKuantitas = Math.min(totalRealisasiKuantitas / 3, 1.2);
    const capaianKualitas = Math.min(totalRealisasiKualitas / 3, 1.2);

    //Each component contributes 50% (0.50) of its capaian to the final score.
    const bobotKuantitas = capaianKuantitas * 0.5;
    const bobotKualitas = capaianKualitas * 0.5;

    //The Final Capaian IKU is the sum of the two weighted component
    const capaianIKU = bobotKuantitas + bobotKualitas;

    const capaianIKUPercentage = parseFloat((capaianIKU * 100).toFixed(2));

    return res.status(200).json({
      totalRealisasiKualitas,
      totalRealisasiKuantitas,
      capaianKualitas,
      capaianKuantitas,
      bobotKuantitas,
      bobotKualitas,
      capaianIKU: capaianIKUPercentage,
    });
  } catch (error) {
    console.log("Error Fetching Data", error);
    return res.status(500).json({ error: "Internal Server Error" });
  }
};

export default handler;
