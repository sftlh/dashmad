-- AlterTable
ALTER TABLE "DatabaseWajibPajak" ADD COLUMN     "userId" TEXT;

-- AddForeignKey
ALTER TABLE "DatabaseWajibPajak" ADD CONSTRAINT "DatabaseWajibPajak_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
