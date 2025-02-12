-- AlterTable
ALTER TABLE "EmpoweringData" ALTER COLUMN "tahunPajak" DROP NOT NULL;

-- CreateTable
CREATE TABLE "PembehananCabangPusatBedahEntitas" (
    "id" SERIAL NOT NULL,
    "npwpCabang" TEXT,
    "namaCabang" TEXT,
    "alamatCabang" TEXT,
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
    "nikBersihCabang" TEXT,
    "tglBentukData" TEXT,

    CONSTRAINT "PembehananCabangPusatBedahEntitas_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "PembehananCabangPusatBedahEntitas" ADD CONSTRAINT "PembehananCabangPusatBedahEntitas_nipId_fkey" FOREIGN KEY ("nipId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
