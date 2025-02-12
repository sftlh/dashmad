-- DropForeignKey
ALTER TABLE "PembehananCabangPusatBedahEntitas" DROP CONSTRAINT "PembehananCabangPusatBedahEntitas_nipId_fkey";

-- AddForeignKey
ALTER TABLE "PembehananCabangPusatBedahEntitas" ADD CONSTRAINT "PembehananCabangPusatBedahEntitas_nipId_fkey" FOREIGN KEY ("nipId") REFERENCES "User"("nip") ON DELETE SET NULL ON UPDATE CASCADE;
