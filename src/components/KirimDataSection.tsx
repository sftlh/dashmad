"use client";
import React, { useState } from "react";
import Image from "next/image";
import FormModal from "./FormModal";

const KirimDataSection = () => {
  const [open, setOpen] = useState<boolean>(false);
  const [modalType, setModalType] = useState<string | null>(null);

  const handleOpenModal = (type: string) => {
    setModalType(type);
    setOpen(true);
  };
  return (
    <div className="bg-white h-full py-24 rounded-lg">
      <div className="mx-auto max-w-8xl px-6 text-center lg:px-8">
        <div className="mx-auto max-w-2xl">
          <h2 className="text-balance text-3xl font-semibold tracking-tight text-navy">
            Kirim Data
          </h2>
          <p className="mt-3 text-lg/4 text-gray-400">
            Kirim data berdasarkan kategori data yang ingin dikirim
          </p>
        </div>
        <ul
          role="list"
          className="mx-auto mt-20 grid max-w-2xl grid-cols-1 gap-6 sm:grid-cols-2 lg:mx-0 lg:max-w-none lg:grid-cols-3 lg:gap-8"
        >
          <li className="rounded-2xl bg-dongker px-8 py-10">
            <h3 className="mt-2 text-base/7 font-semibold tracking-tight text-gold">
              Pembenahan Wajib Pajak
            </h3>
            <h3 className="mt-2 text-base/7 font-semibold tracking-tight text-white">
              Triwulan I
            </h3>
            <ul role="list" className="mt-6 flex justify-center gap-x-6">
              <li>
                <button
                  type="button"
                  onClick={() => handleOpenModal("pembenahantw1")}
                  className="rounded-md bg-gold px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-gold focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
                >
                  Input Kirim Data
                </button>
              </li>
            </ul>
            {open && modalType && (
              <FormModal
                setOpen={setOpen}
                open={open}
                type={modalType as string}
              />
            )}
          </li>
          <li className="rounded-2xl bg-dongker px-8 py-10">
            <h3 className="mt-2 text-base/7 font-semibold tracking-tight text-gold">
              Pembenahan Wajib Pajak
            </h3>
            <h3 className="mt-2 text-base/7 font-semibold tracking-tight text-white">
              Triwulan II
            </h3>
            <ul role="list" className="mt-6 flex justify-center gap-x-6">
              <li>
                <button
                  type="button"
                  onClick={() => handleOpenModal("pembenahantw2")}
                  className="rounded-md bg-gold px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-gold focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
                >
                  Input Kirim Data
                </button>
              </li>
            </ul>
            {open && modalType && (
              <FormModal
                setOpen={setOpen}
                open={open}
                type={modalType as string}
              />
            )}
          </li>
          <li className="rounded-2xl bg-dongker px-8 py-10">
            <h3 className="mt-2 text-base/7 font-semibold tracking-tight text-gold">
              Pembenahan Wajib Pajak
            </h3>
            <h3 className="mt-2 text-base/7 font-semibold tracking-tight text-white">
              Triwulan III
            </h3>
            <ul role="list" className="mt-6 flex justify-center gap-x-6">
              <li>
                <button
                  type="button"
                  onClick={() => handleOpenModal("pembenahantw3")}
                  className="rounded-md bg-gold px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-gold focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
                >
                  Input Kirim Data
                </button>
              </li>
            </ul>
            {open && modalType && (
              <FormModal
                setOpen={setOpen}
                open={open}
                type={modalType as string}
              />
            )}
          </li>
          <li className="rounded-2xl bg-dongker px-8 py-10">
            <h3 className="mt-2 text-base/7 font-semibold tracking-tight text-gold">
              Pembenahan Wajib Pajak
            </h3>
            <h3 className="mt-2 text-base/7 font-semibold tracking-tight text-white">
              Triwulan IV
            </h3>
            <ul role="list" className="mt-6 flex justify-center gap-x-6">
              <li>
                <button
                  type="button"
                  onClick={() => handleOpenModal("pembenahantw4")}
                  className="rounded-md bg-gold px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-gold focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
                >
                  Input Kirim Data
                </button>
              </li>
            </ul>
            {open && modalType && (
              <FormModal
                setOpen={setOpen}
                open={open}
                type={modalType as string}
              />
            )}
          </li>
          <li className="rounded-2xl bg-orange-600 px-8 py-10">
            <h3 className="mt-2 text-base/7 font-semibold tracking-tight text-navy">
              Bedah Wajib Pajak
            </h3>
            <h3 className="mt-2 text-base/7 font-semibold tracking-tight text-white">
              Triwulan I
            </h3>
            <ul role="list" className="mt-6 flex justify-center gap-x-6">
              <li>
                <button
                  type="button"
                  onClick={() => handleOpenModal("bedahwptw1")}
                  className="rounded-md bg-navy px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-gold focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
                >
                  Input Kirim Data
                </button>
              </li>
            </ul>
            {open && modalType && (
              <FormModal
                setOpen={setOpen}
                open={open}
                type={modalType as string}
              />
            )}
          </li>
          <li className="rounded-2xl bg-orange-600 px-8 py-10">
            <h3 className="mt-2 text-base/7 font-semibold tracking-tight text-navy">
              Bedah Wajib Pajak
            </h3>
            <h3 className="mt-2 text-base/7 font-semibold tracking-tight text-white">
              Triwulan II
            </h3>
            <ul role="list" className="mt-6 flex justify-center gap-x-6">
              <li>
                <button
                  type="button"
                  onClick={() => handleOpenModal("bedahwptw2")}
                  className="rounded-md bg-navy px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-gold focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
                >
                  Input Kirim Data
                </button>
              </li>
            </ul>
            {open && modalType && (
              <FormModal
                setOpen={setOpen}
                open={open}
                type={modalType as string}
              />
            )}
          </li>
          <li className="rounded-2xl bg-orange-600 px-8 py-10">
            <h3 className="mt-2 text-base/7 font-semibold tracking-tight text-navy">
              Bedah Wajib Pajak
            </h3>
            <h3 className="mt-2 text-base/7 font-semibold tracking-tight text-white">
              Triwulan III
            </h3>
            <ul role="list" className="mt-6 flex justify-center gap-x-6">
              <li>
                <button
                  type="button"
                  onClick={() => handleOpenModal("bedahwptw3")}
                  className="rounded-md bg-navy px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-gold focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
                >
                  Input Kirim Data
                </button>
              </li>
            </ul>
            {open && modalType && (
              <FormModal
                setOpen={setOpen}
                open={open}
                type={modalType as string}
              />
            )}
          </li>
          <li className="rounded-2xl bg-orange-600 px-8 py-10">
            <h3 className="mt-2 text-base/7 font-semibold tracking-tight text-navy">
              Bedah Wajib Pajak
            </h3>
            <h3 className="mt-2 text-base/7 font-semibold tracking-tight text-white">
              Triwulan IV
            </h3>
            <ul role="list" className="mt-6 flex justify-center gap-x-6">
              <li>
                <button
                  type="button"
                  onClick={() => handleOpenModal("bedahwptw4")}
                  className="rounded-md bg-navy px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-gold focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
                >
                  Input Kirim Data
                </button>
              </li>
            </ul>
            {open && modalType && (
              <FormModal
                setOpen={setOpen}
                open={open}
                type={modalType as string}
              />
            )}
          </li>
        </ul>
      </div>
    </div>
  );
};

export default KirimDataSection;
