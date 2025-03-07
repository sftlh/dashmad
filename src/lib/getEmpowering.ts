import { firstDateOfTheYear, quarterFour, quarterOne, quarterThree, quarterTwo } from "./getaction";
import prisma from "./prisma";

export const getCountOfEmpoweringTriwulanIByUserId = async (userId: string) => {
    const data = await prisma.empoweringData.count({
        where: {
            userId,
            pelaksanaanKegiatan: {
                lte: quarterOne,
                gte: firstDateOfTheYear,
            },
        },
    });
    return data;
};

export const getCountOfEmpoweringTriwulanIIByUserId = async (userId: string) => {
    const data = await prisma.empoweringData.count({
        where: {
            userId,
            pelaksanaanKegiatan: {
                lte: quarterTwo,
                gte: quarterOne,
            },
        },
    });
    return data;
};

export const getCountOfEmpoweringTriwulanIIIByUserId = async (userId: string) => {
    const data = await prisma.empoweringData.count({
        where: {
            userId,
            pelaksanaanKegiatan: {
                lte: quarterThree,
                gte: quarterTwo,
            },
        },
    });
    return data;
};

export const getCountOfEmpoweringTriwulanIVByUserId = async (userId: string) => {
    const data = await prisma.empoweringData.count({
        where: {
            userId,
            pelaksanaanKegiatan: {
                lte: quarterFour,
                gte: quarterThree,
            },
        },
    });
    return data;
};