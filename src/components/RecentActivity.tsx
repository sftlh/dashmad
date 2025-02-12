import React from "react";

const capitalizeFirstLatter = (input: string) => {
  if (input?.length === 0) return input;
  return input?.charAt(0).toUpperCase() + input?.slice(1);
};

const RecentActivity = ({
  recentActivityData,
  type,
}: {
  recentActivityData: any;
  type?: string;
}) => {
  return (
    <div className="px-4 sm:px-6 lg:px-8 mt-4">
      <div className="sm:flex sm:items-center">
        <div className="sm:flex-auto">
          <h1 className="text-base font-semibold text-gray-900">
            Recent Activity
          </h1>
        </div>
      </div>
      <div className="mt-8 flow-root">
        <div className="-mx-4 -my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
          <div className="inline-block min-w-full py-2 align-middle sm:px-6 lg:px-8">
            <div className="overflow-hidden shadow ring-1 ring-black/5 sm:rounded-lg">
              <table className="min-w-full divide-y divide-gray-300">
                <thead className="bg-gray-50">
                  <tr>
                    <th
                      scope="col"
                      className="py-3.5 pl-4 text-left text-sm font-semibold text-gray-900 sm:pl-6"
                    >
                      {type === "bedahwp"
                        ? " Nama Account Representative"
                        : type === "empowering"
                        ? "Nama Kepala Seksi"
                        : ""}
                    </th>
                    <th
                      scope="col"
                      className="px-3 py-3.5 text-left text-sm font-semibold text-gray-900"
                    >
                      Seksi
                    </th>
                    <th
                      scope="col"
                      className="px-3 py-3.5 text-left text-sm font-semibold text-gray-900"
                    >
                      Nama Wajib Pajak
                    </th>
                    <th
                      scope="col"
                      className="px-3 py-3.5 text-left text-sm font-semibold text-gray-900"
                    >
                      Tanggal Input
                    </th>
                  </tr>
                </thead>
                <tbody className="divide-y divide-gray-200 bg-white">
                  {recentActivityData?.map((item: any) => (
                    <tr key={item.id}>
                      <td className="whitespace-nowrap py-4 pl-4 pr-3 text-sm font-medium text-gray-900 sm:pl-6">
                        {capitalizeFirstLatter(item?.user?.firstName) +
                          " " +
                          capitalizeFirstLatter(item?.user?.lastName)}
                      </td>
                      <td className="whitespace-nowrap px-3 py-4 text-sm font-medium text-gray-500">
                        {item?.user?.role === "ar_1" ||
                        item?.user?.role === "kasipw1"
                          ? "Pengawasan I"
                          : item?.user?.role === "ar_2" ||
                            item?.user?.role === "kasipw2"
                          ? "Pengawasan II"
                          : item?.user?.role === "ar_3" ||
                            item?.user?.role === "kasipw3"
                          ? "Pengawasan III"
                          : item?.user?.role === "ar_4" ||
                            item?.user?.role === "kasipw4"
                          ? "Pengawasan IV"
                          : item?.user?.role === "ar_5" ||
                            item?.user?.role === "kasipw5"
                          ? "Pengawasan V"
                          : "Pengawasan VI"}
                      </td>
                      <td className="whitespace-nowrap px-3 py-4 text-sm font-medium text-gray-500">
                        {item?.npwp?.nama}
                      </td>
                      <td className="whitespace-nowrap px-3 py-4 text-sm font-medium text-gray-500">
                        {new Intl.DateTimeFormat("id-ID", {
                          hour12: false,
                          year: "numeric",
                          day: "numeric",
                          month: "long",
                        }).format(item.createdAt)}
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default RecentActivity;
