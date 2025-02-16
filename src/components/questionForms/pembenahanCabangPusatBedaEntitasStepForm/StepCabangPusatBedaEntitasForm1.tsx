import ChevronDownIcon from "@heroicons/react/24/outline/ChevronDownIcon";
import React from "react";
import { useFormContext } from "react-hook-form";

interface Step1Props {
  nextStep: () => void;
  data?: any;
}
const StepCabangPusatBedaEntitasForm1: React.FC<Step1Props> = ({
  nextStep,
  data,
}) => {
  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useFormContext();
  const onSubmit = () => nextStep();
  return (
    <div className="container mx-auto px-4">
      <form onSubmit={handleSubmit(onSubmit)}>
        <div className="border-b border-white/10 pb-12">
          <h1 className="text-base/7 font-semibold text-navy">
            Question Form Wajib Pajak Cabang dengan Pusat Beda Entitas
          </h1>
          <h2 className="text-sm font-semibold mt-5">
            <div>
              <span className="text-pretty text-slate-700">
                Apakah Benar Nomor NPWP Cabang{" "}
              </span>
              <span className="text-dongker">{data.npwpCabang}</span>
            </div>
            <div className="mt-2">
              <span className="text-pretty text-slate-700">
                dan NPWP Pusat{" "}
              </span>
              <span className="text-red-500">{data.npwpPusat}</span>{" "}
              <span className="text-pretty text-slate-700">
                memiliki Hubungan Satu Sama Lain ?{" "}
              </span>
            </div>
          </h2>
          <select
            id="npwpCabangPusatQuestion"
            {...register("npwpCabangPusatQuestion")}
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
              Pilih <span className="font-bold">Ya</span> Apabila NPWP Cabang
              diatas Memiliki Hubungan dengan NPWP Pusat Tersebut.
              <br />
              Pilih <span className="font-bold text-red-500">Tidak</span>{" "}
              Apabila NPWP Cabang diatas Tidak Memiliki Hubungan dengan NPWP
              Pusat Tersebut.
            </h1>
          </div>
          <div className="mt-6 flex items-center justify-end gap-x-6">
            <button
              type="submit"
              onClick={nextStep}
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

export default StepCabangPusatBedaEntitasForm1;
