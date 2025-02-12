/*
  Warnings:

  - You are about to drop the column `pph25` on the `EmpoweringData` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "EmpoweringData" DROP COLUMN "pph25",
ADD COLUMN     "pph2529" BIGINT,
ALTER COLUMN "pph21" DROP NOT NULL,
ALTER COLUMN "pph22" DROP NOT NULL,
ALTER COLUMN "pph23" DROP NOT NULL,
ALTER COLUMN "pph26" DROP NOT NULL,
ALTER COLUMN "pphFinal" DROP NOT NULL,
ALTER COLUMN "pph15" DROP NOT NULL,
ALTER COLUMN "ppn" DROP NOT NULL,
ALTER COLUMN "pajakLainnya" DROP NOT NULL;

-- CreateTable
CREATE TABLE "BedahWPData" (
    "id" SERIAL NOT NULL,
    "npwpId" TEXT,
    "klasifikasi" INTEGER NOT NULL,
    "tahunPajak" INTEGER NOT NULL,
    "pph21" BIGINT,
    "pph22" BIGINT,
    "pph23" BIGINT,
    "pph2529" BIGINT,
    "pph26" BIGINT,
    "pphFinal" BIGINT,
    "pph15" BIGINT,
    "ppn" BIGINT,
    "pajakLainnya" BIGINT,

    CONSTRAINT "BedahWPData_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "BedahWPData" ADD CONSTRAINT "BedahWPData_npwpId_fkey" FOREIGN KEY ("npwpId") REFERENCES "DatabaseWajibPajak"("id") ON DELETE SET NULL ON UPDATE CASCADE;
