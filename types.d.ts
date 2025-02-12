// types.d.ts
import { NextApiRequest } from "next";

declare module "next" {
  interface NextApiRequest {
    file?: Express.Multer.File; // For multer
    files?: { file: Express.Multer.File }; // If you use multer's multiple file upload
  }
}
