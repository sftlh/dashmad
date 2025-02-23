"use client";
import React from "react";
import Image from "next/image";
import { useUser } from "@clerk/nextjs";
import BoxOfDataPengawasanDashboard from "../BoxOfDataPengawasanDashboard";
import EyeIcon from "@heroicons/react/24/outline/EyeIcon";
import ShareIcon from "@heroicons/react/24/outline/ShareIcon";
import ChatBubbleLeftEllipsisIcon from "@heroicons/react/24/outline/ChatBubbleLeftEllipsisIcon";
import HandThumbUpIcon from "@heroicons/react/24/outline/HandThumbUpIcon";
import LeftColumnPengawasan from "../LeftColumnPengawasan";

const PengawasanDashboard = ({
  data1,
  countPembenahanWPCabangBedaEntitas,
  countPembenahanWPBelum,
  countPembenahanWPSelesai,
  countPembenahanWPNikGanda,
  countPembenahanWPIdentitasGanda,
  countPembenahanWPTTLSama,
  countSendingDataToKanwil
}: {
  data1?: any;
  countPembenahanWPTTLSama?:any,
  countPembenahanWPIdentitasGanda?:any;
  countPembenahanWPCabangBedaEntitas?:any;
  countSendingDataToKanwil?:any;
  userData?: any;
  countPembenahanWPNikGanda?:any;
  countPembenahanWPBelum?:any;
  countPembenahanWPSelesai?:any;
}) => {
  
  return (
    <div className="min-h-full">
      <div className="pb-8">
        <div className="mx-auto max-w-max px-4 sm:px-6 lg:max-w-max lg:px-4">
          <h1 className="sr-only">Profile</h1>
          {/* Main 3 Column */}
          <div className="grid grid-cols-1 items-start gap-4 lg:grid-cols-3 lg:gap-8">
            {/* Left Column */}
            <LeftColumnPengawasan countSendingDataToKanwil={countSendingDataToKanwil} countPembenahanWPTTLSama={countPembenahanWPTTLSama} countPembenahanWPIdentitasGanda={countPembenahanWPIdentitasGanda} countPembenahanWPNikGanda={countPembenahanWPNikGanda} countPembenahanWPSelesai={countPembenahanWPSelesai} countPembenahanWPCabangBedaEntitas={countPembenahanWPCabangBedaEntitas} countPembenahanWPBelum={countPembenahanWPBelum}/>
            {/* Right Column */}
            <div className="grid grid-cols-1 gap-4 lg:grid-cols-2">
              {/* announcement */}
              <div className="grid grid-cols-1 gap-4 lg:col-span-2">
                <BoxOfDataPengawasanDashboard data1={data1} />
                {/* <BoxOfDataPengawasanDashboard data1={data1} type="pembenahanwp"/> */}
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default PengawasanDashboard;
