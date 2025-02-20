-- DropForeignKey
ALTER TABLE "FinalPembenahanMfwp" DROP CONSTRAINT "FinalPembenahanMfwp_pembenahanCabangPusatBedahEntitasId_fkey";

-- AlterTable
ALTER TABLE "FinalPembenahanMfwp" ALTER COLUMN "pembenahanCabangPusatBedahEntitasId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "FinalPembenahanMfwp" ADD CONSTRAINT "FinalPembenahanMfwp_pembenahanCabangPusatBedahEntitasId_fkey" FOREIGN KEY ("pembenahanCabangPusatBedahEntitasId") REFERENCES "PembenahanCabangPusatBedahEntitas"("id") ON DELETE SET NULL ON UPDATE CASCADE;
