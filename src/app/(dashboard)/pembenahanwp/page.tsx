import FormCreateTransition from "@/components/FormCreateTransition";
import ViewPembenahanWP from "@/components/ViewPembenahanWP";
import { getUserById } from "@/lib/getById";
import { ITEM_PER_PAGE } from "@/lib/page_settings";
import prisma from "@/lib/prisma";
import { auth, currentUser } from "@clerk/nextjs/server";
import {
  DatabaseWajibPajak,
  PembenahanCabangPusatBedahEntitas,
  PembenahanWpIdentitasGanda,
  PembenahanWpNamaTtlSama,
  PembenahanWpNikGanda,
  Prisma,
  User,
} from "@prisma/client";
import React from "react";

export type PembenahanWpIdentitasGandaType = PembenahanWpIdentitasGanda;
export type PembenahanWpNikGandaType = PembenahanWpNikGanda & {
  npwp1: DatabaseWajibPajak;
};
export type PembenahanWpCabangPusatBedahEntitasType =
  PembenahanCabangPusatBedahEntitas & { nip: User };
export type PembenahanWpNamaTtlSamaType = PembenahanWpNamaTtlSama & {
  nip: User;
};

const PembenahanWPPage = async ({
  searchParams,
}: {
  searchParams: { [key: string]: string | undefined };
}) => {
  const { sessionClaims, userId } = await auth();
  const user = await currentUser();
  const role = (sessionClaims?.metadata as { role?: string })?.role;
  const currentUserId = await getUserById(user?.id as string);

  const renderRowPembenahanWpIdentitasGanda = (
    item: PembenahanWpIdentitasGandaType
  ) => (
    <tr key={item.id}>
      <td className="whitespace-nowrap py-4 pl-4 pr-3 text-sm font-medium text-gray-900 sm:pl-6">
        {item.npwp1}
      </td>
      <td className="whitespace-nowrap px-2 py-4 text-sm text-gray-500">
        {item.namaWp}
      </td>
      <td className="whitespace-nowrap px-2 py-4 text-sm text-gray-500">
        Wajib Pajak dengan Identitas Ganda
      </td>
      <td className="whitespace-nowrap px-2 py-4 text-sm text-gray-500">
        {item?.currentStatus === "" || item?.currentStatus === "Progress" ? (
          <span className="text-red-500">Belum Selesai</span>
        ) : (
          <></>
        )}
      </td>
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
      <td className="relative whitespace-nowrap py-4 pl-3 pr-4 text-center text-sm font-medium sm:pr-6">
        {(role === "ar_1" ||
          role === "ar_2" ||
          role === "ar_3" ||
          role === "ar_4" ||
          role === "ar_5" ||
          role === "ar_6") && (
          <>
            <FormCreateTransition type="wpidentitasganda" data={item} />
          </>
        )}
      </td>
    </tr>
  );

  const renderRowPembenahanWpNikGanda = (item: PembenahanWpNikGandaType) => (
    <tr key={item.id}>
      <td className="whitespace-nowrap py-4 pl-4 pr-3 text-sm font-medium text-gray-900 sm:pl-6">
        {item?.npwp1Id}
      </td>
      <td className="whitespace-nowrap px-2 py-4 text-sm text-gray-500">
        {item?.nama1}
      </td>
      <td className="whitespace-nowrap px-2 py-4 text-sm text-gray-500">
        Wajib Pajak dengan NIK Identitas Ganda
      </td>
      <td className="whitespace-nowrap px-2 py-4 text-sm text-gray-500">
        {item?.currentStatus === "" || item?.currentStatus === "Progress" ? (
          <span className="text-red-500">Belum Selesai</span>
        ) : (
          <></>
        )}
      </td>
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
      <td className="relative whitespace-nowrap py-4 pl-3 pr-4 text-center text-sm font-medium sm:pr-6">
        {(role === "ar_1" ||
          role === "ar_2" ||
          role === "ar_3" ||
          role === "ar_4" ||
          role === "ar_5" ||
          role === "ar_6") && (
          <>
            <FormCreateTransition type="wpnikganda" data={item} />
          </>
        )}
      </td>
    </tr>
  );

  const renderRowPembenahanCabangPusatBedaEntitas = (
    item: PembenahanWpCabangPusatBedahEntitasType
  ) => (
    <tr key={item.id}>
      <td className="whitespace-nowrap py-4 pl-4 pr-3 text-sm font-medium text-gray-900 sm:pl-6">
        {item?.npwpCabang}
      </td>
      <td className="whitespace-nowrap px-2 py-4 text-sm text-gray-500">
        {item?.namaCabang}
      </td>
      <td className="whitespace-nowrap px-2 py-4 text-sm text-gray-500">
        Wajib Pajak Cabang dengan Pusat Beda Entitas
      </td>
      <td className="whitespace-nowrap px-2 py-4 text-sm text-gray-500">
        {item?.currentStatus === "" || item?.currentStatus === "Progress" ? (
          <span className="text-red-500">Belum Selesai</span>
        ) : (
          <></>
        )}
      </td>
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
      <td className="relative whitespace-nowrap py-4 pl-3 pr-4 text-center text-sm font-medium sm:pr-6">
        {(role === "ar_1" ||
          role === "ar_2" ||
          role === "ar_3" ||
          role === "ar_4" ||
          role === "ar_5" ||
          role === "ar_6") && (
          <>
            <FormCreateTransition type="cabangpusatbedaentitas" data={item} />
          </>
        )}
      </td>
    </tr>
  );

  const renderRowPembenahanWpNamaTtlSama = (
    item: PembenahanWpNamaTtlSamaType
  ) => (
    <tr key={item.id}>
      <td className="whitespace-nowrap py-4 pl-4 pr-3 text-sm font-medium text-gray-900 sm:pl-6">
        {item?.npwp}
      </td>
      <td className="whitespace-nowrap px-2 py-4 text-sm text-gray-500">
        {item?.nama}
      </td>
      <td className="whitespace-nowrap px-2 py-4 text-sm text-gray-500">
        Wajib Pajak Nama Tempat Tanggal Lahir Sama
      </td>
      <td className="whitespace-nowrap px-2 py-4 text-sm text-gray-500">
        {item?.currentStatus === "" || item?.currentStatus === "Progress" ? (
          <span className="text-red-500">Belum Selesai</span>
        ) : (
          <></>
        )}
      </td>
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
      <td className="relative whitespace-nowrap py-4 pl-3 pr-4 text-center text-sm font-medium sm:pr-6">
        {(role === "ar_1" ||
          role === "ar_2" ||
          role === "ar_3" ||
          role === "ar_4" ||
          role === "ar_5" ||
          role === "ar_6") && (
          <>
            <FormCreateTransition type="wpttlsama" data={item} />
          </>
        )}
      </td>
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
    queryPembenahanWpIdentitasGanda.currentStatus = "Progress";
    queryCabangPusatBedaEntitas.nipId = currentUserId.id;
    queryCabangPusatBedaEntitas.currentStatus = "Progress";
    queryPembenahanWpNamaTtlSama.nipId = currentUserId.id;
    queryPembenahanWpNamaTtlSama.currentStatus = "Progress";
    if (!queryPembenahanWpNikGanda.npwp1) {
      queryPembenahanWpNikGanda.npwp1 = {};
    }
    queryPembenahanWpNikGanda.npwp1.nipId = currentUserId.id;
    queryPembenahanWpNikGanda.currentStatus = "Progress";
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
      include: {
        npwp1: true,
      },
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
        renderRowPembenahanWpIdentitasGanda={
          renderRowPembenahanWpIdentitasGanda
        }
        renderRowPembenahanWpNikGanda={renderRowPembenahanWpNikGanda}
        renderRowPembenahanCabangPusatBedaEntitas={
          renderRowPembenahanCabangPusatBedaEntitas
        }
        renderRowPembenahanWpNamaTtlSama={renderRowPembenahanWpNamaTtlSama}
      />
    </div>
  );
};

export default PembenahanWPPage;
