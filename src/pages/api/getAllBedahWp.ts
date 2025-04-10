import prisma from "@/lib/prisma";
import { NextApiRequest, NextApiResponse } from "next";

const handler = async(req:NextApiRequest, res:NextApiResponse) => {
    if(req.method !== "GET"){
        res.setHeader("Allow", ["GET"]);
        return res.status(405).json({message:"Method not Allowed"})
    }

    try {
        const data = await prisma.bedahWPData.findMany({
            include:{
                npwp:true,
                sendingDataToKanwil:true
            }
        })
        console.log("Data Bedah WP",data)
        res.status(200).json(data);
    } catch (error:any) {   
        console.error(error.message)
    }
}

export default handler;