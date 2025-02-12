"use server";

import { clerkClient } from "@clerk/nextjs/server";
import { EmpoweringSchema, UserSchema } from "./zod";
import prisma from "./prisma";

type CurrentState = { success: boolean; error: boolean };

export const createUser = async (
  CurrentState: CurrentState,
  data: UserSchema
) => {
  try {
    {
      if (data.role) {
        const user = await clerkClient().users.createUser({
          // username: (data.firstName + data.lastName).replace(/\s+/g, "").toLowerCase(),
          username: data.username.toLowerCase(),
          password: data.password,
          firstName: data.firstName,
          lastName: data.lastName,
          publicMetadata: { role: data.role },
        });

        await prisma.user.create({
          data: {
            id: user.id,
            nip: data.nip,
            password: data.password,
            username: data.username,
            firstName: data.firstName,
            lastName: data?.lastName,
            role: data.role,
          },
        });
      }
    }
    return { success: true, error: false };
  } catch (error) {
    console.log(error);
    return { success: false, error: true };
  }
};

