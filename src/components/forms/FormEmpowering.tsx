"use client";
import React, { useState } from "react";
import InputField from "../InputField";
import { useForm } from "react-hook-form";
import { empoweringSchema, EmpoweringSchema } from "@/lib/zod";
import { zodResolver } from "@hookform/resolvers/zod";
import { toast } from "react-toastify";
import { useRouter } from "next/navigation";

const FormEmpowering = ({ id }: { id?: any }) => {
  const {
    register,
    handleSubmit,
    reset,
    formState: { errors },
  } = useForm<EmpoweringSchema>({
    resolver: zodResolver(empoweringSchema),
  });

  const [key, setKey] = useState<boolean>(false);

  const onSubmit = handleSubmit(async (data: EmpoweringSchema) => {
    try {
      const response = await fetch("/api/createEmpoweringData", {
        method: "POST",
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

  const router = useRouter();

  return (
    <form onSubmit={onSubmit}>
      <div className="border-b border-white/10 pb-12">
        <h2 className="text-base/7 font-semibold text-navy">
          Data Potensi Wajib Pajak
        </h2>
        <div className="mt-10 grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6">
          <div className="sm:col-span-3">
            <InputField
              label="NPWP"
              register={register}
              name="npwpId"
              error={errors?.npwpId}
            />
          </div>
          <div className="sm:col-span-3">
            <InputField
              label="Tanggal Pelaksanaan Kegiatan"
              type="date"
              name="pelaksanaanKegiatan"
              error={errors.pelaksanaanKegiatan}
              register={register}
            />
          </div>

          <div className="sm:col-span-2 sm:col-start-1">
            <InputField label="PPh 21" name="pph21" register={register} />
          </div>
          <div className="sm:col-span-2">
            <InputField label="PPh 22" name="pph22" register={register} />
          </div>
          <div className="sm:col-span-2">
            <InputField label="PPh 23" name="pph23" register={register} />
          </div>
          <div className="sm:col-span-2 sm:col-start-1">
            <InputField label="PPh 25/29" name="pph2529" register={register} />
          </div>
          <div className="sm:col-span-2">
            <InputField label="PPh 26" name="pph26" register={register} />
          </div>
          <div className="sm:col-span-2">
            <InputField
              label="PPh 4 ayat (2)"
              name="pphFinal"
              register={register}
            />
          </div>
          <div className="sm:col-span-2 sm:col-start-1">
            <InputField label="PPh 15" name="pph15" register={register} />
          </div>
          <div className="sm:col-span-2">
            <InputField label="PPN" name="ppn" register={register} />
          </div>
          <div className="sm:col-span-2">
            <InputField
              label="Pajak Lainnya"
              name="pajakLainnya"
              register={register}
            />
          </div>
          <div className="sm:col-span-2 sm:col-start-1">
            <InputField
              label="Tahun Pajak"
              name="tahunPajak"
              error={errors.tahunPajak}
              register={register}
            />
          </div>
          <div className="sm:col-span-2">
            <div className="flex gap-x-2 pt-10">
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
            defaultValue={id}
            register={register}
          />
        </div>
      </div>
      <div className="mt-2 items-center">
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

export default FormEmpowering;
