import PengawasanDashboard from "@/components/dashboard/PengawasanDashboard";
import {
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
import { RiNumber1, RiNumber2, RiNumber3, RiNumber4 } from "react-icons/ri";

import { getUserByUserId } from "@/lib/getById";
import { auth } from "@clerk/nextjs/server";
import React from "react";

const PengawasanPage = async () => {
  const { userId } = await auth();

  const userData = await getUserByUserId(userId as string);

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
      telat: getBedahWPTelatTwI,
      jt: quarterOne,
    },
    {
      id: 2,
      title: "Inputan Bedah WP Triwulan II",
      numeral: "II",
      total: countBedahWpTwII,
      kirim: getBedahWpSudahKirimTwII,
      telat: getBedahWPTelatTwII,
      jt: quarterTwo,
    },
    {
      id: 3,
      title: "Inputan Bedah WP Triwulan III",
      numeral: "III",
      total: countBedahWpTwIII,
      kirim: getBedahWpSudahKirimTwIII,
      telat: getBedahWPTelatTwIII,
      jt: quarterThree,
    },
    {
      id: 4,
      title: "Inputan Bedah WP Triwulan IV",
      numeral: "IV",
      total: countBedahWpTwIV,
      kirim: getBedahWpSudahKirimTwIV,
      telat: getBedahWPTelatTwIV,
      jt: quarterFour,
    },
  ];

  const pembenahanMfwp = [
    {
      id: 1,
      title: "Data Inputan Bedah WP",
      href: "#",
      preview:
        "Cum qui rem deleniti. Suscipit in dolor veritatis sequi aut. Vero ut earum quis deleniti. Ut a sunt eum cum ut repudiandae possimus. Nihil ex tempora neque cum consectetur dolores.",
    },
    {
      id: 2,
      title: "New password policy",
      href: "#",
      preview:
        "Alias inventore ut autem optio voluptas et repellendus. Facere totam quaerat quam quo laudantium cumque eaque excepturi vel. Accusamus maxime ipsam reprehenderit rerum id repellendus rerum. Culpa cum vel natus. Est sit autem mollitia.",
    },
  ];

  return (
    <div className="p-10">
      <PengawasanDashboard data1={bedahwpinfo} userData={userData} />
    </div>
  );
};

export default PengawasanPage;
