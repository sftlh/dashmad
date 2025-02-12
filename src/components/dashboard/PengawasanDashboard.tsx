"use client";
import React from "react";
import Image from "next/image";
import { useUser } from "@clerk/nextjs";
import BoxOfDataPengawasanDashboard from "../BoxOfDataPengawasanDashboard";
import EyeIcon from "@heroicons/react/24/outline/EyeIcon";
import ShareIcon from "@heroicons/react/24/outline/ShareIcon";
import ChatBubbleLeftEllipsisIcon from "@heroicons/react/24/outline/ChatBubbleLeftEllipsisIcon";
import HandThumbUpIcon from "@heroicons/react/24/outline/HandThumbUpIcon";

const PengawasanDashboard = ({
  data1,
  data2,
  userData,
  dataPembenahanWp,
}: {
  data1?: any;
  data2?: any;
  userData?: any;
  dataPembenahanWp?: any;
}) => {
  const { user } = useUser();
  const actions = [
    {
      name: "Request time off",
      href: "#",
      iconForeground: "text-teal-700",
      iconBackground: "bg-teal-50",
    },
    {
      name: "Benefits",
      href: "#",
      iconForeground: "text-purple-700",
      iconBackground: "bg-purple-50",
    },
    {
      name: "Schedule a one-on-one",
      href: "#",
      iconForeground: "text-sky-700",
      iconBackground: "bg-sky-50",
    },
    {
      name: "Payroll",
      href: "#",
      iconForeground: "text-yellow-700",
      iconBackground: "bg-yellow-50",
    },
    {
      name: "Submit an expense",
      href: "#",
      iconForeground: "text-rose-700",
      iconBackground: "bg-rose-50",
    },
    {
      name: "Training",
      href: "#",
      iconForeground: "text-indigo-700",
      iconBackground: "bg-indigo-50",
    },
  ];

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
                      <span className="text-gray-900">
                        Last Login{" "}
                        {new Intl.DateTimeFormat("en-Us").format(
                          user?.lastSignInAt as Date
                        )}
                      </span>{" "}
                      <span>Tes</span>
                    </div>
                    <div className="px-6 py-5 text-center text-sm font-medium">
                      <span className="text-gray-900">
                        Last Login
                        {new Intl.DateTimeFormat("en-Us").format(
                          user?.lastSignInAt as Date
                        )}
                      </span>{" "}
                      <span>Tes</span>
                    </div>
                  </div>
                </div>
              </section>
              <section aria-labelledby="quick-links-title">
                <div className="divide-y divide-gray-200 overflow-hidden rounded-lg bg-gray-200 shadow sm:grid sm:grid-cols-2 sm:gap-px sm:divide-y-0">
                  <h2 id="quick-links-title" className="sr-only">
                    Quick links
                  </h2>
                  {actions.map((action) => (
                    <div
                      key={action.name}
                      className={classNames(
                        "group relative bg-white p-6"
                      )}
                    >
                      <div>
                        <span
                          className={classNames(
                            action.iconBackground,
                            action.iconForeground,
                            "inline-flex rounded-lg p-3 ring-4 ring-white"
                          )}
                        >
                          {action.name}
                        </span>
                      </div>
                      <div className="mt-8">
                        <h3 className="text-lg font-medium">
                          <a href={action.href} className="focus:outline-none">
                            
                            <span
                              aria-hidden="true"
                              className="absolute inset-0"
                            />
                            {action.name}
                          </a>
                        </h3>
                        <p className="mt-2 text-sm text-gray-500">
                          Doloribus dolores nostrum quia qui natus officia quod
                          et dolorem. Sit repellendus qui ut at blanditiis et
                          quo et molestiae.
                        </p>
                      </div>
                    </div>
                  ))}
                </div>
              </section>
              <section>
                <div className="bg-white px-4 py-6 shadow sm:rounded-lg sm:p-6">
                  <article aria-labelledby={"question-title-"}>
                    <div>
                      <div className="flex space-x-3">
                        <div className="shrink-0">
                          {/* <img
                        alt=""
                        src={question.author.imageUrl}
                        className="size-10 rounded-full"
                      /> */}
                        </div>
                        <div className="min-w-0 flex-1">
                          <p className="text-sm font-medium text-gray-900">
                            <a className="hover:underline">Joko</a>
                          </p>
                          <p className="text-sm text-gray-500">
                            {/* <a href={question.href} className="hover:underline">
                          <time dateTime={question.datetime}>
                            {question.date}
                          </time>
                        </a> */}
                          </p>
                        </div>
                        <div className="flex shrink-0 self-center"></div>
                      </div>
                      <h2
                        id={"question-title-"}
                        className="mt-4 text-base font-medium text-gray-900"
                      >
                        {/* {question.title} */}
                      </h2>
                    </div>
                    <div className="mt-2 space-y-4 text-sm text-gray-700" />
                    <div className="mt-6 flex justify-between space-x-8">
                      <div className="flex space-x-6">
                        <span className="inline-flex items-center text-sm">
                          <button
                            type="button"
                            className="inline-flex space-x-2 text-gray-400 hover:text-gray-500"
                          >
                            <HandThumbUpIcon
                              aria-hidden="true"
                              className="size-5"
                            />
                            <span className="font-medium text-gray-900">
                              {/* {question.likes} */} tes
                            </span>
                            <span className="sr-only">likes</span>
                          </button>
                        </span>
                        <span className="inline-flex items-center text-sm">
                          <button
                            type="button"
                            className="inline-flex space-x-2 text-gray-400 hover:text-gray-500"
                          >
                            <ChatBubbleLeftEllipsisIcon
                              aria-hidden="true"
                              className="size-5"
                            />
                            <span className="font-medium text-gray-900">
                              {/* {question.replies} */} Tes
                            </span>
                            <span className="sr-only">replies</span>
                          </button>
                        </span>
                        <span className="inline-flex items-center text-sm">
                          <button
                            type="button"
                            className="inline-flex space-x-2 text-gray-400 hover:text-gray-500"
                          >
                            <EyeIcon aria-hidden="true" className="size-5" />
                            <span className="font-medium text-gray-900">
                              {/* {question.views} */}
                            </span>
                            <span className="sr-only">views</span>
                          </button>
                        </span>
                      </div>
                      <div className="flex text-sm">
                        <span className="inline-flex items-center text-sm">
                          <button
                            type="button"
                            className="inline-flex space-x-2 text-gray-400 hover:text-gray-500"
                          >
                            <ShareIcon aria-hidden="true" className="size-5" />
                            <span className="font-medium text-gray-900">
                              Share
                            </span>
                          </button>
                        </span>
                      </div>
                    </div>
                  </article>
                </div>
              </section>
            </div>
            {/* Right Column */}
            <div className="grid grid-cols-1 gap-4 lg:grid-cols-2">
              {/* announcement */}
              <div className="grid grid-cols-1 gap-4 lg:col-span-2">
                <BoxOfDataPengawasanDashboard data1={data1} />
                {/* <BoxOfDataPengawasanDashboard data1={data1} type="pembenahanwp"/> */}
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default PengawasanDashboard;
