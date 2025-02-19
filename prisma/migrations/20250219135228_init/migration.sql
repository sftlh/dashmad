-- CreateTable
CREATE TABLE "FinalPembenahanMfwp" (
    "id" SERIAL NOT NULL,
    "npwp" TEXT,
    "namaWajibPajak" TEXT,
    "jenisTarget" TEXT,
    "hasilUjiValiditas" TEXT,
    "keteranganUjiValiditas" TEXT,
    "jenisMfwp" TEXT,
    "npwpGanda" TEXT,
    "detilKeterangan" TEXT,
    "kebutuhanKlarifikasi" TEXT,
    "hasilKlarifikasi" TEXT,
    "buktiWpTidakMemberikanKlarifikasi" TEXT,
    "usulanTindakanPembenahan" TEXT,
    "prognosaTindakan" TEXT,
    "alasanBelumDilakukanTindakanPembenahan" TEXT,
    "npwpLawan" TEXT,
    "usulanTindakanPembenahanLawan" TEXT,
    "keterangan" TEXT,

    CONSTRAINT "FinalPembenahanMfwp_pkey" PRIMARY KEY ("id")
);
