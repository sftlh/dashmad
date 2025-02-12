-- DropForeignKey
ALTER TABLE "DatabaseWajibPajak" DROP CONSTRAINT "DatabaseWajibPajak_nipId_fkey";

-- AddForeignKey
ALTER TABLE "DatabaseWajibPajak" ADD CONSTRAINT "DatabaseWajibPajak_nipId_fkey" FOREIGN KEY ("nipId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
