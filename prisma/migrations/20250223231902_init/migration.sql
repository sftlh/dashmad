/*
  Warnings:

  - A unique constraint covering the columns `[npwpId,tahunPajak]` on the table `BedahWPData` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "BedahWPData_npwpId_tahunPajak_key" ON "BedahWPData"("npwpId", "tahunPajak");
