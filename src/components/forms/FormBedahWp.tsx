"use client";
import ChevronDownIcon from "@heroicons/react/24/outline/ChevronDownIcon";
import React, { useEffect, useState } from "react";
import InputField from "../InputField";
import { useForm, useFormState } from "react-hook-form";
import { bedahWpSchema, BedahWpSchema } from "@/lib/zod";
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
import { Dialog, DialogBackdrop, DialogPanel } from "@headlessui/react";
import { XMarkIcon } from "@heroicons/react/24/outline";
import { useUser } from "@clerk/nextjs";

const FormBedahWp = ({ id }: { id?: any }) => {
  const {
    register,
    handleSubmit,
    reset,
    trigger,
    formState: { errors },
  } = useForm<BedahWpSchema>({
    resolver: zodResolver(bedahWpSchema),
    defaultValues: {
      peserta: "",
      kluPenompangPenerimaan: "",
      potensiTambahan: "",
      kesimpulan: "",
    },
  });

  const { user } = useUser();

  const router = useRouter();
  const [step, setStep] = useState(1);
  const [key, setKey] = useState<boolean>(false);
  const [open, setOpen] = useState<boolean>(false);
  const [openKlu, setOpenKlu] = useState<boolean>(false);
  const [openStatusSpt, setOpenStatusSpt] = useState<boolean>(false);

  const nextStep = async () => {
    const isValid = await trigger([
      "npwpId",
      "pelaksanaanKegiatan",
      "klasifikasi",
      "statusSpt",
      "tahunPajak",
      "pdf"
    ]); // ✅ Validasi hanya field di Step 1

    if (!isValid) {
      console.log("Validasi gagal, tidak bisa lanjut ke Step 2");
      return; // 🚨 Stop, tidak bisa lanjut ke Step 2
    }
    setStep((prev) => prev + 1);
  };
  const prevStep = () => setStep((prev) => prev - 1);

  const onSubmit = async (data: BedahWpSchema) => {
    if (step < 2) return;
    const formData = new FormData();
    if (data.userId) formData.append("userId", data.userId.toString());
    if (data.npwpId) formData.append("npwpId", data.npwpId);
    if (data.pelaksanaanKegiatan)
      formData.append(
        "pelaksanaanKegiatan",
        new Date(data.pelaksanaanKegiatan).toISOString()
      );
    formData.append("statusSpt", data.statusSpt);
    formData.append("klasifikasi", data.klasifikasi);
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

    // if (data.kluPenompangPenerimaan) formData.append('kluPenompangPenerimaan', data.kluPenompangPenerimaan.toString());

    // if (data.kesimpulan) formData.append('kesimpulan', data.kesimpulan.toString());
    // if (data.masukDpp) formData.append('masukDpp', data.masukDpp.toString());
    // if (data.analisisLaporanKeuangan) formData.append('analisisLaporanKeuangan', data.analisisLaporanKeuangan.toString());
    // if (data.analisisTransferPricing) formData.append('analisisTransferPricing', data.analisisTransferPricing.toString());
    // if (data.mirroring) formData.append('mirroring', data.mirroring.toString());
    // if (data.analisisWpGroup) formData.append('analisisWpGroup', data.analisisWpGroup.toString());
    // if (data.kolaborasiDenganPenilai) formData.append('kolaborasiDenganPenilai', data.kolaborasiDenganPenilai.toString());
    // if (data.dataVisit) formData.append('dataVisit', data.dataVisit.toString());
    // if (data.pemanfaatanDataEksternal) formData.append('pemanfaatanDataEksternal', data.pemanfaatanDataEksternal.toString());
    // if (data.bobotKegiatan) formData.append('bobotKegiatan', data.bobotKegiatan.toString());
    // if (data.alket) formData.append('alket', data.alket.toString());
    // Append the PDF file using the field name expected by the API: "file"
    formData.append("file", data.pdf[0]);

    console.log("Status NPWP", data.npwpId);

    try {
      const response = await fetch("/api/createBedahWp", {
        method: "POST",
        body: formData,
      });
      if (response.ok) {
        toast.success("Data Sukses Terupload");
        reset();
        router.refresh();
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
                name="npwpId"
                error={errors?.npwpId}
              />
            </div>
            <div className="sm:col-span-3">
              <InputField
                label="Tanggal Pelaksanaan Kegiatan"
                type="date"
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
                name="tahunPajak"
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
                  {...register("statusSpt")}
                  className="col-start-1 row-start-1 w-full appearance-none rounded-md bg-dongker/5 py-1.5 pl-3 pr-8 text-base text-navy outline outline-1 -outline-offset-1 outline-navy/10 *:bg-navy focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6"
                >
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
              <InputField
                label="PPh 25/29"
                name="pph2529"
                register={register}
              />
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

            <div className="sm:col-span-4">
              <div className="flex flex-col gap-y-10">
                <div className="w-full flex flex-col gap-y-3">
                  <label>Upload Laporan Kegiatan Bedah WP (.pdf):</label>
                  <input
                    type="file"
                    {...register("pdf")}
                    accept="application/pdf"
                  />
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
            <InputField
              hidden
              label="userId"
              name="userId"
              defaultValue={user?.id}
              register={register}
            />
          </div>
          <div className="mt-10 flex gap-x-5 w-full items-center">
            <h1 className="text-xs text-justify text-red-500">
              <a
                onClick={() => setOpen(true)}
                className="cursor-pointer px-3 py-2 bg-dongker rounded-md text-sm text-white font-semibold"
              >
                Klasifikasi Kegiatan
              </a>
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
                              <XMarkIcon
                                aria-hidden="true"
                                className="size-6"
                              />
                            </button>
                            <div className="items-center">
                              <div className="flex flex-col gap-y-10">
                                <div className="">
                                  <h1 className="font-semibold">
                                    Kegiatan Bedah Wajib Pajak Strategis yang{" "}
                                    <span className="text-red-700">
                                      bersifat lengkap
                                    </span>{" "}
                                    harus memenuhi persyaratan akumulatif yang
                                    terdiri dari:
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
                                    <li className="text-sm mt-2">
                                      Merupakan WP yang termasuk dalam KLU
                                      penopang penerimaan KPP; dan
                                    </li>
                                    <li className="text-sm mt-2">
                                      Menghasilkan potensi tambahan dengan nilai
                                      minimal tertentu berdasarkan segmentasi
                                      KPP, termasuk Wajib Pajak dengan status
                                      SPT Rugi Tidak Lebih Bayar (RTLB){" "}
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
            {step < 3 && (
              <button
                type="submit"
                onClick={nextStep}
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
                  defaultValue=""
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
                  defaultValue=""
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
                  defaultValue=""
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
                  defaultValue=""
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
            
          </div>
          <div className="mt-10 flex gap-x-5 w-full items-center">
            <h1 className="text-xs text-justify text-red-500">
              <a
                onClick={() => setOpen(true)}
                className="cursor-pointer px-3 py-2 bg-dongker rounded-md text-sm text-white font-semibold"
              >
                Klasifikasi Kegiatan
              </a>
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
                              <XMarkIcon
                                aria-hidden="true"
                                className="size-6"
                              />
                            </button>
                            <div className="items-center">
                              <div className="flex flex-col gap-y-10">
                                <div className="">
                                  <h1 className="font-semibold">
                                    Kegiatan Bedah Wajib Pajak Strategis yang{" "}
                                    <span className="text-red-700">
                                      bersifat lengkap
                                    </span>{" "}
                                    harus memenuhi persyaratan akumulatif yang
                                    terdiri dari:
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
                                    <li className="text-sm mt-2">
                                      Merupakan WP yang termasuk dalam KLU
                                      penopang penerimaan KPP; dan
                                    </li>
                                    <li className="text-sm mt-2">
                                      Menghasilkan potensi tambahan dengan nilai
                                      minimal tertentu berdasarkan segmentasi
                                      KPP, termasuk Wajib Pajak dengan status
                                      SPT Rugi Tidak Lebih Bayar (RTLB){" "}
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
          <div className="mt-6 flex items-center justify-between gap-x-6">
            {step > 1 && (
              <button
                type="submit"
                onClick={prevStep}
                className="rounded-md justify-start bg-navy px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-navy/80 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-dongker"
              >
                Back
              </button>
            )}
            {step < 3 && (
              <button
                type="submit"
                // onClick={nextStep}
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

export default FormBedahWp;
