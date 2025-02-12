import CreateWpComponent from '@/components/CreateWpComponent'
import ExportDatabase from '@/components/export/ExportDatabase'
import React from 'react'

const CreateWPPage = () => {
  return (
    <div className='p-10'>
      <CreateWpComponent/>
      <ExportDatabase/>
    </div>
  )
}

export default CreateWPPage
