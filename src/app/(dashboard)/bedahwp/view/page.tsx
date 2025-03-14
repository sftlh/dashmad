import FormContainer from "@/components/FormContainer";
import Pagination from "@/components/Pagination";
import ViewData from "@/components/ViewData";
import { ITEM_PER_PAGE } from "@/lib/page_settings";
import prisma from "@/lib/prisma";
import { auth } from "@clerk/nextjs/server";
import {
  BedahWPData,
  DatabaseWajibPajak,
  Prisma,
  SendingDataToKanwil,
  User,
} from "@prisma/client";
import React from "react";

export type BedahWPList = BedahWPData & { npwp: DatabaseWajibPajak } & {
  user: User;
} & { sendingDataToKanwil: SendingDataToKanwil };

const BedahWPViewPage = async ({
  searchParams,
}: {
  searchParams: { [key: string]: string | undefined };
}) => {
  const {sessionClaims, userId } = await auth();
  const role = (sessionClaims?.metadata as {role?:string})?.role;

  const renderRow = ((item:BedahWPList) => (
    <tr key={item.id}>
      <td className="whitespace-nowrap py-4 pl-4 pr-3 text-sm font-medium text-gray-900 sm:pl-6">
        {item.npwp.id}
      </td>
      <td className="whitespace-nowrap px-2 py-4 text-sm text-gray-500">
        {item.npwp.nama}
      </td>
      <td className="whitespace-nowrap px-2 py-4 text-sm text-gray-500">
        {item.tahunPajak}
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
      <td className="whitespace-nowrap px-2 py-4 text-sm text-gray-500">
        {new Intl.NumberFormat("id-ID", {
          style: "currency",
          currency: "IDR",
        }).format(
          [
            item?.pph15,
            item?.pph21,
            item?.pph22,
            item?.pph23,
            item?.pph2529,
            item?.pph26,
            item?.ppn,
            item?.pphFinal,
            item?.pajakLainnya,
          ].reduce((acc: any, curr: any) => acc + curr, 0)
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
      {item.kunci === true ? (
        <td className="relative whitespace-nowrap py-4 pl-3 pr-4 text-center text-sm font-medium sm:pr-6">
          <a className=" text-red-400 hover:text-red-500 cursor-not-allowed">
            Terkunci
          </a>
        </td>
      ) : (
        <td className="relative whitespace-nowrap py-4 pl-3 pr-4 text-center text-sm font-medium sm:pr-6">
          {
            (role === "ar_1" || role === "ar_2" || role === "ar_3" || role === "ar_4" || role === "ar_5" || role === "ar_6") && (
              <>
                <FormContainer table="editbedahwp" type="update" data={item}/>
              </>
            )
          }
        </td>
      )}
    </tr>
  ));
  
  const { page, ...queryParams } = searchParams;
  const p = page ? parseInt(page) : 1;

  const query: Prisma.BedahWPDataWhereInput = {};

  //URL PARAMS CONDITION
  if (queryParams) {
    for (const [key, value] of Object.entries(queryParams)) {
      if (value !== undefined) {
        switch (key) {
          case "search":
            query.npwpId = {
              contains: value,
              mode: "insensitive",
            };
            break;
          // case "search":
          //   query.npwp = {
          //     nama: {
          //       contains: value,
          //       mode: "insensitive",
          //     },
          //   };
          default:
            break;
        }
      }
    }
    switch (userId) {
      case userId:
        query.userId = userId!;
    }
    const [data, count] = await prisma.$transaction([
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
        <ViewData data={data} renderRow={renderRow} type="editbedahwp" />
        <Pagination page={p} count={count} />
      </div>
    );
  }
};

export default BedahWPViewPage;
