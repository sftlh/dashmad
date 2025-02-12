/*
  Warnings:

  - You are about to drop the column `userId` on the `DatabaseWajibPajak` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "DatabaseWajibPajak" DROP CONSTRAINT "DatabaseWajibPajak_userId_fkey";

-- AlterTable
ALTER TABLE "DatabaseWajibPajak" DROP COLUMN "userId",
ADD COLUMN     "nipId" TEXT;

-- AddForeignKey
ALTER TABLE "DatabaseWajibPajak" ADD CONSTRAINT "DatabaseWajibPajak_nipId_fkey" FOREIGN KEY ("nipId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
