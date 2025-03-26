// pages/api/download-all.ts
import type { NextApiRequest, NextApiResponse } from 'next';
import prisma from '@/lib/prisma';
import archiver from 'archiver';
import fs from 'fs';
import path from 'path';
import { firstDateOfTheYear, quarterOne, quarterThree, quarterTwo } from '@/lib/getaction';

export default async function handler(req: NextApiRequest, res: NextApiResponse) {
    try {
        // Query your database for records with a non-null pdfFile field
        const records = await prisma.bedahWPData.findMany({
            where: {
                OR: [
                    {
                        pelaksanaanKegiatan: {
                            lte: quarterThree,
                            gte: quarterTwo
                        },
                    },
                    {
                        createdAt: {
                            lte: quarterThree,
                            gte: quarterTwo
                        },
                    },
                ],
                pdfFile: {
                    not: null,
                },
            },
            select: {
                pdfFile: true,
            },
        });

        // Set response headers for a ZIP download
        res.setHeader('Content-Type', 'application/zip');
        res.setHeader('Content-Disposition', 'attachment; filename="laporan_bedah_wp_tw_1.zip"');

        // Initialize archiver
        const archive = archiver('zip', { zlib: { level: 9 } });
        archive.on('error', (err) => {
            throw err;
        });

        // Pipe the archive data to the response
        archive.pipe(res);

        // For each record, add the corresponding PDF file to the archive
        for (const record of records) {
            if (record.pdfFile) {
                // Construct the file path (assuming pdfFile is stored as "/uploads/filename")
                const filePath = path.join(process.cwd(), 'public', record.pdfFile);
                // Check if the file exists before adding
                if (fs.existsSync(filePath)) {
                    archive.file(filePath, { name: path.basename(filePath) });
                }
            }
        }

        // Finalize the archive (this will stream the ZIP file to the client)
        await archive.finalize();
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: 'Internal server error' });
    }
}