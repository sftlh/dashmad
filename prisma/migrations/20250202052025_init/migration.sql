-- AlterTable
ALTER TABLE "BedahWPData" ADD COLUMN     "sendingDataToKanwilId" INTEGER;

-- AddForeignKey
ALTER TABLE "BedahWPData" ADD CONSTRAINT "BedahWPData_sendingDataToKanwilId_fkey" FOREIGN KEY ("sendingDataToKanwilId") REFERENCES "SendingDataToKanwil"("id") ON DELETE SET NULL ON UPDATE CASCADE;
