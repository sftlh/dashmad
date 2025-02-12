"use client";
import React, { Dispatch, SetStateAction, useState } from "react";
import { useForm } from "react-hook-form";
import { bedahWpUpdateSchema, BedahWpUpdateSchema } from "@/lib/zod";
import { zodResolver } from "@hookform/resolvers/zod";
import { toast } from "react-toastify";
import { useRouter } from "next/navigation";
import {
  firstDateOfTheYear,
  quarterFour,
  quarterOne,
  quarterThree,
  quarterTwo,
  today,
} from "@/lib/getaction";
import InputField from "../InputField";
import ChevronDownIcon from "@heroicons/react/24/outline/ChevronDownIcon";

const EditFormBedahWp = ({ data,type, setOpen }: { data?: any, type:"update", setOpen:Dispatch<SetStateAction<boolean>> }) => {
  console.log("Data Pada Edit Form Bedah WP", data)
  const {
    register,
    handleSubmit,
    formState: { errors },
    reset,
  } = useForm<BedahWpUpdateSchema>({
    resolver: zodResolver(bedahWpUpdateSchema),
  });
  const router = useRouter();

  const [key, setKey] = useState<boolean>(false);

  const onSubmit = handleSubmit(async (data:BedahWpUpdateSchema) => {
    try {
      const response = await fetch(`/api/updateBedahWp`, {
        method: "PUT",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(data),
      });
      if (!response.ok) {
        const errorData = await response.json();
        errorData.errors.forEach((error: any) => {
          toast.error(error.message);
        });
      } else {
        const result = await response.json();
        toast.success(result.message);
        reset();
        setOpen(false)
        router.refresh();
      }
    } catch (error) {
      console.log("Unexpected Error", error);
      toast.error("An Unexpected error Occurred !");
    }
  });

  const toggleActive = () => {
    setKey((prevState) => !prevState);
  };

  return (
    <form onSubmit={onSubmit}>
      <div className="border-b border-white/10 pb-12">
        <h2 className="text-base/7 font-semibold text-navy">
          Data Potensi Wajib Pajak
        </h2>
        <h1 className="text-bold text-xl text-green-500">
          {today < quarterOne && today > firstDateOfTheYear
            ? "Triwulan I"
            : today < quarterTwo && today > quarterOne
            ? "Triwulan II"
            : today < quarterThree && today > quarterTwo
            ? "Triwulan III"
            : today < quarterFour && today > quarterThree
            ? "Triwulan IV"
            : ""}
        </h1>
        <div className="mt-5 grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6">
          <div className="sm:col-span-3">
            <InputField
              label="NPWP"
              register={register}
              readonly={true}
              defaultValue={data.npwpId}
              name="npwpId"
              error={errors?.npwpId}
            />
          </div>
          <div className="sm:col-span-3">
            <InputField
              label="Tanggal Pelaksanaan Kegiatan"
              type="date"
              defaultValue={
                new Date(data.pelaksanaanKegiatan)
                  .toISOString()
                  .split("T")[0]
              }
              name="pelaksanaanKegiatan"
              error={errors?.pelaksanaanKegiatan}
              register={register}
            />
          </div>
          <div className="sm:col-span-3">
            <label
              htmlFor="klasifikasi"
              className="block text-sm/6 font-medium text-navy"
            >
              Klasifikasi Kegiatan
            </label>
            <div className="mt-2 grid grid-cols-1">
              <select
                id="klasifikasi"
                defaultValue={data?.klasifikasi}
                {...register("klasifikasi")}
                className="col-start-1 row-start-1 w-full appearance-none rounded-md bg-dongker/5 py-1.5 pl-3 pr-8 text-base text-navy outline outline-1 -outline-offset-1 outline-navy/10 *:bg-navy focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6"
              >
                <option value={"1"} className="text-white">
                  Kategori Lengkap
                </option>
                <option value={"2"} className="text-white">
                  Kategori Biasa
                </option>
              </select>
              <ChevronDownIcon
                aria-hidden="true"
                className="pointer-events-none col-start-1 row-start-1 mr-2 size-5 self-center justify-self-end text-gray-400 sm:size-4"
              />
            </div>
          </div>
          <div className="sm:col-span-3">
            <InputField
              label="Tahun Pajak"
              defaultValue={data.tahunPajak}
              name="tahunPajak"
              error={errors.tahunPajak}
              register={register}
            />
          </div>
          <div className="sm:col-span-2 sm:col-start-1">
            <InputField
              label="PPh 21"
              name="pph21"
              defaultValue={data.pph21}
              register={register}
            />
          </div>
          <div className="sm:col-span-2">
            <InputField
              label="PPh 22"
              name="pph22"
              defaultValue={data.pph22}
              register={register}
            />
          </div>
          <div className="sm:col-span-2">
            <InputField
              label="PPh 23"
              name="pph23"
              defaultValue={data.pph23}
              register={register}
            />
          </div>
          <div className="sm:col-span-2 sm:col-start-1">
            <InputField
              label="PPh 25/29"
              name="pph2529"
              defaultValue={data.pph2529}
              register={register}
            />
          </div>
          <div className="sm:col-span-2">
            <InputField
              label="PPh 26"
              name="pph26"
              defaultValue={data.pph26}
              register={register}
            />
          </div>
          <div className="sm:col-span-2">
            <InputField
              label="PPh 4 ayat (2)"
              name="pphFinal"
              defaultValue={data.pphFinal}
              register={register}
            />
          </div>
          <div className="sm:col-span-2 sm:col-start-1">
            <InputField
              label="PPh 15"
              defaultValue={data.pph15}
              name="pph15"
              register={register}
            />
          </div>
          <div className="sm:col-span-2">
            <InputField
              label="PPN"
              name="ppn"
              defaultValue={data.ppn}
              register={register}
            />
          </div>
          <div className="sm:col-span-2">
            <InputField
              label="Pajak Lainnya"
              name="pajakLainnya"
              defaultValue={data.pajakLainnya}
              register={register}
            />
          </div>
          
          <div className="sm:col-span-2">
            <div className="flex gap-x-2">
              <input
                type="checkbox"
                checked={key}
                onClick={toggleActive}
                {...register("kunci")}
              />
              <h1 className="text-xs text-red-500">
                <span className="font-bold text-navy">Kunci Data</span>
              </h1>
            </div>
          </div>
          <InputField
            hidden
            label="userId"
            name="userId"
            defaultValue={data.userId}
            register={register}
          />
          <InputField
            hidden
            label="id"
            name="id"
            defaultValue={data.id}
            register={register}
          />
        </div>
      </div>
      <div className="mt-2 items-center">
        <h1 className="text-xs text-justify text-red-500">
          <span className="font-bold text-red-700">Kategori Lengkap</span>:
          Melibatkan Kepala KPP, Kepala Seksi Pengawasan dari WP yang
          bersangkutan, Kasi Pengawasan yang lain, Kasi P3, Kasi PKD, Pejabat
          Fungsional Pemeriksa Pajak, Penyuluh Pajak, Penilai Pajak, AR yang
          lain dan Pelaksana lain.{" "}
        </h1>
        <h1 className="text-xs mt-2 text-justify text-navy">
          <span className="font-bold text-dongker">Kunci Data</span>: Data yang
          dikunci adalah data yang benar-benar diyakini kebenarannya dan tidak
          dilakukan edit kedepannya, bilamana anda perlu mengeditnya hubungi
          langsung admin.{" "}
        </h1>
      </div>
      <div className="mt-6 flex items-center justify-end gap-x-6">
        <button
          type="submit"
          className="rounded-md bg-navy px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-navy/80 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-dongker"
        >
          Save
        </button>
      </div>
    </form>
  );
};

export default EditFormBedahWp;
