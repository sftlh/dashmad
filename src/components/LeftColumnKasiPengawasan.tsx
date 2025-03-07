"use client"
import React from 'react'
import Image from 'next/image'
import { useUser } from '@clerk/nextjs'
import { useRouter } from 'next/navigation'

const LeftColumnKasiPengawasan = ({ countEmpoweringTwI, countEmpoweringTwII, countEmpoweringTwIII, countEmpoweringTwIV }: { countEmpoweringTwI?: any, countEmpoweringTwII?: any, countEmpoweringTwIII?: any, countEmpoweringTwIV?: any }) => {

    const capitalizeFirstLatter = (input: string) => {
        if (input?.length === 0) return input;
        return input?.charAt(0).toUpperCase() + input?.slice(1);
    }
    const router = useRouter();

    const { user } = useUser();
    function classNames(...classes: any[]) {
        return classes.filter(Boolean).join(" ");
    }
    const goToPembenahanWp = () => {
        router.push("/pembenahanwp");
    };
    console.log("Data Empowering", countEmpoweringTwI)
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
                                        {capitalizeFirstLatter(user?.lastName as string)}
                                    </p>
                                    <p className="text-xl font-medium text-gray-600">
                                        {user?.publicMetadata?.role === "admin"
                                            ? "Super User"
                                            : user?.publicMetadata.role === "kasipw1"
                                                ? "Kepala Seksi Pengawasan I"
                                                : user?.publicMetadata.role === "kasipw2"
                                                    ? "Kepala Seksi Pengawasan II"
                                                    : user?.publicMetadata.role === "kasipw3"
                                                        ? "Kepala Seksi Pengawasan III"
                                                        : user?.publicMetadata.role === "kasipw4"
                                                            ? "Kepala Seksi Pengawasan IV"
                                                            : user?.publicMetadata.role === "kasipw5"
                                                                ? "Kepala Seksi Pengawasan V"
                                                                : user?.publicMetadata.role === "kasipw6"
                                                                    ? "Kepala Seksi Pengawasan VI"
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
                            <span className="text-gray-900"></span>{" "}
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
                                Empowering Triwulan I
                            </span>
                        </div>
                        <div className="mt-8">
                            <h3 className="text-lg font-medium">
                                <a href={""} className="focus:outline-none">
                                    <span aria-hidden="true" className="font-semibold inset-0" />
                                    Jumlah:{" "}
                                    <span
                                        className={
                                            countEmpoweringTwI === 0
                                                ? "text-dongker text-xl font-bold"
                                                : "text-xl text-green-500 font-bold"
                                        }
                                    >
                                        {new Intl.NumberFormat("id-ID").format(
                                            countEmpoweringTwI
                                        )}
                                    </span>
                                </a>
                            </h3>
                            <div className="mt-2 text-sm text-gray-500">
                                <div className="flex items-center gap-x-4">
                                    <p className="text-slate-500 text-pretty">
                                        merupakan jumlah empowering yang sudah diinput untuk triwulan I
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className={classNames("group relative bg-white p-6")}>
                        <div>
                            <span
                                className={classNames(
                                    "inline-flex rounded-lg text-orange-200 w-full font-bold p-3 bg-orange-600 ring-4 ring-white"
                                )}
                            >
                                Empowering Triwulan II
                            </span>
                        </div>
                        <div className="mt-8">
                            <h3 className="text-lg font-medium">
                                <a href={""} className="focus:outline-none">
                                    <span aria-hidden="true" className="font-semibold inset-0" />
                                    Jumlah:{" "}
                                    <span
                                        className={
                                            countEmpoweringTwII === 0
                                                ? "text-dongker text-xl font-bold"
                                                : "text-xl text-green-500 font-bold"
                                        }
                                    >
                                        {new Intl.NumberFormat("id-ID").format(
                                            countEmpoweringTwII
                                        )}
                                    </span>
                                </a>
                            </h3>
                            <div className="mt-2 text-sm text-gray-500">
                                <div className="flex items-center gap-x-4">
                                    <p className="text-slate-500 text-pretty">
                                        merupakan jumlah empowering yang sudah diinput untuk triwulan II
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className={classNames("group relative bg-white p-6")}>
                        <div>
                            <span
                                className={classNames(
                                    "inline-flex rounded-lg text-yellow-800 w-full font-bold p-3 bg-gold ring-4 ring-white"
                                )}
                            >
                                Empowering Triwulan III
                            </span>
                        </div>
                        <div className="mt-8">
                            <h3 className="text-lg font-medium">
                                <a href={""} className="focus:outline-none">
                                    <span aria-hidden="true" className="font-semibold inset-0" />
                                    Jumlah:{" "}
                                    <span
                                        className={
                                            countEmpoweringTwIII === 0
                                                ? "text-dongker text-xl font-bold"
                                                : "text-xl text-green-500 font-bold"
                                        }
                                    >
                                        {new Intl.NumberFormat("id-ID").format(
                                            countEmpoweringTwIII
                                        )}
                                    </span>
                                </a>
                            </h3>
                            <div className="mt-2 text-sm text-gray-500">
                                <div className="flex items-center gap-x-4">
                                    <p className="text-slate-500 text-pretty">
                                        merupakan jumlah empowering yang sudah diinput untuk triwulan III
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className={classNames("group relative bg-white p-6")}>
                        <div>
                            <span
                                className={classNames(
                                    "inline-flex rounded-lg text-blue-400 w-full font-bold p-3 bg-navy ring-4 ring-white"
                                )}
                            >
                                Empowering Triwulan IV
                            </span>
                        </div>
                        <div className="mt-8">
                            <h3 className="text-lg font-medium">
                                <a href={""} className="focus:outline-none">
                                    <span aria-hidden="true" className="font-semibold inset-0" />
                                    Jumlah:{" "}
                                    <span
                                        className={
                                            countEmpoweringTwIV === 0
                                                ? "text-dongker text-xl font-bold"
                                                : "text-xl text-green-500 font-bold"
                                        }
                                    >
                                        {new Intl.NumberFormat("id-ID").format(
                                            countEmpoweringTwIV
                                        )}
                                    </span>
                                </a>
                            </h3>
                            <div className="mt-2 text-sm text-gray-500">
                                <div className="flex items-center gap-x-4">
                                    <p className="text-slate-500 text-pretty">
                                        merupakan jumlah empowering yang sudah diinput untuk triwulan IV
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    )
}

export default LeftColumnKasiPengawasan