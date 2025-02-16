"use client";
import React, { Dispatch, SetStateAction, useState } from "react";
import { FormProvider, useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import StepCabangPusatBedaEntitasForm1 from "./pembenahanCabangPusatBedaEntitasStepForm/StepCabangPusatBedaEntitasForm1";
import {
  JawabanPembenahanCabangPusatBedaEntitasSchema,
  jawabanPembenahanCabangPusatBedaEntitasSchema,
} from "@/lib/zod";
import StepCabangPusatBedaEntitasForm2 from "./pembenahanCabangPusatBedaEntitasStepForm/StepCabangPusatBedaEntitasForm2";
import StepCabangPusatBedaEntitasForm3 from "./pembenahanCabangPusatBedaEntitasStepForm/StepCabangPusatBedaEntitasForm3";
import StepCabangPusatBedaEntitasForm4 from "./pembenahanCabangPusatBedaEntitasStepForm/StepCabangPusatBedaEntitasForm4";

const CabangPusatBedaEntitasForm = ({ id, data }: { id?: any; data?: any }) => {
  const [step, setStep] = useState(1);
  const methods = useForm<JawabanPembenahanCabangPusatBedaEntitasSchema>({
    resolver: zodResolver(jawabanPembenahanCabangPusatBedaEntitasSchema),
  });
  //   const onSubmit = handleSubmit(async (data:BedahWpUpdateSchema) => {
  //     try {
  //       const response = await fetch(`/api/updateBedahWp`, {
  //         method: "PUT",
  //         headers: {
  //           "Content-Type": "application/json",
  //         },
  //         body: JSON.stringify(data),
  //       });
  //       if (!response.ok) {
  //         const errorData = await response.json();
  //         errorData.errors.forEach((error: any) => {
  //           toast.error(error.message);
  //         });
  //       } else {
  //         const result = await response.json();
  //         toast.success(result.message);
  //         reset();
  //         router.refresh();
  //       }
  //     } catch (error) {
  //       console.log("Unexpected Error", error);
  //       toast.error("An Unexpected error Occurred !");
  //     }
  //   });

  //   const toggleActive = () => {
  //     setKey((prevState) => !prevState);
  //   };

  const nextStep = () => setStep((prev) => prev + 1);
  const prevStep = () => setStep((prev) => prev - 1);

  return (
    <FormProvider {...methods}>
      <div>
        {step === 1 && (
          <StepCabangPusatBedaEntitasForm1 nextStep={nextStep} data={data} />
        )}
        {step === 2 && (
          <StepCabangPusatBedaEntitasForm2 nextStep={nextStep} prevStep={prevStep} data={data}/>
        )}
        {step === 3 && (
          <StepCabangPusatBedaEntitasForm3 nextStep={nextStep} prevStep={prevStep} data={data}/>
        )}
        {step === 4 && (
          <StepCabangPusatBedaEntitasForm4 nextStep={nextStep} prevStep={prevStep} data={data}/>
        )}
      </div>
    </FormProvider>
  );
};

export default CabangPusatBedaEntitasForm;
