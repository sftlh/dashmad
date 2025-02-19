"use client";
import { useRouter } from "next/navigation";
import React, { useState } from "react";
import { useForm } from "react-hook-form";
import { toast } from "react-toastify";
import InputField from "../InputField";
import { JawabanPembenahanWpNikGanda } from "@/lib/zod";

const PembenahanWpNikGandaForm = ({ data }: { data?: any }) => {
  const {
    register,
    handleSubmit,
    getValues,
    watch,
    formState: { errors },
  } = useForm<JawabanPembenahanWpNikGanda>();

  const [selectedOption, setSelectedOption] = useState("");
  const [selectedKpp, setSelectedKpp] = useState("");

  const router = useRouter();

  const onSubmit = handleSubmit(async (data: JawabanPembenahanWpNikGanda) => {
    try {
      const response = await fetch(`/api/createAnswerWpNikGanda`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(data),
      });
      console.log("Data NIK Ganda", data)
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
  });
  return (
    <div className="container mx-auto px-4">
      <form className="w-full" onSubmit={onSubmit}>
        <div className="border-b border-white/10 pb-12">
          <h1 className="text-base/7 font-semibold text-navy">
            Question Form Wajib Pajak dengan NIK Ganda
          </h1>
          <h2 className="text-lg font-bold mt-5 text-center">Data Validasi</h2>
          <h2 className="text-sm flex font-semibold mt-5 gap-x-8">
            <div>
              <span className="text-pretty text-slate-800">
                Data Wajib Pajak yang di Validasi :
              </span>
              <div className="mt-2 text-justify">
                <span className="text-slate-700">Nama: </span>
                <span className="text-pretty text-dongker">{data.nama1}</span>
                <br />
                <span className="text-slate-700">NPWP: </span>
                <span className="text-pretty text-dongker">{data.npwp1Id}</span>
                <br />
                <span className="text-slate-700">NIK: </span>
                <span className="text-pretty text-dongker">{data.nik1}</span>
                <br />
                <span className="text-slate-700">KPP Terdaftar: </span>
                <span className="text-pretty text-dongker">{data.kpp1}</span>
                <br />
                <span className="text-slate-700">Tempat Lahir: </span>
                <span className="text-pretty text-dongker">
                  {data.tempatLahir1}
                </span>
                <br />
                <span className="text-slate-700">Tanggal Lahir: </span>
                <span className="text-pretty text-dongker">
                  {data.tanggalLahir1}
                </span>
                <br />
                <span className="text-slate-700">Status: </span>
                <span className="text-pretty text-dongker">
                  {data.statusWp1}
                </span>
              </div>
            </div>
            <div>
              <span className="text-pretty mt-5 text-slate-800">
                Data Wajib Pajak Lawan Validasi:
              </span>
              <div className="mt-2 text-justify">
                <span className="text-pretty text-slate-700">Nama: </span>
                <span className="text-red-500">{data.nama2}</span>
                <br />
                <span className="text-pretty text-slate-700">NPWP: </span>
                <span className="text-red-500">{data.npwp2}</span>
                <br />
                <span className="text-pretty text-slate-700">NIK: </span>
                <span className="text-red-500">{data.nik2}</span>
                <br />
                <span className="text-pretty text-slate-700">
                  KPP Terdaftar:{" "}
                </span>
                <span className="text-red-500">{data.kpp2}</span>
                <br />
                <span className="text-slate-700">Tempat Lahir: </span>
                <span className="text-pretty text-red-500">
                  {data.tempatLahir2}
                </span>
                <br />
                <span className="text-slate-700">Tanggal Lahir: </span>
                <span className="text-pretty text-red-500">
                  {data.tanggalLahir2}
                </span>
                <br />
                <span className="text-slate-700">Status: </span>
                <span className="text-pretty text-red-500">
                  {data.statusWp2}
                </span>
              </div>
            </div>
          </h2>
          <h2 className="text-sm font-semibold mt-10">
            <div>
              <span className="text-pretty text-navy text-justify">
                Wajib Pajak diatas diperkirakan memiliki dua NPWP berdasarkan
                NIK yang Sama, apakah benar NPWP Lawan tersebut dimiliki oleh satu
                pemilik yang sama dengan Wajib Pajak tervalidasi ?
              </span>
            </div>
          </h2>
          <select
            id="jawabanLangsung"
            value={selectedOption}
            {...register("jawabanLangsung", {
              onChange: (e: React.ChangeEvent<HTMLSelectElement>) =>
                setSelectedOption(e.target.value),
            })}
            className="col-start-1 row-start-1 w-full mt-4 appearance-none rounded-md bg-dongker/5 py-1.5 pl-3 pr-8 text-base text-navy outline outline-1 -outline-offset-1 outline-navy/10 *:bg-navy focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6"
          >
            <option value={"tidak"} className="text-white">
              Tidak
            </option>
            <option value={"ya"} className="text-white">
              Ya
            </option>
          </select>
          {selectedOption === "ya" ? (
            <>
              <h2 className="text-sm font-semibold mt-10">
                <div>
                  <span className="text-pretty text-navy text-justify">
                    Jika Jawaban anda{" "}
                    <span className="font-bold text-orange-900 text-md">
                      Iya
                    </span>
                    , maka NPWP manakah yang perlu dihapus ?
                  </span>
                </div>
              </h2>
              <select
                id="perluDihapus"
                value={selectedKpp}
                {...(register("perluDihapus"),
                {
                  onChange: (e: React.ChangeEvent<HTMLSelectElement>) =>
                    setSelectedKpp(e.target.value),
                })}
                className="col-start-1 row-start-1 w-full mt-4 appearance-none rounded-md bg-dongker/5 py-1.5 pl-3 pr-8 text-base text-navy outline outline-1 -outline-offset-1 outline-navy/10 *:bg-navy focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6"
              >
                <option value={"lawan"} className="text-white">
                  NPWP Lawan
                </option>
                <option value={"sini"} className="text-white">
                  NPWP KPP Sini
                </option>
              </select>
            </>
          ) : (<></>)}
          {selectedKpp === "sini" && selectedOption === "ya" ? (
            <>
              <h2 className="text-sm font-semibold mt-10">
                <div>
                  <span className="text-pretty text-navy text-justify">
                    Jika Jawaban anda{" "}
                    <span className="font-bold text-orange-900 text-md">
                      NPWP KPP Sini
                    </span>
                    , maka anda harus membuat LHP Penghapusan NPWP secara Jabatan dan
                    Mengirimnya ke PKD
                  </span>
                </div>
              </h2>
              <div className="sm:col-span-2 sm:col-start-1">
                <InputField
                  placeholder="Input LHP disini ... "
                  name="nomorLhp"
                  register={register}
                />
              </div>
            </>
          ) : (
            <></>
          )}
          <div className="w-full mt-5 max-w-lg mx-auto">
            <label className="block text-sm font-semibold text-navy mt-10 mb-2">
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
            defaultValue={data.npwp1.nipId}
            register={register}
          />
          <div className="mt-4 items-center">
            <h1 className="text-xs mt-2 text-justify text-navy">
              Pilih <span className="font-bold">Ya</span> Apabila Keduanya
              Memiliki Hubungan Satu Sama Lain.
              <br />
              Pilih <span className="font-bold text-red-500">Tidak</span>{" "}
              Apabila Keduanya Tidak Memiliki Hubungan Satu Sama Lain.
            </h1>
          </div>
          <div className="mt-6 flex items-center justify-between w-full gap-x-6">
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

export default PembenahanWpNikGandaForm;
