import KodeMapPerWp from '@/components/KodeMapPerWp'
import { Prisma } from '@prisma/client';
import React from 'react'

const KodeMapPerWpPage = ({searchParams}:{searchParams:{[key:string]:string | undefined}}) => {
  const {page, ...queryParams} = searchParams;
  const p = page ? parseInt(page): 1;

  return (
    <div><KodeMapPerWp/></div>
  )
}

export default KodeMapPerWpPage