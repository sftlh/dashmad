"use client"
import React from "react";

const ExportDatabase = () => {
  const handleExport = async () => {
    const response = await fetch("/api/exportData", {
      method: "GET",
    });

    if (response.ok) {
      const blob = await response.blob();
      const url = window.URL.createObjectURL(blob);
      const a = document.createElement("a");
      a.href = url;
      a.download = "data.xlsx"; // Specify the file name
      document.body.appendChild(a);
      a.click();
      a.remove();
    } else {
      console.error("Error exporting data");
    }
  };

  return (
    <div className="mt-5">
      <button onClick={handleExport}>Export Data to Excel</button>;
    </div>
  );
};

export default ExportDatabase;
