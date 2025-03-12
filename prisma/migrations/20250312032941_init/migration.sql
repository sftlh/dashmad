/*
  Warnings:

  - You are about to drop the `BedahWPDummy` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "BedahWPDummy" DROP CONSTRAINT "BedahWPDummy_npwpId_fkey";

-- DropForeignKey
ALTER TABLE "BedahWPDummy" DROP CONSTRAINT "BedahWPDummy_sendingDataToKanwilId_fkey";

-- DropForeignKey
ALTER TABLE "BedahWPDummy" DROP CONSTRAINT "BedahWPDummy_userId_fkey";

-- DropTable
DROP TABLE "BedahWPDummy";
