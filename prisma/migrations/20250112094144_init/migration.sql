-- CreateTable
CREATE TABLE "EmpoweringData" (
    "id" SERIAL NOT NULL,
    "npwpId" TEXT,
    "arId" TEXT,
    "tahunPajak" INTEGER NOT NULL,
    "pph21" BIGINT NOT NULL,
    "pph22" BIGINT NOT NULL,
    "pph23" BIGINT NOT NULL,
    "pph25" BIGINT NOT NULL,
    "pph26" BIGINT NOT NULL,
    "pphFinal" BIGINT NOT NULL,
    "pph15" BIGINT NOT NULL,
    "ppn" BIGINT NOT NULL,
    "pajakLainnya" BIGINT NOT NULL,

    CONSTRAINT "EmpoweringData_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "DatabaseWajibPajak" (
    "id" TEXT NOT NULL,
    "nama" TEXT NOT NULL,
    "alamat" TEXT NOT NULL,
    "nomorHp" TEXT NOT NULL,

    CONSTRAINT "DatabaseWajibPajak_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "EmpoweringData" ADD CONSTRAINT "EmpoweringData_npwpId_fkey" FOREIGN KEY ("npwpId") REFERENCES "DatabaseWajibPajak"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EmpoweringData" ADD CONSTRAINT "EmpoweringData_arId_fkey" FOREIGN KEY ("arId") REFERENCES "ar"("id") ON DELETE SET NULL ON UPDATE CASCADE;
