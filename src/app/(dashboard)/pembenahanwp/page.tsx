import ViewPembenahanWP from "@/components/ViewPembenahanWP";
import { getUserById } from "@/lib/getById";
import { ITEM_PER_PAGE } from "@/lib/page_settings";
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
  const currentUserId = await getUserById(userId as string);
  const renderRow = (item: any) => (
    <tr key={item.id}>
      <td className="whitespace-nowrap py-4 pl-4 pr-3 text-sm font-medium text-gray-900 sm:pl-6">
        {/* {item.npwp.id} */}
      </td>
      <td className="whitespace-nowrap px-2 py-4 text-sm text-gray-500">
        {/* {item.npwp.nama} */}
      </td>
      <td className="whitespace-nowrap px-2 py-4 text-sm text-gray-500">
        {item.kunci === true ? (
          <p className="text-green-600">Data Siap Dikirim</p>
        ) : item.kunci === false ? (
          <p className="text-gold">Belum Dikunci</p>
        ) : (
          item?.sendingDataToKanwil?.statusKirim
        )}
      </td>
      <td className="whitespace-nowrap px-2 py-4 text-sm text-gray-500"></td>
      <td className="whitespace-nowrap px-2 py-4 text-sm text-gray-500">
        {new Intl.DateTimeFormat("id-ID", {
          hour12: false,
          year: "numeric",
          day: "numeric",
          month: "long",
        }).format(item.createdAt)}
      </td>
      <td className="relative whitespace-nowrap py-4 pl-3 pr-4 text-right text-sm font-medium sm:pr-6">
        <a
          href={`/bedahwp/view/${item?.id}`}
          className="text-navy hover:text-dongker"
        >
          Detail
        </a>
      </td>
      {item.kunci === true ? (
        <td className="relative whitespace-nowrap py-4 pl-3 pr-4 text-center text-sm font-medium sm:pr-6">
          <a className=" text-red-400 hover:text-red-500 cursor-not-allowed">
            Terkunci
          </a>
        </td>
      ) : (
        <td className="relative whitespace-nowrap py-4 pl-3 pr-4 text-center text-sm font-medium sm:pr-6">
          {(role === "ar_1" ||
            role === "ar_2" ||
            role === "ar_3" ||
            role === "ar_4" ||
            role === "ar_5" ||
            role === "ar_6") && (
            <>
              {/* <FormContainer table="editbedahwp" type="update" data={item} /> */}
            </>
          )}
        </td>
      )}
    </tr>
  );

  const { page, ...queryParams } = searchParams;
  const p = page ? parseInt(page) : 1;

  const queryCabangPusatBedaEntitas: Prisma.PembenahanCabangPusatBedahEntitasWhereInput =
    {};
  const queryPembenahanWpNamaTtlSama: Prisma.PembenahanWpNamaTtlSamaWhereInput =
    {};
  const queryPembenahanWpNikGanda: Prisma.PembenahanWpNikGandaWhereInput = {};
  const queryPembenahanWpIdentitasGanda: Prisma.PembenahanWpIdentitasGandaWhereInput =
    {};

  if (currentUserId) {
    queryPembenahanWpIdentitasGanda.nip = currentUserId.nip;
  }

  if (queryParams?.search) {
    const searchValue = queryParams.search;

    queryCabangPusatBedaEntitas.npwpCabang = {
      contains: searchValue,
      mode: "insensitive",
    };

    queryPembenahanWpIdentitasGanda.npwp1 = {
      contains: searchValue,
      mode: "insensitive",
    };

    queryPembenahanWpNamaTtlSama.npwp = {
      contains: searchValue,
      mode: "insensitive",
    };

    queryPembenahanWpNikGanda.npwp1Id = {
      contains: searchValue,
      mode: "insensitive",
    };
  }

  const [data, data2, data3, data4] = await prisma.$transaction([
    prisma.pembenahanCabangPusatBedahEntitas.findMany({
      where: queryCabangPusatBedaEntitas,
      take: ITEM_PER_PAGE,
      include: {
        nip: true,
      },
      skip: ITEM_PER_PAGE * (p - 1),
    }),
    prisma.pembenahanWpIdentitasGanda.findMany({
      where: queryPembenahanWpIdentitasGanda,
      take: ITEM_PER_PAGE,
      skip: ITEM_PER_PAGE * (p - 1),
    }),
    prisma.pembenahanWpNikGanda.findMany({
      where: queryPembenahanWpNikGanda,
      take: ITEM_PER_PAGE,
      skip: ITEM_PER_PAGE * (p - 1),
    }),
    prisma.pembenahanWpNamaTtlSama.findMany({
      where: queryPembenahanWpNamaTtlSama,
      take: ITEM_PER_PAGE,
      skip: ITEM_PER_PAGE * (p - 1),
    }),
  ]);

  return (
    <div className="pt-10">
      <ViewPembenahanWP
        data={data}
        data2={data2}
        data3={data3}
        data4={data4}
        renderRow={renderRow}
      />
    </div>
  );
};

export default PembenahanWPPage;
