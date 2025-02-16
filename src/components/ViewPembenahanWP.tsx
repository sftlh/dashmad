import React from "react";
import TableSearch from "./TableSearch";
import TablePembenahanWP from "./TablePembenahanWP";
const ViewPembenahanWP = ({
  data,
  data2,
  data3,
  data4,
  type,
  renderRowPembenahanWpIdentitasGanda,
  renderRowPembenahanWpNikGanda,
  renderRowPembenahanCabangPusatBedaEntitas,
  renderRowPembenahanWpNamaTtlSama,
}: {
  data: any;
  data2?: any;
  data3?: any;
  data4?: any;
  type?: string;
  renderRowPembenahanWpIdentitasGanda: (item: any) => React.ReactNode;
  renderRowPembenahanWpNikGanda: (item: any) => React.ReactNode;
  renderRowPembenahanCabangPusatBedaEntitas: (item: any) => React.ReactNode;
  renderRowPembenahanWpNamaTtlSama: (item: any) => React.ReactNode;
}) => {
  return (
    <div className="px-4 sm:px-6 lg:px-8">
      <div className="sm:flex sm:items-center">
        <div className="sm:flex-auto">
          <h1 className="text-base font-semibold text-gray-900">
            Data Pembenahan WP
          </h1>
          <p className="mt-2 text-sm text-gray-700">
            Memuat Daftar Pembenahan Master File Wajib Pajak yang harus
            diselesaikan oleh user.
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
              <TablePembenahanWP
                data={data}
                data3={data3}
                data4={data4}
                data2={data2}
                renderRowPembenahanWpIdentitasGanda={
                  renderRowPembenahanWpIdentitasGanda
                }
                renderRowPembenahanWpNikGanda={renderRowPembenahanWpNikGanda}
                renderRowPembenahanCabangPusatBedaEntitas={renderRowPembenahanCabangPusatBedaEntitas}
                renderRowPembenahanWpNamaTtlSama={renderRowPembenahanWpNamaTtlSama}
              />
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default ViewPembenahanWP;
