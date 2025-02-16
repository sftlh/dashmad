"use client";
import React, { useState } from "react";
import FormModal from "./FormModal";

const FormCreateTransition = ({
  type,
  data,
}: {
  type?:
    | "wpidentitasganda"
    | "wpnikganda"
    | "cabangpusatbedaentitas"
    | "wpttlsama";
  data?: any;
}) => {
  const [open, setOpen] = useState(false);
  return (
    <div>
      <button className={`sm:pr-6`} onClick={() => setOpen(true)}>
        <a className="text-navy">Input Pembenahan</a>
      </button>
      {open && <FormModal open={open} setOpen={setOpen} type={type} data={data}/>}
    </div>
  );
};

export default FormCreateTransition;
