/*
  Warnings:

  - The primary key for the `BedahWPData` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- AlterTable
ALTER TABLE "BedahWPData" DROP CONSTRAINT "BedahWPData_pkey",
ALTER COLUMN "id" DROP DEFAULT,
ALTER COLUMN "id" SET DATA TYPE TEXT,
ADD CONSTRAINT "BedahWPData_pkey" PRIMARY KEY ("id");
DROP SEQUENCE "BedahWPData_id_seq";
