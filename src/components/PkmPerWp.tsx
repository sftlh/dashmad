"use client"
import React, { useEffect, useState } from 'react'

type DataType = {
    npwp: string;
    nama: string;
    bulanbayar: number;
    nominal: number;
};

const PkmPerWp = () => {
    const [data, setData] = useState<DataType[]>([]);
    const [bulanList, setBulanList] = useState<number[]>([]);
    const [error, setError] = useState(null);
    const [loading, setLoading] = useState(true);
    const [currentPage, setCurrentPage] = useState(1);
    const itemsPerPage = 10; //Jumlah item per halaman
    console.log(data)

    //State untuk filter
    const [searchNpwp, setSearchNpwp] = useState("");
    const [searchNama, setSearchNama] = useState("");

    useEffect(() => {
        const fetchData = async () => {
            try {
                await fetch("http://localhost:3001/api/getPkmByWp").then(res => res.json()).then((result: DataType[]) => {
                    setData(result);

                    // Ambil semua bulan unik untuk header tabel
                    const uniqueMonths = Array.from(new Set(result.map(item => item.bulanbayar)));
                    uniqueMonths.sort((a, b) => a - b);
                    setBulanList(uniqueMonths);
                })
            } catch (err: any) {
                setError(err.message)
            } finally {
                setLoading(false)
            }
        }
        fetchData();
    }, []);

    //Kelompokkan data berdasarkan npwp dan nama
    const groupedData: { [key: string]: { [key: number]: number } } = {};
    data.forEach(item => {
        const key = `${item.npwp} - ${item.nama}`;
        if (!groupedData[key]) {
            groupedData[key] = {};
        }
        groupedData[key][item.bulanbayar] = item.nominal;
    });

    // Filter Data Berdasarkan NPWP dan Nama
    const filteredData = Object.entries(groupedData).filter(([key]) => {
        const [npwp, nama] = key.split(" - ");
        console.log("NPWP", npwp)
        return (
            npwp.toLowerCase().includes(searchNpwp.toLowerCase()) &&
            nama.toLowerCase().includes(searchNama.toLowerCase())
        );
    });

    // Pagination setelah filtering
    const totalPages = Math.ceil(filteredData.length / itemsPerPage);
    const paginatedData = filteredData.slice(
        (currentPage - 1) * itemsPerPage,
        currentPage * itemsPerPage
    );

    if (loading) return <p>Loading...</p>;
    if (error) return <p>Error: {error}</p>;

    return (
        <div className='bg-white h-screen py-20 sm:py-32'>
            <div className='mx-auto max-w-8xl px-6 lg:px-8'>
                <div className='mx-auto lg:mx-0'>
                    <h2 className='text-pretty text-center text-2xl font-semibold tracking-tighter text-gray-900 sm:text-3xl'>PKM By Wajib Pajak Per Bulan</h2>
                </div>
                {/* Search and filter controls */}
                <div className="mt-10 flex items-center justify-between">
                    <div className='flex gap-x-8 items-center'>
                        <input
                            type="text"
                            placeholder="Filter NPWP 9 digit "
                            value={searchNpwp}
                            onChange={(e) => setSearchNpwp(e.target.value)}
                            className="border border-gray-300 rounded py-1 px-2"
                        />
                        <input
                            type="text"
                            placeholder="Filter Nama ... "
                            value={searchNama}
                            onChange={(e) => setSearchNama(e.target.value)}
                            className="border border-gray-300 rounded py-1 px-2"
                        />
                    </div>
                </div>
                <div className='mt-10 flow-root'>
                    <div className='-mx-4 -my-2 overflow-x-auto sm:-mx-6 lg:-mx-8'>
                        <div className='inline-block min-w-full py-2 align-middle sm:px-6 lg:px-8'>
                            <div className='overflow-hidden shadow ring-1 ring-black/5 sm:rounded-lg'>
                                <table className='min-w-full divide-y divide-gray-300'>
                                    <thead className="bg-gray-50">
                                        <tr>
                                            <th scope="col" className="py-3.5 pl-4 pr-3 text-left text-sm font-semibold text-gray-900 ">
                                                NPWP
                                            </th>
                                            <th scope="col" className="py-3.5 pl-4 pr-3 text-left text-sm font-semibold text-gray-900 ">
                                                Nama WP
                                            </th>
                                            {
                                                bulanList.map((bulan) => (
                                                    <th key={bulan} scope="col" className="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">
                                                        Bulan {bulan}
                                                    </th>
                                                ))
                                            }
                                        </tr>
                                    </thead>
                                    <tbody className="divide-y divide-gray-200 bg-white">
                                        {paginatedData.map(([key, monthData]) => {
                                            const [npwp, nama] = key.split(" - ");
                                            return (
                                                <tr key={key}>
                                                    <td className="whitespace-nowrap py-4 pl-4 pr-3 text-sm font-medium text-gray-900 sm:pl-6">
                                                        {npwp}
                                                    </td>
                                                    <td className="whitespace-nowrap py-4 pl-4 pr-3 text-sm font-medium text-gray-900 sm:pl-6">
                                                        {nama}
                                                    </td>
                                                    {bulanList.map((bulan) => (
                                                        <td key={bulan} className="whitespace-nowrap px-3 py-4 text-sm text-gray-500">
                                                            Rp {monthData[bulan] !== undefined ? new Intl.NumberFormat("id-ID").format(monthData[bulan]) : "-"}
                                                        </td>
                                                    ))}
                                                </tr>
                                            )
                                        })}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    {/* Pagination controls */}
                    <div className="mt-4 mb-5 flex items-center justify-center space-x-4">
                        <button
                            onClick={() => setCurrentPage(currentPage - 1)}
                            disabled={currentPage === 1}
                            className="py-2 px-4 rounded-md bg-slate-200 text-xs font-semibold disabled:opacity-50 disabled:cursor-not-allowed"
                        >
                            Previous
                        </button>
                        <span>
                            Page {currentPage} of {totalPages}
                        </span>
                        <button

                            onClick={() => setCurrentPage(currentPage + 1)}
                            disabled={currentPage === totalPages}
                            className="py-2 px-4 rounded-md bg-slate-200 text-xs font-semibold disabled:opacity-50 disabled:cursor-not-allowed "
                        >
                            Next
                        </button>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default PkmPerWp