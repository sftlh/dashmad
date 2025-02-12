"use client";
import { useRouter } from "next/navigation";
import React from "react";
import { FaSearch } from "react-icons/fa";

const TableSearch = () => {
  const router = useRouter();
  const handleSubmit = (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    const value = (e.currentTarget[0] as HTMLInputElement).value;
    const params = new URLSearchParams(window.location.search);
    params.set("search", value);
    router.push(`${window.location.pathname}?${params}`);
  };
  return <form onSubmit={handleSubmit} className="w-full md:w-auto flex items-center gap-2 text-xs rounded-lg ring-1 ring-gray-400 px-2">
    <FaSearch className="text-gray-300"/>
    <input type="text" placeholder="Search" className="w-[200px] p-2 bg-transparent outline-none"/>
  </form>;
};

export default TableSearch;
