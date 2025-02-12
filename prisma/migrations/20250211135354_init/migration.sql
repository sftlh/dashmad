/*
  Warnings:

  - You are about to drop the column `nipId` on the `PembenahanWpIdentitasGanda` table. All the data in the column will be lost.
  - You are about to drop the column `npwp1Id` on the `PembenahanWpIdentitasGanda` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "PembenahanWpIdentitasGanda" DROP CONSTRAINT "PembenahanWpIdentitasGanda_nipId_fkey";

-- DropForeignKey
ALTER TABLE "PembenahanWpIdentitasGanda" DROP CONSTRAINT "PembenahanWpIdentitasGanda_npwp1Id_fkey";

-- AlterTable
ALTER TABLE "PembenahanWpIdentitasGanda" DROP COLUMN "nipId",
DROP COLUMN "npwp1Id",
ADD COLUMN     "nip" TEXT,
ADD COLUMN     "npwp1" TEXT;
