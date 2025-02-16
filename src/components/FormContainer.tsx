import React from "react";
import FormModalEditDelete from "./FormModalEditDelete";
export type FormContainerProps = {
  table:
    | "editbedahwp"
    | "editempowering"
  type: "update" | "delete" ;
  data?: any;
  id?: number | string;
};

const FormContainer = async ({ table, type, data, id }: FormContainerProps) => {
  return (
    <div>
      <FormModalEditDelete table={table} type={type} data={data} />
    </div>
  );
};

export default FormContainer;
