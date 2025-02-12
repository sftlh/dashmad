/*
  Warnings:

  - Added the required column `userId` to the `BedahWPData` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "BedahWPData" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "userId" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "EmpoweringData" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- AddForeignKey
ALTER TABLE "BedahWPData" ADD CONSTRAINT "BedahWPData_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
