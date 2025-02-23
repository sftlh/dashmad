import InputField from "@/components/InputField";
import { JawabanPembenahanWpNamaTtlSama } from "@/lib/zod";
import { useRouter } from "next/navigation";
import React, { useState } from "react";
import { useForm } from "react-hook-form";
import { toast } from "react-toastify";

const WpNamaTtlSamaForm = ({ data }: { data?: any }) => {
  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm<JawabanPembenahanWpNamaTtlSama>({
    defaultValues: {
      jawabanLangsung: "",
    },
  });
  console.log("WP Nama Ttl Sama", data)
  const [selectedOption, setSelectedOption] = useState("");
  const [selectedKpp, setSelectedKpp] = useState("");

  const router = useRouter();

  const onSubmit = handleSubmit(
    async (data: JawabanPembenahanWpNamaTtlSama) => {
      try {
        const response = await fetch(`/api/createAnswerWpNamaTtlSama`, {
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
            Question Form Wajib Pajak Tempat Tanggal Lahir Sama
          </h1>
          <h2 className="text-lg font-bold mt-5 text-center">Data Validasi</h2>
          <h2 className="text-sm flex font-semibold mt-5 gap-x-8">
            <div>
              <span className="text-pretty text-slate-800">
                Data Wajib Pajak yang di Validasi :
              </span>
              <div className="mt-2 text-justify">
                <span className="text-slate-700">Nama: </span>
                <span className="text-pretty text-dongker">{data.nama}</span>
                <br />
                <span className="text-slate-700">NPWP: </span>
                <span className="text-pretty text-dongker">{data.npwp}</span>
                <br />
                <span className="text-slate-700">NIK: </span>
                <span className="text-pretty text-dongker">{data.nik}</span>
                <br />
                <span className="text-slate-700">KPP Terdaftar: </span>
                <span className="text-pretty text-dongker">{data.kpp}</span>
                <br />
                <span className="text-slate-700">Thn Lapor Terakhir: </span>
                <span className="text-pretty text-dongker">
                  {data.thnLaporTerakhir}
                </span>
                <br />
                <span className="text-slate-700">Tempat Lahir: </span>
                <span className="text-pretty text-dongker">
                  {data.tmpLahir}
                </span>
                <br />
                <span className="text-slate-700">Tanggal Lahir: </span>
                <span className="text-pretty text-dongker">
                  {data.tglLahir}
                </span>
                <br />
                <span className="text-slate-700">Status: </span>
                <span className="text-pretty text-dongker">{data.status}</span>
              </div>
            </div>
            <div>
              <span className="text-pretty mt-5 text-slate-800">
                Data Wajib Pajak Lawan Validasi:
              </span>
              <div className="mt-2 text-justify">
                <span className="text-pretty text-slate-700">Nama: </span>
                <span className="text-red-500">{data.namaSama}</span>
                <br />
                <span className="text-pretty text-slate-700">NPWP: </span>
                <span className="text-red-500">{data.npwpSama}</span>
                <br />
                <span className="text-pretty text-slate-700">NIK: </span>
                <span className="text-red-500">{data.nikSama}</span>
                <br />
                <span className="text-pretty text-slate-700">
                  KPP Terdaftar:{" "}
                </span>
                <span className="text-red-500">{data.kppSama}</span>
                <br />
                <span className="text-slate-700">Thn Lapor Terakhir: </span>
                <span className="text-pretty text-red-500">
                  {data.thnLaporTerakhirSama}
                </span>
                <br />
                <span className="text-slate-700">Tempat Lahir: </span>
                <span className="text-pretty text-red-500">
                  {data.tmpLahirSama}
                </span>
                <br />
                <span className="text-slate-700">Tanggal Lahir: </span>
                <span className="text-pretty text-red-500">
                  {data.tglLahirSama}
                </span>
                <br />
                <span className="text-slate-700">Status: </span>
                <span className="text-pretty text-red-500">
                  {data.statusSama}
                </span>
              </div>
            </div>
          </h2>
          <h2 className="text-sm font-semibold mt-10">
            <div>
              <span className="text-pretty text-navy text-justify">
                Wajib Pajak diatas diperkirakan memiliki dua NPWP, yang
                dibuktikan dengan Tempat / Tanggal / Lahir serta Nama yang Sama.
                Atas data tersebut apakah pemilik NPWP lawan, merupakan pemilik
                yang sama dengan NPWP yang divalidasi ?
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
            <option value="" disabled hidden>
              -- Pilih Salah Satu --
            </option>
            <option value={"ya"} className="text-white">
              Ya
            </option>
            <option value={"tidak"} className="text-white">
              Tidak
            </option>
          </select>
          {selectedOption === "tidak" ? (
            <>
              <h2 className="text-sm font-semibold mt-10">
                <div>
                  <span className="text-pretty text-navy text-justify">
                    Jika Jawaban anda{" "}
                    <span className="font-bold text-red-500 text-md">
                      Tidak{" "}
                    </span>
                    maka anda Perlu melakukan Klarifikasi terlebih dahulu ke
                    Wajib Pajak ! , Kemudian anda bisa mengisi jawaban
                    klarifikasi tersebut dikolom ini !
                  </span>
                </div>
              </h2>
              <div className="sm:col-span-2 sm:col-start-1">
                <InputField
                  placeholder="Input Hasil Klarifikasi "
                  name="hasilKlarifikasi"
                  register={register}
                />
              </div>
              <h2 className="text-sm font-semibold mt-10">
                <div>
                  <span className="text-pretty text-navy text-justify">
                    Jika Wajib Pajak{" "}
                    <span className="text-red-500">
                      Tidak Memberikan Klarifikasi{" "}
                    </span>
                    Anda Bisa menginputkan BA Wp Tidak Memberikan Klarifikasi
                    dan Mengirimnya ke PKD dengan ND !
                  </span>
                </div>
              </h2>
              <div className="sm:col-span-2 sm:col-start-1">
                <InputField
                  placeholder="Input Nomor BA "
                  name="nomorBa"
                  register={register}
                />
              </div>
            </>
          ) : (
            <></>
          )}
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
          ) : (
            <></>
          )}
          {selectedKpp === "sini" && selectedOption === "ya" ? (
            <>
              <h2 className="text-sm font-semibold mt-10">
                <div>
                  <span className="text-pretty text-navy text-justify">
                    Jika Jawaban anda{" "}
                    <span className="font-bold text-orange-900 text-md">
                      NPWP KPP Sini
                    </span>
                    , maka anda harus membuat LHP Penghapusan NPWP secara
                    Jabatan dan Mengirimnya ke PKD
                  </span>
                </div>
              </h2>
              <div className="sm:col-span-2 sm:col-start-1">
                <InputField
                  placeholder="Input Nomor LHP secara lengkap disini ...  "
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
              Masukan Alasan Pilihan Anda Dikolom Bawah Ini !
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
          <InputField
            hidden
            label="namaWajibPajak"
            name="namaWajibPajak"
            defaultValue={data.nama}
            register={register}
          />
          <InputField
            hidden
            label="npwp"
            name="npwp"
            defaultValue={data.npwp}
            register={register}
          />
          <InputField
            hidden
            label="npwpLawan"
            name="npwpLawan"
            defaultValue={data.npwpSama}
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

export default WpNamaTtlSamaForm;
