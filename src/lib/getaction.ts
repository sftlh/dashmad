import prisma from "./prisma";

export const todayYear = new Date().getFullYear();

export const firstDateOfTheYear = new Date(todayYear, 0, 0);

export const today = new Date();
export const quarterOne = new Date(todayYear, 3, 10);
export const quarterTwo = new Date(todayYear, 7, 10);
export const quarterThree = new Date(todayYear, 10, 10);
export const quarterFour = new Date(todayYear, 12, 10);

// Get Bedah WP Data Quarter One
export const getSumOfBedahWpQuarterOne = async (role: string) => {
  const data = await prisma.bedahWPData.count({
    where: {
      user: {
        role,
      },
      createdAt: {
        lte: quarterOne,
        gte: firstDateOfTheYear,
      },
    },
  });
  return data;
};

// Get Bedah WP Data Quarter Two
export const getSumOfBedahWpQuarterTwo = async (role: string) => {
  const data = await prisma.bedahWPData.count({
    where: {
      user: {
        role,
      },
      createdAt: {
        lte: quarterTwo,
        gte: quarterOne,
      },
    },
  });
  return data;
};

// Get Bedah WP Data Quarter Three
export const getSumOfBedahWpQuarterThree = async (role: string) => {
  const data = await prisma.bedahWPData.count({
    where: {
      user: {
        role,
      },
      createdAt: {
        lte: quarterThree,
        gte: quarterTwo,
      },
    },
  });
  return data;
};

// Get Bedah WP Data Quarter Four
export const getSumOfBedahWpQuarterFour = async (role: string) => {
  const data = await prisma.bedahWPData.count({
    where: {
      user: {
        role,
      },
      createdAt: {
        lte: quarterFour,
        gte: quarterThree,
      },
    },
  });
  return data;
};

// Get Empowering Data Quarter One
export const getSumOfEmpoweringQuarterOne = async (role: string) => {
  const data = await prisma.empoweringData.count({
    where: {
      user: {
        role,
      },

      createdAt: {
        lte: quarterOne,
        gte: firstDateOfTheYear,
      },
    },
  });
  return data;
};

// Get Empowering Data Quarter Two
export const getSumOfEmpoweringQuarterTwo = async (role: string) => {
  const data = await prisma.bedahWPData.count({
    where: {
      user: {
        role,
      },
      createdAt: {
        lte: quarterTwo,
        gte: quarterOne,
      },
    },
  });
  return data;
};

// Get Empowering Data Quarter Three
export const getSumOfEmpoweringQuarterThree = async (role: string) => {
  const data = await prisma.bedahWPData.count({
    where: {
      user: {
        role,
      },
      createdAt: {
        lte: quarterThree,
        gte: quarterTwo,
      },
    },
  });
  return data;
};

// Get Empowering Data Quarter Four
export const getSumOfEmpoweringQuarterFour = async (role: string) => {
  const data = await prisma.bedahWPData.count({
    where: {
      user: {
        role,
      },
      createdAt: {
        lte: quarterFour,
        gte: quarterThree,
      },
    },
  });
  return data;
};

//Recent Activity Data
export const recentBedahWpActivity = async () => {
  const recentData = await prisma.bedahWPData.findMany({
    orderBy: {
      createdAt: "desc",
    },
    take: 8,
    include: {
      npwp: true,
      user: true,
      // sendingDataToKanwil:true,
    },
  });
  return recentData;
};

export const recentEmpoweringActivity = async () => {
  const recentData = await prisma.empoweringData.findMany({
    orderBy: {
      createdAt: "desc",
    },
    take: 8,
    include: {
      npwp: true,
      sendingDataToKanwil: true,
      user: true,
    },
  });
  return recentData;
};

export const getCountOfBedahWpTriwulanIByUserId = async (userId: string) => {
  const data = await prisma.bedahWPData.count({
    where: {
      userId,
      createdAt: {
        lte: quarterOne,
        gte: firstDateOfTheYear,
      },
      pelaksanaanKegiatan: {
        lte: quarterOne,
        gte: firstDateOfTheYear,
      },
    },
  });
  return data;
};

export const getCountOfBedahWpTriwulanIIByUserId = async (userId: string) => {
  const data = await prisma.bedahWPData.count({
    where: {
      userId,
      createdAt: {
        lte: quarterTwo,
        gte: quarterOne,
      },
      pelaksanaanKegiatan: {
        lte: quarterTwo,
        gte: quarterOne,
      },
    },
  });
  return data;
};

export const getCountOfBedahWpTriwulanIIIByUserId = async (userId: string) => {
  const data = await prisma.bedahWPData.count({
    where: {
      userId,
      createdAt: {
        lte: quarterThree,
        gte: quarterTwo,
      },
      pelaksanaanKegiatan: {
        lte: quarterThree,
        gte: quarterTwo,
      },
    },
  });
  return data;
};

export const getCountOfBedahWpTriwulanIVByUserId = async (userId: string) => {
  const data = await prisma.bedahWPData.count({
    where: {
      userId,
      createdAt: {
        lte: quarterFour,
        gte: quarterThree,
      },
      pelaksanaanKegiatan: {
        lte: quarterFour,
        gte: quarterThree,
      },
    },
  });
  return data;
};

//Get Sudah Dikirim BedahWP

export const getBedahWpKirimTwI = async (userId: string) => {
  try {
    const dataSudahKirim = await prisma.bedahWPData.count({
      where: {
        pelaksanaanKegiatan: {
          lte: quarterOne,
          gte: firstDateOfTheYear,
        },
        createdAt: {
          lte: quarterOne,
          gte: firstDateOfTheYear,
        },
        sendingDataToKanwil: {
          statusKirim: "sudah",
        },
        userId,
      },
    });
    return dataSudahKirim;
  } catch (error) {
    console.log(error);
  }
};

export const getBedahWpKirimTwII = async (userId: string) => {
  try {
    const dataSudahKirim = await prisma.bedahWPData.count({
      where: {
        pelaksanaanKegiatan: {
          lte: quarterTwo,
          gte: quarterOne,
        },
        createdAt: {
          lte: quarterTwo,
          gte: quarterOne,
        },
        sendingDataToKanwil: {
          statusKirim: "sudah",
        },
        userId,
      },
    });
    return dataSudahKirim;
  } catch (error) {
    console.log(error);
  }
};

export const getBedahWpKirimTwIII = async (userId: string) => {
  try {
    const dataSudahKirim = await prisma.bedahWPData.count({
      where: {
        pelaksanaanKegiatan: {
          lte: quarterThree,
          gte: quarterTwo,
        },
        createdAt: {
          lte: quarterThree,
          gte: quarterTwo,
        },
        sendingDataToKanwil: {
          statusKirim: "sudah",
        },
        userId,
      },
    });
    return dataSudahKirim;
  } catch (error) {
    console.log(error);
  }
};

export const getBedahWpKirimTwIV = async (userId: string) => {
  try {
    const dataSudahKirim = await prisma.bedahWPData.count({
      where: {
        pelaksanaanKegiatan: {
          lte: quarterFour,
          gte: quarterThree,
        },
        createdAt: {
          lte: quarterFour,
          gte: quarterThree,
        },
        sendingDataToKanwil: {
          statusKirim: "sudah",
        },
        userId,
      },
    });
    return dataSudahKirim;
  } catch (error) {
    console.log(error);
  }
};

//Get Bedah WP Telat

export const getBedahWpTelatTwI = async (userId: string) => {
  try {
    const data = await prisma.bedahWPData.count({
      where: {
        pelaksanaanKegiatan: {
          lte: quarterOne,
          gte: firstDateOfTheYear,
        },
        createdAt: {
          lte: quarterFour,
          gte: quarterOne,
        },
        userId,
      },
    });
    return data;
  } catch (error) {
    console.log(error);
  }
};

export const getBedahWpTelatTwII = async (userId: string) => {
  try {
    const data = await prisma.bedahWPData.count({
      where: {
        pelaksanaanKegiatan: {
          lte: quarterTwo,
          gte: quarterOne,
        },
        createdAt: {
          lte: quarterFour,
          gte: quarterTwo,
        },
        userId,
      },
    });
    return data;
  } catch (error) {
    console.log(error);
  }
};

export const getBedahWpTelatTwIII = async (userId: string) => {
  try {
    const data = await prisma.bedahWPData.count({
      where: {
        pelaksanaanKegiatan: {
          lte: quarterThree,
          gte: quarterTwo,
        },
        createdAt: {
          lte: quarterFour,
          gte: quarterThree,
        },
        userId,
      },
    });
    return data;
  } catch (error) {
    console.log(error);
  }
};

export const getBedahWpTelatTwIV = async (userId: string) => {
  try {
    const data = await prisma.bedahWPData.count({
      where: {
        pelaksanaanKegiatan: {
          lte: quarterFour,
          gte: quarterThree,
        },
        createdAt: {
          lte: quarterFour,
          gte: quarterFour,
        },
        userId,
      },
    });
    return data;
  } catch (error) {
    console.log(error);
  }
};

export const belumKirimTwI = async (userId: string) => {
  try {
    const data = await prisma.bedahWPData.count({
      where: {
        userId,
        pelaksanaanKegiatan: {
          lte: quarterOne,
          gte: firstDateOfTheYear,
        },
        sendingDataToKanwilId: null,
      },
    });
    return data;
  } catch (error) {
    console.log(error);
  }
};

export const belumKirimTwII = async (userId: string) => {
  try {
    const data = await prisma.bedahWPData.count({
      where: {
        userId,
        pelaksanaanKegiatan: {
          lte: quarterTwo,
          gte: quarterOne,
        },
        sendingDataToKanwilId: null,
      },
    });
    return data;
  } catch (error) {
    console.log(error);
  }
};

export const belumKirimTwIII = async (userId: string) => {
  try {
    const data = await prisma.bedahWPData.count({
      where: {
        userId,
        pelaksanaanKegiatan: {
          lte: quarterThree,
          gte: quarterTwo,
        },
        sendingDataToKanwilId: null,
      },
    });
    return data;
  } catch (error) {
    console.log(error);
  }
};

export const belumKirimTwIV = async (userId: string) => {
  try {
    const data = await prisma.bedahWPData.count({
      where: {
        userId,
        pelaksanaanKegiatan: {
          lte: quarterFour,
          gte: quarterThree,
        },
        sendingDataToKanwilId: null,
      },
    });
    return data;
  } catch (error) {
    console.log(error);
  }
};
