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

const FormBedahWp = ({ id }: { id?: any }) => {
   const {
          register,
          handleSubmit,
          reset,
          formState: { errors },
      } = useForm<BedahWpSchema>({
          resolver: zodResolver(bedahWpSchema),
      });
      const router = useRouter();
  
      const [key, setKey] = useState<boolean>(false);
      const onSubmit = async (data: BedahWpSchema) => {
          const formData = new FormData();
          if (data.npwpId) formData.append('npwpId', data.npwpId);
          formData.append('klasifikasi', data.klasifikasi);
          if (data.tahunPajak) formData.append('tahunPajak', data.tahunPajak);
          if (data.pelaksanaanKegiatan) formData.append('pelaksanaanKegiatan', new Date(data.pelaksanaanKegiatan).toISOString());
          if (data.pph21) formData.append('pph21', data.pph21.toString());
          if (data.pph22) formData.append('pph22', data.pph22.toString());
          if (data.pph23) formData.append('pph23', data.pph23.toString());
          if (data.pph2529) formData.append('pph2529', data.pph2529.toString());
          if (data.pphFinal) formData.append('pphFinal', data.pphFinal.toString());
          if (data.pph15) formData.append('pph15', data.pph15.toString());
          if (data.ppn) formData.append('ppn', data.ppn.toString());
          if (data.pajakLainnya) formData.append('pajakLainnya', data.pajakLainnya.toString());
          if (data.kunci) formData.append('kunci', data.kunci.toString());
          if (data.userId) formData.append('userId', data.userId.toString());
          // Append the PDF file using the field name expected by the API: "file"
          formData.append('file', data.pdf[0]);
  
          try {
              const response = await fetch('/api/createBedahWp', {
                  method: 'POST',
                  body: formData,
              });
              if (response.ok) {
                  toast.success("Data Sukses Terupload")
                  reset();
                  router.refresh();
              } else {
                  toast.error("Terjadi Kesalahan Upload")
              }
          } catch (error) {
              console.error('Error during upload:', error);
          }
      };
  
      const toggleActive = () => {
          setKey((prevState) => !prevState);
      };
  
      return (
          <form onSubmit={handleSubmit(onSubmit)}>
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
                                  : today < quarterFour && today > quarterThree ? "Triwulan IV" : ""}
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
                      <div className="sm:col-span-4">
                          <div className='flex flex-col gap-y-10'>
                              <div className="w-full flex flex-col gap-y-3">
                                  <label>Upload Laporan Kegiatan Bedah WP (.pdf):</label>
                                  <input type="file" {...register('pdf')} accept="application/pdf" />
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
                          defaultValue={id}
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

export default FormBedahWp;
