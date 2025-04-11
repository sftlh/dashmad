import OcDashboard from "@/components/dashboard/OcDashboard";
import {
  quarterFourLess,
  quarterOneLess,
  quarterThreeLess,
  quarterTwoLess,
} from "@/lib/getaction";
import {
  belumKirimTwIIIOc,
  belumKirimTwIIOc,
  belumKirimTwIOc,
  belumKirimTwIVOc,
  getBedahWpKirimTwIIIOc,
  getBedahWpKirimTwIIOc,
  getBedahWpKirimTwIOc,
  getBedahWpKirimTwIVOc,
  getBedahWpTelatTwIIIOc,
  getBedahWpTelatTwIIOc,
  getBedahWpTelatTwIOc,
  getBedahWpTelatTwIVOc,
  getCountOfBedahWpTriwulanIByUserIdOc,
  getCountOfBedahWpTriwulanIIByUserIdOc,
  getCountOfBedahWpTriwulanIIIByUserIdOc,
  getCountOfBedahWpTriwulanIVByUserIdOc,
  quarterFour,
  quarterOne,
  quarterThree,
  quarterTwo,
} from "@/lib/getActionOc";
import React from "react";

const OcPage = async () => {
  //Jumlah BedahWP
  const countBedahWpTwI = await getCountOfBedahWpTriwulanIByUserIdOc();
  const countBedahWpTwII = await getCountOfBedahWpTriwulanIIByUserIdOc();
  const countBedahWpTwIII = await getCountOfBedahWpTriwulanIIIByUserIdOc();
  const countBedahWpTwIV = await getCountOfBedahWpTriwulanIVByUserIdOc();

  //Jumlah BedahWP sudah Kirim
  const getBedahWpSudahKirimTwI = await getBedahWpKirimTwIOc();
  const getBedahWpSudahKirimTwII = await getBedahWpKirimTwIIOc();
  const getBedahWpSudahKirimTwIII = await getBedahWpKirimTwIIIOc();
  const getBedahWpSudahKirimTwIV = await getBedahWpKirimTwIVOc();

  //Jumlah BedahWp Belum Kirim
  const getBedahWpBelumKirimTwI = await belumKirimTwIOc();
  const getBedahWpBelumKirimTwII = await belumKirimTwIIOc();
  const getBedahWpBelumKirimTwIII = await belumKirimTwIIIOc();
  const getBedahWpBelumKirimTwIV = await belumKirimTwIVOc();

  //Jumlah BedahWP Telat Input
  const getBedahWPTelatTwI = await getBedahWpTelatTwIOc();
  const getBedahWPTelatTwII = await getBedahWpTelatTwIIOc();
  const getBedahWPTelatTwIII = await getBedahWpTelatTwIIIOc();
  const getBedahWPTelatTwIV = await getBedahWpTelatTwIVOc();

  const bedahwpinfo = [
    {
      id: 1,
      title: "Inputan Bedah WP Triwulan I",
      numeral: "I",
      total: countBedahWpTwI,
      kirim: getBedahWpSudahKirimTwI,
      belum: getBedahWpBelumKirimTwI,
      telat: getBedahWPTelatTwI,
      jt: quarterOneLess,
    },
    {
      id: 2,
      title: "Inputan Bedah WP Triwulan II",
      numeral: "II",
      total: countBedahWpTwII,
      kirim: getBedahWpSudahKirimTwII,
      belum: getBedahWpBelumKirimTwII,
      telat: getBedahWPTelatTwII,
      jt: quarterTwoLess,
    },
    {
      id: 3,
      title: "Inputan Bedah WP Triwulan III",
      numeral: "III",
      total: countBedahWpTwIII,
      kirim: getBedahWpSudahKirimTwIII,
      belum: getBedahWpBelumKirimTwIII,
      telat: getBedahWPTelatTwIII,
      jt: quarterThreeLess,
    },
    {
      id: 4,
      title: "Inputan Bedah WP Triwulan IV",
      numeral: "IV",
      total: countBedahWpTwIV,
      kirim: getBedahWpSudahKirimTwIV,
      belum: getBedahWpBelumKirimTwIV,
      telat: getBedahWPTelatTwIV,
      jt: quarterFourLess,
    },
  ];
  return (
    <div className="p-10">
      <OcDashboard data1={bedahwpinfo} />
    </div>
  );
};

export default OcPage;
