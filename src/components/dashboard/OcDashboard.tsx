"use client";
import React from "react";
import Image from "next/image";
import { useUser } from "@clerk/nextjs";
import BoxOfDashboardOc from "../BoxDashboardOc";
import { todayYear } from "@/lib/getaction";

const OcDashboard = ({
  data1,
}: {
  data1?: any;
  data2?: any;
  userData?: any;
  dataPembenahanWp?: any;
}) => {
  const { user } = useUser();
  const handleExportBedahWpTw1 = async () => {
    const response = await fetch("/api/exportBedahWpTw1", {
      method: "GET",
    });

    if (response.ok) {
      const blob = await response.blob();
      const url = window.URL.createObjectURL(blob);
      const a = document.createElement("a");
      a.href = url;
      a.download = `bedahwptw1_${todayYear}`; // Specify the file name
      document.body.appendChild(a);
      a.click();
      a.remove();
    } else {
      console.error("Error exporting data");
    }
  };

  const handleExportBedahWpTw2 = async () => {
    const response = await fetch("/api/exportBedahWpTw2", {
      method: "GET",
    });

    if (response.ok) {
      const blob = await response.blob();
      const url = window.URL.createObjectURL(blob);
      const a = document.createElement("a");
      a.href = url;
      a.download = `bedahwptw2_${todayYear}`; // Specify the file name
      document.body.appendChild(a);
      a.click();
      a.remove();
    } else {
      console.error("Error exporting data");
    }
  };

  const handleExportBedahWpTw3 = async () => {
    const response = await fetch("/api/exportBedahWpTw3", {
      method: "GET",
    });

    if (response.ok) {
      const blob = await response.blob();
      const url = window.URL.createObjectURL(blob);
      const a = document.createElement("a");
      a.href = url;
      a.download = `bedahwptw3_${todayYear}`; // Specify the file name
      document.body.appendChild(a);
      a.click();
      a.remove();
    } else {
      console.error("Error exporting data");
    }
  };

  const handleExportBedahWpTw4 = async () => {
    const response = await fetch("/api/exportBedahWpTw4", {
      method: "GET",
    });

    if (response.ok) {
      const blob = await response.blob();
      const url = window.URL.createObjectURL(blob);
      const a = document.createElement("a");
      a.href = url;
      a.download = `bedahwptw4_${todayYear}`; // Specify the file name
      document.body.appendChild(a);
      a.click();
      a.remove();
    } else {
      console.error("Error exporting data");
    }
  };

  const capitalizeFirstLatter = (input: string) => {
    if (input?.length === 0) return input;
    return input?.charAt(0).toUpperCase() + input?.slice(1);
  };
  function classNames(...classes: any[]) {
    return classes.filter(Boolean).join(" ");
  }
  return (
    <div className="min-h-full">
      <div className="pb-8">
        <div className="mx-auto max-w-max px-4 sm:px-6 lg:max-w-max lg:px-4">
          <h1 className="sr-only">Profile</h1>
          {/* Main 3 Column */}
          <div className="grid grid-cols-1 items-start gap-4 lg:grid-cols-3 lg:gap-8">
            {/* Left Column */}
            <div className="grid grid-cols-1 gap-4 lg:col-span-2">
              {/* Welcome Panel */}
              <section aria-labelledby="profile-title">
                <div className="overflow-hidden rounded-lg bg-white shadow">
                  <h2 className="sr-only" id="profile-title">
                    Profile Overview
                  </h2>
                  <div className="bg-white p-6">
                    <div className="sm:flex sm:items-center sm:justify-between">
                      <div className="sm:flex sm:space-x-5">
                        <div className="shrink-0">
                          <Image
                            alt=""
                            src={user?.imageUrl as string}
                            width={80}
                            height={80}
                            className="mx-auto size-20 rounded-full"
                          />
                        </div>
                        <div className="mt-4 text-center sm:mt-0 sm:pt-1 sm:text-left">
                          <p className="text-sm font-medium text-gray-600">
                            Selamat Datang
                          </p>
                          <p className="text-xl font-bold text-gray-900 sm:text-2xl">
                            {capitalizeFirstLatter(user?.firstName as string)}{" "}
                            {capitalizeFirstLatter(user?.lastName as string)}
                          </p>
                          <p className="text-xl font-medium text-gray-600">
                            Operator Console
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div className="grid grid-cols-1 divide-y divide-gray-200 border-t border-gray-200 bg-gray-50 sm:grid-cols-3 sm:divide-x sm:divide-y-0">
                    <div className="px-10 py-5 text-center text-sm font-medium">
                      <span className="text-gray-900">Last Login </span>{" "}
                      <span className="text-gray-600">
                        {new Intl.DateTimeFormat("id-ID", {
                          hour12: false,
                          year: "numeric",
                          day: "numeric",
                          month: "long",
                        }).format(user?.lastSignInAt as Date)}
                      </span>
                    </div>
                    <div className="px-6 py-5 text-center text-sm font-medium"></div>
                    <div className="px-6 py-5 text-center text-sm font-medium"></div>
                  </div>
                </div>
              </section>
              <section aria-labelledby="quick-links-title">
                <div className="divide-y divide-gray-200 overflow-hidden rounded-lg bg-gray-200 shadow sm:grid sm:grid-cols-2 sm:gap-px sm:divide-y-0">
                  <h2 id="quick-links-title" className="sr-only">
                    Quick links
                  </h2>
                  <div className={classNames("group relative bg-white p-6")}>
                    <div>
                      <span
                        className={classNames(
                          "inline-flex rounded-md p-2 ring-4 ring-white",
                          "text-teal-50",
                          "bg-teal-500"
                        )}
                      >
                        Bedah Wajib Pajak Triwulan I
                      </span>
                    </div>
                    <div className="mt-8">
                      <h3 className="text-sm text-lemon font-medium">
                        <button
                          onClick={handleExportBedahWpTw1}
                          className="focus:outline-none bg-navy rounded-md p-2"
                        >
                          <span aria-hidden="true" className="inset-0" />
                          Download
                        </button>
                      </h3>
                      <p className="mt-2 text-sm text-gray-500">
                        Download Bedah Wajib Pajak Triwulan I dalam bentuk Excel
                        untuk tahun berjalan
                      </p>
                    </div>
                  </div>
                  <div className={classNames("group relative bg-white p-6")}>
                    <div>
                      <span
                        className={classNames(
                          "inline-flex rounded-md p-2 ring-4 ring-white",
                          "text-teal-50",
                          "bg-teal-500"
                        )}
                      >
                        Bedah Wajib Pajak Triwulan II
                      </span>
                    </div>
                    <div className="mt-8">
                      <h3 className="text-sm text-lemon font-medium">
                        <button
                          onClick={handleExportBedahWpTw2}
                          className="focus:outline-none bg-navy rounded-md p-2"
                        >
                          <span aria-hidden="true" className="inset-0" />
                          Download
                        </button>
                      </h3>
                      <p className="mt-2 text-sm text-gray-500">
                        Download Bedah Wajib Pajak Triwulan II dalam bentuk
                        Excel untuk tahun berjalan
                      </p>
                    </div>
                  </div>
                  <div className={classNames("group relative bg-white p-6")}>
                    <div>
                      <span
                        className={classNames(
                          "inline-flex rounded-md p-2 ring-4 ring-white",
                          "text-teal-50",
                          "bg-teal-500"
                        )}
                      >
                        Bedah Wajib Pajak Triwulan III
                      </span>
                    </div>
                    <div className="mt-8">
                      <h3 className="text-sm text-lemon font-medium">
                        <button
                          onClick={handleExportBedahWpTw3}
                          className="focus:outline-none bg-navy rounded-md p-2"
                        >
                          <span aria-hidden="true" className="inset-0" />
                          Download
                        </button>
                      </h3>
                      <p className="mt-2 text-sm text-gray-500">
                        Download Bedah Wajib Pajak Triwulan III dalam bentuk
                        Excel untuk tahun berjalan
                      </p>
                    </div>
                  </div>
                  <div className={classNames("group relative bg-white p-6")}>
                    <div>
                      <span
                        className={classNames(
                          "inline-flex rounded-md p-2 ring-4 ring-white",
                          "text-teal-50",
                          "bg-teal-500"
                        )}
                      >
                        Bedah Wajib Pajak Triwulan IV
                      </span>
                    </div>
                    <div className="mt-8">
                      <h3 className="text-sm text-lemon font-medium">
                        <button
                          onClick={handleExportBedahWpTw4}
                          className="focus:outline-none bg-navy rounded-md p-2"
                        >
                          <span aria-hidden="true" className="inset-0" />
                          Download
                        </button>
                      </h3>
                      <p className="mt-2 text-sm text-gray-500">
                        Download Bedah Wajib Pajak Triwulan IV dalam bentuk
                        Excel untuk tahun berjalan
                      </p>
                    </div>
                  </div>
                </div>
              </section>
            </div>
            {/* Right Column */}
            <div className="grid grid-cols-1 gap-4 lg:grid-cols-2">
              {/* announcement */}
              <div className="grid grid-cols-1 gap-4 lg:col-span-2">
                <BoxOfDashboardOc data1={data1} />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default OcDashboard;
