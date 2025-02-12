/*
  Warnings:

  - You are about to drop the `PembehananCabangPusatBedahEntitas` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "JawabanPembenahanCabangPusatBedaEntitas" DROP CONSTRAINT "JawabanPembenahanCabangPusatBedaEntitas_dataId_fkey";

-- DropForeignKey
ALTER TABLE "PembehananCabangPusatBedahEntitas" DROP CONSTRAINT "PembehananCabangPusatBedahEntitas_nipId_fkey";

-- DropTable
DROP TABLE "PembehananCabangPusatBedahEntitas";

-- CreateTable
CREATE TABLE "PembenahanCabangPusatBedahEntitas" (
    "id" SERIAL NOT NULL,
    "npwpCabang" TEXT,
    "namaCabang" TEXT,
    "alamatCabang" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "nomorHpCabang" TEXT,
    "emailCabang" TEXT,
    "kppCabang" TEXT,
    "kanwilCabang" TEXT,
    "nipId" TEXT,
    "seksiCabang" TEXT,
    "noKepCabang" INTEGER,
    "validitasCabang" TEXT,
    "statusCabang" TEXT,
    "npwpPusat" TEXT,
    "namaPusat" TEXT,
    "kppPusat" TEXT,
    "kanwilPusat" TEXT,
    "arPusat" TEXT,
    "seksiPusat" TEXT,
    "kepPusat" INTEGER,
    "validitasPusat" TEXT,
    "statusPusat" TEXT,
    "namaBersihCabang" TEXT,
    "namaBersihPusat" TEXT,
    "nikBersihPusat" TEXT,
    "nikBersihCabang" TEXT,
    "tglBentukData" TEXT,
    "currentStatus" TEXT NOT NULL DEFAULT 'Progress',

    CONSTRAINT "PembenahanCabangPusatBedahEntitas_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "PembenahanCabangPusatBedahEntitas" ADD CONSTRAINT "PembenahanCabangPusatBedahEntitas_nipId_fkey" FOREIGN KEY ("nipId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "JawabanPembenahanCabangPusatBedaEntitas" ADD CONSTRAINT "JawabanPembenahanCabangPusatBedaEntitas_dataId_fkey" FOREIGN KEY ("dataId") REFERENCES "PembenahanCabangPusatBedahEntitas"("id") ON DELETE SET NULL ON UPDATE CASCADE;
