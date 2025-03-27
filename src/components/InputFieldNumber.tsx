"use client";
import React, { useState } from "react";
import { FieldError, UseFormRegister } from "react-hook-form";

type InputFieldProps = {
  label?: string;
  type?: string;
  register: UseFormRegister<any>;
  name: string;
  readonly?: boolean;
  hidden?: boolean;
  defaultValue?: string | number;
  placeholder?: string;
  error?: FieldError;
  error2?: string;
  formatNumber?: boolean;
};

const InputFieldNumber = ({
  label,
  type = "text",
  register,
  name,
  hidden,
  readonly,
  defaultValue,
  placeholder,
  error,
  error2,
  formatNumber = false,
}: InputFieldProps) => {
  const [displayValue, setDisplayValue] = useState(() => {
    if (defaultValue && formatNumber) {
      return new Intl.NumberFormat("id-ID").format(Number(defaultValue));
    }
    return defaultValue || "";
  });

  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const rawValue = e.target.value.replace(/\D/g, ""); // remove non-digits
    const formatted = new Intl.NumberFormat("id-ID").format(Number(rawValue));
    setDisplayValue(formatted);
    // Manually update the RHF field with raw number (no dot)
    const event = {
      ...e,
      target: {
        ...e.target,
        value: rawValue,
        name,
      },
    };
    register(name).onChange(event);
  };

  return (
    <div className={hidden ? "hidden" : "sm:col-span-3"}>
      {label && (
        <label htmlFor={name} className="block text-sm font-medium text-navy">
          {label}
        </label>
      )}
      <div className="mt-2">
        <input
          id={name}
          type={type}
          inputMode="numeric"
          readOnly={readonly}
          placeholder={placeholder}
          value={displayValue}
          onChange={formatNumber ? handleChange : register(name).onChange}
          className={
            readonly
              ? `block w-full cursor-not-allowed rounded-md bg-gray-200 px-3 py-1.5 text-base text-gray-900 outline outline-1 -outline-offset-1 outline-gray-300 placeholder:text-gray-400 sm:text-sm/6`
              : `block w-full rounded-md bg-dongker/5 px-3 py-1.5 text-base text-gray-900 outline outline-1 -outline-offset-1 outline-gray-300 placeholder:text-gray-400 focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6`
          }
        />
        {error?.message ? (
          <p className="text-xs text-red-400">{error.message}</p>
        ) : error2 ? (
          <p className="text-xs text-red-400">{error2}</p>
        ) : null}
      </div>
    </div>
  );
};

export default InputFieldNumber;
