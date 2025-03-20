"use client"
import React, { useEffect, useState } from 'react'

type DataType = {
    npwp: string;
    nama: string;
    kdmap: string;
    _sum: {
        nominal: number
    }
};


const KodeMapPerWp = () => {
    const [dataWp, setDataWp] = useState<DataType[]>([]);
    const [error, setError] = useState(null);
    const [loading, setLoading] = useState(true);

    //pagination and filter states
    const [currentPage, setCurrentPage] = useState(1);
    const [searchQuery, setSearchQuery] = useState("");
    const [selectKdmap, setSelectedKdmap] = useState("");
    const [sortOrder, setSortOrder] = useState("asc");

    useEffect(() => {
        const fetchRankedAr = async () => {
            try {
                const res = await fetch("http://localhost:3001/api/getPpmByJenisPajak");
                if (!res.ok) {
                    throw new Error("Internal Server Error")
                }
                const data = await res.json();
                console.log("Data", data)
                setDataWp(data);
            } catch (err: any) {
                setError(err.message)
            } finally {
                setLoading(false)
            }
        };
        fetchRankedAr();
    }, []);

    //Extract unique kdmap values for the header columns
    const kdmapHeaders = Array.from(new Set(dataWp.map(item => item.kdmap)))

    //Extract unique nama values for the row headers
    const namaRows = Array.from(new Set(dataWp.map(item => item.nama)))

    const pivotData: Record<string, Record<string, number>> = {};
    console.log(pivotData)
    namaRows.forEach((nama) => {
        pivotData[nama] = {};
        kdmapHeaders.forEach(kdmap => {
            pivotData[nama][kdmap] = 0;
        });
    });
    dataWp.forEach(item => {
        pivotData[item.nama][item.kdmap] = item._sum?.nominal;
    })

    //Set a default kdmap for sorting if none is selected yet

    useEffect(() => {
        if (!selectKdmap && kdmapHeaders.length > 0) {
            setSelectedKdmap(kdmapHeaders[0]);
        }
    }, [kdmapHeaders, selectKdmap])

    //Filter rows based on searchQuery (search by wp name)
    const filteredNamaRows = namaRows.filter(nama => nama.toLowerCase().includes(searchQuery.toLocaleLowerCase()))


    //Sort the filtered rows based on the selected kdmap column value

    const sortedRows = filteredNamaRows.sort((a, b) => {
        const valueA = pivotData[a][selectKdmap] || 0;
        const valueB = pivotData[b][selectKdmap] || 0;
        return sortOrder === "asc" ? valueA - valueB : valueB - valueA;
    })

    //Pagination: only show 10 rows per page

    const itemsPerPage = 10;
    const totalPages = Math.ceil(sortedRows.length / itemsPerPage);
    const paginatedRows = sortedRows.slice((currentPage - 1) * itemsPerPage, currentPage * itemsPerPage)

    //handle the seach button click
    const handleSearch = (e: any) => {
        e.preventDefault();
        setCurrentPage(1);
    }

    //pagination control
    const handlePrevPage = () => {
        if (currentPage > 1) setCurrentPage(currentPage - 1);
    }

    const handleNextPage = () => {
        if (currentPage < totalPages) setCurrentPage(currentPage + 1);
    }

    if (loading) return <p>Loading...</p>;
    if (error) return <p>Error: {error}</p>;
    return (
        <div className='bg-white h-screen py-20 sm:py-32'>
            <div className='mx-auto max-w-8xl px-6 lg:px-8'>
                <div className='mx-auto lg:mx-0'>
                    <h2 className='text-pretty text-center text-2xl font-semibold tracking-tighter text-gray-900 sm:text-3xl'>PPM Tahun Berjalan per Kode Map Wajib Pajak</h2>
                </div>
                {/* Search and filter controls */}
                <div className="mt-10 flex items-center justify-between">
                    <form onSubmit={handleSearch}>
                        <input
                            type="text"
                            placeholder="Search Nama Wp"
                            value={searchQuery}
                            onChange={(e) => setSearchQuery(e.target.value)}
                            className="border border-gray-300 rounded py-1 px-2"
                        />
                        <button type="submit" className="ml-2 px-4 py-1 bg-navy text-lemon rounded">
                            Search
                        </button>
                    </form>
                    <div className="flex items-center space-x-4">
                        <div>
                            <label htmlFor="kdmapSelect" className="mr-2 text-sm">Sort by Kdmap:</label>
                            <select
                                id="kdmapSelect"
                                value={selectKdmap}
                                onChange={(e) => setSelectedKdmap(e.target.value)}
                                className="border border-gray-300 rounded py-1 px-2"
                            >
                                {kdmapHeaders.map((header, index) => (
                                    <option key={index} value={header}>{header}</option>
                                ))}
                            </select>
                        </div>
                        <div>
                            <label htmlFor="sortOrder" className="mr-2">Order:</label>
                            <select
                                id="sortOrder"
                                value={sortOrder}
                                onChange={(e) => setSortOrder(e.target.value)}
                                className="border border-gray-300 rounded py-1 px-2"
                            >
                                <option value="asc">Ascending</option>
                                <option value="desc">Descending</option>
                            </select>
                        </div>
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
                                                kdmapHeaders.map((header, index) => (
                                                    <th key={index} scope="col" className="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">
                                                        {header}
                                                    </th>
                                                ))
                                            }
                                        </tr>
                                    </thead>
                                    <tbody className="divide-y divide-gray-200 bg-white">
                                        {paginatedRows.map((nama, rowIndex) => {
                                            const wpData = dataWp.find((wp) => wp.nama === nama);
                                            return (
                                                <tr key={rowIndex}>
                                                    <td className="whitespace-nowrap py-4 pl-4 pr-3 text-sm font-medium text-gray-900 sm:pl-6">
                                                        {wpData?.npwp || "-"}
                                                    </td>
                                                    <td className="whitespace-nowrap py-4 pl-4 pr-3 text-sm font-medium text-gray-900 sm:pl-6">
                                                        {nama}
                                                    </td>
                                                    {kdmapHeaders.map((kdmap, colIndex) => (
                                                        <td key={colIndex} className="whitespace-nowrap px-3 py-4 text-sm text-gray-500">
                                                            Rp {new Intl.NumberFormat("id-ID").format(pivotData[nama][kdmap])}
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
                            onClick={handlePrevPage}
                            disabled={currentPage === 1}
                            className="py-2 px-4 rounded-md bg-slate-200 text-xs font-semibold disabled:opacity-50 disabled:cursor-not-allowed"
                        >
                            Previous
                        </button>
                        <span>
                            Page {currentPage} of {totalPages}
                        </span>
                        <button

                            onClick={handleNextPage}
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

export default KodeMapPerWp