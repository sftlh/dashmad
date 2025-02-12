"use client";
import { Menu, MenuButton, MenuItem, MenuItems } from "@headlessui/react";
import { ChevronDoubleDownIcon, EyeIcon } from "@heroicons/react/24/outline";
import PlusIcon from "@heroicons/react/24/outline/PlusIcon";
import React, { useEffect, useState } from "react";
import FormModal from "./FormModal";
import { quarterFour, quarterOne, quarterThree, quarterTwo, today } from "@/lib/getaction";
import BoxOfStatusBedahWp from "./BoxOfStatusBedahWp";

const StatusBedahWP = ({ id, status }: { id: any; status: any[] }) => {
  const [change, setChange] = useState("");
  const [quarterData, setQuarterData] = useState("");
  const [open, setOpen] = useState(false);

  useEffect(() => {
    if (today <= quarterOne) {
      setQuarterData("tw1");
    } else if (today <= quarterTwo) {
      setQuarterData("tw2");
    } else if (today <= quarterThree) {
      setQuarterData("tw3");
    } else if (today <= quarterFour){
      setQuarterData("tw4");
    }
    console.log(change);
  }, [status, quarterData, change]);

  const dataTwI = status.find((stat) => stat.tw === "Triwulan I");
  const dataTwII = status.find((stat) => stat.tw === "Triwulan II");
  const dataTwIII = status.find((stat) => stat.tw === "Triwulan III");
  const dataTwIV = status.find((stat) => stat.tw === "Triwulan IV");

  return (
    <div className="mx-auto max-w-8xl px-4 sm:px-6 lg:px-8 py-5 overflow-hidden">
      <div className="mx-auto max-w-3xl lg:mx-0 lg:max-w-none">
        <div className="flex items-center justify-between flex-wrap">
          <h2
            className={
              change === "tw1"
                ? "text-base/7 font-bold text-gold"
                : change === "tw2"
                ? "text-base/7 font-bold text-dongker"
                : change === "tw3"
                ? "text-base/7 font-bold text-green-800"
                : change === "tw4"
                ? "text-base/7 font-bold text-indigo-800"
                : quarterData === "tw1"
                ? "text-base/7 font-bold text-gold"
                : quarterData === "tw2"
                ? "text-base/7 font-bold text-dongker"
                : quarterData === "tw3"
                ? "text-base/7 font-bold text-green-800"
                : "text-base/7 font-bold text-indigo-800"
            }
          >
            {change === "tw1"
              ? "Bedah WP Triwulan I"
              : change === "tw2"
              ? "Bedah WP Triwulan II"
              : change === "tw3"
              ? "Bedah WP Triwulan III"
              : change === "tw4"
              ? "Bedah WP Triwulan IV"
              : quarterData === "tw1"
              ? "Bedah WP Triwulan I"
              : quarterData === "tw2"
              ? "Bedah WP Triwulan II"
              : quarterData === "tw3"
              ? "Bedah WP Triwulan III"
              : "Bedah WP Triwulan IV"}
          </h2>
          <div className="flex gap-x-4">
            <Menu as="div" className="relative inline-block text-left">
              <div>
                <MenuButton className="inline-flex w-full justify-center gap-x-1.5 rounded-md bg-white px-3 py-2 text-sm font-semibold text-gray-900 ring-1 ring-inset ring-gray-300 hover:bg-gray-50">
                  Pilih Triwulan
                  <ChevronDoubleDownIcon
                    aria-hidden="true"
                    className="size-5 text-gray-400"
                  />
                </MenuButton>
              </div>
              <MenuItems
                transition
                className="absolute right-0 z-10 mt-2 w-56 origin-top-right rounded-md bg-white shadow-lg ring-1 ring-black/5 transition focus:outline-none data-[closed]:scale-95 data-[closed]:transform data-[closed]:opacity-0 data-[enter]:duration-100 data-[leave]:duration-75 data-[enter]:ease-out data-[leave]:ease-in"
              >
                <div className="py-1">
                  <MenuItem>
                    <a
                      onClick={() => setChange("tw1")}
                      href="#"
                      className="block px-4 py-2 text-sm text-gray-700 data-[focus]:bg-gray-100 data-[focus]:text-gray-900 data-[focus]:outline-none"
                    >
                      Triwulan I
                    </a>
                  </MenuItem>
                  <MenuItem>
                    <a
                      onClick={() => setChange("tw2")}
                      href="#"
                      className="block px-4 py-2 text-sm text-gray-700 data-[focus]:bg-gray-100 data-[focus]:text-gray-900 data-[focus]:outline-none"
                    >
                      Triwulan II
                    </a>
                  </MenuItem>
                  <MenuItem>
                    <a
                      onClick={() => setChange("tw3")}
                      href="#"
                      className="block px-4 py-2 text-sm text-gray-700 data-[focus]:bg-gray-100 data-[focus]:text-gray-900 data-[focus]:outline-none"
                    >
                      Triwulan III
                    </a>
                  </MenuItem>
                  <MenuItem>
                    <a
                      onClick={() => setChange("tw4")}
                      href="#"
                      className="block px-4 py-2 text-sm text-gray-700 data-[focus]:bg-gray-100 data-[focus]:text-gray-900 data-[focus]:outline-none"
                    >
                      Triwulan IV
                    </a>
                  </MenuItem>
                </div>
              </MenuItems>
            </Menu>
            <a
              href="/bedahwp/view"
              className={`ml-auto flex items-center gap-x-1 rounded-md px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-dongker/80 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-dongker/90 ${
                change === "tw1"
                  ? "bg-gold"
                  : change === "tw2"
                  ? "bg-dongker"
                  : change === "tw3"
                  ? "bg-green-800"
                  : change === "tw4"
                  ? "bg-indigo-800"
                  : quarterData === "tw1"
                  ? "bg-gold"
                  : quarterData === "tw2"
                  ? "bg-dongker"
                  : quarterData === "tw3"
                  ? "bg-green-800"
                  : "bg-indigo-800"
              }`}
            >
              <EyeIcon aria-hidden="true" className="-ml-1.5 size-5" />
              View Bedah WP
            </a>
            <a
              onClick={() => setOpen(true)}
              href="#"
              className={`ml-auto flex items-center gap-x-1 rounded-md px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-dongker/80 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-dongker/90 ${
                change === "tw1"
                  ? "bg-gold"
                  : change === "tw2"
                  ? "bg-dongker"
                  : change === "tw3"
                  ? "bg-green-800"
                  : change === "tw4"
                  ? "bg-indigo-800"
                  : quarterData === "tw1"
                  ? "bg-gold"
                  : quarterData === "tw2"
                  ? "bg-dongker"
                  : quarterData === "tw3"
                  ? "bg-green-800"
                  : "bg-indigo-800"
              }`}
            >
              <PlusIcon aria-hidden="true" className="-ml-1.5 size-5" />
              Input Bedah WP
            </a>
            {open && (
              <FormModal id={id} open={open} setOpen={setOpen} type="bedahwp" />
            )}
          </div>
        </div>
        <dl className="mt-6 grid grid-cols-1 gap-x-6 gap-y-8 lg:grid-cols-6 xl:gap-x-8">
          {change === "tw1" ? (
            <>
              {dataTwI.data.length > 0 ? (
                <>
                  {dataTwI.data.map(
                    (item: {
                      id: number;
                      name:
                        | string
                        | number
                        | bigint
                        | boolean
                        | React.ReactElement<
                            any,
                            string | React.JSXElementConstructor<any>
                          >
                        | Iterable<React.ReactNode>
                        | Promise<React.AwaitedReactNode>
                        | null
                        | undefined;
                      stat:
                        | string
                        | number
                        | bigint
                        | boolean
                        | React.ReactElement<
                            any,
                            string | React.JSXElementConstructor<any>
                          >
                        | Iterable<React.ReactNode>
                        | React.ReactPortal
                        | Promise<React.AwaitedReactNode>
                        | null
                        | undefined;
                    }) => (
                      // eslint-disable-next-line react/jsx-key
                      <BoxOfStatusBedahWp
                        item={item}
                        change={change}
                        quarterData={quarterData}
                      />
                    )
                  )}
                </>
              ) : (
                ""
              )}
            </>
          ) : change === "tw2" ? (
            <>
              {dataTwII.data.length > 0 ? (
                <>
                  {dataTwII.data.map(
                    (item: {
                      id: number;
                      name:
                        | string
                        | number
                        | bigint
                        | boolean
                        | React.ReactElement<
                            any,
                            string | React.JSXElementConstructor<any>
                          >
                        | Iterable<React.ReactNode>
                        | Promise<React.AwaitedReactNode>
                        | null
                        | undefined;
                      stat:
                        | string
                        | number
                        | bigint
                        | boolean
                        | React.ReactElement<
                            any,
                            string | React.JSXElementConstructor<any>
                          >
                        | Iterable<React.ReactNode>
                        | React.ReactPortal
                        | Promise<React.AwaitedReactNode>
                        | null
                        | undefined;
                    }) => (
                      // eslint-disable-next-line react/jsx-key
                      <BoxOfStatusBedahWp
                        item={item}
                        change={change}
                        quarterData={quarterData}
                      />
                    )
                  )}
                </>
              ) : (
                ""
              )}
            </>
          ) : change === "tw3" ? (
            <>
              {dataTwIII.data.length > 0 ? (
                <>
                  {dataTwIII.data.map(
                    (item: {
                      id: number;
                      name:
                        | string
                        | number
                        | bigint
                        | boolean
                        | React.ReactElement<
                            any,
                            string | React.JSXElementConstructor<any>
                          >
                        | Iterable<React.ReactNode>
                        | Promise<React.AwaitedReactNode>
                        | null
                        | undefined;
                      stat:
                        | string
                        | number
                        | bigint
                        | boolean
                        | React.ReactElement<
                            any,
                            string | React.JSXElementConstructor<any>
                          >
                        | Iterable<React.ReactNode>
                        | React.ReactPortal
                        | Promise<React.AwaitedReactNode>
                        | null
                        | undefined;
                    }) => (
                      // eslint-disable-next-line react/jsx-key
                      <BoxOfStatusBedahWp
                        item={item}
                        change={change}
                        quarterData={quarterData}
                      />
                    )
                  )}
                </>
              ) : (
                ""
              )}
            </>
          ) : change === "tw4" ? (
            <>
              {dataTwIV.data.length > 0 ? (
                <>
                  {dataTwIV.data.map(
                    (item: {
                      id: number;
                      name:
                        | string
                        | number
                        | bigint
                        | boolean
                        | React.ReactElement<
                            any,
                            string | React.JSXElementConstructor<any>
                          >
                        | Iterable<React.ReactNode>
                        | Promise<React.AwaitedReactNode>
                        | null
                        | undefined;
                      stat:
                        | string
                        | number
                        | bigint
                        | boolean
                        | React.ReactElement<
                            any,
                            string | React.JSXElementConstructor<any>
                          >
                        | Iterable<React.ReactNode>
                        | React.ReactPortal
                        | Promise<React.AwaitedReactNode>
                        | null
                        | undefined;
                    }) => (
                      // eslint-disable-next-line react/jsx-key
                      <BoxOfStatusBedahWp
                        item={item}
                        change={change}
                        quarterData={quarterData}
                      />
                    )
                  )}
                </>
              ) : (
                ""
              )}
            </>
          ) : quarterData === "tw1" ? (
            <>
              {dataTwI.data.length > 0 ? (
                <>
                  {dataTwI.data.map(
                    (item: {
                      id: number;
                      name:
                        | string
                        | number
                        | bigint
                        | boolean
                        | React.ReactElement<
                            any,
                            string | React.JSXElementConstructor<any>
                          >
                        | Iterable<React.ReactNode>
                        | Promise<React.AwaitedReactNode>
                        | null
                        | undefined;
                      stat:
                        | string
                        | number
                        | bigint
                        | boolean
                        | React.ReactElement<
                            any,
                            string | React.JSXElementConstructor<any>
                          >
                        | Iterable<React.ReactNode>
                        | React.ReactPortal
                        | Promise<React.AwaitedReactNode>
                        | null
                        | undefined;
                    }) => (
                      // eslint-disable-next-line react/jsx-key
                      <BoxOfStatusBedahWp
                        item={item}
                        change={change}
                        quarterData={quarterData}
                      />
                    )
                  )}
                </>
              ) : (
                ""
              )}
            </>
          ) : quarterData === "tw2" ? (
            <>
              {dataTwII.data.length > 0 ? (
                <>
                  {dataTwII.data.map(
                    (item: {
                      id: number;
                      name:
                        | string
                        | number
                        | bigint
                        | boolean
                        | React.ReactElement<
                            any,
                            string | React.JSXElementConstructor<any>
                          >
                        | Iterable<React.ReactNode>
                        | Promise<React.AwaitedReactNode>
                        | null
                        | undefined;
                      stat:
                        | string
                        | number
                        | bigint
                        | boolean
                        | React.ReactElement<
                            any,
                            string | React.JSXElementConstructor<any>
                          >
                        | Iterable<React.ReactNode>
                        | React.ReactPortal
                        | Promise<React.AwaitedReactNode>
                        | null
                        | undefined;
                    }) => (
                      // eslint-disable-next-line react/jsx-key
                      <BoxOfStatusBedahWp
                        item={item}
                        change={change}
                        quarterData={quarterData}
                      />
                    )
                  )}
                </>
              ) : (
                ""
              )}
            </>
          ) : quarterData === "tw3" ? (
            <>
              {dataTwIII.data.length > 0 ? (
                <>
                  {dataTwIII.data.map(
                    (item: {
                      id: number;
                      name:
                        | string
                        | number
                        | bigint
                        | boolean
                        | React.ReactElement<
                            any,
                            string | React.JSXElementConstructor<any>
                          >
                        | Iterable<React.ReactNode>
                        | Promise<React.AwaitedReactNode>
                        | null
                        | undefined;
                      stat:
                        | string
                        | number
                        | bigint
                        | boolean
                        | React.ReactElement<
                            any,
                            string | React.JSXElementConstructor<any>
                          >
                        | Iterable<React.ReactNode>
                        | React.ReactPortal
                        | Promise<React.AwaitedReactNode>
                        | null
                        | undefined;
                    }) => (
                      // eslint-disable-next-line react/jsx-key
                      <BoxOfStatusBedahWp
                        item={item}
                        change={change}
                        quarterData={quarterData}
                      />
                    )
                  )}
                </>
              ) : (
                ""
              )}
            </>
          ) : quarterData === "tw4" ? (
            <>
              {dataTwIV.data.length > 0 ? (
                <>
                  {dataTwIV.data.map(
                    (item: {
                      id: number;
                      name:
                        | string
                        | number
                        | bigint
                        | boolean
                        | React.ReactElement<
                            any,
                            string | React.JSXElementConstructor<any>
                          >
                        | Iterable<React.ReactNode>
                        | Promise<React.AwaitedReactNode>
                        | null
                        | undefined;
                      stat:
                        | string
                        | number
                        | bigint
                        | boolean
                        | React.ReactElement<
                            any,
                            string | React.JSXElementConstructor<any>
                          >
                        | Iterable<React.ReactNode>
                        | React.ReactPortal
                        | Promise<React.AwaitedReactNode>
                        | null
                        | undefined;
                    }) => (
                      // eslint-disable-next-line react/jsx-key
                      <BoxOfStatusBedahWp
                        item={item}
                        change={change}
                        quarterData={quarterData}
                      />
                    )
                  )}
                </>
              ) : (
                ""
              )}
            </>
          ) : (
            <>
              {dataTwIV.data.length > 0 ? (
                <>
                  {dataTwIV.data.map(
                    (item: {
                      id: number;
                      name:
                        | string
                        | number
                        | bigint
                        | boolean
                        | React.ReactElement<
                            any,
                            string | React.JSXElementConstructor<any>
                          >
                        | Iterable<React.ReactNode>
                        | Promise<React.AwaitedReactNode>
                        | null
                        | undefined;
                      stat:
                        | string
                        | number
                        | bigint
                        | boolean
                        | React.ReactElement<
                            any,
                            string | React.JSXElementConstructor<any>
                          >
                        | Iterable<React.ReactNode>
                        | React.ReactPortal
                        | Promise<React.AwaitedReactNode>
                        | null
                        | undefined;
                    }) => (
                      // eslint-disable-next-line react/jsx-key
                      <BoxOfStatusBedahWp
                        item={item}
                        change={change}
                        quarterData={quarterData}
                      />
                    )
                  )}
                </>
              ) : (
                ""
              )}
            </>
          )}
        </dl>
      </div>
    </div>
  );
};

export default StatusBedahWP;
