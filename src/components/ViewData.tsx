import React from "react";
import TableSearch from "./TableSearch";
import Table from "./Table";
const ViewData = ({
  data,
  type,
  renderRow,
}: {
  data: any;
  type?: string;
  renderRow: (item: any) => React.ReactNode;
}) => {
  switch (type) {
    case "editempowering":
      type = "editempowering";
      break;
    case "editbedahwp":
      type = "editbedahwp";
      break;
  }
  return (
    <div className="px-4 sm:px-6 lg:px-8">
      <div className="sm:flex sm:items-center">
        <div className="sm:flex-auto">
          <h1 className="text-base font-semibold text-gray-900">
            Data Bedah WP
          </h1>
          <p className="mt-2 text-sm text-gray-700">
            Memuat Daftar Bedah Wajib Pajak yang telah direkam oleh User
          </p>
        </div>
        <div>
          <TableSearch />
        </div>
      </div>
      <div className="mt-8 flow-root">
        <div className="-mx-4 -my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
          <div className="inline-block min-w-full py-2 align-middle sm:px-6 lg:px-8">
            <div className="overflow-hidden shadow ring-1 ring-black/5 sm:rounded-lg">
              <Table data={data} renderRow={renderRow}/>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default ViewData;
