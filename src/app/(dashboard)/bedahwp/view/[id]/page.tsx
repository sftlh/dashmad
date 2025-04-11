import { getBedahWpData } from "@/lib/getById";
import PaperClipIcon from "@heroicons/react/24/outline/PaperClipIcon";
import { BedahWPData, DatabaseWajibPajak } from "@prisma/client";
import React from "react";

const BedahWPDetailPage = async ({
  params: { id },
}: {
  params: { id: string };
}) => {
  const dataById = await getBedahWpData(id);
  return (
    <div className="p-10">
      <div className="overflow-hidden bg-white shadow sm:rounded-lg">
        {/* Header Section */}
        <div className="flex flex-row justify-between">
          <div className="px-4 py-4 sm:px-6">
            <h3 className="text-base font-semibold text-gray-900">
              Detail Wajib Pajak
            </h3>
            <p className="mt-1 max-w-2xl text-sm text-gray-500">
              Detail Bedah Wajib Pajak
            </p>
          </div>
          <div className="px-4 py-4 sm:px-6">
            <h3 className="text-base font-semibold text-navy">
              Status Kirim Kanwil
            </h3>
            <p className="mt-1 max-w-2xl text-left text-sm text-gold">
              {dataById?.sendingDataToKanwil?.nomorNd == null ? (
                <span className="text-red-700">Belum Terkirim</span>
              ) : (
                <div className="flex flex-col">
                  <span className="text-green-700">Sudah Terkirim</span>
                  <span className="text-slate-400">Nomor ND: <span className="text-navy">{dataById?.sendingDataToKanwil?.nomorNd}</span> </span>
                </div>
              )}
            </p>
          </div>
        </div>

        {/* Detail Section divided into two columns */}
        <div className="border-t border-gray-100">
          <div className="grid grid-cols-1 md:grid-cols-2 divide-x divide-gray-100">
            {/* Left Column: General Information */}
            <dl className="divide-y divide-gray-100">
              <div className="px-4 py-4 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                <dt className="text-sm font-medium text-gray-900">NPWP</dt>
                <dd className="mt-1 text-sm text-gray-700 sm:col-span-2 sm:mt-0">
                  {dataById?.npwpId}
                </dd>
              </div>
              <div className="px-4 py-4 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                <dt className="text-sm font-medium text-gray-900">
                  Nama Wajib Pajak
                </dt>
                <dd className="mt-1 text-sm text-gray-700 sm:col-span-2 sm:mt-0">
                  {dataById?.npwp?.nama}
                </dd>
              </div>
              <div className="px-4 py-4 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                <dt className="text-sm font-medium text-gray-900">
                  Tanggal Pelaksanaan
                </dt>
                <dd className="mt-1 text-sm text-gray-700 sm:col-span-2 sm:mt-0">
                  {new Intl.DateTimeFormat("id-ID", {
                    hour12: false,
                    year: "numeric",
                    day: "numeric",
                    month: "long",
                  }).format(dataById?.pelaksanaanKegiatan as Date)}
                </dd>
              </div>
              <div className="px-4 py-4 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                <dt className="text-sm font-medium text-gray-900">
                  Tahun Pajak
                </dt>
                <dd className="mt-1 text-sm text-gray-700 sm:col-span-2 sm:mt-0">
                  {dataById?.tahunPajak}
                </dd>
              </div>
              <div className="px-4 py-4 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                <dt className="text-sm font-medium text-gray-900">
                  Tanggal Input
                </dt>
                <dd className="mt-1 text-sm text-gray-700 sm:col-span-2 sm:mt-0">
                  {new Intl.DateTimeFormat("id-ID", {
                    hour12: false,
                    year: "numeric",
                    day: "numeric",
                    month: "long",
                  }).format(dataById?.createdAt as Date)}
                </dd>
              </div>
            </dl>

            {/* Right Column: Tax Potential Details */}
            <dl className="divide-y divide-gray-100">
              <div className="px-4 py-4 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                <dt className="text-sm font-medium text-gray-900">
                  Potensi PPh 21
                </dt>
                <dd className="mt-1 text-sm text-gray-700 sm:col-span-2 sm:mt-0">
                  {new Intl.NumberFormat("id-ID", {
                    style: "currency",
                    currency: "IDR",
                  }).format(dataById?.pph21 as number)}
                </dd>
              </div>
              <div className="px-4 py-4 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                <dt className="text-sm font-medium text-gray-900">
                  Potensi PPh 22
                </dt>
                <dd className="mt-1 text-sm text-gray-700 sm:col-span-2 sm:mt-0">
                  {new Intl.NumberFormat("id-ID", {
                    style: "currency",
                    currency: "IDR",
                  }).format(dataById?.pph22 as number)}
                </dd>
              </div>
              <div className="px-4 py-4 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                <dt className="text-sm font-medium text-gray-900">
                  Potensi PPh 23
                </dt>
                <dd className="mt-1 text-sm text-gray-700 sm:col-span-2 sm:mt-0">
                  {new Intl.NumberFormat("id-ID", {
                    style: "currency",
                    currency: "IDR",
                  }).format(dataById?.pph23 as number)}
                </dd>
              </div>
              <div className="px-4 py-4 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                <dt className="text-sm font-medium text-gray-900">
                  Potensi PPh 25/29
                </dt>
                <dd className="mt-1 text-sm text-gray-700 sm:col-span-2 sm:mt-0">
                  {new Intl.NumberFormat("id-ID", {
                    style: "currency",
                    currency: "IDR",
                  }).format(dataById?.pph2529 as number)}
                </dd>
              </div>
              <div className="px-4 py-4 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                <dt className="text-sm font-medium text-gray-900">
                  Potensi PPh 26
                </dt>
                <dd className="mt-1 text-sm text-gray-700 sm:col-span-2 sm:mt-0">
                  {new Intl.NumberFormat("id-ID", {
                    style: "currency",
                    currency: "IDR",
                  }).format(dataById?.pph26 as number)}
                </dd>
              </div>
              <div className="px-4 py-4 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                <dt className="text-sm font-medium text-gray-900">
                  Potensi PPN
                </dt>
                <dd className="mt-1 text-sm text-gray-700 sm:col-span-2 sm:mt-0">
                  {new Intl.NumberFormat("id-ID", {
                    style: "currency",
                    currency: "IDR",
                  }).format(dataById?.ppn as number)}
                </dd>
              </div>
              <div className="px-4 py-4 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                <dt className="text-sm font-medium text-gray-900">
                  Potensi PPh 15
                </dt>
                <dd className="mt-1 text-sm text-gray-700 sm:col-span-2 sm:mt-0">
                  {new Intl.NumberFormat("id-ID", {
                    style: "currency",
                    currency: "IDR",
                  }).format(dataById?.pph15 as number)}
                </dd>
              </div>
              <div className="px-4 py-4 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                <dt className="text-sm font-medium text-gray-900">
                  Potensi Pajak Lainnya
                </dt>
                <dd className="mt-1 text-sm text-gray-700 sm:col-span-2 sm:mt-0">
                  {new Intl.NumberFormat("id-ID", {
                    style: "currency",
                    currency: "IDR",
                  }).format(dataById?.pajakLainnya as number)}
                </dd>
              </div>
              <div className="px-4 py-4 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                <dt className="text-sm font-bold text-gray-900">
                  Total Potensi
                </dt>
                <dd className="mt-1 text-sm text-gray-700 sm:col-span-2 sm:mt-0">
                  {new Intl.NumberFormat("id-ID", {
                    style: "currency",
                    currency: "IDR",
                  }).format(
                    [
                      dataById?.pph15,
                      dataById?.pph21,
                      dataById?.pph22,
                      dataById?.pph23,
                      dataById?.pph2529,
                      dataById?.pph26,
                      dataById?.ppn,
                      dataById?.pphFinal,
                      dataById?.pajakLainnya,
                    ].reduce((acc: any, curr: any) => acc + curr, 0)
                  )}
                </dd>
              </div>
            </dl>
          </div>
        </div>
      </div>
    </div>
  );
};

export default BedahWPDetailPage;
