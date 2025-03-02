import React from "react";

const BoxOfDashboardOc = ({
  data1,
}: {
  data1?: any;
  data2?: any;
}) => {
  return (
    <section aria-labelledby="announcement-title">
      <div className="overflow-hidden rounded-lg bg-white shadow">
        <div className="p-6">
          <h2
            id="announcement-title"
            className="text-base font-medium text-gray-900"
          >
            Status Bedah WP <span>{new Date().getFullYear()}</span>
          </h2>
          <div className="mt-6 flow-root">
            <ul role="list" className="grid grid-cols-1 gap-y-8">
              {data1?.map((item: any) => (
                <li
                  key={item.id}
                  className="overflow-hidden rounded-xl border border-gray-200"
                >
                  <div className="flex items-center gap-x-4 border-b border-gray-900/5 bg-dongker p-6">
                    <div className="size-12 flex-none rounded-lg bg-gold object-cover ring-1 ring-gray-900/10">
                      <h1 className="text-2xl text-white font-bold items-center text-center py-2">
                        {item.numeral}
                      </h1>
                    </div>

                    <div className="flex flex-col">
                      <div className="text-sm/6 font-medium text-white">
                        {item.title}
                      </div>
                      <div
                        className={"text-sm font-bold text-balance text-red-200"}
                      >
                        Jatuh Tempo:{" "}
                        <span className="text-red-500">
                          {" "}
                          {new Intl.DateTimeFormat("id-ID", {
                            hour12: false,
                            year: "numeric",
                            day: "numeric",
                            month: "long",
                          }).format(item.jt)}
                        </span>
                      </div>
                    </div>
                  </div>
                  <dl className="-my-3 divide-y divide-gray-100 px-6 py-4 text-sm/6">
                    <div className="flex justify-between gap-x-4 py-3">
                      <dt className="text-gray-500">Total</dt>
                      <dd className="text-navy font-semibold">
                        {new Intl.NumberFormat("id-ID").format(item.total)}
                      </dd>
                    </div>
                    <div className="flex justify-between gap-x-4 py-3">
                      <dt className="text-gray-500">Sudah Dikirim</dt>
                      <dd className="text-green-600 font-semibold">
                        {new Intl.NumberFormat("id-ID").format(item.kirim)}
                      </dd>
                    </div>
                    <div className="flex justify-between gap-x-4 py-3">
                      <dt className="text-gray-500">Belum Dikirim</dt>
                      <dd className="flex items-start gap-x-2">
                        <div className="font-medium text-navy">
                          {new Intl.NumberFormat("id-ID").format(item.belum)}
                        </div>
                      </dd>
                    </div>
                    <div className="flex justify-between gap-x-4 py-3">
                      <dt className="text-gray-500">Telat Input</dt>
                      <dd className="text-red-500">
                        {new Intl.NumberFormat("id-ID").format(item.telat)}
                      </dd>
                    </div>
                  </dl>
                </li>
              ))}
            </ul>
          </div>
        </div>
      </div>
    </section>
  );
};

export default BoxOfDashboardOc;
