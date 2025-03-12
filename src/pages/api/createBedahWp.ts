//pages/api
import { NextApiRequest, NextApiResponse } from "next";
import nextConnect from 'next-connect';
import multer from "multer";
import prisma from "@/lib/prisma";

//Extend NextApiRequest to include file from Multer
interface MulterRequest extends NextApiRequest {
  file: Express.Multer.File;
}
function stringToBoolean(str: string): boolean {
  return str.toLowerCase() === 'true';
}
//Configure Multer storage and file filter
const upload = multer({
  storage: multer.diskStorage({
    destination: './public/uploads/',
    filename: (req, file, cb) => {
      cb(null, `${Date.now()}-${file.originalname}`)
    },
  }),
  fileFilter: (req, file, cb) => {
    if (file.mimetype !== "application/pdf") {
      return cb(new Error('Only PDF files are allowed') as any, false);
    }
    cb(null, true)
  }
});

// Create API handler using nextConnect with proper TypeScripts types
const apiRoute = nextConnect<NextApiRequest, NextApiResponse>({
  onError(error, req, res) {
    res.status(501).json({ error: "Something went wrong" })
  },
  onNoMatch(req, res) {
    res.status(405).json({ error: "Method not Allowed" })
  }
});

// Use Multer middlaware for a single file
apiRoute.use(upload.single('file'));

apiRoute.post(async (req: NextApiRequest, res: NextApiResponse) => {
  try {
    //type assertion so TypeScripts recognizes our extended file property
    const multerReq = req as MulterRequest;
    const fileUrl = `/uploads/${multerReq.file.filename}`

    //Extract additional fields from the request body
    const { npwpId, klasifikasi, tahunPajak, pelaksanaanKegiatan, pph21, userId, pph22, pph23, pph2529, pph26, pphFinal, pph15, ppn, pajakLainnya, kunci } = req.body;
    const newRecord = await prisma.bedahWPData.create({
      data: {
        npwpId: npwpId || undefined,
        klasifikasi,
        tahunPajak: tahunPajak ? parseInt(tahunPajak, 10) : undefined,
        pdfFile: fileUrl,
        pelaksanaanKegiatan: pelaksanaanKegiatan,
        pph21: pph21 ? parseFloat(pph21) : undefined,
        pph22: pph22 ? parseFloat(pph22) : undefined,
        pph23: pph23 ? parseFloat(pph23) : undefined,
        pph2529: pph2529 ? parseFloat(pph2529) : undefined,
        pph26: pph26 ? parseFloat(pph26) : undefined,
        pphFinal: pphFinal ? parseFloat(pphFinal) : undefined,
        pph15: pph15 ? parseFloat(pph15) : undefined,
        ppn: ppn ? parseFloat(ppn) : undefined,
        pajakLainnya: pajakLainnya ? parseFloat(pajakLainnya) : undefined,
        kunci: kunci ? stringToBoolean(kunci) : undefined,
        userId: userId
      }
    })
    res.status(200).json({ message: 'File uploaded successfully', data: newRecord });

  } catch (error: any) {
    res.status(500).json({ error: error.message });
  }
});
// Disable the built-in body parser so Multer can handle multipart/form-data
export const config = {
  api: {
    bodyParser: false,
  },
};

export default apiRoute;