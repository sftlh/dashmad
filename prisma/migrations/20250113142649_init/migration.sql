/*
  Warnings:

  - Changed the type of `seksi` on the `User` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "User" DROP COLUMN "seksi",
ADD COLUMN     "seksi" TEXT NOT NULL;

-- DropEnum
DROP TYPE "seksiPengawasan";
