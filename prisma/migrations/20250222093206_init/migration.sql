-- AlterTable
ALTER TABLE "FinalPembenahanMfwp" ADD COLUMN     "sendingDataToKanwilId" INTEGER;

-- AddForeignKey
ALTER TABLE "FinalPembenahanMfwp" ADD CONSTRAINT "FinalPembenahanMfwp_sendingDataToKanwilId_fkey" FOREIGN KEY ("sendingDataToKanwilId") REFERENCES "SendingDataToKanwil"("id") ON DELETE SET NULL ON UPDATE CASCADE;
