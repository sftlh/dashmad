/*
  Warnings:

  - The `kunci` column on the `BedahWPData` table would be dropped and recreated. This will lead to data loss if there is data in the column.

*/
-- AlterTable
ALTER TABLE "BedahWPData" DROP COLUMN "kunci",
ADD COLUMN     "kunci" BOOLEAN;
