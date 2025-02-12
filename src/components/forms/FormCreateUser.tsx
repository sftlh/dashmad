"use client";
import ChevronDownIcon from "@heroicons/react/24/outline/ChevronDownIcon";
import { zodResolver } from "@hookform/resolvers/zod";
import { useForm } from "react-hook-form";
import React, { useEffect, useState } from "react";
import { userSchema, UserSchema } from "@/lib/zod";
import InputField from "../InputField";
import { useFormState } from "react-dom";
import { toast } from "react-toastify";
import { useRouter } from "next/navigation";
import { createUser } from "@/lib/action";

const FormCreateUser = () => {
  const {
    register,
    handleSubmit,
    formState: { errors },
    reset
  } = useForm<UserSchema>({
    resolver: zodResolver(userSchema),
  });

  const [state, formAction] = useFormState(createUser, {
    success: false,
    error: false,
  });

  const onSubmit = handleSubmit((data) => {
    formAction(data);
  });

  const router = useRouter();

  useEffect(() => {
    if (state.success) {
      toast("User has been created !");
      router.refresh();
      reset();
    }
  }, [state, router, reset]);

  return (
    <form onSubmit={onSubmit}>
      <div className="border-b border-gray-900/10 pb-12">
        <h2 className="text-base/7 font-semibold text-gray-900">Create User</h2>
        <p className="mt-1 text-sm/6 text-gray-600">
          form untuk membuat user pada aplikasi dashboard pkd madya dua surabaya
        </p>

        <div className="mt-10 grid grid-cols-1 gap-x-6 gap-y-8 sm:grid-cols-6">
          <InputField
            label="NIP Pendek"
            name="nip"
            register={register}
            error={errors.nip}
          />
          <InputField
            label="Username"
            name="username"
            register={register}
            error={errors.username}
          />
          <InputField
            label="Nama Depan"
            name="firstName"
            register={register}
            error={errors.firstName}
          />
          <InputField
            label="Nama Belakang"
            name="lastName"
            register={register}
            error={errors.lastName}
          />
          <InputField
            label="Password"
            name="password"
            type="password"
            register={register}
            error={errors.password}
          />
          <div className="sm:col-span-3">
            <label
              htmlFor="role"
              className="block text-sm/6 font-medium text-navy"
            >
              Role
            </label>
            <div className="mt-2 grid grid-cols-1">
              <select
                id="role"
                {...register("role")}
                className="col-start-1 row-start-1 w-full appearance-none rounded-md bg-white py-1.5 pl-3 pr-8 text-base text-gray-900 outline outline-1 -outline-offset-1 outline-gray-300 focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 sm:text-sm/6"
              >
                <option value="ar_1">Pengawasan I</option>
                <option value="ar_2">Pengawasan II</option>
                <option value="ar_3">Pengawasan III</option>
                <option value="ar_4">Pengawasan IV</option>
                <option value="ar_5">Pengawasan V</option>
                <option value="ar_6">Pengawasan VI</option>
                <option value="oc">PKD</option>
                <option value="kasipw1">Kasi Pengawasan I</option>
                <option value="kasipw2">Kasi Pengawasan II</option>
                <option value="kasipw3">Kasi Pengawasan III</option>
                <option value="kasipw4">Kasi Pengawasan IV</option>
                <option value="kasipw5">Kasi Pengawasan V</option>
                <option value="kasipw6">Kasi Pengawasan VI</option>
                <option value="kasipkd">Kasi Penjaminan Kualitas Data</option>
              </select>
              <ChevronDownIcon
                aria-hidden="true"
                className="pointer-events-none col-start-1 row-start-1 mr-2 size-5 self-center justify-self-end text-gray-500 sm:size-4"
              />
            </div>
          </div>
        </div>
      </div>
      {state.error && (
        <span className="text-red-500">{`Something Went Wrong ${state.error}`}</span>
      )}
      <div className="mt-6 flex items-center justify-end gap-x-6">
        <button
          type="submit"
          className="rounded-md bg-navy px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600"
        >
          Save
        </button>
      </div>
    </form>
  );
};

export default FormCreateUser;
