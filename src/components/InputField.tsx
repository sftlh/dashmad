import React from "react";
import { FieldError } from "react-hook-form";

type InputField = {
  label: string;
  type?: string;
  register: any;
  name: string;
  value?: string;
  readonly?:boolean;
  hidden?: boolean;
  defaultValue?: any;
  custom?: string;
  error?: FieldError;
  error2?: string;
  onChange?: (e: React.ChangeEvent<HTMLInputElement>) => void;
  inputProps?: React.InputHTMLAttributes<HTMLInputElement>;
};

const InputField = ({
  label,
  custom,
  type = "text",
  register,
  name,
  hidden,
  value,
  readonly,
  onChange,
  defaultValue,
  error,
  error2,
  inputProps,
}: InputField) => {
  return (
    <div className={hidden ? "hidden" : "sm:col-span-3"}>
      <label htmlFor="nip" className="block text-sm/6 font-medium text-navy">
        {label}
      </label>
      <div className="mt-2">
        <input
          {...register(name)}
          value={value}
          type={type}
          onChange={onChange}
          defaultValue={defaultValue}
          readOnly={readonly}
          {...inputProps}
          className={
            readonly === true
              ? `block w-full cursor-not-allowed rounded-md bg-gray-200 px-3 py-1.5 text-base text-gray-900 outline outline-1 -outline-offset-1 outline-gray-300 placeholder:text-gray-400 focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6`
              : `block w-full rounded-md bg-dongker/5 px-3 py-1.5 text-base text-gray-900 outline outline-1 -outline-offset-1 outline-gray-300 placeholder:text-gray-400 focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-dongker sm:text-sm/6`
          }
        />
        {error?.message ? (
          <p className="text-xs text-red-400">{error?.message.toString()}</p>
        ) : error2 ? (
          <p className="text-xs text-red-400">{error2.toString()}</p>
        ) : (
          ""
        )}
      </div>
    </div>
  );
};

export default InputField;
