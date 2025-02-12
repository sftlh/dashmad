'use client'
import React from 'react'
import { Bars3Icon, BellIcon, MagnifyingGlassIcon} from '@heroicons/react/24/outline';
import { UserButton } from '@clerk/nextjs';


const Navbar = ({setSidebarOpen}:{setSidebarOpen:React.Dispatch<React.SetStateAction<boolean>>}) => {
  return (
    <div className="sticky top-0 z-40 flex h-16 shrink-0 items-center gap-x-4 border-b border-gray-200 bg-white px-4 shadow-sm sm:gap-x-6 sm:px-6 lg:px-8">
          <button
            type="button"
            onClick={() => setSidebarOpen(true)}
            className="-m-2.5 p-2.5 text-gray-700 lg:hidden"
          >
            <span className="sr-only">Open Sidebar</span>
            <Bars3Icon aria-hidden="true" className="size-6" />
          </button>

          {/* Separator */}
          <div
            aria-hidden="true"
            className="h-6 w-px bg-gray-900/10 lg:hidden"
          />

          <div className="flex flex-1 gap-x-4 self-stretch lg:gap-x-6">
            <div className="grid flex-1 grid-cols-1">
             
            </div>
            <div className="flex items-center gap-x-4 lg:gap-x-6">
              <button
                type="button"
                className="-m-2.5 p-2.5 text-gray-400 hover:text-gray-500"
              >
                <span className="sr-only">View Notifications</span>
                <BellIcon aria-hidden="true" className="size-6" />
              </button>

              {/* Separator */}
              <div
                aria-hidden="true"
                className="hidden lg:block lg:h-6 lg:w-px lg:bg-gray-900/10"
              />
              
              {/* Profile Dropdown */}
              <UserButton/>
            </div>
          </div>
        </div>
  )
}

export default Navbar
