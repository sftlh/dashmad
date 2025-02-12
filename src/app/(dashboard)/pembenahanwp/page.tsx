import ViewData from "@/components/ViewData";
import prisma from "@/lib/prisma";
import { auth } from "@clerk/nextjs/server";
import { Prisma } from "@prisma/client";
import React from "react";

const PembenahanWPPage = async ({
  searchParams,
}: {
  searchParams: { [key: string]: string | undefined };
}) => {
  const { sessionClaims, userId } = await auth();
  const role = (sessionClaims?.metadata as { role?: string })?.role;

  const { page, ...queryParams } = searchParams;
  const p = page ? parseInt(page) : 1;

  const queryCabangPusatBedaEntitas: Prisma.PembenahanCabangPusatBedahEntitasWhereInput;
  const queryPembenahanWpNamaTtlSama: Prisma.PembenahanWpNamaTtlSamaWhereInput;
  const queryPembenahanWpNikGanda: Prisma.PembenahanWpNikGandaWhereInput;
  const queryPembenahanWpIdentitasGanda: Prisma.PembenahanWpIdentitasGandaWhereInput;
  


  const [data1, count] = await prisma.$transaction([
    prisma.bedahWPData.findMany({
      where: query,
      take: ITEM_PER_PAGE,
      include: {
        npwp: true,
        user: true,
        sendingDataToKanwil: true,
      },
      skip: ITEM_PER_PAGE * (p - 1),
    }),
    prisma.bedahWPData.count({ where: query }),
  ]);

  return (
    <div className="pt-10">
      <ViewData data={data} />
    </div>
  );
};

export default PembenahanWPPage;
