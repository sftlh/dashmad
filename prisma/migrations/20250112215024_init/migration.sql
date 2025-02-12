/*
  Warnings:

  - You are about to drop the column `arId` on the `EmpoweringData` table. All the data in the column will be lost.
  - You are about to drop the `ar` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "EmpoweringData" DROP CONSTRAINT "EmpoweringData_arId_fkey";

-- AlterTable
ALTER TABLE "EmpoweringData" DROP COLUMN "arId",
ADD COLUMN     "userId" TEXT;

-- DropTable
DROP TABLE "ar";

-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "seksi" "seksiPengawasan" NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_username_key" ON "User"("username");

-- AddForeignKey
ALTER TABLE "EmpoweringData" ADD CONSTRAINT "EmpoweringData_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
