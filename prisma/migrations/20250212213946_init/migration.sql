-- AlterTable
ALTER TABLE "PembehananCabangPusatBedahEntitas" ADD COLUMN     "currentStatus" TEXT NOT NULL DEFAULT 'Progress';

-- AlterTable
ALTER TABLE "PembenahanWpIdentitasGanda" ADD COLUMN     "currentStatus" TEXT NOT NULL DEFAULT 'Progress';

-- AlterTable
ALTER TABLE "PembenahanWpNamaTtlSama" ADD COLUMN     "currentStatus" TEXT NOT NULL DEFAULT 'Progress';

-- AlterTable
ALTER TABLE "PembenahanWpNikGanda" ADD COLUMN     "currentStatus" TEXT NOT NULL DEFAULT 'Progress';

-- CreateTable
CREATE TABLE "JawabanPembenahanCabangPusatBedaEntitas" (
    "id" SERIAL NOT NULL,
    "dataId" INTEGER,
    "npwpCabangPusatQuestion" TEXT,
    "namaCabangPusatQuestion" TEXT,
    "nikCabangPusatQuestion" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "userId" TEXT,

    CONSTRAINT "JawabanPembenahanCabangPusatBedaEntitas_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "JawabanPembenahanCabangPusatBedaEntitas" ADD CONSTRAINT "JawabanPembenahanCabangPusatBedaEntitas_dataId_fkey" FOREIGN KEY ("dataId") REFERENCES "PembehananCabangPusatBedahEntitas"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "JawabanPembenahanCabangPusatBedaEntitas" ADD CONSTRAINT "JawabanPembenahanCabangPusatBedaEntitas_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
