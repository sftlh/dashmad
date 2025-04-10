"use client";
import Link from "next/link";
import React, { useEffect, useState } from "react";

type User = {
  nipPajang: string;
  firstName: string;
  lastName: string;
};

type DatabaseWajibPajak = {
  nama: string;
};

type SendingDataToKanwil = {
  nomorNd: string;
};

type BedahWp = {
  peserta: number;
  id: number;
  sendingDataToKanwil: SendingDataToKanwil;
  npwp: DatabaseWajibPajak;
  user: User;
  kluPenompangPenerimaan: number;
  potensiTambahan: number;
  kesimpulan: number;
  bobotKegiatan: string;
  masukDpp: number;
  alket: number;
  analisisLaporanKeuangan: number;
  analisisTransferPricing: number;
  mirroring: number;
  analisisWpGroup: number;
  kolaborasiDenganPenilai: number;
  pemanfaatanDataEksternal: number;
  dataVisit: number;
  pelaksanaanKegiatan: Date;
  npwpId: string;
  tahunPajak: string;
  statusSpt: string;
  pph21: number;
  pph22: number;
  pph23: number;
  pph2529: number;
  pph26: number;
  pphFinal: number;
  pph15: number;
  ppn: number;
  pajakLainnya: number;
};

const ListBedahWP = () => {
  const [dataBedahWp, setDataBedahWp] = useState<BedahWp[]>([]);
  const [dataToDelete, setDataToDelete] = useState<BedahWp | null>(null);
  const [showModal, setShowModal] = useState<boolean>(false);
  const [loading, setLoading] = useState<boolean>(false);

  // States for search and filter
  const [searchTerm, setSearchTerm] = useState<string>("");
  const [filterDate, setFilterDate] = useState<string>("");

  // States for pagination
  const [currentPage, setCurrentPage] = useState<number>(1);
  const itemsPerPage = 10;

  const fetchBedahWp = async () => {
    setLoading(true);
    try {
      const res = await fetch("/api/getAllBedahWp", {
        cache: "no-store",
      });
      if (!res.ok) {
        throw new Error("Failed to fetch");
      }
      const data: BedahWp[] = await res.json();
      setDataBedahWp(data);
    } catch (error) {
      console.error("Error Fetching Bedah Wp", error);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchBedahWp();
  }, []);

  //Open the modal and set the product to delete
  const openDeleteModal = (data: BedahWp) => {
    setDataToDelete(data);
    setShowModal(true);
  };

  // Close the modal and clear the selected product
  const closeModal = () => {
    setShowModal(false);
    setDataToDelete(null);
  };

  const confirmDelete = async () => {
    if (!dataBedahWp) {
      return;
    }
    try {
      const res = await fetch(`/api/deletebedahwp/${dataToDelete?.id}`, {
        method: "DELETE",
      });
      if (!res.ok) {
        throw new Error("Failed to delete");
      }
      setDataBedahWp((prevData) =>
        prevData.filter((data) => data.id !== dataToDelete?.id)
      );
      closeModal();
    } catch (error) {
      console.log("Error deleting product", error);
      closeModal();
    }
  };

  //Filter data based on search term NPWP and date filter
  const filterData = dataBedahWp.filter((item) => {
    const searchLower = searchTerm.toLocaleLowerCase();
    //Check if NPWP ID or NPWP name contains the search term
    const npwpMatch =
      item.npwpId.toLowerCase().includes(searchLower) ||
      (item?.npwp?.nama && item.npwp.nama.toLowerCase().includes(searchTerm));
    //if a date filter is applied, compare the date portion
    const dateMatch = filterDate
      ? new Date(item.pelaksanaanKegiatan).toISOString().split("T")[0] ===
        filterDate
      : true;
    return npwpMatch && dateMatch;
  });

  // Pagination calculation
  const totalPages = Math.ceil(filterData.length / itemsPerPage);
  const paginatedData = filterData.slice(
    (currentPage - 1) * itemsPerPage,
    currentPage * itemsPerPage
  );

  if (loading) {
    return <p className="text-center mt-10">Loading...</p>;
  }

  return (
    <div className="px-4 sm:px-6 lg:px-8">
      <div className="sm:flex sm:items-center">
        <div className="sm:flex-auto">
          <h1 className="text-base font-semibold text-gray-600">
            List Bedah Wajib Pajak
          </h1>
          <p className="mt-2 text-sm text-gray-400">
            List Bedah Wajib Pajak yang sudah direkam oleh Account
            Representative
          </p>
        </div>
        <div className="mt-4 flex gap-x-4 sm:ml-16 sm:mt-0 sm:flex-none">
          <input
            type="text"
            placeholder="Search by NPWP"
            value={searchTerm}
            onChange={(e) => {
              setSearchTerm(e.target.value);
              setCurrentPage(1);
            }}
            className="mb-2 sm:mb-0 px-2 py-1 border border-gray-300 rounded"
          />
          <input
            type="date"
            value={filterDate}
            onChange={(e) => {
              setFilterDate(e.target.value);
              setCurrentPage(1);
            }}
            className="px-2 py-1 border border-gray-300 rounded"
          />
        </div>
      </div>
      <div className="mt-8 flow-root">
        <div className="-mx-4 -my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
          <div className="inline-block min-w-full py-2 align-middle sm:px-6 lg:px-8">
            <table className="min-w-full divide-y divide-gray-200">
              <thead>
                <tr>
                  <th
                    scope="col"
                    className="py-3.5 pl-4 text-left text-sm font-semibold text-gray-900 sm:pl-0"
                  >
                    NPWP
                  </th>
                  <th
                    scope="col"
                    className="px-3 py-3.5 text-left text-sm font-semibold text-gray-900"
                  >
                    Nama Wajib Pajak
                  </th>
                  <th
                    scope="col"
                    className="px-3 py-3.5 text-left text-sm font-semibold text-gray-900"
                  >
                    Tahun Pajak
                  </th>
                  <th
                    scope="col"
                    className="px-3 py-3.5 text-left text-sm font-semibold text-gray-900"
                  >
                    Tanggal Pelaksanaan Kegiatan
                  </th>
                  <th
                    scope="col"
                    className="px-3 py-3.5 text-left text-sm font-semibold text-gray-900"
                  >
                    Status Kirim Kanwil
                  </th>
                  <th scope="col" className="relative py-3.5 pl-3 pr-4 sm:pr-0">
                    <span className="sr-only">Edit</span>
                  </th>
                </tr>
              </thead>
              <tbody className="divide-y divide-gray-200">
                {paginatedData.map((item) => (
                  <tr key={item.id}>
                    <td className="whitespace-nowrap py-4 pl-4 text-sm font-medium text-gray-900 sm:pl-0">
                      {item.npwpId}
                    </td>
                    <td className="whitespace-nowrap px-3 py-4 text-sm text-gray-500">
                      {item?.npwp?.nama}
                    </td>
                    <td className="whitespace-nowrap px-3 py-4 text-sm text-gray-500">
                      {item.tahunPajak}
                    </td>
                    <td className="whitespace-nowrap px-3 py-4 text-sm text-gray-500">
                      {new Intl.DateTimeFormat("id-ID", {
                        hour12: false,
                        year: "numeric",
                        day: "numeric",
                        month: "long",
                      }).format(new Date(item?.pelaksanaanKegiatan) as Date)}
                    </td>
                    <td className="whitespace-nowrap px-3 py-4 text-sm text-gray-500">
                      {item?.sendingDataToKanwil?.nomorNd == null ? (
                        <span>Belum Dikirim</span>
                      ) : (
                        item?.sendingDataToKanwil?.nomorNd
                      )}
                    </td>
                    <td className="relative whitespace-nowrap py-4 pl-3 pr-4 text-center text-sm font-medium sm:pr-0">
                      <Link
                        href="#"
                        onClick={() => openDeleteModal(item)}
                        className="text-red-400 hover:text-indigo-900"
                      >
                        Delete
                      </Link>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
            {/* Pagination Controls */}
            <div className="mt-4 flex justify-center items-center">
              <button
                disabled={currentPage === 1}
                onClick={() => setCurrentPage((prev) => prev - 1)}
                className="px-3 py-1 border rounded mx-1 disabled:opacity-50"
              >
                Previous
              </button>
              <span className="mx-2">
                Page {currentPage} of {totalPages}
              </span>
              <button
                disabled={currentPage === totalPages || totalPages === 0}
                onClick={() => setCurrentPage((prev) => prev + 1)}
                className="px-3 py-1 border rounded mx-1 disabled:opacity-50"
              >
                Next
              </button>
            </div>
          </div>
        </div>
        {/* Custom Confirmation Modal */}
        {showModal && dataToDelete && (
          <div className="fixed inset-0 flex items-center justify-center bg-black bg-opacity-50">
            <div className="bg-white rounded-md p-6 max-w-sm w-full shadow-lg">
              <h2 className="text-xl font-semibold text-cherry mb-4">
                Delete Confirmation
              </h2>
              <p className="mb-6">
                Are you sure you want to delete{" "}
                <span className="font-bold text-cerise">
                  {dataToDelete?.npwpId}
                </span>
                ?
              </p>
              <div className="flex justify-end">
                <button
                  onClick={closeModal}
                  className="mr-4 px-4 py-2 rounded-md border border-gray-300 hover:bg-gray-100"
                >
                  Cancel
                </button>
                <button
                  onClick={confirmDelete}
                  className="px-4 py-2 rounded-md bg-red-700 text-white hover:bg-red-800"
                >
                  Delete
                </button>
              </div>
            </div>
          </div>
        )}
      </div>
    </div>
  );
};

export default ListBedahWP;
