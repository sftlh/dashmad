"use client";
import { Dialog, DialogBackdrop, DialogPanel } from "@headlessui/react";
import { XMarkIcon } from "@heroicons/react/24/outline";
import React from "react";
import FormBedahWp from "./forms/FormBedahWp";
import FormEmpowering from "./forms/FormEmpowering";
import CabangPusatBedaEntitasForm from "./questionForms/CabangPusatBedaEntitasForm";
import WpNamaTtlSamaForm from "./questionForms/WpNamaTtlSamaForm";
import PembenahanWpNikGandaForm from "./questionForms/PembenahanWpNikGandaForm";
import PembenahanWpIdentitasGandaForm from "./questionForms/PembenahanWpIdentitasGandaForm";

const FormModal = ({
  id,
  data,
  type,
  open,
  setOpen,
}: {
  id?: any;
  data?: any;
  type?: string;
  open?: boolean;
  setOpen: React.Dispatch<React.SetStateAction<boolean>>;
}) => {
  return (
    <Dialog open={open} onClose={setOpen} className="z-10">
      <DialogBackdrop
        transition
        className="fixed inset-0 hidden bg-gray-500/75 z-50 transition-opacity data-[closed]:opacity-0 data-[enter]:duration-300 data-[leave]:duration-200 data-[enter]:ease-out data-[leave]:ease-in md:block"
      >
        <div className="fixed inset-0 z-10 w-screen overflow-y-auto">
          <div className="flex min-h-full items-stretch justify-center text-center md:items-center md:px-2 lg:px-4">
            {/* This element is to trick the browser into centering the modal contents. */}
            <span
              aria-hidden="true"
              className="hidden md:inline-block md:h-screen md:align-middle"
            >
              &#8203;
            </span>
            <DialogPanel
              transition
              className="flex w-full transform text-left text-base transition data-[closed]:translate-y-4 data-[closed]:opacity-0 data-[enter]:duration-300 data-[leave]:duration-200 data-[enter]:ease-out data-[leave]:ease-in md:my-8 md:max-w-2xl md:px-4 data-[closed]:md:translate-y-0 data-[closed]:md:scale-95 ld:max-w-4xl"
            >
              <div className="relative flex w-full items-center rounded-lg overflow-hidden bg-white px-4 pb-8 pt-14 shadow-2xl sm:px-6 sm:pt-8 md:p-6 lg:p-8">
                <button
                  type="button"
                  onClick={() => setOpen(false)}
                  className="absolute right-4 top-4 text-gray-400 hover:text-gray-500 sm:right-6 sm:top-8 md:right-6 md:top-6 lg:right-8 lg:top-8"
                >
                  <span className="sr-only">Close</span>
                  <XMarkIcon aria-hidden="true" className="size-6" />
                </button>
                {type === "bedahwp" ? (
                  <FormBedahWp id={id} />
                ) : type === "empowering" ? (
                  <FormEmpowering id={id} />
                ) : type === "cabangpusatbedaentitas" ? (
                  <CabangPusatBedaEntitasForm id={id} data={data} />
                ) : type === "wpttlsama" ? (
                  <WpNamaTtlSamaForm data={data} />
                ) : type === "wpnikganda" ? (
                  <PembenahanWpNikGandaForm data={data} />
                ) : type === "wpidentitasganda" ? (
                  <PembenahanWpIdentitasGandaForm data={data} />
                ) : (
                  ""
                )}
              </div>
            </DialogPanel>
          </div>
        </div>
      </DialogBackdrop>
    </Dialog>
  );
};

export default FormModal;
