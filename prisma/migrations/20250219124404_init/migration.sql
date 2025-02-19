-- AlterTable
ALTER TABLE "PembenahanCabangPusatBedahEntitas" ALTER COLUMN "currentStatus" DROP NOT NULL;

-- CreateTable
CREATE TABLE "JawabanPembenahanWpIdentitasGanda" (
    "id" SERIAL NOT NULL,
    "dataId" INTEGER,
    "jawabanLangsung" TEXT,
    "perluDihapus" TEXT,
    "nomorLhp" TEXT,
    "keterangan" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "userId" TEXT,

    CONSTRAINT "JawabanPembenahanWpIdentitasGanda_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "JawabanPembenahanWpIdentitasGanda" ADD CONSTRAINT "JawabanPembenahanWpIdentitasGanda_dataId_fkey" FOREIGN KEY ("dataId") REFERENCES "PembenahanWpIdentitasGanda"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "JawabanPembenahanWpIdentitasGanda" ADD CONSTRAINT "JawabanPembenahanWpIdentitasGanda_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
