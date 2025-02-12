"use client";
import React, { useState } from "react";
import { toast } from "react-toastify";

const CreateWpComponent = () => {
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
      const response = await fetch("/api/upload", {
        method: "POST",
        body: formData,
      });

      if (!response.ok) {
        throw new Error("Upload Failed");
      }
      if (!setLoading) {
        toast.success(message);
      }
    } catch (error) {
      setMessage("Upload Failed, Please Try Again");
      toast.error(message)
    } finally {
      setLoading(false);
      setMessage("Upload Successfully");
    }
  };

  return (
    <form onSubmit={handleSubmit}>
      <div className="space-y-12">
        <div className="pb-12">
          <h2 className="text-base/7 font-semibold text-gray-900">
            Upload Data Wajib Pajak
          </h2>
          <p className="mt-1 text-sm/6 text-gray-600">
            Ini Form Yang Digunakan untuk Mengupload Database Wajib Pajak
          </p>
          <div className="mt-10 grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6">
            <div className="sm:col-span-4">
              <label className="block text-sm/6 font-medium text-gray-900">
                Upload File
              </label>
              <div className="mt-2">
                <div className="flex items-center">
                  <input
                    type="file"
                    accept=".csv"
                    onChange={handleFileChange}
                    required
                  />
                  <button type="submit" disabled={loading}>
                    {loading ? "Uploading..." : "Upload CSV"}
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

export default CreateWpComponent;
