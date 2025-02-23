import { getUserByUserId } from "./getById";
import prisma from "./prisma";

export const getPemebenahanWpBelumSelesai = async (userId: string) => {
  const user = await getUserByUserId(userId as string);
  const data = await prisma.pembenahanCabangPusatBedahEntitas.count({
    where: {
      nipId: userId,
      OR: [{ currentStatus: "Progress" }, { currentStatus: "" }],
    },
  });
  const data1 = await prisma.pembenahanWpNamaTtlSama.count({
    where: {
      nipId: userId,
      OR: [{ currentStatus: "Progress" }, { currentStatus: "" }],
    },
  });
  const data2 = await prisma.pembenahanWpNikGanda.count({
    where: {
      npwp1: {
        nipId: userId,
      },
      OR: [{ currentStatus: "Progress" }, { currentStatus: "" }],
    },
  });

  const data3 = await prisma.pembenahanWpIdentitasGanda.count({
    where: {
      nip: user?.nip,
      OR: [{ currentStatus: "Progress" }, { currentStatus: "" }],
    },
  });

  const totalCount = data + data1 + data2 + data3;
  return totalCount;
};

export const getPemebenahanWpSelesai = async (userId: string) => {
  const user = await getUserByUserId(userId as string);
  const data = await prisma.pembenahanCabangPusatBedahEntitas.count({
    where: {
      nipId: userId,
      OR: [{ currentStatus: "selesai" }],
    },
  });
  const data1 = await prisma.pembenahanWpNamaTtlSama.count({
    where: {
      nipId: userId,
      OR: [{ currentStatus: "selesai" }],
    },
  });
  const data2 = await prisma.pembenahanWpNikGanda.count({
    where: {
      npwp1: {
        nipId: userId,
      },
      OR: [{ currentStatus: "selesai" }],
    },
  });

  const data3 = await prisma.pembenahanWpIdentitasGanda.count({
    where: {
      nip: user?.nip,
      OR: [{ currentStatus: "selesai" }],
    },
  });

  const totalCount = data + data1 + data2 + data3;
  return totalCount;
};

export const getPembenahanWpNamaTtlSama = async (userId: string) => {
  const data = await prisma.pembenahanWpNamaTtlSama.count({
    where: {
      nipId: userId,
    },
  });
  return data;
};

export const getPembenahanWpCabangPusatBedaEntitas = async (userId: string) => {
  const data = await prisma.pembenahanCabangPusatBedahEntitas.count({
    where: {
      nipId: userId,
    },
  });
  return data;
};

export const getPembenahanWpNikGanda = async (userId: string) => {
  const data = await prisma.pembenahanWpNikGanda.count({
    where: {
      npwp1: {
        nipId: userId,
      },
    },
  });
  return data;
};

export const getPembenahanWpIdentitasGanda = async (userId: string) => {
  const user = await getUserByUserId(userId as string);
  const data = await prisma.pembenahanWpIdentitasGanda.count({
    where: {
      nip: user?.nip,
    },
  });
  return data;
};

export const sendingDataToKanwil = async (userId: string) => {
  const user = await getUserByUserId(userId as string);
  const data = await prisma.pembenahanCabangPusatBedahEntitas.count({
    where: {
      nipId: userId,
      FinalPembenahanMfwp: {
        some: {
          SendingDataToKanwil: {
            statusKirim: "sudah",
          },
        },
      },
    },
  });

  const data1 = await prisma.pembenahanWpNamaTtlSama.count({
    where: {
      nipId: userId,
      FinalPembenahanMfwp: {
        some: {
          SendingDataToKanwil: {
            statusKirim: "sudah",
          },
        },
      },
    },
  });

  const data2 = await prisma.pembenahanWpNikGanda.count({
    where: {
      npwp1: {
        nipId: user?.nip,
      },
      FinalPembenahanMfwp: {
        some: {
          SendingDataToKanwil: {
            statusKirim: "sudah",
          },
        },
      },
    },
  });

  const data3 = await prisma.pembenahanWpIdentitasGanda.count({
    where: {
      nip: user?.nip,
      FinalPembenahanMfwp: {
        some: {
          SendingDataToKanwil: {
            statusKirim: "sudah",
          },
        },
      },
    },
  });

  const totalCount = data + data1 + data2 + data3;
  return totalCount;
};
