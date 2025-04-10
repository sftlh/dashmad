import prisma from "./prisma";

export const todayYear = new Date().getFullYear();

export const firstDateOfTheYear = new Date(todayYear, 0, 0);

export const today = new Date();
export const quarterOne = new Date(todayYear, 3, 10);
export const quarterTwo = new Date(todayYear, 7, 10);
export const quarterThree = new Date(todayYear, 10, 10);
export const quarterFour = new Date(todayYear, 12, 10);

// Get Bedah WP Data Quarter One
export const getSumOfBedahWpQuarterOneOc = async (role: string) => {
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
export const getSumOfBedahWpQuarterTwoOc = async (role: string) => {
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
export const getSumOfBedahWpQuarterThreeOc = async (role: string) => {
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
export const getSumOfBedahWpQuarterFourOc = async (role: string) => {
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
export const getSumOfEmpoweringQuarterOneOc = async (role: string) => {
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
export const getSumOfEmpoweringQuarterTwoOc = async (role: string) => {
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
export const getSumOfEmpoweringQuarterThreeOc = async (role: string) => {
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
export const getSumOfEmpoweringQuarterFourOc = async (role: string) => {
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
export const recentBedahWpActivityOc = async () => {
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

export const recentEmpoweringActivityOc = async () => {
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

export const getCountOfBedahWpTriwulanIByUserIdOc = async () => {
  const data = await prisma.bedahWPData.count({
    where: {
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

export const getCountOfBedahWpTriwulanIIByUserIdOc = async () => {
  const data = await prisma.bedahWPData.count({
    where: {
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

export const getCountOfBedahWpTriwulanIIIByUserIdOc = async () => {
  const data = await prisma.bedahWPData.count({
    where: {
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

export const getCountOfBedahWpTriwulanIVByUserIdOc = async () => {
  const data = await prisma.bedahWPData.count({
    where: {
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

export const getBedahWpKirimTwIOc = async () => {
  try {
    const dataSudahKirim = await prisma.bedahWPData.count({
      where: {
        pelaksanaanKegiatan: {
          lte: quarterOne,
          gte: firstDateOfTheYear,
        },
        sendingDataToKanwil: {
          statusKirim: "sudah",
        },
      },
    });
    return dataSudahKirim;
  } catch (error) {
    console.log(error);
  }
};

export const getBedahWpKirimTwIIOc = async () => {
  try {
    const dataSudahKirim = await prisma.bedahWPData.count({
      where: {
        pelaksanaanKegiatan: {
          lte: quarterTwo,
          gte: quarterOne,
        },
        sendingDataToKanwil: {
          statusKirim: "sudah",
        },
      },
    });
    return dataSudahKirim;
  } catch (error) {
    console.log(error);
  }
};

export const getBedahWpKirimTwIIIOc = async () => {
  try {
    const dataSudahKirim = await prisma.bedahWPData.count({
      where: {
        pelaksanaanKegiatan: {
          lte: quarterThree,
          gte: quarterTwo,
        },
        sendingDataToKanwil: {
          statusKirim: "sudah",
        },
      },
    });
    return dataSudahKirim;
  } catch (error) {
    console.log(error);
  }
};

export const getBedahWpKirimTwIVOc = async () => {
  try {
    const dataSudahKirim = await prisma.bedahWPData.count({
      where: {
        pelaksanaanKegiatan: {
          lte: quarterFour,
          gte: quarterThree,
        },
        sendingDataToKanwil: {
          statusKirim: "sudah",
        },
      },
    });
    return dataSudahKirim;
  } catch (error) {
    console.log(error);
  }
};

//Get Bedah WP Telat

export const getBedahWpTelatTwIOc = async () => {
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
      },
    });
    return data;
  } catch (error) {
    console.log(error);
  }
};

export const getBedahWpTelatTwIIOc = async () => {
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
      },
    });
    return data;
  } catch (error) {
    console.log(error);
  }
};

export const getBedahWpTelatTwIIIOc = async () => {
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
      },
    });
    return data;
  } catch (error) {
    console.log(error);
  }
};

export const getBedahWpTelatTwIVOc = async () => {
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
      },
    });
    return data;
  } catch (error) {
    console.log(error);
  }
};

export const belumKirimTwIOc = async () => {
  try {
    const data = await prisma.bedahWPData.count({
      where: {
        pelaksanaanKegiatan: {
          lte: quarterOne,
          gte: firstDateOfTheYear,
        },
        sendingDataToKanwilId: null,
      },
    });
    return data;
    console.log("Data", data)
  } catch (error) {
    console.log(error);
  }
};

export const belumKirimTwIIOc = async () => {
  try {
    const data = await prisma.bedahWPData.count({
      where: {
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

export const belumKirimTwIIIOc = async () => {
  try {
    const data = await prisma.bedahWPData.count({
      where: {
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

export const belumKirimTwIVOc = async () => {
  try {
    const data = await prisma.bedahWPData.count({
      where: {
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
