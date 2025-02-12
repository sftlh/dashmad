-- DropForeignKey
ALTER TABLE "BedahWPData" DROP CONSTRAINT "BedahWPData_userId_fkey";

-- AlterTable
ALTER TABLE "BedahWPData" ALTER COLUMN "userId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "BedahWPData" ADD CONSTRAINT "BedahWPData_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
