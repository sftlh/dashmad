import CurrencyDollarIcon from "@heroicons/react/24/outline/CurrencyDollarIcon";
import HomeIcon from "@heroicons/react/24/outline/HomeIcon";
import TrashIcon from "@heroicons/react/24/outline/TrashIcon";
import React from "react";

const navigation = [
  {
    name: "Dashboard",
    href: "/",
    icon: HomeIcon,
    visible: [
      "ar_1",
      "suki",
      "ar_2",
      "ar_3",
      "ar_4",
      "admin",
      "oc",
      "ar_5",
      "ar_6",
      "kasipw2",
      "kasipw1",
      "kasipw3",
      "kasipw4",
      "kasipw5",
      "kasipw6",
      "kasipkd",
    ],
  },
  {
    name: "Bedah WP",
    href: "/bedahwp",
    icon: CurrencyDollarIcon,
    visible: ["ar_1", "ar_2", "ar_3", "ar_4", "ar_5", "admin", "ar_6"],
  },
  {
    name: "Pembenahan WP",
    href: "/pembenahanwp",
    icon: TrashIcon,
    visible: ["ar_1", "ar_2", "ar_3", "ar_4", "admin", "ar_5", "ar_6", "suki"],
  },
  {
    name: "Empowering",
    href: "/empowering",
    icon: CurrencyDollarIcon,
    visible: [
      "admin",
      "kasipw2",
      "kasipw1",
      "kasipw3",
      "kasipw4",
      "kasipw5",
      "kasipw6",
      "kasipkd",
    ],
  },
  {
    name: "Create User",
    href: "/createuser",
    icon: CurrencyDollarIcon,
    visible: ["admin", "oc"],
  },
  {
    name: "Create Wajib Pajak",
    href: "/createwp",
    icon: CurrencyDollarIcon,
    visible: ["admin", "oc"],
  },
  {
    name: "Create Pembenahan Wajib Pajak",
    href: "/uploadpembenahanwp",
    icon: CurrencyDollarIcon,
    visible: ["oc"],
  },
  {
    name: "Kirim Data",
    href: "/sendingdatakanwil",
    icon: CurrencyDollarIcon,
    visible: ["admin","oc"],
  },
];

const MenuNavbar = ({ role }: { role: string | undefined }) => {
  return (
    <nav className="flex flex-1 flex-col">
      <ul role="list" className="flex flex-1 flex-col gap-y-7">
        <li>
          <ul role="list" className="-mx-2 space-y-1">
            {navigation.map((item) => {
              if (item.visible.includes(role!)) {
                return (
                  <li key={item.name}>
                    <a
                      href={
                        item.name === "Dashboard" &&
                        (role === "ar_1" ||
                          role === "ar_2" ||
                          role === "ar_3" ||
                          role === "ar_4" ||
                          role === "ar_5" ||
                          role === "ar_6")
                          ? "/pengawasan"
                          : item.name === "Dashboard" && role === "admin"
                          ? "/admin"
                          : item.name === "Dashboard" &&
                            (role === "kasipw1" ||
                              role === "kasipw2" ||
                              role === "kasipw3" ||
                              role === "kasipw4" ||
                              role === "kasipw5" ||
                              role === "kasipw6")
                          ? "/kasipengawasan"
                          : item.name === "Dashboard" && role === "oc"
                          ? "/oc"
                          : item.href
                      }
                      className="text-white hover:bg-gold hover:text-white group flex gap-x-3 rounded-md p-2 text-sm/6 font-semibold"
                    >
                      <item.icon
                        aria-hidden="true"
                        className="text-white group-hover:text-white size-6 shrink-0"
                      />
                      {item.name}
                    </a>
                  </li>
                );
              }
            })}
          </ul>
        </li>
      </ul>
    </nav>
  );
};

export default MenuNavbar;
