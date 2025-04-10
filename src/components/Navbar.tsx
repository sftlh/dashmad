"use client";
import React, { useState } from "react";
import { Bars3Icon, BellIcon } from "@heroicons/react/24/outline";
import Image from "next/image";
import { useClerk, UserButton, useUser } from "@clerk/nextjs";
import { Menu, MenuButton, MenuItem, MenuItems } from "@headlessui/react";
import { useRouter } from "next/navigation";

const Navbar = ({
  setSidebarOpen,
}: {
  setSidebarOpen: React.Dispatch<React.SetStateAction<boolean>>;
}) => {
  const { user } = useUser();
  const router = useRouter();
  const { signOut } = useClerk();

  const [loading, setLoading] = useState(false);

  const capitalizeFirstLatter = (input: string) => {
    if (input?.length === 0) return input;
    return input?.charAt(0).toUpperCase() + input?.slice(1);
  };
  //handleSignOut
  const handleSignOut = async () => {
    setLoading(true);
    try {
      await signOut();
      router.push("/");
    } catch (error) {
      console.error("Logout Failed", error);
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="sticky top-0 z-40 flex h-16 shrink-0 items-center gap-x-4 border-b border-gray-200 bg-white px-4 shadow-sm sm:gap-x-6 sm:px-6 lg:px-8">
      <button
        type="button"
        onClick={() => setSidebarOpen(true)}
        className="-m-2.5 p-2.5 text-gray-700 lg:hidden"
      >
        <span className="sr-only">Open Sidebar</span>
        <Bars3Icon aria-hidden="true" className="size-6" />
      </button>

      {/* Separator */}
      <div aria-hidden="true" className="h-6 w-px bg-gray-900/10 lg:hidden" />

      <div className="flex flex-1 gap-x-4 self-stretch lg:gap-x-6">
        <div className="grid flex-1 grid-cols-1"></div>
        <div className="flex items-center gap-x-4 lg:gap-x-6">
          <button
            type="button"
            className="-m-2.5 p-2.5 text-gray-400 hover:text-gray-500"
          >
            <span className="sr-only">View Notifications</span>
            <BellIcon aria-hidden="true" className="size-6" />
          </button>

          {/* Separator */}
          <div
            aria-hidden="true"
            className="hidden lg:block lg:h-6 lg:w-px lg:bg-gray-900/10"
          />

          {/* Profile Dropdown */}
          <Menu as="div" className="relative ml-3">
            <div>
              <MenuButton className="relative flex rounded-full bg-navy text-sm focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-gold">
                <span className="absolute -inset-1.5" />
                <span className="sr-only">Open user menu</span>
                <Image
                  alt="User"
                  src={user?.imageUrl as string}
                  width={32}
                  height={32}
                  className="mx-auto size-8 rounded-full"
                />
              </MenuButton>
            </div>
            <MenuItems
              aria-disabled={loading}
              transition
              className="absolute right-0 z-10 mt-2 w-48 origin-top-right rounded-md bg-white py-1 shadow-lg ring-1 ring-black/5 transition focus:outline-none data-[closed]:scale-95 data-[closed]:transform data-[closed]:opacity-0 data-[enter]:duration-100 data-[leave]:duration-75 data-[enter]:ease-out data-[leave]:ease-in"
            >
              <MenuItem>
                <a
                  href="#"
                  className="block font-bold px-4 py-2 text-md text-black data-[focus]:bg-gray-100 data-[focus]:outline-none"
                >
                  {capitalizeFirstLatter(user?.firstName as string || "") +
                    " " +
                    capitalizeFirstLatter(user?.lastName as string || "")}{" "}
                  <br />
                  {user?.publicMetadata.role === "ar_6" ? (
                    <span className="text-sm">Pengawasan VI</span>
                  ) : (
                    ""
                  )}
                </a>
              </MenuItem>
              <MenuItem>
                <a
                  onClick={handleSignOut}
                  href="#"
                  className="block px-4 py-2 text-sm text-gray-700 data-[focus]:bg-gray-100 data-[focus]:outline-none"
                >
                  Sign out
                </a>
              </MenuItem>
            </MenuItems>
          </Menu>
        </div>
      </div>
    </div>
  );
};

export default Navbar;
