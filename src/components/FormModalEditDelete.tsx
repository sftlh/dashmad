"use client";
import Image from "next/image";
import React, { Dispatch, SetStateAction, useEffect, useState } from "react";
import { FormContainerProps } from "./FormContainer";
import dynamic from "next/dynamic";
import { toast } from "react-toastify";
import { useRouter } from "next/navigation";
import { useFormState } from "react-dom";
import { Dialog, DialogBackdrop, DialogPanel } from "@headlessui/react";
import { XMarkIcon } from "@heroicons/react/24/outline";

const EditFormBedahWp = dynamic(() => import("./editForms/EditFormBedahWp"), {
  loading: () => <h1>Loading...</h1>,
});

const EditFormEmpoweringData = dynamic(
  () => import("./editForms/EditFormEmpoweringData"),
  {
    loading: () => <h1>Loading...</h1>,
  }
);

const forms: {
  [key: string]: (
    setOpen: Dispatch<SetStateAction<boolean>>,
    type: "update",
    data?: any
  ) => JSX.Element;
} = {
  editbedahwp: (setOpen, type, data) => (
    <EditFormBedahWp type={type} data={data} setOpen={setOpen} />
  ),
  editempowering: (setOpen, type, data) => (
    <EditFormEmpoweringData type={type} data={data} setOpen={setOpen} />
  ),
};

const FormModalEditDelete = ({ table, type, data, id }: FormContainerProps) => {
  const [open, setOpen] = useState(false);
  const Form = () => {
    // const router = useRouter();

    // useEffect(() => {
    //   if (state.success) {
    //     toast(`${table} has been deleted !`);
    //     setOpen(false);
    //     router.refresh();
    //   }
    // }, [state, router]);

    return type === "delete" && id ? (
      <form action={""} className="p-4 flex flex-col gap-4">
        <input type="text|number" name="id" value={id} hidden />
        <span className="text-center font-medium">
          All data will be lost. Are you sure want to delete this {table}
        </span>
        <button className="bg-red-700 text-white py-2 px-4 rounded-md border-none w-max self-center">
          Delete
        </button>
      </form>
    ) : type === "update" ? (
      forms[table](setOpen, type, data)
    ) : (
      "Form not Found"
    );
  };
  return (
    <div>
      <button className={`sm:pr-6`} onClick={() => setOpen(true)}>
        <a>Edit</a>
      </button>
      {open && (
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
                    <Form />
                  </div>
                </DialogPanel>
              </div>
            </div>
          </DialogBackdrop>
        </Dialog>
      )}
    </div>
  );
};

export default FormModalEditDelete;
