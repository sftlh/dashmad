/*
  Warnings:

  - You are about to drop the column `sendingDataToKanwilId` on the `BedahWPData` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "BedahWPData" DROP CONSTRAINT "BedahWPData_sendingDataToKanwilId_fkey";

-- AlterTable
ALTER TABLE "BedahWPData" DROP COLUMN "sendingDataToKanwilId";
