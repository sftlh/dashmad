import RecentActivity from "@/components/RecentActivity";
import StatusEmpowering from "@/components/StatusEmpowering";
import {
  getSumOfEmpoweringQuarterFour,
  getSumOfEmpoweringQuarterOne,
  getSumOfEmpoweringQuarterThree,
  getSumOfEmpoweringQuarterTwo,
  recentEmpoweringActivity,
} from "@/lib/getaction";
import { auth } from "@clerk/nextjs/server";
import React from "react";

const EmpoweringPage = async () => {
  const { userId } = await auth();

  //Get Empowering Quarter One
  const sumOfEmpoweringQuarterOnePengawasanII =
    await getSumOfEmpoweringQuarterOne("kasipw2");
  const sumOfEmpoweringQuarterOnePengawasanI =
    await getSumOfEmpoweringQuarterOne("kasipw1");
  const sumOfEmpoweringQuarterOnePengawasanIII =
    await getSumOfEmpoweringQuarterOne("kasipw3");
  const sumOfEmpoweringQuarterOnePengawasanIV =
    await getSumOfEmpoweringQuarterOne("kasipw4");
  const sumOfEmpoweringQuarterOnePengawasanV =
    await getSumOfEmpoweringQuarterOne("kasipw5");
  const sumOfEmpoweringQuarterOnePengawasanVI =
    await getSumOfEmpoweringQuarterOne("kasipw6");

  //Get Empowering Quarter Two
  const sumOfEmpoweringQuarterTwoPengawasanII =
    await getSumOfEmpoweringQuarterTwo("kasipw2");
  const sumOfEmpoweringQuarterTwoPengawasanI =
    await getSumOfEmpoweringQuarterTwo("kasipw1");
  const sumOfEmpoweringQuarterTwoPengawasanIII =
    await getSumOfEmpoweringQuarterTwo("kasipw3");
  const sumOfEmpoweringQuarterTwoPengawasanIV =
    await getSumOfEmpoweringQuarterTwo("kasipw4");
  const sumOfEmpoweringQuarterTwoPengawasanV =
    await getSumOfEmpoweringQuarterTwo("kasipw5");
  const sumOfEmpoweringQuarterTwoPengawasanVI =
    await getSumOfEmpoweringQuarterTwo("kasipw6");

  //Get Empowering Quarter Three
  const sumOfEmpoweringQuarterThreePengawasanII =
    await getSumOfEmpoweringQuarterThree("kasipw2");
  const sumOfEmpoweringQuarterThreePengawasanI =
    await getSumOfEmpoweringQuarterThree("kasipw1");
  const sumOfEmpoweringQuarterThreePengawasanIII =
    await getSumOfEmpoweringQuarterThree("kasipw3");
  const sumOfEmpoweringQuarterThreePengawasanIV =
    await getSumOfEmpoweringQuarterThree("kasipw4");
  const sumOfEmpoweringQuarterThreePengawasanV =
    await getSumOfEmpoweringQuarterThree("kasipw5");
  const sumOfEmpoweringQuarterThreePengawasanVI =
    await getSumOfEmpoweringQuarterThree("kasipw6");

  //Get Empowering Quarter Four
  const sumOfEmpoweringQuarterFourPengawasanII =
    await getSumOfEmpoweringQuarterFour("kasipw2");
  const sumOfEmpoweringQuarterFourPengawasanI =
    await getSumOfEmpoweringQuarterFour("kasipw1");
  const sumOfEmpoweringQuarterFourPengawasanIII =
    await getSumOfEmpoweringQuarterFour("kasipw3");
  const sumOfEmpoweringQuarterFourPengawasanIV =
    await getSumOfEmpoweringQuarterFour("kasipw4");
  const sumOfEmpoweringQuarterFourPengawasanV =
    await getSumOfEmpoweringQuarterFour("kasipw5");
  const sumOfEmpoweringQuarterFourPengawasanVI =
    await getSumOfEmpoweringQuarterFour("kasipw6");

  const status = [
    {
      id: 1,
      tw: "Triwulan I",
      data: [
        {
          id: 1,
          name: "Pengawasan I",
          stat: sumOfEmpoweringQuarterOnePengawasanI,
          change: "122",
          changeType: "increase",
        },
        {
          id: 2,
          name: "Pengawasan II",
          stat: sumOfEmpoweringQuarterOnePengawasanII,
          change: "5.4%",
          changeType: "increase",
        },
        {
          id: 3,
          name: "Pengawasan III",
          stat: sumOfEmpoweringQuarterOnePengawasanIII,
          change: "3.2%",
          changeType: "decrease",
        },
        {
          id: 4,
          name: "Pengawasan IV",
          stat: sumOfEmpoweringQuarterOnePengawasanIV,
          change: "122",
          changeType: "increase",
        },
        {
          id: 5,
          name: "Pengawasan V",
          stat: sumOfEmpoweringQuarterOnePengawasanV,
          change: "5.4%",
          changeType: "increase",
        },
        {
          id: 6,
          name: "Pengawasan VI",
          stat: sumOfEmpoweringQuarterOnePengawasanVI,
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
          stat: sumOfEmpoweringQuarterTwoPengawasanI,
          change: "122",
          changeType: "increase",
        },
        {
          id: 2,
          name: "Pengawasan II",
          stat: sumOfEmpoweringQuarterTwoPengawasanII,
          change: "5.4%",
          changeType: "increase",
        },
        {
          id: 3,
          name: "Pengawasan III",
          stat: sumOfEmpoweringQuarterTwoPengawasanIII,
          change: "3.2%",
          changeType: "decrease",
        },
        {
          id: 4,
          name: "Pengawasan IV",
          stat: sumOfEmpoweringQuarterTwoPengawasanIV,
          change: "122",
          changeType: "increase",
        },
        {
          id: 5,
          name: "Pengawasan V",
          stat: sumOfEmpoweringQuarterTwoPengawasanV,
          change: "5.4%",
          changeType: "increase",
        },
        {
          id: 6,
          name: "Pengawasan VI",
          stat: sumOfEmpoweringQuarterTwoPengawasanIV,
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
          stat: sumOfEmpoweringQuarterThreePengawasanI,
          change: "122",
          changeType: "increase",
        },
        {
          id: 2,
          name: "Pengawasan II",
          stat: sumOfEmpoweringQuarterThreePengawasanII,
          change: "5.4%",
          changeType: "increase",
        },
        {
          id: 3,
          name: "Pengawasan III",
          stat: sumOfEmpoweringQuarterThreePengawasanIII,
          change: "3.2%",
          changeType: "decrease",
        },
        {
          id: 4,
          name: "Pengawasan IV",
          stat: sumOfEmpoweringQuarterThreePengawasanIV,
          change: "122",
          changeType: "increase",
        },
        {
          id: 5,
          name: "Pengawasan V",
          stat: sumOfEmpoweringQuarterThreePengawasanV,
          change: "5.4%",
          changeType: "increase",
        },
        {
          id: 6,
          name: "Pengawasan VI",
          stat: sumOfEmpoweringQuarterThreePengawasanVI,
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
          stat: sumOfEmpoweringQuarterFourPengawasanI,
          change: "122",
          changeType: "increase",
        },
        {
          id: 2,
          name: "Pengawasan II",
          stat: sumOfEmpoweringQuarterFourPengawasanII,
          change: "5.4%",
          changeType: "increase",
        },
        {
          id: 3,
          name: "Pengawasan III",
          stat: sumOfEmpoweringQuarterFourPengawasanIII,
          change: "3.2%",
          changeType: "decrease",
        },
        {
          id: 4,
          name: "Pengawasan IV",
          stat: sumOfEmpoweringQuarterFourPengawasanIV,
          change: "122",
          changeType: "increase",
        },
        {
          id: 5,
          name: "Pengawasan V",
          stat: sumOfEmpoweringQuarterFourPengawasanV,
          change: "5.4%",
          changeType: "increase",
        },
        {
          id: 6,
          name: "Pengawasan VI",
          stat: sumOfEmpoweringQuarterFourPengawasanVI,
          change: "3.2%",
          changeType: "decrease",
        },
      ],
    },
  ];
  
  const recentActivityData = await recentEmpoweringActivity();

  return (
    <div className="pt-10">
      <StatusEmpowering id={userId} status={status} />
      <RecentActivity recentActivityData={recentActivityData} type="empowering"/>
    </div>
  );
};

export default EmpoweringPage;
