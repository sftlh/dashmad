-- CreateTable
CREATE TABLE "BedahWPDummy" (
    "id" SERIAL NOT NULL,
    "npwpId" TEXT,
    "klasifikasi" TEXT,
    "tahunPajak" INTEGER,
    "pdfFile" TEXT,

    CONSTRAINT "BedahWPDummy_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "BedahWPDummy" ADD CONSTRAINT "BedahWPDummy_npwpId_fkey" FOREIGN KEY ("npwpId") REFERENCES "DatabaseWajibPajak"("id") ON DELETE SET NULL ON UPDATE CASCADE;
