"use client"
import {
  Dialog,
  DialogBackdrop,
  DialogPanel,
  TransitionChild,
} from "@headlessui/react";
import XMarkIcon from "@heroicons/react/24/outline/XMarkIcon";
import Image from "next/image";
import React, { useState } from "react";
import Navbar from "./Navbar";
import MenuNavbar from "./MenuNavbar";

const MenuClient = ({role, children}:{role:string | undefined, children:React.ReactNode}) => {
  const [sidebarOpen, setSidebarOpen] = useState(false);
  return (
    <div>
      <Dialog
        open={sidebarOpen}
        onClose={setSidebarOpen}
        className="relative z-50 lg:hidden"
      >
        <DialogBackdrop
          transition
          className="fixed inset-0 bg-gray-900/80 transition-opacity duration-300 ease-linear data-[closed]:opacity-0"
        />
        <div className="fixed inset-0 flex">
          <DialogPanel
            transition
            className="relative mr-16 flex w-full max-w-xs flex-1 transform transition duration-300 ease-in-out data-[closed]:-translate-x-full"
          >
            <TransitionChild>
              <div className="absolute left-full top-0 flex w-16 justify-center pt-5 duration-300 ease-in-out data-[closed]:opacity-0">
                <button
                  type="button"
                  onClick={() => setSidebarOpen(false)}
                  className="-m-2.5 p-2.5"
                >
                  <span className="sr-only">Close Sidebar</span>
                  <XMarkIcon aria-hidden="true" className="size-6 text-white" />
                </button>
              </div>
            </TransitionChild>
            {/* Sidebar component, swap this element with another sidebar if you like */}
            <div className="flex grow flex-col gap-y-5 overflow-y-auto bg-dongker px-6 pb-4">
              <div className="flex p-16 shrink-0 items-center">
                {/* Company Image */}
                <h1 className="text-3xl text-lemon p-8 w-auto">
                  Dashboard Madya Dua Surabaya
                </h1>
              </div>
              <MenuNavbar role={role}/>
            </div>
          </DialogPanel>
        </div>
      </Dialog>
      <div className="hidden lg:fixed lg:inset-y-0 lg:z-50 lg:flex lg:w-72 lg:flex-col">
        {/* Sidebar Component, can be swapped */}
        <div className="flex grow flex-col gap-y-5 overflow-y-auto bg-dollar px-6 pb-4 bg-dongker">
          <div className="flex gap-x-4 py-5 items-center">
            <Image
              alt="logo"
              src={"/logoSaja.png"}
              width={64}
              height={64}
              className="h-auto w-auto"
            />
            <h1 className="text-lg text-gold w-auto font-semibold">
              Dashboard Madya Dua Surabaya
            </h1>
          </div>
          <MenuNavbar role={role}/>
        </div>
      </div>
      <div className="lg:pl-72 bg-slate-100">
        <Navbar setSidebarOpen={setSidebarOpen} />
        <div className="min-h-screen">{children}</div>
      </div>
    </div>
  );
};

export default MenuClient;
