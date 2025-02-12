"use client";

import * as Clerk from "@clerk/elements/common";
import * as SignIn from "@clerk/elements/sign-in";
import { useUser } from "@clerk/nextjs";
import Image from "next/image";
import { useRouter } from "next/navigation";
import { useEffect } from "react";

const LoginPage = () => {
  const { user } = useUser();

  const router = useRouter();

  useEffect(() => {
    const role = user?.publicMetadata?.role;

    switch (role) {
      case "ar_1":
      case "ar_2":
      case "ar_3":
      case "ar_4":
      case "ar_5":
      case "ar_6":
        router.push("/pengawasan");
        break;
      case "suki":
        router.push("/suki");
        break;
      case "admin":
        router.push("/admin");
        break;
      case "oc":
        router.push("/oc");
        break;
      case "kasipw1":
      case "kasipw2":
      case "kasipw3":
      case "kasipw4":
      case "kasipw5":
      case "kasipw6":
        router.push("/kasipengawasan");
        break;
      default:
        router.push("/");
        break;
    }
  }, [user, router]);

  return (
    <div className="flex min-h-full flex-1 flex-col justify-center py-12 sm:px-6 lg:px-8 bg-gold">
      <SignIn.Root>
        <div className="sm:mx-auto sm:w-full sm:max-w-md">
          <Image
            alt="logo"
            src={"/logo.png"}
            height={200}
            width={500}
            style={{ width: "100%", height: "auto" }}
            priority
          />
          <h2 className="mt-6 text-center text-2xl/9 font-bold tracking-wider text-navy">
            Dashboard PKD
          </h2>
          <h4 className="text-center font-semibold text-dongker">
            Madya Dua Surabaya
          </h4>
        </div>
        <div className="mt-10 sm:mx-auto sm:w-full sm:max-w-[480px]">
          <div className="bg-navy px-6 py-12 shadow-lg sm:rounded-lg sm:px-12">
            <SignIn.Step name="start" className="space-y-6">
              <Clerk.GlobalError className="text-sm text-red-500" />
              <Clerk.Field name="identifier">
                <Clerk.Label className="block text-sm/6 font-medium text-gold">
                  Username
                </Clerk.Label>
                <div className="mt-2">
                  <Clerk.Input
                    type="text"
                    required
                    className="block w-full rounded-md bg-yellow-50 px-3 py-1.5 text-base text-gray-900 outline outline-1 -outline-offset-1 outline-gray-300 placeholder:text-gray-400 focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 sm:text-sm/6"
                  />
                  <Clerk.FieldError className="text-xs text-red-400" />
                </div>
              </Clerk.Field>
              <Clerk.Field name="password">
                <Clerk.Label className="block text-sm/6 font-medium text-gold">
                  Password
                </Clerk.Label>
                <div className="mt-2">
                  <Clerk.Input
                    type="password"
                    required
                    className="block w-full rounded-md bg-yellow-50 px-3 py-1.5 text-base text-gray-900 outline outline-1 -outline-offset-1 outline-gray-300 placeholder:text-gray-400 focus:outline focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 sm:text-sm/6"
                  />
                  <Clerk.FieldError className="text-xs text-red-400" />
                </div>
              </Clerk.Field>
              <SignIn.Action
                submit
                className="flex w-full justify-center rounded-md bg-gold px-3 py-1.5 text-sm/6 font-semibold text-white shadow-sm hover:bg-dongker/65 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-dongker"
              >
                Sign In
              </SignIn.Action>
            </SignIn.Step>
          </div>
        </div>
      </SignIn.Root>
    </div>
  );
};

export default LoginPage;
