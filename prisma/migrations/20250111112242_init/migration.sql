-- CreateEnum
CREATE TYPE "seksiPengawasan" AS ENUM ('PENGAWASAN_I', 'PENGAWASAN_II', 'PENGAWASAN_III', 'PENGAWASAN_IV', 'PENGAWASAN_V', 'PENGAWASAN_VI');

-- CreateTable
CREATE TABLE "ar" (
    "id" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "seksi" "seksiPengawasan" NOT NULL,

    CONSTRAINT "ar_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "ar_username_key" ON "ar"("username");
