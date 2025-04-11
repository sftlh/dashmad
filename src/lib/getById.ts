import prisma from "./prisma";

// Get User By Id
export const getUserById = async (id: string|undefined) => {
  try {
    const user = await prisma?.user?.findFirst({
      where: {
        id,
      },
    });
    if (!user) {
      throw new Error(`User with ID ${id} not found.`);
    }
    return user;
  } catch (error) {
    console.error(error);
    throw error;
  } finally {
    await prisma.$disconnect();
  }
};

// Get Database Wajib Pajak By NPWP (id)
export const getDatabaseWajibPajakById = async (id: string) => {
  try {
    const data = await prisma.databaseWajibPajak.findFirst({
      where: {
        id: id,
      },
      include: {
        nip: true,
      },
    });
    return data;
  } catch (error: any) {
    console.log(error);
  }
};

// Get Bedah WP By ID
export const getBedahWpData = async (id: string) => {
  try {
    const data = await prisma.bedahWPData.findUnique({
      where: {
        id,
      },
      include: {
        npwp: true,
        user: true,
        sendingDataToKanwil: true,
      },
    });
    return data;
  } catch (error) {
    console.log(error);
  }
};

// Get Empowering Data By ID
export const getEmpoweringData = async (id: number) => {
  try {
    const data = await prisma.empoweringData.findUnique({
      where: {
        id,
      },
      include: {
        npwp: true,
        user: true,
        sendingDataToKanwil: true,
      },
    });
    return data;
  } catch (error) {
    console.log(error);
  }
};

//Get User By UserId
export const getUserByUserId = async (userId: string) => {
  try {
    const data = await prisma.user.findUnique({
      where: {
        id: userId,
      },
    });
    return data;
  } catch (error) {
    console.log(error);
  }
};
