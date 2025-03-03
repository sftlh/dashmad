"use client"
import React, { useEffect, useState } from 'react'

type DataType = {
    rank: number;
    nipar: string;
    nama:string;
    totalNominal: number;
};

const RankAr = () => {
    const [rankedData, setRankedData] = useState<DataType[]>([]);
    const [error, setError] = useState(null);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        const fetchRankedAr = async () => {
            try {
                const res = await fetch("http://localhost:3001/api/getRankByAr");
                if (!res.ok) {
                    throw new Error("Internal Server Error")
                }
                const data = await res.json();
                console.log("Data", data)
                setRankedData(data);
            } catch (err: any) {
                setError(err.message)
            } finally {
                setLoading(false)
            }
        };
        fetchRankedAr();
    }, [])
    if (loading) return <p>Loading...</p>;
    if (error) return <p>Error: {error}</p>;
    return (
        <div className='bg-white h-screen py-24 sm:py-32'>
            <div className='mx-auto max-w-8xl px-6 lg:px-8'>
                <div className='mx-auto lg:mx-0'>
                    <h2 className='text-pretty text-center text-2xl font-semibold tracking-tighter text-gray-900 sm:text-4xl'>Rank Account Representative</h2>
                </div>
                <div className='mt-10 flow-root'>
                    <div className='-mx-4 -my-2 overflow-x-auto sm:-mx-6 lg:-mx-8'>
                        <div className='inline-block min-w-full py-2 align-middle sm:px-6 lg:px-8'>
                            <div className='overflow-hidden shadow ring-1 ring-black/5 sm:rounded-lg'>
                                <table className='min-w-full divide-y divide-gray-300'>
                                    <thead className="bg-gray-50">
                                        <tr>
                                            <th scope="col" className="py-3.5 pl-4 pr-3 text-left text-sm font-semibold text-gray-900 sm:pl-6">
                                                Urutan
                                            </th>
                                            <th scope="col" className="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">
                                                Nip Ar
                                            </th>
                                            <th scope="col" className="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">
                                                Nama
                                            </th>
                                            <th scope="col" className="relative py-3.5 pl-3 pr-4 text-right sm:pr-10">
                                                Total PKM
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody className="divide-y divide-gray-200 bg-white">
                                        {rankedData.map(data => (
                                            <tr key={data?.rank}>
                                                <td className="whitespace-nowrap py-4 pl-4 pr-3 text-sm font-medium text-gray-900 sm:pl-6">
                                                    {data.rank}
                                                </td>
                                                <td className="whitespace-nowrap px-3 py-4 text-sm text-gray-500">{data.nipar}</td>
                                                <td className="whitespace-nowrap px-3 py-4 text-sm text-gray-500">{data.nama}</td>
                                                <td className="relative whitespace-nowrap py-4 pl-3 pr-4 text-right text-sm font-medium sm:pr-6">
                                                Rp {new Intl.NumberFormat("id-ID").format(data.totalNominal)}
                                                </td>
                                            </tr>
                                        ))}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default RankAr