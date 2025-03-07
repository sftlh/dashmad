import KasiPengawasanDashboard from '@/components/dashboard/KasiPengawasanDashboard'
import { getCountOfEmpoweringTriwulanIByUserId, getCountOfEmpoweringTriwulanIVByUserId, getCountOfEmpoweringTriwulanIIByUserId, getCountOfEmpoweringTriwulanIIIByUserId } from '@/lib/getEmpowering';
import { auth } from '@clerk/nextjs/server';
import React from 'react'

const KasiPengawasanPage = async () => {
  const { userId } = await auth();
  const countEmpoweringTwI = await getCountOfEmpoweringTriwulanIByUserId(userId as string)
  const countEmpoweringTwII = await getCountOfEmpoweringTriwulanIIByUserId(userId as string)
  const countEmpoweringTwIII = await getCountOfEmpoweringTriwulanIIIByUserId(userId as string)
  const countEmpoweringTwIV = await getCountOfEmpoweringTriwulanIVByUserId(userId as string)
  const empoweringinfo = [
    {
      id: 1,
      title: "Data Empowering Triwulan I",
      numeral: "I",
      // total: countBedahWpTwI,
      // kirim: getBedahWpSudahKirimTwI,
      // belum: getBedahWpBelumKirimTwI,
      // telat: getBedahWPTelatTwI,
      // jt: quarterOne,
    },
    {
      id: 2,
      title: "Data Empowering Triwulan II",
      numeral: "II",
      // total: countBedahWpTwII,
      // kirim: getBedahWpSudahKirimTwII,
      // belum: getBedahWpBelumKirimTwII,
      // telat: getBedahWPTelatTwII,
      // jt: quarterTwo,
    },
    {
      id: 3,
      title: "Data Empowering Triwulan III",
      numeral: "III",
      // total: countBedahWpTwIII,
      // kirim: getBedahWpSudahKirimTwIII,
      // belum: getBedahWpBelumKirimTwIII,
      // telat: getBedahWPTelatTwIII,
      // jt: quarterThree,
    },
    {
      id: 4,
      title: "Data Empowering Triwulan IV",
      numeral: "IV",
      // total: countBedahWpTwIV,
      // kirim: getBedahWpSudahKirimTwIV,
      // belum: getBedahWpBelumKirimTwIV,
      // telat: getBedahWPTelatTwIV,
      // jt: quarterFour,
    },
  ];
  return (
    <div className='p-10'>
      <KasiPengawasanDashboard data1={empoweringinfo} countEmpoweringTwI={countEmpoweringTwI} countEmpoweringTwII={countEmpoweringTwII} countEmpoweringTwIII={countEmpoweringTwIII} countEmpoweringTwIV={countEmpoweringTwIV} />
    </div>
  )
}

export default KasiPengawasanPage
