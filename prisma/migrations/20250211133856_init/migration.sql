/*
  Warnings:

  - You are about to drop the column `npwp1` on the `PembenahanWpIdentitasGanda` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "PembenahanWpIdentitasGanda" DROP COLUMN "npwp1",
ADD COLUMN     "npwp1Id" TEXT;

-- AddForeignKey
ALTER TABLE "PembenahanWpIdentitasGanda" ADD CONSTRAINT "PembenahanWpIdentitasGanda_npwp1Id_fkey" FOREIGN KEY ("npwp1Id") REFERENCES "DatabaseWajibPajak"("id") ON DELETE SET NULL ON UPDATE CASCADE;
