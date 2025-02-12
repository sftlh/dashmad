/*
  Warnings:

  - You are about to drop the column `npwp1` on the `PembenahanWpNikGanda` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "PembehananCabangPusatBedahEntitas" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "PembenahanWpNamaTtlSama" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "PembenahanWpNikGanda" DROP COLUMN "npwp1",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "npwp1Id" TEXT;

-- AddForeignKey
ALTER TABLE "PembenahanWpNikGanda" ADD CONSTRAINT "PembenahanWpNikGanda_npwp1Id_fkey" FOREIGN KEY ("npwp1Id") REFERENCES "DatabaseWajibPajak"("id") ON DELETE SET NULL ON UPDATE CASCADE;
