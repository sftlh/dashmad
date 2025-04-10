/* eslint-disable react-hooks/exhaustive-deps */
"use client";
import { useUser } from "@clerk/nextjs";
import Image from "next/image";
import React, { useEffect, useState } from "react";
import { useRouter } from "next/navigation";

type ScoreResponse = {
  totalRealisasiKuantitas: number;
  totalRealisasiKualitas: number;
  capaianKuantitas: number;
  capaianKualitas: number;
  bobotKuantitas: number;
  bobotKualitas: number;
  capaianIKU: number;
};

const LeftColumnPengawasan = ({
  countPembenahanWPBelum,
  countPembenahanWPSelesai,
  countPembenahanWPCabangBedaEntitas,
  countPembenahanWPIdentitasGanda,
  countPembenahanWPNikGanda,
  countSendingDataToKanwil,
  countPembenahanWPTTLSama,
}: {
  countPembenahanWPBelum?: any;
  countPembenahanWPCabangBedaEntitas?: any;
  countPembenahanWPIdentitasGanda?: any;
  countPembenahanWPSelesai?: any;
  countPembenahanWPTTLSama?: any;
  countSendingDataToKanwil?: any;
  countPembenahanWPNikGanda?: any;
}) => {
  const [ikuBedahWp, setIkuBedahWp] = useState<ScoreResponse | null>(null);
  const router = useRouter();
  const { user } = useUser();

  const goToPembenahanWp = () => {
    router.push("/pembenahanwp");
  };

  const capitalizeFirstLatter = (input: string) => {
    if (input?.length === 0) return input;
    return input?.charAt(0).toUpperCase() + input?.slice(1);
  };

  function classNames(...classes: any[]) {
    return classes.filter(Boolean).join(" ");
  }

  const fetchIkuBedahWp = async () => {
    try {
      const response = await fetch(`/api/getBedahWpScore?userId=${user?.id}`);
      if (!response.ok) {
        throw new Error("Error fetching data");
      }
      const data = await response.json();
      console.log("Data Response", data);
      setIkuBedahWp(data);
    } catch (error: any) {
      console.error(error);
    }
  };

  useEffect(() => {
    if (user?.id) {
      fetchIkuBedahWp();
    }
  }, [user?.id]);

  return (
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
                    {capitalizeFirstLatter(user?.lastName as string) || ""}
                  </p>
                  <p className="text-xl font-medium text-gray-600">
                    {user?.publicMetadata?.role === "admin"
                      ? "Super User"
                      : user?.publicMetadata.role === "ar_1"
                      ? "Account Representative Pengawasan I"
                      : user?.publicMetadata.role === "ar_2"
                      ? "Account Representative Pengawasan II"
                      : user?.publicMetadata.role === "ar_3"
                      ? "Account Representative Pengawasan III"
                      : user?.publicMetadata.role === "ar_4"
                      ? "Account Representative Pengawasan IV"
                      : user?.publicMetadata.role === "ar_5"
                      ? "Account Representative Pengawasan V"
                      : user?.publicMetadata.role === "ar_6"
                      ? "Account Representative Pengawasan VI"
                      : ""}
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
            <div className="px-6 py-5 text-center text-sm font-medium">
              <span className="text-pretty text-blue-900 font-bold">
                IKU Bedah WP : <span className={(ikuBedahWp?.capaianIKU ?? 0) > 120  ? "text-green-700": "text-red-500"}>{ikuBedahWp?.capaianIKU}%</span> 
              </span>{" "}
            </div>
            <div className="px-6 py-5 text-center text-sm font-medium">
              <span className="text-gray-900"></span>{" "}
            </div>
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
                  "inline-flex rounded-lg text-blue-200 w-full font-bold p-3 bg-dongker ring-4 ring-white"
                )}
              >
                Pembenahan Wajib Pajak belum Selesai
              </span>
            </div>
            <div className="mt-8">
              <h3 className="text-lg font-medium">
                <a href={""} className="focus:outline-none">
                  <span aria-hidden="true" className="font-semibold inset-0" />
                  Jumlah:{" "}
                  <span
                    className={
                      countPembenahanWPBelum === 0
                        ? "text-dongker text-xl font-bold"
                        : "text-xl text-red-500 font-bold"
                    }
                  >
                    {new Intl.NumberFormat("id-ID").format(
                      countPembenahanWPBelum
                    )}
                  </span>
                </a>
              </h3>
              <div className="mt-2 text-sm text-gray-500">
                {countPembenahanWPBelum === 0 ? (
                  "Tidak ada daftar Pembenahan Masterfile Wajib Pajak"
                ) : (
                  <>
                    <div className="flex items-center gap-x-4">
                      <h1 className="text-red-500">
                        Terdapat Daftar Pembenahan Masterfile Wajib Pajak yang
                        harus diselesaikan !
                      </h1>
                      <button
                        onClick={goToPembenahanWp}
                        className="rounded-md bg-red-500 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-navy/80 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-dongker"
                      >
                        Benahi
                      </button>
                    </div>
                  </>
                )}
              </div>
            </div>
          </div>
          <div className={classNames("group relative bg-white p-6")}>
            <div>
              <span
                className={classNames(
                  "inline-flex rounded-lg text-green-800 w-full font-bold p-3 bg-green-500 ring-4 ring-white"
                )}
              >
                Pembenahan Wajib Pajak yang Sudah Terselesaikan
              </span>
            </div>
            <div className="mt-8">
              <h3 className="text-lg font-medium">
                <div className="flex gap-x-4">
                  <a href={""} className="focus:outline-none">
                    <span
                      aria-hidden="true"
                      className="font-semibold inset-0"
                    />
                    Jumlah:{" "}
                    <span
                      className={
                        countPembenahanWPSelesai === 0
                          ? "text-dongker text-xl font-bold"
                          : "text-xl text-green-500 font-bold"
                      }
                    >
                      {new Intl.NumberFormat("id-ID").format(
                        countPembenahanWPSelesai
                      )}
                    </span>
                  </a>
                  <a href={""} className="focus:outline-none">
                    <span
                      aria-hidden="true"
                      className="font-semibold inset-0"
                    />
                    Sudah Dikirim:{" "}
                    <span className="text-dongker text-xl font-bold">
                      {new Intl.NumberFormat("id-ID").format(
                        countSendingDataToKanwil
                      )}
                    </span>
                  </a>
                </div>
              </h3>
              <div className="mt-2 text-sm text-gray-500">
                Total jumlah Pembenahan MFWP
              </div>
            </div>
          </div>
          <div className={classNames("group relative bg-white p-6")}>
            <div>
              <span
                className={classNames(
                  "inline-flex rounded-lg text-orange-800 w-full font-bold p-3 bg-orange-500 ring-4 ring-white"
                )}
              >
                Pembenahan Wajib Pajak Cabang Pusat Beda Entitas
              </span>
            </div>
            <div className="mt-8">
              <h3 className="text-lg font-medium">
                <a href={""} className="focus:outline-none">
                  <span aria-hidden="true" className="font-semibold inset-0" />
                  Jumlah:{" "}
                  <span
                    className={
                      countPembenahanWPCabangBedaEntitas === 0
                        ? "text-dongker text-xl font-bold"
                        : "text-xl text-green-500 font-bold"
                    }
                  >
                    {new Intl.NumberFormat("id-ID").format(
                      countPembenahanWPCabangBedaEntitas
                    )}
                  </span>
                </a>
              </h3>
              <div className="mt-2 text-sm text-gray-500">
                Total jumlah Pembenahan kategori WP Cabang dengan Entitas yang
                Berbeda dengan Pusat
              </div>
            </div>
          </div>
          <div className={classNames("group relative bg-white p-6")}>
            <div>
              <span
                className={classNames(
                  "inline-flex rounded-lg text-purple-800 w-full font-bold p-3 bg-purple-500 ring-4 ring-white"
                )}
              >
                Pembenahan Wajib Pajak dengan NIK Ganda
              </span>
            </div>
            <div className="mt-8">
              <h3 className="text-lg font-medium">
                <a href={""} className="focus:outline-none">
                  <span aria-hidden="true" className="font-semibold inset-0" />
                  Jumlah:{" "}
                  <span
                    className={
                      countPembenahanWPNikGanda === 0
                        ? "text-dongker text-xl font-bold"
                        : "text-xl text-green-500 font-bold"
                    }
                  >
                    {new Intl.NumberFormat("id-ID").format(
                      countPembenahanWPNikGanda
                    )}
                  </span>
                </a>
              </h3>
              <div className="mt-2 text-sm text-gray-500">
                Total jumlah Pembenahan kategori Wajib Pajak dengan NIK Ganda
              </div>
            </div>
          </div>
          <div className={classNames("group relative bg-white p-6")}>
            <div>
              <span
                className={classNames(
                  "inline-flex rounded-lg text-yellow-700 w-full font-bold p-3 bg-yellow-500 ring-4 ring-white"
                )}
              >
                Pembenahan Wajib Pajak teridentikasi Ganda
              </span>
            </div>
            <div className="mt-8">
              <h3 className="text-lg font-medium">
                <a href={""} className="focus:outline-none">
                  <span aria-hidden="true" className="font-semibold inset-0" />
                  Jumlah:{" "}
                  <span
                    className={
                      countPembenahanWPIdentitasGanda === 0
                        ? "text-dongker text-xl font-bold"
                        : "text-xl text-green-500 font-bold"
                    }
                  >
                    {new Intl.NumberFormat("id-ID").format(
                      countPembenahanWPIdentitasGanda
                    )}
                  </span>
                </a>
              </h3>
              <div className="mt-2 text-sm text-gray-500">
                Total jumlah Pembenahan kategori Wajib Pajak Identitas Ganda
              </div>
            </div>
          </div>
          <div className={classNames("group relative bg-white p-6")}>
            <div>
              <span
                className={classNames(
                  "inline-flex rounded-lg text-pink-200 w-full font-bold p-3 bg-pink-500 ring-4 ring-white"
                )}
              >
                Pembenahan Wajib Pajak Tempat Tanggal Lahir Sama
              </span>
            </div>
            <div className="mt-8">
              <h3 className="text-lg font-medium">
                <a href={""} className="focus:outline-none">
                  <span aria-hidden="true" className="font-semibold inset-0" />
                  Jumlah:{" "}
                  <span
                    className={
                      countPembenahanWPTTLSama === 0
                        ? "text-dongker text-xl font-bold"
                        : "text-xl text-green-500 font-bold"
                    }
                  >
                    {new Intl.NumberFormat("id-ID").format(
                      countPembenahanWPTTLSama
                    )}
                  </span>
                </a>
              </h3>
              <div className="mt-2 text-sm text-gray-500">
                Total jumlah Pembenahan kategori Wajib Pajak dengan Tempat
                Tanggal Lahir Sama
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  );
};

export default LeftColumnPengawasan;
