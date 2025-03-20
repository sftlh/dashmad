-- AlterTable
ALTER TABLE "BedahWPData" ADD COLUMN     "alket" INTEGER,
ADD COLUMN     "analisisLaporanKeuangan" INTEGER,
ADD COLUMN     "analisisTransferPricing" INTEGER,
ADD COLUMN     "analisisWpGroup" INTEGER,
ADD COLUMN     "bobotKegiatan" INTEGER,
ADD COLUMN     "dataVisit" INTEGER,
ADD COLUMN     "kesimpulan" INTEGER,
ADD COLUMN     "kluPenompangPenerimaan" INTEGER,
ADD COLUMN     "kolaborasiDenganPenilai" INTEGER,
ADD COLUMN     "masukDpp" INTEGER,
ADD COLUMN     "mirroring" INTEGER,
ADD COLUMN     "pemanfaatanDataEksternal" INTEGER,
ADD COLUMN     "peserta" INTEGER,
ADD COLUMN     "potensiTambahan" INTEGER,
ADD COLUMN     "statusSpt" TEXT;

-- AlterTable
ALTER TABLE "User" ADD COLUMN     "nipPanjang" TEXT;
