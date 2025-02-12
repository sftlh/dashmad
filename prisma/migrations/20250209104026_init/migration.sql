-- DropForeignKey
ALTER TABLE "PembehananCabangPusatBedahEntitas" DROP CONSTRAINT "PembehananCabangPusatBedahEntitas_nipId_fkey";

-- CreateTable
CREATE TABLE "PembenahanWpIdentitasGanda" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "PembenahanWpIdentitasGanda_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "PembehananCabangPusatBedahEntitas" ADD CONSTRAINT "PembehananCabangPusatBedahEntitas_nipId_fkey" FOREIGN KEY ("nipId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
