import PengawasanDashboard from "@/components/dashboard/PengawasanDashboard";
import {
  belumKirimTwI,
  belumKirimTwII,
  belumKirimTwIII,
  belumKirimTwIV,
  getBedahWpKirimTwI,
  getBedahWpKirimTwII,
  getBedahWpKirimTwIII,
  getBedahWpKirimTwIV,
  getBedahWpTelatTwI,
  getBedahWpTelatTwII,
  getBedahWpTelatTwIII,
  getBedahWpTelatTwIV,
  getCountOfBedahWpTriwulanIByUserId,
  getCountOfBedahWpTriwulanIIByUserId,
  getCountOfBedahWpTriwulanIIIByUserId,
  getCountOfBedahWpTriwulanIVByUserId,
  quarterFour,
  quarterOne,
  quarterThree,
  quarterTwo,
} from "@/lib/getaction";

import { getUserByUserId } from "@/lib/getById";
import {
  getPembenahanWpCabangPusatBedaEntitas,
  getPembenahanWpIdentitasGanda,
  getPembenahanWpNamaTtlSama,
  getPembenahanWpNikGanda,
  getPemebenahanWpBelumSelesai,
  getPemebenahanWpSelesai,
  sendingDataToKanwil,
} from "@/lib/getPembenahanWp";
import { auth } from "@clerk/nextjs/server";
import React from "react";

const PengawasanPage = async () => {
  const { userId } = await auth();
  const countPembenahanWPBelum = await getPemebenahanWpBelumSelesai(
    userId as string
  );
  const countPembenahanWPSelesai = await getPemebenahanWpSelesai(
    userId as string
  );
  const countPembenahanWPCabangBedaEntitas =
    await getPembenahanWpCabangPusatBedaEntitas(userId as string);
  const countPembenahanWPNikGanda = await getPembenahanWpNikGanda(
    userId as string
  );
  const countPembenahanWPIdentitasGanda = await getPembenahanWpIdentitasGanda(
    userId as string
  );
  const countPembenahanWPTTLSama = await getPembenahanWpNamaTtlSama(
    userId as string
  );
  const countSendingDataToKanwil = await sendingDataToKanwil(userId as string);
  const userData = await getUserByUserId(userId as string);

  console.log("Data Kanwil", countSendingDataToKanwil);

  //Jumlah BedahWP
  const countBedahWpTwI = await getCountOfBedahWpTriwulanIByUserId(
    userId as string
  );
  const countBedahWpTwII = await getCountOfBedahWpTriwulanIIByUserId(
    userId as string
  );
  const countBedahWpTwIII = await getCountOfBedahWpTriwulanIIIByUserId(
    userId as string
  );
  const countBedahWpTwIV = await getCountOfBedahWpTriwulanIVByUserId(
    userId as string
  );

  //Jumlah BedahWP sudah Kirim
  const getBedahWpSudahKirimTwI = await getBedahWpKirimTwI(userId as string);
  const getBedahWpSudahKirimTwII = await getBedahWpKirimTwII(userId as string);
  const getBedahWpSudahKirimTwIII = await getBedahWpKirimTwIII(
    userId as string
  );
  const getBedahWpSudahKirimTwIV = await getBedahWpKirimTwIV(userId as string);

  //Jumlah BedahWp Belum Kirim
  const getBedahWpBelumKirimTwI = await belumKirimTwI(userId as string);
  const getBedahWpBelumKirimTwII = await belumKirimTwII(userId as string);
  const getBedahWpBelumKirimTwIII = await belumKirimTwIII(userId as string);
  const getBedahWpBelumKirimTwIV = await belumKirimTwIV(userId as string);

  console.log("Belum Kirim TW I", getBedahWpBelumKirimTwI)

  //Jumlah BedahWP Telat Input
  const getBedahWPTelatTwI = await getBedahWpTelatTwI(userId as string);
  const getBedahWPTelatTwII = await getBedahWpTelatTwII(userId as string);
  const getBedahWPTelatTwIII = await getBedahWpTelatTwIII(userId as string);
  const getBedahWPTelatTwIV = await getBedahWpTelatTwIV(userId as string);

  const bedahwpinfo = [
    {
      id: 1,
      title: "Inputan Bedah WP Triwulan I",
      numeral: "I",
      total: countBedahWpTwI,
      kirim: getBedahWpSudahKirimTwI,
      belum: getBedahWpBelumKirimTwI,
      telat: getBedahWPTelatTwI,
      jt: quarterOne,
    },
    {
      id: 2,
      title: "Inputan Bedah WP Triwulan II",
      numeral: "II",
      total: countBedahWpTwII,
      kirim: getBedahWpSudahKirimTwII,
      belum: getBedahWpBelumKirimTwII,
      telat: getBedahWPTelatTwII,
      jt: quarterTwo,
    },
    {
      id: 3,
      title: "Inputan Bedah WP Triwulan III",
      numeral: "III",
      total: countBedahWpTwIII,
      kirim: getBedahWpSudahKirimTwIII,
      belum: getBedahWpBelumKirimTwIII,
      telat: getBedahWPTelatTwIII,
      jt: quarterThree,
    },
    {
      id: 4,
      title: "Inputan Bedah WP Triwulan IV",
      numeral: "IV",
      total: countBedahWpTwIV,
      kirim: getBedahWpSudahKirimTwIV,
      belum: getBedahWpBelumKirimTwIV,
      telat: getBedahWPTelatTwIV,
      jt: quarterFour,
    },
  ];

  return (
    <div className="p-10">
      <PengawasanDashboard
        data1={bedahwpinfo}
        userData={userData}
        countPembenahanWPBelum={countPembenahanWPBelum}
        countPembenahanWPIdentitasGanda={countPembenahanWPIdentitasGanda}
        countPembenahanWPSelesai={countPembenahanWPSelesai}
        countPembenahanWPNikGanda={countPembenahanWPNikGanda}
        countPembenahanWPTTLSama={countPembenahanWPTTLSama}
        countSendingDataToKanwil={countSendingDataToKanwil}
        countPembenahanWPCabangBedaEntitas={countPembenahanWPCabangBedaEntitas}
      />
    </div>
  );
};

export default PengawasanPage;
