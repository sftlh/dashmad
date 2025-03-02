/*
  Warnings:

  - A unique constraint covering the columns `[npwpId,tahunPajak]` on the table `EmpoweringData` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "EmpoweringData_npwpId_tahunPajak_key" ON "EmpoweringData"("npwpId", "tahunPajak");
