-- AlterTable
ALTER TABLE "FinalPembenahanMfwp" ADD COLUMN     "pembenahanWpIdentitasGandaId" INTEGER,
ADD COLUMN     "pembenahanWpNamaTtlSamaId" INTEGER,
ADD COLUMN     "pembenahanWpNikGandaId" INTEGER;

-- AddForeignKey
ALTER TABLE "FinalPembenahanMfwp" ADD CONSTRAINT "FinalPembenahanMfwp_pembenahanWpIdentitasGandaId_fkey" FOREIGN KEY ("pembenahanWpIdentitasGandaId") REFERENCES "PembenahanWpIdentitasGanda"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "FinalPembenahanMfwp" ADD CONSTRAINT "FinalPembenahanMfwp_pembenahanWpNikGandaId_fkey" FOREIGN KEY ("pembenahanWpNikGandaId") REFERENCES "PembenahanWpNikGanda"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "FinalPembenahanMfwp" ADD CONSTRAINT "FinalPembenahanMfwp_pembenahanWpNamaTtlSamaId_fkey" FOREIGN KEY ("pembenahanWpNamaTtlSamaId") REFERENCES "PembenahanWpNamaTtlSama"("id") ON DELETE SET NULL ON UPDATE CASCADE;
