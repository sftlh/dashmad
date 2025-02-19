-- CreateTable
CREATE TABLE "JawabanPembenahanWpNamaTtlSama" (
    "id" SERIAL NOT NULL,
    "dataId" INTEGER,
    "jawabanLangsung" TEXT,
    "keterangan" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "userId" TEXT,

    CONSTRAINT "JawabanPembenahanWpNamaTtlSama_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "JawabanPembenahanWpNamaTtlSama" ADD CONSTRAINT "JawabanPembenahanWpNamaTtlSama_dataId_fkey" FOREIGN KEY ("dataId") REFERENCES "PembenahanWpNamaTtlSama"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "JawabanPembenahanWpNamaTtlSama" ADD CONSTRAINT "JawabanPembenahanWpNamaTtlSama_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
