import React from 'react'
import LeftColumnKasiPengawasan from '../LeftColumnKasiPengawasan'
import BoxOfDataKasiPengawasan from '../BoxOfDataKasiPengawasan';

const KasiPengawasanDashboard = ({ data1, countEmpoweringTwI, countEmpoweringTwII, countEmpoweringTwIII, countEmpoweringTwIV }: { data1?: any, countEmpoweringTwI?: any, countEmpoweringTwII?: any, countEmpoweringTwIII?: any; countEmpoweringTwIV?: any }) => {
  return (
    <div className="min-h-full">
      <div className="pb-8">
        <div className="mx-auto max-w-max px-4 sm:px-6 lg:max-w-max lg:px-4">
          <h1 className="sr-only">Profile</h1>
          {/* Main 3 Column */}
          <div className="grid grid-cols-1 items-start gap-4 lg:grid-cols-3 lg:gap-8">
            {/* Left Column */}
            <LeftColumnKasiPengawasan countEmpoweringTwI={countEmpoweringTwI} countEmpoweringTwII={countEmpoweringTwII} countEmpoweringTwIII={countEmpoweringTwIII} countEmpoweringTwIV={countEmpoweringTwIV} />
            {/* Right Column */}
            <div className="grid grid-cols-1 gap-4 lg:grid-cols-2">
              {/* announcement */}
              <div className="grid grid-cols-1 gap-4 lg:col-span-2">
                <BoxOfDataKasiPengawasan data1={data1} />
                {/* <BoxOfDataPengawasanDashboard data1={data1} type="pembenahanwp"/> */}
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}

export default KasiPengawasanDashboard