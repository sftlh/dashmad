/* eslint-disable react/no-children-prop */
import React from "react";
import MenuClient from "./MenuClient";
import { auth, currentUser } from "@clerk/nextjs/server";

const teams = [
  { id: 1, name: "Heroicons", href: "#", initial: "H", current: false },
  { id: 2, name: "Tailwind Labs", href: "#", initial: "T", current: false },
  { id: 3, name: "Workcation", href: "#", initial: "W", current: false },
];

function classNames(...classes: unknown[]) {
  return classes.filter(Boolean).join(" ");
}

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
