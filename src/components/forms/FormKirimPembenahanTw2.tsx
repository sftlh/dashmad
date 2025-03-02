import React, { useState } from "react";
import InputField from "../InputField";
import { zodResolver } from "@hookform/resolvers/zod";
import { useForm } from "react-hook-form";
import { useRouter } from "next/navigation";
import { toast } from "react-toastify";
import { sendingDataToKanwil, SendingDataToKanwil } from "@/lib/zod";

const FormKirimPembenahanTw2 = () => {
  const {
    register,
    handleSubmit,
    formState: { errors },
    reset,
  } = useForm<SendingDataToKanwil>({
    resolver: zodResolver(sendingDataToKanwil),
  });
  const router = useRouter();

  const onSubmit = handleSubmit(async (data: SendingDataToKanwil) => {
    try {
      const response = await fetch("/api/kirimKanwilPembenahanTw2", {
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

  return (
    <div className="container mx-auto px-4">
      <form onSubmit={onSubmit}>
        <div className="border-b border-white/10 pb-12 items-center">
          <h2 className="text-base/7 font-semibold text-navy">
            Kirim Pembenahan Wajib Pajak Triwulan II
          </h2>
          <div className="mt-5 grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6">
            <div className="sm:col-span-3">
              <InputField
                label="Nomor Nota Dinas"
                register={register}
                name="nomorNd"
                error={errors?.nomorNd}
              />
            </div>
            <div className="sm:col-span-3">
              <InputField
                label="Tanggal kirim ND"
                type="date"
                name="tanggalKirimNd"
                error={errors?.tanggalKirimNd}
                register={register}
              />
            </div>
            <InputField hidden register={register} name='id' defaultValue={"pembenahantw2"}/>
          </div>
        </div>
        <div className="flex items-center justify-end gap-x-6">
          <button
            type="submit"
            className="rounded-md bg-navy px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-navy/80 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-dongker"
          >
            Save
          </button>
        </div>
      </form>
    </div>
  );
};

export default FormKirimPembenahanTw2;
