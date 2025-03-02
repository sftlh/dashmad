"use server"
import React from "react";

const Table = ({data, renderRow}:{data?:any, renderRow: (item: any) => React.ReactNode;}) => {
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
            Tahun Pajak
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
            Total Potensi
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
        {data.map((item: any) => renderRow(item))}
      </tbody>
    </table>
  );
};

export default Table;
