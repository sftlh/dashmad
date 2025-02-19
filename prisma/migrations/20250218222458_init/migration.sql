-- CreateTable
CREATE TABLE "JawabanPembenahanWpNikGanda" (
    "id" SERIAL NOT NULL,
    "dataId" INTEGER,
    "jawabanLangsung" TEXT,
    "perluDihapus" TEXT,
    "nomorLhp" TEXT,
    "keterangan" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "userId" TEXT,

    CONSTRAINT "JawabanPembenahanWpNikGanda_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "JawabanPembenahanWpNikGanda" ADD CONSTRAINT "JawabanPembenahanWpNikGanda_dataId_fkey" FOREIGN KEY ("dataId") REFERENCES "PembenahanWpNikGanda"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "JawabanPembenahanWpNikGanda" ADD CONSTRAINT "JawabanPembenahanWpNikGanda_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
