"use client";
import { useUser } from "@clerk/nextjs";
import Image from "next/image";
import React from "react";

const AdminDashboard = () => {
  const { user } = useUser();

  return (
    <div className="min-h-full">
      <div className="pb-8">
        <div className="mx-auto max-w-3xl px-4 sm:px-6 lg:max-w-7xl lg:px-4">
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
                            {user?.firstName}
                          </p>
                          <p className="text-sm font-medium text-gray-600">
                            {user?.publicMetadata?.role === "admin"
                              ? "Super User"
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
                        {new Intl.DateTimeFormat("en-Us").format(
                          user?.lastSignInAt as Date
                        )}
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
            </div>
            {/* Right Column */}
            <div className="grid grid-cols-1 gap-4">
              {/* announcement */}
              <section aria-labelledby="announcement-title">
                <div className="overflow-hidden rounded-lg bg-white shadow">
                  <div className="p-6">
                    <h2
                      id="announcement-title"
                      className="text-base font-medium text-gray-900"
                    >Status Tugas</h2>
                  </div>
                </div>
              </section>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default AdminDashboard;
