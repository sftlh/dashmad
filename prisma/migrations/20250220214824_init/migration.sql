/*
  Warnings:

  - You are about to drop the column `namaCabangPusatQuestion` on the `JawabanPembenahanCabangPusatBedaEntitas` table. All the data in the column will be lost.
  - You are about to drop the column `nikCabangPusatQuestion` on the `JawabanPembenahanCabangPusatBedaEntitas` table. All the data in the column will be lost.
  - You are about to drop the column `npwpCabangPusatQuestion` on the `JawabanPembenahanCabangPusatBedaEntitas` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "JawabanPembenahanCabangPusatBedaEntitas" DROP COLUMN "namaCabangPusatQuestion",
DROP COLUMN "nikCabangPusatQuestion",
DROP COLUMN "npwpCabangPusatQuestion",
ADD COLUMN     "nomorLhp" TEXT;
