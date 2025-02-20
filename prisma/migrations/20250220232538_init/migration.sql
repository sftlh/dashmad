/*
  Warnings:

  - Added the required column `pembenahanCabangPusatBedahEntitasId` to the `FinalPembenahanMfwp` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "FinalPembenahanMfwp" ADD COLUMN     "pembenahanCabangPusatBedahEntitasId" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "FinalPembenahanMfwp" ADD CONSTRAINT "FinalPembenahanMfwp_pembenahanCabangPusatBedahEntitasId_fkey" FOREIGN KEY ("pembenahanCabangPusatBedahEntitasId") REFERENCES "PembenahanCabangPusatBedahEntitas"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
