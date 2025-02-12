-- AlterTable
ALTER TABLE "BedahWPData" ADD COLUMN     "sendingDataToKanwilId" INTEGER,
ADD COLUMN     "statusKirim" TEXT;

-- AlterTable
ALTER TABLE "EmpoweringData" ADD COLUMN     "sendingDataToKanwilId" INTEGER;

-- CreateTable
CREATE TABLE "SendingDataToKanwil" (
    "id" SERIAL NOT NULL,
    "nomorNd" TEXT NOT NULL,
    "tanggalKirimNd" TIMESTAMP(3) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SendingDataToKanwil_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "EmpoweringData" ADD CONSTRAINT "EmpoweringData_sendingDataToKanwilId_fkey" FOREIGN KEY ("sendingDataToKanwilId") REFERENCES "SendingDataToKanwil"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BedahWPData" ADD CONSTRAINT "BedahWPData_sendingDataToKanwilId_fkey" FOREIGN KEY ("sendingDataToKanwilId") REFERENCES "SendingDataToKanwil"("id") ON DELETE SET NULL ON UPDATE CASCADE;
