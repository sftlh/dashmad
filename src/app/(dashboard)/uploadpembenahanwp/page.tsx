import PembenahanCabangPusatBedaEntitas from "@/components/uploader/PembenahanCabangPusatBedaEntitasUpload";
import PembenahanWpIdentitasGanda from "@/components/uploader/PembenahanWpIdentitasGanda";
import PembenahanWpNamaTTLSama from "@/components/uploader/PembenahanWpNamaTTLSama";
import PembenahanWpNikGanda from "@/components/uploader/PembenahanWpNikGanda";
import React from "react";

const UploadPembenahanMFWP = () => {
  return (
    <div className="p-10">
      <div className="divide-y divide-gray-200 overflow-hidden rounded-lg bg-gray-200 shadow sm:grid sm:grid-cols-2 sm:gap-px sm:divide-y-0">
        <div className="bg-white p-6 focus-within:ring-2 focus-within:ring-inset focus-within:ring-navy">
          <div className="mt-8">
            <h3 className="text-base font-semibold text-gray-900">
              <a className="focus:outline-none">
                <span aria-hidden className="inset-0" />
                Upload Cabang Pusat Beda Entitas
              </a>
            </h3>
            <p className="mt-2 text-sm text-gray-500">
              Tombol Upload untuk Mengupload Data Pembenahan MFWP Cabang Pusat
              Beda Entitas
            </p>
          </div>
          <div>
            <PembenahanCabangPusatBedaEntitas />
          </div>
        </div>
        <div className="bg-white p-6 focus-within:ring-2 focus-within:ring-inset focus-within:ring-navy">
          <div className="mt-8">
            <h3 className="text-base font-semibold text-gray-900">
              <a className="focus:outline-none">
                <span aria-hidden className="inset-0" />
                Upload Data WP dengan NIK Ganda
              </a>
            </h3>
            <p className="mt-2 text-sm text-gray-500">
              Tombol Upload untuk Mengupload Data WP dengan NIK Ganda
            </p>
          </div>
          <div>
            <PembenahanWpNikGanda />
          </div>
        </div>
        <div className="bg-white p-6 focus-within:ring-2 focus-within:ring-inset focus-within:ring-navy">
          <div className="mt-8">
            <h3 className="text-base font-semibold text-gray-900">
              <a className="focus:outline-none">
                <span aria-hidden className="inset-0" />
                Upload Data WP dengan TTL (Tempat Tanggal Lahir Sama)
              </a>
            </h3>
            <p className="mt-2 text-sm text-gray-500">
              Tombol Upload untuk Mengupload Data WP dengan TTL (Tempat Tanggal Lahir Sama)
            </p>
          </div>
          <div>
            <PembenahanWpNamaTTLSama/>
          </div>
        </div>
        <div className="bg-white p-6 focus-within:ring-2 focus-within:ring-inset focus-within:ring-navy">
          <div className="mt-8">
            <h3 className="text-base font-semibold text-gray-900">
              <a className="focus:outline-none">
                <span aria-hidden className=" inset-0" />
                Upload Data WP PT dengan Identitas Ganda
              </a>
            </h3>
            <p className="mt-2 text-sm text-gray-500">
              Tombol Upload untuk Mengupload Data WP PT dengan Identitas Ganda
            </p>
          </div>
          <div>
            <PembenahanWpIdentitasGanda />
          </div>
        </div>
      </div>
    </div>
  );
};

export default UploadPembenahanMFWP;
