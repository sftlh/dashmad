import prisma from "./prisma";

export const getUserByNip = async (nip: string | undefined) => {
  const user = await prisma.user.findUnique({
    where: {
      nip,
    },
  });

  return user;
};
