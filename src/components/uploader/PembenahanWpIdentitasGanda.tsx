"use client";
import React, { useState } from "react";
import { toast } from "react-toastify";

const PembenahanWpIdentitasGanda = () => {
  const [file, setFile] = useState<File | null>(null);
  const [loading, setLoading] = useState<boolean>(false);
  const [message, setMessage] = useState<string | null>(null);

  const handleFileChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    if (event.target.files) {
      setFile(event.target.files[0]);
      setMessage(null);
    }
  };

  const handleSubmit = async (event: React.FormEvent<HTMLFormElement>) => {
    event.preventDefault();
    if (!file) return;

    setLoading(true);
    setMessage(null);

    const formData = new FormData();
    formData.append("file", file);

    try {
      const response = await fetch("/api/uploadPembenahanWpIdentitasGanda", {
        method: "POST",
        body: formData,
      });

      const data = await response.json();

      if (!response.ok) {
        toast.error(data.message);
      }
      if (!setLoading) {
        toast.success(message);
      }

      if (response.ok) {
        toast.success(data.message);
      }
    } catch (error) {
      setMessage("Upload Failed, Please Try Again");
      toast.error(message);
    } finally {
      setLoading(false);
    }
  };

  return (
    <form onSubmit={handleSubmit}>
      <div className="space-y-12">
        <div className="pb-12">
          <div className="mt-10 grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6">
            <div className="sm:col-span-4">
              <label className="block text-sm/6 font-medium text-gray-900">
                Nama File Upload :{" "}
                <span className="font-semibold text-violet-600">
                  uploadFormIdentitasGanda.csv
                </span>
              </label>
              <div className="mt-2">
                <div className="flex items-center">
                  <input
                    type="file"
                    accept=".csv"
                    onChange={handleFileChange}
                    required
                  />
                  <button
                    type="submit"
                    disabled={loading}
                    className="p-2 text-wrap bg-gold rounded-lg shadow-md"
                  >
                    <a className="text-sm text-white m-2">
                      {loading ? "Uploading..." : "Upload CSV"}
                    </a>
                  </button>
                  {message && <p>{message}</p>}
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </form>
  );
};

export default PembenahanWpIdentitasGanda;
