"use server";
import React from "react";

const TablePembenahanWP = ({
  data,
  data2,
  data3,
  data4,
  renderRowPembenahanWpNikGanda,
  renderRowPembenahanWpIdentitasGanda,
  renderRowPembenahanCabangPusatBedaEntitas,
  renderRowPembenahanWpNamaTtlSama,
}: {
  data?: any;
  data3: any;
  data4: any;
  data2?: any;
  renderRowPembenahanWpNikGanda: (item: any) => React.ReactNode;
  renderRowPembenahanWpIdentitasGanda: (item: any) => React.ReactNode;
  renderRowPembenahanCabangPusatBedaEntitas: (item: any) => React.ReactNode;
  renderRowPembenahanWpNamaTtlSama: (item: any) => React.ReactNode;
}) => {
  return (
    <table className="min-w-full divide-y divide-gray-300">
      <thead>
        <tr>
          <th
            scope="col"
            className="py-3.5 pl-4 pr-3 text-left text-sm font-semibold text-gray-900 sm:pl-6"
          >
            NPWP
          </th>
          <th
            scope="col"
            className="px-2 py-3.5 text-left text-sm font-semibold text-gray-900"
          >
            Nama Wajib Pajak
          </th>
          <th
            scope="col"
            className="px-2 py-3.5 text-left text-sm font-semibold text-gray-900"
          >
            Kategori
          </th>
          <th
            scope="col"
            className="px-2 py-3.5 text-left text-sm font-semibold text-gray-900"
          >
            Status
          </th>
          <th
            scope="col"
            className="px-2 py-3.5 text-left text-sm font-semibold text-gray-900"
          >
            Tanggal Input
          </th>
          <th scope="col" className="relative py-3.5 pl-3 pr-4 sm:pr-6 lg:pr-8">
            <span className="sr-only">Edit</span>
          </th>
          <th scope="col" className="relative py-3.5 pl-3 pr-4 sm:pr-6 lg:pr-8">
            <span className="sr-only">Detail</span>
          </th>
        </tr>
      </thead>
      <tbody className="divide-y divide-gray-200 bg-white">
        {data2.map((item: any) => renderRowPembenahanWpIdentitasGanda(item))}
      </tbody>
      <tbody className="divide-y divide-gray-200 bg-white">
        {data.map((item: any) =>
          renderRowPembenahanCabangPusatBedaEntitas(item)
        )}
      </tbody>
      <tbody className="divide-y divide-gray-200 bg-white">
        {data3.map((item: any) => renderRowPembenahanWpNikGanda(item))}
      </tbody>
      <tbody className="divide-y divide-gray-200 bg-white">
        {data4.map((item: any) => renderRowPembenahanWpNamaTtlSama(item))}
      </tbody>
    </table>
  );
};

export default TablePembenahanWP;
