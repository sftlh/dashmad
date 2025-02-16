import InputField from "@/components/InputField";
import { JawabanPembenahanCabangPusatBedaEntitasSchema } from "@/lib/zod";
import { useRouter } from "next/navigation";
import React from "react";
import { useFormContext } from "react-hook-form";
import { toast } from "react-toastify";

interface Step2Props {
  nextStep: () => void;
  prevStep: () => void;
  data?: any;
}
const StepCabangPusatBedaEntitasForm4: React.FC<Step2Props> = ({
  nextStep,
  data,
  prevStep,
}) => {
  const {
    register,
    handleSubmit,
    getValues,
    formState: { errors },
  } = useFormContext<JawabanPembenahanCabangPusatBedaEntitasSchema>();

  const router = useRouter();

  const onSubmit = handleSubmit(
    async (data: JawabanPembenahanCabangPusatBedaEntitasSchema) => {
      try {
        const response = await fetch(
          `/api/createAnswerCabangPusatBedaEntitas`,
          {
            method: "POST",
            headers: {
              "Content-Type": "application/json",
            },
            body: JSON.stringify(data),
          }
        );
        if (!response.ok) {
          const errorData = await response.json();
          errorData.errors.forEach((error: any) => {
            toast.error(error.message);
          });
        } else {
          const result = await response.json();
          toast.success(result.message);
          router.refresh();
        }
      } catch (error) {
        console.log("Unexpected Error", error);
        toast.error("An Unexpected error Occurred !");
      }
    }
  );
  return (
    <div className="container mx-auto px-4">
      <form className="w-full" onSubmit={onSubmit}>
        <div className="border-b border-white/10 pb-12">
          <h1 className="text-base/7 font-semibold text-navy">
            Question Form Wajib Pajak Cabang dengan Pusat Beda Entitas
          </h1>
          <h2 className="text-lg font-bold mt-5">Review Data</h2>
          <h2 className="text-sm font-semibold mt-5">
            <div>
              <span className="text-pretty text-slate-700">
                Data Wajib Pajak yang di Validasi :
              </span>
              <div>
                <span>Nama: </span>
                <span className="text-pretty text-dongker">
                  {data.namaCabang}
                </span>
                <br />
                <span>NPWP: </span>
                <span className="text-pretty text-dongker">
                  {data.npwpCabang}
                </span>
                <br />
                <span>NIK: </span>
                <span className="text-pretty text-dongker">
                  {data.nikBersihCabang}
                </span>
              </div>
            </div>
            <div className="mt-2">
              <span className="text-pretty mt-5 text-slate-700">
                Data Wajib Pajak Lawan Validasi:
              </span>
              <div>
                <span className="text-pretty text-slate-700">Nama: </span>
                <span className="text-red-500">{data.namaPusat}</span>
                <br />
                <span className="text-pretty text-slate-700">NPWP: </span>
                <span className="text-red-500">{data.npwpPusat}</span>
                <br />
                <span className="text-pretty text-slate-700">NIK: </span>
                <span className="text-red-500">{data.nikBersihPusat}</span>
              </div>
            </div>
            <div className="mt-2">
              <span className="text-pretty mt-5 text-slate-700">
                Hasil Jawaban
              </span>
              <div>
                <span className="text-pretty text-slate-700">
                  NPWP Keduanya Memiliki Hubungan Satu Sama Lain ?{" "}
                </span>
                <span
                  className={
                    getValues("npwpCabangPusatQuestion") === "tidak"
                      ? "text-red-500"
                      : "text-dongker"
                  }
                >
                  {getValues("npwpCabangPusatQuestion")}
                </span>
                <br />
                <span className="text-pretty text-slate-700">
                  Nama Keduanya Memiliki Hubungan Entitas Satu Sama Lain ?{" "}
                </span>
                <span
                  className={
                    getValues("namaCabangPusatQuestion") === "tidak"
                      ? "text-red-500"
                      : "text-dongker"
                  }
                >
                  {getValues("namaCabangPusatQuestion")}
                </span>
                <br />
                <span className="text-pretty text-slate-700">
                  NIK Keduanya Memiliki Hubungan Entitas Satu Sama Lain ?{" "}
                </span>
                <span
                  className={
                    getValues("nikCabangPusatQuestion") === "tidak"
                      ? "text-red-500"
                      : "text-dongker"
                  }
                >
                  {getValues("nikCabangPusatQuestion")}
                </span>
              </div>
            </div>
          </h2>
          <div className="w-full mt-5 max-w-lg mx-auto">
            <label className="block text-gray-700 font-medium mb-2">
              Masukan Tambahan Keterangan di Kolom Berikut
            </label>
            <textarea
              {...register("keterangan")}
              className="w-full h-40 p-3 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 resize-none"
              placeholder="Masukkan deskripsi lengkap di sini..."
            ></textarea>
          </div>
          <InputField
            hidden
            label="dataId"
            name="dataId"
            defaultValue={data.id}
            register={register}
          />
          <InputField
            hidden
            label="userId"
            name="userId"
            defaultValue={data.nipId}
            register={register}
          />
          <div className="mt-4 items-center">
            <h1 className="text-xs mt-2 text-justify text-navy">
              Pilih <span className="font-bold">Ya</span> Apabila Keduanya
              Memiliki Hubungan Entitas Satu Sama Lain.
              <br />
              Pilih <span className="font-bold text-red-500">Tidak</span>{" "}
              Apabila Keduanya Tidak Memiliki Hubungan Entitas Satu Sama Lain.
            </h1>
          </div>
          <div className="mt-6 flex items-center justify-between w-full gap-x-6">
            <button
              type="button"
              onClick={prevStep}
              className="rounded-md bg-navy px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-navy/80 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-dongker"
            >
              Next
            </button>
            <button
              type="submit"
              className="rounded-md bg-navy px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-navy/80 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-dongker"
            >
              Submit
            </button>
          </div>
        </div>
      </form>
    </div>
  );
};

export default StepCabangPusatBedaEntitasForm4;
