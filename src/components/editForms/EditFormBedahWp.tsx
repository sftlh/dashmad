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
import { Dialog, DialogBackdrop, DialogPanel } from "@headlessui/react";
import { useUser } from "@clerk/nextjs";
import { XMarkIcon } from "@heroicons/react/24/outline";
import path, { basename } from "path";
import InputFieldNumber from "../InputFieldNumber";

const EditFormBedahWp = ({ data, type, setOpen }: { data?: any, type: "update", setOpen:any; }) => {
  const {
    register,
    handleSubmit,
    trigger,
    watch,
    formState: { errors },
    reset,
  } = useForm<BedahWpUpdateSchema>({
    resolver: zodResolver(bedahWpUpdateSchema),
  });

  console.log("Data eDit", data)

  const { user } = useUser();
  //watch
  const npwp = watch("npwpId");
  const bobotKegiatan = watch("bobotKegiatan");
  let iku;

  const pesertaBedahWp = watch("peserta");
  const kluPenompang = watch("kluPenompangPenerimaan");
  const potensiTmbhn = watch("potensiTambahan");

  const validasiDpp = watch("masukDpp");
  const validasiAlk = watch("analisisLaporanKeuangan");
  const validasiTp = watch("analisisTransferPricing");
  const validasiMirror = watch("mirroring");
  const validasiGroup = watch("analisisWpGroup");
  const validasiPenilai = watch("kolaborasiDenganPenilai");
  const validasiDataEks = watch("pemanfaatanDataEksternal");
  const validasiDataVisit = watch("dataVisit");
  const validasiAlket = watch("alket");


  let validasiStatusLengkap = "";

  if (pesertaBedahWp === "1" && potensiTmbhn === "1") {
    validasiStatusLengkap = "1"
  } else {
    validasiStatusLengkap = "0"
  }

  if (pesertaBedahWp === "1" && kluPenompang === "1" && potensiTmbhn === "1") {
    iku = "Data Bisa Diakui Sebagai IKU"
  } else {
    iku = "Data Tidak Bisa diakui Sebagai IKU"
  }

  let realisasiKuantitas;


  let totalSkorDPP;
  let totalSkorAlk;
  let totalSkorTp;
  let totalSkorMirroring;
  let totalSkorWpGroup;
  let totalSkorPenilai;
  let totalSkorDataEksternal;
  let totalSkorDataVisit;
  let totalSkorAlket;

  let totalKomponenKualitas;

  totalSkorDPP = parseInt(validasiDpp) * 0.60;
  totalSkorAlk = parseInt(validasiAlk) * 0.20;
  totalSkorTp = parseInt(validasiTp) * 0.40;
  totalSkorMirroring = parseInt(validasiMirror) * 0.10;
  totalSkorWpGroup = parseInt(validasiGroup) * 0.40;
  totalSkorPenilai = parseInt(validasiPenilai) * 0.15;
  totalSkorDataEksternal = parseInt(validasiDataEks) * 0.10;
  totalSkorDataVisit = parseInt(validasiDataVisit) * 0.20;
  totalSkorAlket = parseInt(validasiAlket) * 0.15

  totalKomponenKualitas = (totalSkorDPP + totalSkorAlk + totalSkorTp + totalSkorMirroring + totalSkorWpGroup + totalSkorPenilai + totalSkorDataEksternal + totalSkorDataVisit + totalSkorAlket) * (parseInt(bobotKegiatan) / 100) * parseInt(validasiStatusLengkap);

  if (bobotKegiatan !== "0%" && iku === "Data Bisa Diakui Sebagai IKU") {
    realisasiKuantitas = parseInt(validasiStatusLengkap) * 1;
    totalKomponenKualitas;
  } else {
    realisasiKuantitas = 0;
    totalKomponenKualitas = 0;
  }

  const router = useRouter();
  const [key, setKey] = useState<boolean>(false);
  const [step, setStep] = useState(1);
  const [openPeserta, setOpenPeserta] = useState<boolean>(false);
  const [openKlu, setOpenKlu] = useState<boolean>(false);
  const [openStatusSpt, setOpenStatusSpt] = useState<boolean>(false);
  const [selectedFileName, setSelectedFileName] = useState<string>(data.pdfFile || "");

  const handleFileChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    if (event.target.files && event.target.files.length > 0) {
      setSelectedFileName(event.target.files[0].name); // ✅ Store file name
    } else {
      setSelectedFileName(""); // Clear when no file is selected
    }
  };
  const nextStep2 = async () => {
    const isValid = await trigger([
      "peserta",
      "kluPenompangPenerimaan",
      "potensiTambahan",
      "kesimpulan",
      "bobotKegiatan",
      "masukDpp",
      "analisisLaporanKeuangan",
      "analisisTransferPricing",
      "mirroring",
      "analisisWpGroup",
      "mirroring",
      "kolaborasiDenganPenilai",
      "pemanfaatanDataEksternal",
      "dataVisit"
    ]); // ✅ Validasi hanya field di Step 1

    if (!isValid) {
      console.log("Validasi gagal, tidak bisa lanjut ke Step 2");
      return; // 🚨 Stop, tidak bisa lanjut ke Step 2
    }
    setStep((prev) => prev + 1);
  };

  const prevStep = () => setStep((prev) => prev - 1);

  const nextStep1 = async () => {
    const isValid = await trigger([
      "npwpId",
      "pelaksanaanKegiatan",
      "statusSpt",
      "tahunPajak",
    ]); // ✅ Validasi hanya field di Step 1

    if (!isValid) {
      console.log("Validasi gagal, tidak bisa lanjut ke Step 2");
      return; // 🚨 Stop, tidak bisa lanjut ke Step 2
    }
    setStep((prev) => prev + 1);
  };

  const onSubmit = async (data: BedahWpUpdateSchema) => {
    if (step < 3) return;
    const formData = new FormData();
    if (data.userId) formData.append("userId", data.userId.toString());
    if (data.npwpId) formData.append("npwpId", data.npwpId);
    if (data.pelaksanaanKegiatan)
      formData.append(
        "pelaksanaanKegiatan",
        new Date(data.pelaksanaanKegiatan).toISOString()
      );
    formData.append("statusSpt", data.statusSpt);
    formData.append("dataId", data.dataId as string);
    formData.append("bobotKegiatan", data.bobotKegiatan);
    if (data.tahunPajak) formData.append("tahunPajak", data.tahunPajak);
    if (data.peserta) formData.append("peserta", data.peserta.toString());
    if (data.kluPenompangPenerimaan)
      formData.append(
        "kluPenompangPenerimaan",
        data.kluPenompangPenerimaan.toString()
      );
    if (data.potensiTambahan)
      formData.append("potensiTambahan", data.potensiTambahan.toString());
    if (data.kesimpulan)
      formData.append("kesimpulan", data.kesimpulan.toString());
    if (data.masukDpp) formData.append('masukDpp', data.masukDpp.toString());
    if (data.analisisLaporanKeuangan) formData.append('analisisLaporanKeuangan', data.analisisLaporanKeuangan.toString());
    if (data.analisisTransferPricing) formData.append('analisisTransferPricing', data.analisisTransferPricing.toString());
    if (data.mirroring) formData.append('mirroring', data.mirroring.toString());
    if (data.analisisWpGroup) formData.append('analisisWpGroup', data.analisisWpGroup.toString());
    if (data.kolaborasiDenganPenilai) formData.append('kolaborasiDenganPenilai', data.kolaborasiDenganPenilai.toString());
    if (data.pemanfaatanDataEksternal) formData.append('pemanfaatanDataEksternal', data.pemanfaatanDataEksternal.toString());
    if (data.dataVisit) formData.append('dataVisit', data.dataVisit.toString());
    if (data.alket) formData.append('alket', data.alket.toString());
    if (data.pph21) formData.append("pph21", data.pph21.toString());
    if (data.pph22) formData.append("pph22", data.pph22.toString());
    if (data.pph23) formData.append("pph23", data.pph23.toString());
    if (data.pph2529) formData.append("pph2529", data.pph2529.toString());
    if (data.pph26) formData.append("pph26", data.pph26.toString());
    if (data.pphFinal) formData.append("pphFinal", data.pphFinal.toString());
    if (data.pph15) formData.append("pph15", data.pph15.toString());
    if (data.ppn) formData.append("ppn", data.ppn.toString());
    if (data.pajakLainnya)
      formData.append("pajakLainnya", data.pajakLainnya.toString());
    if (data.kunci) formData.append("kunci", data.kunci.toString());
    formData.append("file", data.pdf[0]);

    console.log("Status NPWP", data.npwpId);

    try {
      const response = await fetch("/api/updateBedahWp", {
        method: "PUT",
        body: formData,
      });

      console.log("Update Response", response)
      if (response.ok) {
        toast.success("Data Sukses Terupload");
        reset();
        router.refresh();
        setOpen(false)
      } else {
        toast.error("Terjadi Kesalahan Upload");
      }
    } catch (error) {
      console.error("Error during upload:", error);
    }
  };

  const toggleActive = () => {
    setKey((prevState) => !prevState);
  };

  return (
    <form onSubmit={handleSubmit(onSubmit)}>
      {step == 1 && (
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
                defaultValue={data.npwpId}
                readonly
                name="npwpId"
                error={errors?.npwpId}
              />
            </div>
            <div className="sm:col-span-3">
              <InputField
                label="Tanggal Pelaksanaan Kegiatan"
                type="date"
                name="pelaksanaanKegiatan"
                defaultValue={new Date(data.pelaksanaanKegiatan)
                  .toISOString()
                  .split("T")[0]}
                error={errors?.pelaksanaanKegiatan}
                register={register}
              />
            </div>
            <div className="sm:col-span-6">
              <InputField
                label="Tahun Pajak"
                name="tahunPajak"
                defaultValue={data.tahunPajak}
                error={errors.tahunPajak}
                register={register}
              />
            </div>
            <div className="sm:col-span-6">
              <label
                htmlFor="statusSpt"
                className="block text-sm/6 font-medium text-navy"
              >
                Status SPT
              </label>
              <div className="mt-2 grid grid-cols-1">
                <select
                  id="statusSpt"
                  defaultValue={data.statusSpt}
                  {...register("statusSpt")}
                  className="col-start-1 row-start-1 w-full appearance-none rounded-md bg-dongker/5 py-1.5 pl-3 pr-8 text-base text-navy outline outline-1 -outline-offset-1 outline-navy/10 *:bg-navy focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6"
                >
                  <option value="" disabled>
                    -- Pilih Status Peserta --
                  </option>
                  <option value={"Non RTLB"} className="text-white">
                    Non RTLB
                  </option>
                  <option value={"RTLB"} className="text-white">
                    RTLB
                  </option>
                </select>
                <ChevronDownIcon
                  aria-hidden="true"
                  className="pointer-events-none col-start-1 row-start-1 mr-2 size-5 self-center justify-self-end text-gray-400 sm:size-4"
                />
              </div>
              {errors.statusSpt && (
                <p className="mt-1 text-sm text-red-600">
                  {errors.statusSpt.message}
                </p>
              )}
            </div>

            <div className="sm:col-span-2 sm:col-start-1">
              <InputFieldNumber label="PPh 21" defaultValue={data.pph21} name="pph21" register={register} formatNumber/>
            </div>
            <div className="sm:col-span-2">
              <InputFieldNumber label="PPh 22" defaultValue={data.pph22} name="pph22" register={register} formatNumber/>
            </div>
            <div className="sm:col-span-2">
              <InputFieldNumber label="PPh 23" defaultValue={data.pph23} name="pph23" register={register} formatNumber/>
            </div>
            <div className="sm:col-span-2 sm:col-start-1">
              <InputFieldNumber
                label="PPh 25/29"
                defaultValue={data.pph2529}
                name="pph2529"
                register={register}
                formatNumber
              />
            </div>
            <div className="sm:col-span-2">
              <InputFieldNumber label="PPh 26" formatNumber defaultValue={data.pph26} name="pph26" register={register} />
            </div>
            <div className="sm:col-span-2">
              <InputFieldNumber
                label="PPh 4 ayat (2)"
                defaultValue={data.pphFinal}
                name="pphFinal"
                register={register}
                formatNumber
              />
            </div>
            <div className="sm:col-span-2 sm:col-start-1">
              <InputFieldNumber label="PPh 15" formatNumber defaultValue={data.pph15} name="pph15" register={register} />
            </div>
            <div className="sm:col-span-2">
              <InputFieldNumber label="PPN" formatNumber name="ppn" defaultValue={data.ppn} register={register} />
            </div>
            <div className="sm:col-span-2">
              <InputFieldNumber
                label="Pajak Lainnya"
                name="pajakLainnya"
                defaultValue={data.pajakLainnya}
                register={register}
                formatNumber
              />
            </div>


            <InputField
              hidden
              label="userId"
              name="userId"
              defaultValue={user?.id}
              register={register}
            />

            <InputField
              hidden
              label="dataId"
              name="dataId"
              defaultValue={data?.id}
              register={register}
            />
          </div>
          <div className="mt-10 flex gap-x-5 w-full items-center">
            <h1 className="text-xs text-justify text-navy">
              <a
                onClick={() => setOpenStatusSpt(true)}
                className="cursor-pointer px-3 py-2 bg-dongker rounded-md text-sm text-white font-semibold"
              >
                Penjelasan RTLB
              </a>
              {openStatusSpt && (
                <Dialog
                  open={openStatusSpt}
                  onClose={setOpenStatusSpt}
                  className="z-10"
                >
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
                              onClick={() => setOpenStatusSpt(false)}
                              className="absolute right-4 top-4 text-gray-400 hover:text-gray-500 sm:right-6 sm:top-8 md:right-6 md:top-6 lg:right-8 lg:top-8"
                            >
                              <span className="sr-only">Close</span>
                              <XMarkIcon
                                aria-hidden="true"
                                className="size-6"
                              />
                            </button>
                            <div className="items-center">
                              <div className="flex flex-col gap-y-10">
                                <div className="">
                                  <h1 className="font-semibold">
                                    {" "}
                                    Wajib Pajak dengan status SPT Rugi Tidak
                                    Lebih Bayar (RTLB),{" "}
                                  </h1>
                                  <ol className="list-decimal text-justify ml-5 mt-2">
                                    <li className="text-sm">
                                      WP Strategis KPP Pratama dengan potensi
                                      tambahan paling sedikit Rp10 juta, atau
                                      pengurangan kerugian fiskal minimal 10%
                                      dari SPT WP status RTLB.
                                    </li>
                                    <li className="text-sm mt-2">
                                      WP Strategis KPP Madya dengan potensi
                                      tambahan paling sedikit Rp50 juta, atau
                                      pengurangan kerugian fiskal minimal 10%
                                      dari SPT WP status RTLB.
                                    </li>
                                    <li className="text-sm mt-2">
                                      WP Strategis KPP Wajib Pajak Besar dengan
                                      potensi tambahan paling sedikit Rp100
                                      juta, atau pengurangan kerugian fiskal
                                      minimal 10% dari SPT WP status RTLB. KPP
                                      Wajib Pajak Besar meliputi KPP yang berada
                                      di Kanwil DJP Wajib Pajak Besar dan Kanwil
                                      DJP Jakarta Khusus kecuali untuk WP
                                      Strategis KPP Badan dan Orang Asing dengan
                                      potensi tambahan paling sedikit Rp50 juta,
                                      atau pengurangan kerugian fiskal minimal
                                      10% dari SPT WP status RTLB.
                                    </li>
                                  </ol>
                                </div>
                              </div>
                            </div>
                          </div>
                        </DialogPanel>
                      </div>
                    </div>
                  </DialogBackdrop>
                </Dialog>
              )}
            </h1>
            {/* <h1 className="text-xs mt-2 text-justify text-navy">
              <span className="font-bold text-dongker">Kunci Data</span>: Data
              yang dikunci adalah data yang benar-benar diyakini kebenarannya
              dan tidak dilakukan edit kedepannya, bilamana anda perlu
              mengeditnya hubungi langsung admin.{" "}
            </h1> */}
          </div>
          <div className="mt-6 flex items-center justify-end gap-x-6">
            {step < 3 && step === 1 && (
              <button
                type="submit"
                onClick={nextStep1}
                className="rounded-md bg-navy px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-navy/80 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-dongker"
              >
                Next
              </button>
            )}
          </div>
        </div>
      )}

      {step == 2 && (
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
          <div className="mt-5 items-center grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6">
            <div className="sm:col-span-3">
              <label
                htmlFor="peserta"
                className="block text-sm/6 font-medium text-navy"
              >
                Status Peserta Kegiatan ?
              </label>
              <div className="mt-2 grid grid-cols-1">
                <select
                  id="peserta"
                  defaultValue={data.peserta}
                  {...register("peserta")}
                  className="col-start-1 row-start-1 w-full appearance-none rounded-md bg-dongker/5 py-1.5 pl-3 pr-8 text-base text-navy outline outline-1 -outline-offset-1 outline-navy/10 *:bg-navy focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6"
                >
                  <option value="" disabled>
                    -- Pilih Status Peserta --
                  </option>
                  <option value={"1"} className="text-white">
                    Peserta yang hadir di kegiatan sesuai dengan ketentuan
                  </option>
                  <option value={"0"} className="text-white">
                    Peserta yang hadir tidak memenuhi ketentuan
                  </option>
                </select>
                <ChevronDownIcon
                  aria-hidden="true"
                  className="pointer-events-none col-start-1 row-start-1 mr-2 size-5 self-center justify-self-end text-gray-400 sm:size-4"
                />
              </div>
              {errors.peserta && (
                <p className="mt-1 text-sm text-red-600">
                  {errors.peserta.message}
                </p>
              )}
            </div>
            <div className="sm:col-span-3">
              <label
                htmlFor="kluPenompangPenerimaan"
                className="block text-sm/6 font-medium text-navy"
              >
                Apakah KLU WP termasuk, KLU Penompang Penerimaan ?
              </label>
              <div className="mt-2 grid grid-cols-1">
                <select
                  id="kluPenompangPenerimaan"
                  defaultValue={data.kluPenompangPenerimaan}
                  {...register("kluPenompangPenerimaan")}
                  className="col-start-1 row-start-1 w-full appearance-none rounded-md bg-dongker/5 py-1.5 pl-3 pr-8 text-base text-navy outline outline-1 -outline-offset-1 outline-navy/10 *:bg-navy focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6"
                >
                  <option value="" disabled>
                    -- Pilih Jawaban --
                  </option>
                  <option value={"1"} className="text-white">
                    Ya
                  </option>
                  <option value={"0"} className="text-white">
                    Tidak
                  </option>
                </select>
                <ChevronDownIcon
                  aria-hidden="true"
                  className="pointer-events-none col-start-1 row-start-1 mr-2 size-5 self-center justify-self-end text-gray-400 sm:size-4"
                />
              </div>
              {errors.kluPenompangPenerimaan && (
                <p className="mt-1 text-sm text-red-600">
                  {errors.kluPenompangPenerimaan.message}
                </p>
              )}
            </div>
            <div className="sm:col-span-3">
              <label
                htmlFor="potensiTambahan"
                className="block text-sm/6 font-medium text-navy"
              >
                Apakah Terdapat Potensi Tambahan ?
              </label>
              <div className="mt-2 grid grid-cols-1">
                <select
                  id="potensiTambahan"
                  defaultValue={data.potensiTambahan}
                  {...register("potensiTambahan")}
                  className="col-start-1 row-start-1 w-full appearance-none rounded-md bg-dongker/5 py-1.5 pl-3 pr-8 text-base text-navy outline outline-1 -outline-offset-1 outline-navy/10 *:bg-navy focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6"
                >
                  <option value="" disabled>
                    -- Pilih Jawaban --
                  </option>
                  <option value={"1"} className="text-white">
                    Terdapat potensi tambahan atau pengurangan kerugian sebesar
                    10%
                  </option>
                  <option value={"0"} className="text-white">
                    Tidak ada potensi tambahan atau pengurangan kerugian kurang
                    dari 10%
                  </option>
                </select>
                <ChevronDownIcon
                  aria-hidden="true"
                  className="pointer-events-none col-start-1 row-start-1 mr-2 size-5 self-center justify-self-end text-gray-400 sm:size-4"
                />
              </div>
              {errors.potensiTambahan && (
                <p className="mt-1 text-sm text-red-600">
                  {errors.potensiTambahan.message}
                </p>
              )}
            </div>
            <div className="sm:col-span-3">
              <label
                htmlFor="kesimpulan"
                className="block text-sm/6 font-medium text-navy"
              >
                Bagaimana keadaan kesimpulan ?
              </label>
              <div className="mt-2 grid grid-cols-1">
                <select
                  id="kesimpulan"
                  defaultValue={data.kesimpulan}
                  {...register("kesimpulan")}
                  className="col-start-1 row-start-1 w-full appearance-none rounded-md bg-dongker/5 py-1.5 pl-3 pr-8 text-base text-navy outline outline-1 -outline-offset-1 outline-navy/10 *:bg-navy focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6"
                >
                  <option value="" disabled>
                    -- Pilih Jawaban --
                  </option>
                  <option value={"1"} className="text-white">
                    Kesimpulan status kegiatannya lengkap
                  </option>
                  <option value={"0"} className="text-white">
                    Kesimpulan status kegiatannya tidak lengkap
                  </option>
                </select>
                <ChevronDownIcon
                  aria-hidden="true"
                  className="pointer-events-none col-start-1 row-start-1 mr-2 size-5 self-center justify-self-end text-gray-400 sm:size-4"
                />
              </div>
              {errors.kesimpulan && (
                <p className="mt-1 text-sm text-red-600">
                  {errors.kesimpulan.message}
                </p>
              )}
            </div>
            <div className="sm:col-span-3">
              <label
                htmlFor="bobotKegiatan"
                className="block text-sm/6 font-medium text-navy"
              >
                Bobot Kegiatan Bedah Wajib Pajak ?
              </label>
              <div className="mt-2 grid grid-cols-1">
                <select
                  id="bobotKegiatan"
                  defaultValue={data.bobotKegiatan}
                  {...register("bobotKegiatan")}
                  className="col-start-1 row-start-1 w-full appearance-none rounded-md bg-dongker/5 py-1.5 pl-3 pr-8 text-base text-navy outline outline-1 -outline-offset-1 outline-navy/10 *:bg-navy focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6"
                >
                  <option value="" disabled>
                    -- Pilih Jawaban --
                  </option>
                  <option value={"100%"} className="text-white">
                    WP yang dibedah belum pernah dilakukan kegiatan bedah WP
                  </option>
                  <option value={"75%"} className="text-white">
                    WP yang dibedah sudah pernah dilakukan kegiatan bedah WP di tahun sebelumnya
                  </option>
                  <option value={"0%"} className="text-white">
                    WP yang dibedah sudah pernah dilakukan kegiatan bedah WP di tahun yang sama
                  </option>
                </select>
                <ChevronDownIcon
                  aria-hidden="true"
                  className="pointer-events-none col-start-1 row-start-1 mr-2 size-5 self-center justify-self-end text-gray-400 sm:size-4"
                />
              </div>
              {errors.bobotKegiatan && (
                <p className="mt-1 text-sm text-red-600">
                  {errors.bobotKegiatan.message}
                </p>
              )}
            </div>
            <div className="sm:col-span-3">
              <label
                htmlFor="masukDpp"
                className="block text-sm/6 font-medium text-navy"
              >
                Apakah Wajib Pajak tersebut masuk kedalam DPP ?
              </label>
              <div className="mt-2 grid grid-cols-1">
                <select
                  id="masukDpp"
                  defaultValue={data.masukDpp}
                  {...register("masukDpp")}
                  className="col-start-1 row-start-1 w-full appearance-none rounded-md bg-dongker/5 py-1.5 pl-3 pr-8 text-base text-navy outline outline-1 -outline-offset-1 outline-navy/10 *:bg-navy focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6"
                >
                  <option value="" disabled>
                    -- Pilih Jawaban --
                  </option>
                  <option value={"1"} className="text-white">
                    Wajib Pajak termasuk kedalam Daftar DPP
                  </option>
                  <option value={"0"} className="text-white">
                    Wajib Pajak tidak masuk kedalam Daftar DPP
                  </option>
                </select>
                <ChevronDownIcon
                  aria-hidden="true"
                  className="pointer-events-none col-start-1 row-start-1 mr-2 size-5 self-center justify-self-end text-gray-400 sm:size-4"
                />
              </div>
              {errors.masukDpp && (
                <p className="mt-1 text-sm text-red-600">
                  {errors.masukDpp.message}
                </p>
              )}
            </div>
            <div className="sm:col-span-3">
              <label
                htmlFor="analisisLaporanKeuangan"
                className="block text-sm/6 font-medium text-navy"
              >
                Apakah Terdapat Analisis Laporan Keuangan ?
              </label>
              <div className="mt-2 grid grid-cols-1">
                <select
                  id="analisisLaporanKeuangan"
                  defaultValue={data.analisisLaporanKeuangan}
                  {...register("analisisLaporanKeuangan")}
                  className="col-start-1 row-start-1 w-full appearance-none rounded-md bg-dongker/5 py-1.5 pl-3 pr-8 text-base text-navy outline outline-1 -outline-offset-1 outline-navy/10 *:bg-navy focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6"
                >
                  <option value="" disabled>
                    -- Pilih Jawaban --
                  </option>
                  <option value={"1"} className="text-white">
                    Ya terdapat Analisis Laporan Keuangan
                  </option>
                  <option value={"0"} className="text-white">
                    Tidak memiliki Analisis Laporan Keuangan
                  </option>
                </select>
                <ChevronDownIcon
                  aria-hidden="true"
                  className="pointer-events-none col-start-1 row-start-1 mr-2 size-5 self-center justify-self-end text-gray-400 sm:size-4"
                />
              </div>
              {errors.analisisLaporanKeuangan && (
                <p className="mt-1 text-sm text-red-600">
                  {errors.analisisLaporanKeuangan.message}
                </p>
              )}
            </div>
            <div className="sm:col-span-3">
              <label
                htmlFor="analisisTransferPricing"
                className="block text-sm/6 font-medium text-navy"
              >
                Apakah Terdapat Analisis Transfer Pricing ?
              </label>
              <div className="mt-2 grid grid-cols-1">
                <select
                  id="analisisTransferPricing"
                  defaultValue={data.analisisTransferPricing}
                  {...register("analisisTransferPricing")}
                  className="col-start-1 row-start-1 w-full appearance-none rounded-md bg-dongker/5 py-1.5 pl-3 pr-8 text-base text-navy outline outline-1 -outline-offset-1 outline-navy/10 *:bg-navy focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6"
                >
                  <option value="" disabled>
                    -- Pilih Jawaban --
                  </option>
                  <option value={"1"} className="text-white">
                    Ya terdapat Analisis Transfer Pricing
                  </option>
                  <option value={"0"} className="text-white">
                    Tidak memiliki Analisis Transfer Pricing
                  </option>
                </select>
                <ChevronDownIcon
                  aria-hidden="true"
                  className="pointer-events-none col-start-1 row-start-1 mr-2 size-5 self-center justify-self-end text-gray-400 sm:size-4"
                />
              </div>
              {errors.analisisLaporanKeuangan && (
                <p className="mt-1 text-sm text-red-600">
                  {errors.analisisLaporanKeuangan.message}
                </p>
              )}
            </div>
            <div className="sm:col-span-3">
              <label
                htmlFor="mirroring"
                className="block text-sm/6 font-medium text-navy"
              >
                Apakah Terdapat Mirroring hasil Pemeriksaan, Keputusan
                Keberatan, Banding, dan/atau PK ?
              </label>
              <div className="mt-2 grid grid-cols-1">
                <select
                  id="mirroring"
                  defaultValue={data.mirroring}
                  {...register("mirroring")}
                  className="col-start-1 row-start-1 w-full appearance-none rounded-md bg-dongker/5 py-1.5 pl-3 pr-8 text-base text-navy outline outline-1 -outline-offset-1 outline-navy/10 *:bg-navy focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6"
                >
                  <option value="" disabled>
                    -- Pilih Jawaban --
                  </option>
                  <option value={"1"} className="text-white">
                    Ya terdapat Mirroring
                  </option>
                  <option value={"0"} className="text-white">
                    Tidak terdapat Mirroring
                  </option>
                </select>
                <ChevronDownIcon
                  aria-hidden="true"
                  className="pointer-events-none col-start-1 row-start-1 mr-2 size-5 self-center justify-self-end text-gray-400 sm:size-4"
                />
              </div>
              {errors.analisisLaporanKeuangan && (
                <p className="mt-1 text-sm text-red-600">
                  {errors.analisisLaporanKeuangan.message}
                </p>
              )}
            </div>
            <div className="sm:col-span-3">
              <label
                htmlFor="analisisWpGroup"
                className="block text-sm/6 font-medium text-navy"
              >
                Apakah Terdapat Analisis WP Group ?
              </label>
              <div className="mt-2 grid grid-cols-1">
                <select
                  id="analisisWpGroup"
                  defaultValue={data.analisisWpGroup}
                  {...register("analisisWpGroup")}
                  className="col-start-1 row-start-1 w-full appearance-none rounded-md bg-dongker/5 py-1.5 pl-3 pr-8 text-base text-navy outline outline-1 -outline-offset-1 outline-navy/10 *:bg-navy focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6"
                >
                  <option value="" disabled>
                    -- Pilih Jawaban --
                  </option>
                  <option value={"1"} className="text-white">
                    Ya terdapat Analisis WP Group
                  </option>
                  <option value={"0"} className="text-white">
                    Tidak terdapat Analisis WP Group
                  </option>
                </select>
                <ChevronDownIcon
                  aria-hidden="true"
                  className="pointer-events-none col-start-1 row-start-1 mr-2 size-5 self-center justify-self-end text-gray-400 sm:size-4"
                />
              </div>
              {errors.analisisLaporanKeuangan && (
                <p className="mt-1 text-sm text-red-600">
                  {errors.analisisLaporanKeuangan.message}
                </p>
              )}
            </div>
            <div className="sm:col-span-3">
              <label
                htmlFor="kolaborasiDenganPenilai"
                className="block text-sm/6 font-medium text-navy"
              >
                Apakah Terdapat Kolaborasi dengan Penilai ?
              </label>
              <div className="mt-2 grid grid-cols-1">
                <select
                  id="kolaborasiDenganPenilai"
                  defaultValue={data.kolaborasiDenganPenilai}
                  {...register("kolaborasiDenganPenilai")}
                  className="col-start-1 row-start-1 w-full appearance-none rounded-md bg-dongker/5 py-1.5 pl-3 pr-8 text-base text-navy outline outline-1 -outline-offset-1 outline-navy/10 *:bg-navy focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6"
                >
                  <option value="" disabled>
                    -- Pilih Jawaban --
                  </option>
                  <option value={"1"} className="text-white">
                    Ya terdapat Kolaborasi dengan Penilai
                  </option>
                  <option value={"0"} className="text-white">
                    Tidak terdapat Kolaborasi dengan Penilai
                  </option>
                </select>
                <ChevronDownIcon
                  aria-hidden="true"
                  className="pointer-events-none col-start-1 row-start-1 mr-2 size-5 self-center justify-self-end text-gray-400 sm:size-4"
                />
              </div>
              {errors.kolaborasiDenganPenilai && (
                <p className="mt-1 text-sm text-red-600">
                  {errors.kolaborasiDenganPenilai.message}
                </p>
              )}
            </div>
            <div className="sm:col-span-3">
              <label
                htmlFor="pemanfaatanDataEksternal"
                className="block text-sm/6 font-medium text-navy"
              >
                Apakah Terdapat Pemanfaatan Data Eksternal ?
              </label>
              <div className="mt-2 grid grid-cols-1">
                <select
                  id="pemanfaatanDataEksternal"
                  defaultValue={data.pemanfaatanDataEksternal}
                  {...register("pemanfaatanDataEksternal")}
                  className="col-start-1 row-start-1 w-full appearance-none rounded-md bg-dongker/5 py-1.5 pl-3 pr-8 text-base text-navy outline outline-1 -outline-offset-1 outline-navy/10 *:bg-navy focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6"
                >
                  <option value="" disabled>
                    -- Pilih Jawaban --
                  </option>
                  <option value={"1"} className="text-white">
                    Ya terdapat Pemanfaatan Data Eksternal
                  </option>
                  <option value={"0"} className="text-white">
                    Tidak terdapat Pemanfaatan Data Eksternal
                  </option>
                </select>
                <ChevronDownIcon
                  aria-hidden="true"
                  className="pointer-events-none col-start-1 row-start-1 mr-2 size-5 self-center justify-self-end text-gray-400 sm:size-4"
                />
              </div>
              {errors.pemanfaatanDataEksternal && (
                <p className="mt-1 text-sm text-red-600">
                  {errors.pemanfaatanDataEksternal.message}
                </p>
              )}
            </div>
            <div className="sm:col-span-3">
              <label
                htmlFor="dataVisit"
                className="block text-sm/6 font-medium text-navy"
              >
                Apakah Terdapat Analisis data & informasi dari hasil kunjungan ke
                Wajib Pajak ?
              </label>
              <div className="mt-2 grid grid-cols-1">
                <select
                  id="dataVisit"
                  defaultValue={data.dataVisit}
                  {...register("dataVisit")}
                  className="col-start-1 row-start-1 w-full appearance-none rounded-md bg-dongker/5 py-1.5 pl-3 pr-8 text-base text-navy outline outline-1 -outline-offset-1 outline-navy/10 *:bg-navy focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6"
                >
                  <option value="" disabled>
                    -- Pilih Jawaban --
                  </option>
                  <option value={"1"} className="text-white">
                    Ya terdapat Analisis data & informasi dari hasil kunjungan ke
                    Wajib Pajak
                  </option>
                  <option value={"0"} className="text-white">
                    Tidak terdapat Analisis data & informasi dari hasil kunjungan ke
                    Wajib Pajak
                  </option>
                </select>
                <ChevronDownIcon
                  aria-hidden="true"
                  className="pointer-events-none col-start-1 row-start-1 mr-2 size-5 self-center justify-self-end text-gray-400 sm:size-4"
                />
              </div>
              {errors.dataVisit && (
                <p className="mt-1 text-sm text-red-600">
                  {errors.dataVisit.message}
                </p>
              )}
            </div>
            <div className="sm:col-span-3">
              <label
                htmlFor="alket"
                className="block text-sm/6 font-medium text-navy"
              >
                Apakah Terdapat Alat Keterangan ?
              </label>
              <div className="mt-2 grid grid-cols-1">
                <select
                  id="alket"
                  defaultValue={data.alket}
                  {...register("alket")}
                  className="col-start-1 row-start-1 w-full appearance-none rounded-md bg-dongker/5 py-1.5 pl-3 pr-8 text-base text-navy outline outline-1 -outline-offset-1 outline-navy/10 *:bg-navy focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6"
                >
                  <option value="" disabled>
                    -- Pilih Jawaban --
                  </option>
                  <option value={"1"} className="text-white">
                    Terdapat Produksi Alket dari Kegiatan Bedah WP
                  </option>
                  <option value={"0"} className="text-white">
                    Tidak Ada
                  </option>
                </select>
                <ChevronDownIcon
                  aria-hidden="true"
                  className="pointer-events-none col-start-1 row-start-1 mr-2 size-5 self-center justify-self-end text-gray-400 sm:size-4"
                />
              </div>
              {errors.alket && (
                <p className="mt-1 text-sm text-red-600">
                  {errors.alket.message}
                </p>
              )}
            </div>
          </div>
          <div className="mt-10 flex gap-x-5 w-full items-center">
            <h1 className="text-xs text-justify text-red-500">
              <a
                onClick={() => setOpenPeserta(true)}
                className="cursor-pointer px-3 py-2 bg-dongker rounded-md text-sm text-white font-semibold"
              >
                Peserta ?
              </a>
              {openPeserta && (
                <Dialog open={openPeserta} onClose={setOpenPeserta} className="z-10">
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
                              onClick={() => setOpenPeserta(false)}
                              className="absolute right-4 top-4 text-gray-400 hover:text-gray-500 sm:right-6 sm:top-8 md:right-6 md:top-6 lg:right-8 lg:top-8"
                            >
                              <span className="sr-only">Close</span>
                              <XMarkIcon
                                aria-hidden="true"
                                className="size-6"
                              />
                            </button>
                            <div className="items-center">
                              <div className="flex flex-col gap-y-10">
                                <div className="">
                                  <h1 className="font-semibold">
                                    Kegiatan Bedah Wajib Pajak Strategis yang bersifat lengkap harus memenuhi persyaratan
                                    akumulatif yang terdiri dari:
                                  </h1>
                                  <ol className="list-decimal text-justify ml-5 mt-2">
                                    <li className="text-sm">
                                      Kegiatan wajib diikuti oleh AR dan Kasi
                                      Pengawasan pengampu WP yang dibedah,
                                      Supervisor Fungsional Pemeriksa Pajak,
                                      Pejabat Fungsional Penilai (jika terdapat
                                      CRM SR Penilaian), ditambah dengan paling
                                      sedikit dua peserta lainnya yang dapat
                                      terdiri dari Kepala KPP, Kasi Pengawasan
                                      Lainnya, Kepala Seksi Pemeriksaan
                                      Penagihan dan Penilaian, Kepala Seksi
                                      Penjaminan Kualitas Data, Fungsional
                                      Pemeriksa Pajak, Fungsional Penyuluh
                                      Pajak, Fungsional Penilai Pajak, AR yang
                                      lain, Jurusita Pajak dan pelaksana lain;
                                    </li>
                                  </ol>
                                </div>
                              </div>
                            </div>
                          </div>
                        </DialogPanel>
                      </div>
                    </div>
                  </DialogBackdrop>
                </Dialog>
              )}
            </h1>
            <h1 className="text-xs text-justify text-navy">
              <a
                onClick={() => setOpenKlu(true)}
                className="cursor-pointer px-3 py-2 bg-dongker rounded-md text-sm text-white font-semibold"
              >
                Penjelasan KLU Penompang Penerimaan
              </a>
              {openKlu && (
                <Dialog
                  open={openKlu}
                  onClose={setOpenKlu}
                  className="z-10"
                >
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
                              onClick={() => setOpenKlu(false)}
                              className="absolute right-4 top-4 text-gray-400 hover:text-gray-500 sm:right-6 sm:top-8 md:right-6 md:top-6 lg:right-8 lg:top-8"
                            >
                              <span className="sr-only">Close</span>
                              <XMarkIcon
                                aria-hidden="true"
                                className="size-6"
                              />
                            </button>
                            <div className="items-center">
                              <div className="flex flex-col gap-y-10">
                                <div className="">
                                  <h1 className="font-semibold">
                                    Wajib Pajak Strategis yang dibedah adalah Wajib Pajak Orang Pribadi dan/atau Wajib
                                    Pajak Badan yang termasuk dalam KLU Penopang Penerimaan KPP dan/atau WP dengan kriteria
                                    sebagai berikut:
                                  </h1>
                                  <ol className="list-decimal text-justify ml-5 mt-2">
                                    <li className="text-sm">
                                      Wajib Pajak sektoral sesuai prioritas nasional, antara lain :
                                      <ul className="list-disc ml-6 mt-1">
                                        <li className="text-sm">sektor perdagangan</li>
                                        <li className="text-sm">sektor pertambangan dan penggalian</li>
                                        <li className="text-sm">sektor sawit</li>
                                        <li className="text-sm">sektor industri farmasi</li>
                                        <li className="text-sm">sektor industri pengolahan non sawit</li>
                                        <li className="text-sm">sektor informasi dan komunikasi; dan</li>
                                        <li className="text-sm">sektor jasa kesehatan</li>
                                      </ul>
                                    </li>
                                    <li className="text-sm mt-2">
                                      Dalam hal tidak memiliki sektor dan KLU prioritas, Kantor Wilayah menentukan sektor dan
                                      KLU prioritas lainnya guna menjadi bahan kegiatan bedah Wajib Pajak Strategis.
                                    </li>
                                    <li className="text-sm mt-2">
                                      Wajib Pajak sesuai segmentasi kegiatan prioritas, di antaranya:
                                      <ul className="list-disc ml-6 mt-1">
                                        <li className="text-sm">Wajib Pajak High Wealth Individual (HWI)</li>
                                        <li className="text-sm">Transaksi afiliasi</li>
                                        <li className="text-sm">Ekonomi digital</li>
                                        <li className="text-sm">Pengawasan atas WP orang pribadi non peserta PPS; dan</li>
                                        <li className="text-sm">Tindak lanjut atas pelaksanaan kegiatan program sinergi dalam rangka optimalisasi
                                          penerimaan Negara Lintas Eselon I Kementrian Keuangan dan instansi lainnya.</li>
                                      </ul>
                                    </li>
                                  </ol>
                                </div>
                              </div>
                            </div>
                          </div>
                        </DialogPanel>
                      </div>
                    </div>
                  </DialogBackdrop>
                </Dialog>
              )}
            </h1>
          </div>
          <div className="mt-6 flex items-center justify-between gap-x-6">
            {step > 1 && step === 2 && (
              <button
                type="submit"
                onClick={prevStep}
                className="rounded-md justify-start bg-navy px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-navy/80 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-dongker"
              >
                Back
              </button>
            )}
            {step < 3 && step === 2 && (
              <button
                type="submit"
                onClick={nextStep2}
                className="rounded-md bg-navy justify-end px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-navy/80 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-dongker"
              >
                Next
              </button>
            )}
          </div>
        </div>
      )}

      {step == 3 && (
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
          <div className="mt-5 items-center grid grid-cols-1 gap-x-6 gap-y-4 sm:grid-cols-6">
            <div className="sm:col-span-6">
              <div className="flex gap-x-5 justify-start">
                <p className="text-sm font-medium text-navy">NPWP: <span className="font-bold">{npwp || "-"}</span></p>
                <p className="text-sm font-medium text-navy">Bobot Kegiatan: <span className="font-bold">{bobotKegiatan || "-"}</span></p>
              </div>
            </div>
            <div className="sm:col-span-4">
              <p className="text-sm font-medium text-navy">Diakui Sebagai IKU: <span className="font-bold">{iku || "-"}</span></p>
            </div>
            {
              iku === "Data Tidak Bisa diakui Sebagai IKU" && (<div className="sm:col-span-4">
                <p className="text-sm font-medium flex text-navy">Tidak bisa diakui sebagai IKU Karena:</p>
                <ul className="list-disc list-inside text-sm font-medium text-red-500">
                  {
                    kluPenompang === "0" && (
                      <li className="items-center flex">
                        - <p className="text-sm font-medium text-red-500"> KLU Penompang:  <span className="font-bold">Bukan KLU Penompang Penerimaan</span></p>
                      </li>

                    )
                  }
                  {
                    pesertaBedahWp === "0" && (
                      <li className="items-center flex">
                        - <p className="text-sm font-medium text-red-500"> Peserta:  <span className="font-bold">Peserta Tidak Sesuai Ketentuan</span></p>
                      </li>

                    )
                  }
                  {
                    potensiTmbhn === "0" && (
                      <li className="flex items-center">
                        - <p className="text-sm font-medium text-red-500"> Potensi Tambahan:  <span className="font-bold">Tidak Ada Potensi Tambahan</span></p>
                      </li>

                    )
                  }

                </ul>
              </div>)
            }
            <div className="sm:col-span-6">
              <div className="flex gap-x-5 justify-start">
                <p className="text-sm font-medium text-navy">Nilai Komponen Kuantitas: <span className="font-bold">{realisasiKuantitas || "-"}</span></p>
                <p className="text-sm font-medium text-navy">Nilai Komponen Kualitas: <span className="font-bold">{totalKomponenKualitas || "-"}</span></p>
              </div>
            </div>
          </div>
          <div className="mt-10 flex gap-x-5 w-full items-center">
            <div className="sm:col-span-4">
              <div className="flex flex-col gap-y-10">
                <div className="w-full flex flex-col gap-y-3">
                  <label>Upload Laporan Kegiatan Bedah WP (.pdf):</label>
                  <input
                    type="file"
                    {...register("pdf")}
                    onChange={handleFileChange}
                    accept="application/pdf"
                  />
                  {selectedFileName && (
                    <p className="text-sm text-gray-700">Current File: <strong>{path.basename(data.pdfFile)}</strong></p>
                  )}
                  {errors.pdf && <p>{errors.pdf.message?.toString()}</p>}
                </div>
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
            </div>
          </div>
          <div className="mt-6 flex items-center justify-between gap-x-6">
            {step > 1 && step === 3 && (
              <button
                type="submit"
                onClick={prevStep}
                className="rounded-md justify-start bg-navy px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-navy/80 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-dongker"
              >
                Back
              </button>
            )}
            {step === 3 && (
              <button
                type="submit"
                className="rounded-md bg-navy justify-end px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-navy/80 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-dongker"
              >
                Submit
              </button>
            )}
          </div>
        </div>
      )}
    </form>
  );
};

export default EditFormBedahWp;
