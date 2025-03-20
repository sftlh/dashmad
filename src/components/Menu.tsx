/* eslint-disable react/no-children-prop */
import React from "react";
import MenuClient from "./MenuClient";
import { auth } from "@clerk/nextjs/server";

const Menu = async ({ children }: { children: React.ReactNode }) => {
  const {sessionClaims} = await auth();
  const role = (sessionClaims?.metadata as {role?:string})?.role;
  return (
    <div>
      <MenuClient role={role} children={children} />
    </div>
  );
};

export default Menu;
