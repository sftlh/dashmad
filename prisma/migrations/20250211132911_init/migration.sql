/*
  Warnings:

  - You are about to drop the column `npwp1Id` on the `PembenahanWpIdentitasGanda` table. All the data in the column will be lost.
  - Added the required column `npwp1` to the `PembenahanWpIdentitasGanda` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "PembenahanWpIdentitasGanda" DROP CONSTRAINT "PembenahanWpIdentitasGanda_npwp1Id_fkey";

-- AlterTable
ALTER TABLE "PembenahanWpIdentitasGanda" DROP COLUMN "npwp1Id",
ADD COLUMN     "npwp1" TEXT NOT NULL;
