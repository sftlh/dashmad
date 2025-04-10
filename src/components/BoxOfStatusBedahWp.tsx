import UsersIcon from "@heroicons/react/24/outline/UsersIcon";
import React, { Fragment } from "react";

const BoxOfStatusBedahWp = ({
  change,
  item,
  quarterData,
}: {
  quarterData: string;
  change: string;
  item: {
    id: number;
    name:
      | string
      | number
      | bigint
      | boolean
      | React.ReactElement<any, string | React.JSXElementConstructor<any>>
      | Iterable<React.ReactNode>
      | Promise<React.AwaitedReactNode>
      | null
      | undefined;
    stat:
      | string
      | number
      | bigint
      | boolean
      | React.ReactElement<any, string | React.JSXElementConstructor<any>>
      | Iterable<React.ReactNode>
      | React.ReactPortal
      | Promise<React.AwaitedReactNode>
      | null
      | undefined;
  };
}) => {
  return (
    <Fragment key={item.id}>
      <div className="relative overflow-hidden rounded-lg bg-white px-4 pb-12 pt-5 shadow sm:px-6 sm:pt-6">
        <dt>
          <div
            className={
              change === "tw1"
                ? "absolute rounded-md bg-gold p-3"
                : change === "tw2"
                ? "absolute rounded-md bg-dongker p-3"
                : change === "tw3"
                ? "absolute rounded-md bg-green-800 p-3"
                : change === "tw4"
                ? "absolute rounded-md bg-indigo-600 p-3"
                : quarterData === "tw1"
                ? "absolute rounded-md bg-gold p-3"
                : quarterData === "tw2"
                ? "absolute rounded-md bg-dongker p-3"
                : quarterData === "tw3"
                ? "absolute rounded-md bg-green-800 p-3"
                : "absolute rounded-md bg-indigo-600 p-3"
            }
          >
            {item.name === "Pengawasan I" ? (
              <UsersIcon aria-hidden="true" className="size-6 text-white" />
            ) : (
              <UsersIcon aria-hidden="true" className="size-6 text-white" />
            )}
          </div>
          <p className="ml-16 truncate text-sm font-medium text-dongker">
            {item.name}
          </p>
        </dt>
        <dd className="ml-16 flex items-baseline pb-6 sm:pb-7">
          <p className="text-xl font-semibold text-gray-900">{item.stat} <span className="text-xs">Laporan</span></p>
          <div className="absolute inset-x-0 bottom-0 bg-gray-50 px-4 py-4 sm:px-6"/>
        </dd>
      </div>
    </Fragment>
  );
};

export default BoxOfStatusBedahWp;
