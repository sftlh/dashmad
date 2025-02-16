import ChevronDownIcon from "@heroicons/react/24/outline/ChevronDownIcon";
import React from "react";
import { useFormContext } from "react-hook-form";

interface Step2Props {
  nextStep: () => void;
  prevStep: () => void;
  data?: any;
}
const StepCabangPusatBedaEntitasForm2: React.FC<Step2Props> = ({
  nextStep,
  data,
  prevStep,
}) => {
  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useFormContext();
  const onSubmit = () => nextStep();
  return (
    <div className="container mx-auto px-4">
      <form className="w-full" onSubmit={handleSubmit(onSubmit)}>
        <div className="border-b border-white/10 pb-12">
          <h1 className="text-base/7 font-semibold text-navy">
            Question Form Wajib Pajak Cabang dengan Pusat Beda Entitas
          </h1>
          <h2 className="text-sm font-semibold mt-5">
            <div>
              <span className="text-pretty text-slate-700">
                Apakah Benar Nama Wajib Pajak Cabang{" "}
              </span>
              <span className="text-dongker">{data.namaCabang} </span>
              <span className="text-pretty text-slate-700">dengan NPWP </span>
              <span className="text-dongker">{data.npwpCabang}</span>{" "}
            </div>
            <div className="mt-2">
              <span className="text-pretty text-slate-700">
                Memiliki Entitas Yang sama dengan{" "}
              </span>
              <span className="text-red-500">{data.namaPusat}</span>{" "}
              <span className="text-pretty text-slate-700">dengan NPWP </span>
              <span className="text-red-500">{data.npwpPusat}</span>{" "}
              <span className="text-pretty text-slate-700">? </span>
            </div>
          </h2>
          <select
            id="namaCabangPusatQuestion"
            {...register("namaCabangPusatQuestion")}
            className="col-start-1 row-start-1 w-full mt-4 appearance-none rounded-md bg-dongker/5 py-1.5 pl-3 pr-8 text-base text-navy outline outline-1 -outline-offset-1 outline-navy/10 *:bg-navy focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6"
          >
            <option value={"ya"} className="text-white">
              Ya
            </option>
            <option value={"tidak"} className="text-white">
              Tidak
            </option>
          </select>
          <div className="mt-4 items-center">
            <h1 className="text-xs mt-2 text-justify text-navy">
              Pilih <span className="font-bold">Ya</span> Apabila Keduanya Memiliki Hubungan Entitas Satu Sama Lain.
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
              onClick={nextStep}
              type="submit"
              className="rounded-md bg-navy px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-navy/80 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-dongker"
            >
              Next
            </button>
          </div>
        </div>
      </form>
    </div>
  );
};

export default StepCabangPusatBedaEntitasForm2;
