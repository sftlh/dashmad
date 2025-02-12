import RecentActivity from "@/components/RecentActivity";
import StatusBedahWP from "@/components/StatusBedahWP";
import {
  getSumOfBedahWpQuarterFour,
  getSumOfBedahWpQuarterOne,
  getSumOfBedahWpQuarterThree,
  getSumOfBedahWpQuarterTwo,
  recentBedahWpActivity,
} from "@/lib/getaction";
import { auth } from "@clerk/nextjs/server";
import React from "react";

const BedahWPPage = async () => {
  const { userId } = await auth();
  console.log(userId)

  //Get Sum of Bedah WP Quarter One
  const sumOfBedahWpQuarterOnePengawasanII = await getSumOfBedahWpQuarterOne(
    "ar_2"
  );
  const sumOfBedahWpQuarterOnePengawasanI = await getSumOfBedahWpQuarterOne(
    "ar_1"
  );
  const sumOfBedahWpQuarterOnePengawasanIII = await getSumOfBedahWpQuarterOne(
    "ar_3"
  );
  const sumOfBedahWpQuarterOnePengawasanIV = await getSumOfBedahWpQuarterOne(
    "ar_4"
  );
  const sumOfBedahWpQuarterOnePengawasanV = await getSumOfBedahWpQuarterOne(
    "ar_5"
  );
  const sumOfBedahWpQuarterOnePengawasanVI = await getSumOfBedahWpQuarterOne(
    "ar_6"
  );

  //Get Sum of Bedah WP Quarter Two
  const sumOfBedahWpQuarterTwoPengawasanII = await getSumOfBedahWpQuarterTwo(
    "ar_2"
  );
  const sumOfBedahWpQuarterTwoPengawasanI = await getSumOfBedahWpQuarterTwo(
    "ar_1"
  );
  const sumOfBedahWpQuarterTwoPengawasanIII = await getSumOfBedahWpQuarterTwo(
    "ar_3"
  );
  const sumOfBedahWpQuarterTwoPengawasanIV = await getSumOfBedahWpQuarterTwo(
    "ar_4"
  );
  const sumOfBedahWpQuarterTwoPengawasanV = await getSumOfBedahWpQuarterTwo(
    "ar_5"
  );
  const sumOfBedahWpQuarterTwoPengawasanVI = await getSumOfBedahWpQuarterTwo(
    "ar_6"
  );

  //Get Sum of Bedah WP Quarter Three
  const sumOfBedahWpQuarterThreePengawasanII =
    await getSumOfBedahWpQuarterThree("ar_2");
  const sumOfBedahWpQuarterThreePengawasanI = await getSumOfBedahWpQuarterThree(
    "ar_1"
  );
  const sumOfBedahWpQuarterThreePengawasanIII =
    await getSumOfBedahWpQuarterThree("ar_3");
  const sumOfBedahWpQuarterThreePengawasanIV =
    await getSumOfBedahWpQuarterThree("ar_4");
  const sumOfBedahWpQuarterThreePengawasanV = await getSumOfBedahWpQuarterThree(
    "ar_5"
  );
  const sumOfBedahWpQuarterThreePengawasanVI =
    await getSumOfBedahWpQuarterThree("ar_6");

  //Get Sum of Bedah WP Quarter Four
  const sumOfBedahWpQuarterFourPengawasanII = await getSumOfBedahWpQuarterFour(
    "ar_2"
  );
  const sumOfBedahWpQuarterFourPengawasanI = await getSumOfBedahWpQuarterFour(
    "ar_1"
  );
  const sumOfBedahWpQuarterFourPengawasanIII = await getSumOfBedahWpQuarterFour(
    "ar_3"
  );
  const sumOfBedahWpQuarterFourPengawasanIV = await getSumOfBedahWpQuarterFour(
    "ar_4"
  );
  const sumOfBedahWpQuarterFourPengawasanV = await getSumOfBedahWpQuarterFour(
    "ar_5"
  );
  const sumOfBedahWpQuarterFourPengawasanVI = await getSumOfBedahWpQuarterFour(
    "ar_6"
  );

  const status = [
    {
      id: 1,
      tw: "Triwulan I",
      data: [
        {
          id: 1,
          name: "Pengawasan I",
          stat: sumOfBedahWpQuarterOnePengawasanI,
          change: "122",
          changeType: "increase",
        },
        {
          id: 2,
          name: "Pengawasan II",
          stat: sumOfBedahWpQuarterOnePengawasanII,
          change: "5.4%",
          changeType: "increase",
        },
        {
          id: 3,
          name: "Pengawasan III",
          stat: sumOfBedahWpQuarterOnePengawasanIII,
          change: "3.2%",
          changeType: "decrease",
        },
        {
          id: 4,
          name: "Pengawasan IV",
          stat: sumOfBedahWpQuarterOnePengawasanIV,
          change: "122",
          changeType: "increase",
        },
        {
          id: 5,
          name: "Pengawasan V",
          stat: sumOfBedahWpQuarterOnePengawasanV,
          change: "5.4%",
          changeType: "increase",
        },
        {
          id: 6,
          name: "Pengawasan VI",
          stat: sumOfBedahWpQuarterOnePengawasanVI,
          change: "3.2%",
          changeType: "decrease",
        },
      ],
    },
    {
      id: 2,
      tw: "Triwulan II",
      data: [
        {
          id: 1,
          name: "Pengawasan I",
          stat: sumOfBedahWpQuarterTwoPengawasanI,
          change: "122",
          changeType: "increase",
        },
        {
          id: 2,
          name: "Pengawasan II",
          stat: sumOfBedahWpQuarterTwoPengawasanII,
          change: "5.4%",
          changeType: "increase",
        },
        {
          id: 3,
          name: "Pengawasan III",
          stat: sumOfBedahWpQuarterTwoPengawasanIII,
          change: "3.2%",
          changeType: "decrease",
        },
        {
          id: 4,
          name: "Pengawasan IV",
          stat: sumOfBedahWpQuarterTwoPengawasanIV,
          change: "122",
          changeType: "increase",
        },
        {
          id: 5,
          name: "Pengawasan V",
          stat: sumOfBedahWpQuarterTwoPengawasanV,
          change: "5.4%",
          changeType: "increase",
        },
        {
          id: 6,
          name: "Pengawasan VI",
          stat: sumOfBedahWpQuarterTwoPengawasanVI,
          change: "3.2%",
          changeType: "decrease",
        },
      ],
    },
    {
      id: 3,
      tw: "Triwulan III",
      data: [
        {
          id: 1,
          name: "Pengawasan I",
          stat: sumOfBedahWpQuarterThreePengawasanI,
          change: "122",
          changeType: "increase",
        },
        {
          id: 2,
          name: "Pengawasan II",
          stat: sumOfBedahWpQuarterThreePengawasanII,
          change: "5.4%",
          changeType: "increase",
        },
        {
          id: 3,
          name: "Pengawasan III",
          stat: sumOfBedahWpQuarterThreePengawasanIII,
          change: "3.2%",
          changeType: "decrease",
        },
        {
          id: 4,
          name: "Pengawasan IV",
          stat: sumOfBedahWpQuarterThreePengawasanIV,
          change: "122",
          changeType: "increase",
        },
        {
          id: 5,
          name: "Pengawasan V",
          stat: sumOfBedahWpQuarterThreePengawasanV,
          change: "5.4%",
          changeType: "increase",
        },
        {
          id: 6,
          name: "Pengawasan VI",
          stat: sumOfBedahWpQuarterThreePengawasanVI,
          change: "3.2%",
          changeType: "decrease",
        },
      ],
    },
    {
      id: 4,
      tw: "Triwulan IV",
      data: [
        {
          id: 1,
          name: "Pengawasan I",
          stat: sumOfBedahWpQuarterFourPengawasanI,
          change: "122",
          changeType: "increase",
        },
        {
          id: 2,
          name: "Pengawasan II",
          stat: sumOfBedahWpQuarterFourPengawasanII,
          change: "5.4%",
          changeType: "increase",
        },
        {
          id: 3,
          name: "Pengawasan III",
          stat: sumOfBedahWpQuarterFourPengawasanIII,
          change: "3.2%",
          changeType: "decrease",
        },
        {
          id: 4,
          name: "Pengawasan IV",
          stat: sumOfBedahWpQuarterFourPengawasanIV,
          change: "122",
          changeType: "increase",
        },
        {
          id: 5,
          name: "Pengawasan V",
          stat: sumOfBedahWpQuarterFourPengawasanV,
          change: "5.4%",
          changeType: "increase",
        },
        {
          id: 6,
          name: "Pengawasan VI",
          stat: sumOfBedahWpQuarterFourPengawasanVI,
          change: "3.2%",
          changeType: "decrease",
        },
      ],
    },
  ];

  const recentActivityData = await recentBedahWpActivity();

  return (
    <div className="pt-10">
      <StatusBedahWP id={userId} status={status} />
      <RecentActivity recentActivityData={recentActivityData} type="bedahwp" />
    </div>
  );
};

export default BedahWPPage;
