import { z } from "zod";
import { DatabaseWajibPajak } from "@prisma/client";

export const userSchema = z.object({
  id: z.string().optional(),
  username: z
    .string()
    .min(3, { message: "Username must be at least 3 characters long!" })
    .max(20, { message: "Username must be at most 20 characters long!" }),
  nip: z
    .string()
    .min(9, { message: "NIP Pendek is Required" })
    .max(9, { message: "Maximum 9 Karakter" }),
  firstName: z
    .string()
    .min(1, { message: "Minimum Character is 3" })
    .optional(),
  lastName: z.union([z.string(), z.undefined()]).optional(),
  password: z
    .string()
    .min(6, { message: "Password must be at least 8 characters long!" })
    .optional()
    .or(z.literal("")),
  role: z.string({ message: "Please select an option" }),
});

export type UserSchema = z.infer<typeof userSchema>;

export const bedahWpSchema = z
  .object({
    id: z.union([z.string(), z.undefined()]).optional(),
    userId: z.string().optional(),
    npwpId: z
      .string()
      .refine((val) => val?.length === 15, { message: "NPWP Harus 15 Digit" }),
    pelaksanaanKegiatan: z.coerce.date({
      message: "Waktu Pelaksanaan Kegiatan Harus diisi",
    }),
    klasifikasi: z.enum(["1", "2"], { message: "Klasifikasi harus dipilih" }),
    tahunPajak: z.string({ message: "harus diisi, Contoh: 2024" }),
    pph21: z.coerce.number().optional(),
    pph22: z.coerce.number().optional(),
    pph23: z.coerce.number().optional(),
    pph2529: z.coerce.number().optional(),
    pph26: z.coerce.number().optional(),
    pphFinal: z.coerce.number().optional(),
    pph15: z.coerce.number().optional(),
    ppn: z.coerce.number().optional(),
    pajakLainnya: z.coerce.number().optional(),
    kunci: z.boolean().optional(),
  })
  .refine(
    async (data) => {
      const response = await fetch(
        `/api/findNpwpInDb?npwpId=${encodeURIComponent(data.npwpId)}`
      );
      const result = await response.json();
      if (result) {
        return result.exists;
      }
    },
    { message: "NPWP Tidak Ada Di Database", path: ["npwpId"] }
  )
  .refine(
    async (data) => {
      const response = await fetch(
        `/api/findNpwpByUserId?userId=${data.userId}`
      );
      const result = await response.json();
      console.log("Results:", result);
      return result.exists.some(
        (val: DatabaseWajibPajak) => val.id === data.npwpId
      );
    },
    {
      message: "NPWP Wajib Pajak Tidak Dibawah Pengawasan Anda",
      path: ["npwpId"],
    }
  );

export type BedahWpSchema = z.infer<typeof bedahWpSchema>;

export const bedahWpUpdateSchema = z.object({
  id: z.union([z.string(), z.undefined()]).optional(),
  userId: z.string().optional(),
  npwpId: z
    .string()
    .refine((val) => val?.length === 15, { message: "NPWP Harus 15 Digit" }),
  pelaksanaanKegiatan: z.coerce.date({
    message: "Waktu Pelaksanaan Kegiatan Harus diisi",
  }),
  klasifikasi: z.enum(["1", "2"], { message: "Klasifikasi harus dipilih" }),
  tahunPajak: z.string({ message: "harus diisi, Contoh: 2024" }),
  pph21: z.coerce.number().optional(),
  pph22: z.coerce.number().optional(),
  pph23: z.coerce.number().optional(),
  pph2529: z.coerce.number().optional(),
  pph26: z.coerce.number().optional(),
  pphFinal: z.coerce.number().optional(),
  pph15: z.coerce.number().optional(),
  ppn: z.coerce.number().optional(),
  pajakLainnya: z.coerce.number().optional(),
  kunci: z.boolean().optional(),
});

export type BedahWpUpdateSchema = z.infer<typeof bedahWpUpdateSchema>;

export const empoweringSchema = z
  .object({
    id: z.union([z.string(), z.undefined()]).optional(),
    userId: z.string().optional(),
    npwpId: z
      .string()
      .refine((val) => val?.length === 15, { message: "NPWP Harus 15 Digit" }),
    pelaksanaanKegiatan: z.coerce.date({
      message: "Waktu Pelaksanaan Kegiatan Harus diisi",
    }),
    tahunPajak: z.string({ message: "harus diisi, Contoh: 2024" }),
    pph21: z.coerce.number().optional(),
    pph22: z.coerce.number().optional(),
    pph23: z.coerce.number().optional(),
    pph2529: z.coerce.number().optional(),
    pph26: z.coerce.number().optional(),
    pphFinal: z.coerce.number().optional(),
    pph15: z.coerce.number().optional(),
    ppn: z.coerce.number().optional(),
    pajakLainnya: z.coerce.number().optional(),
    kunci: z.boolean().optional(),
  })
  .refine(
    async (data) => {
      const response = await fetch(
        `/api/findNpwpInDb?npwpId=${encodeURIComponent(data.npwpId)}`
      );
      const result = await response.json();
      if (result) {
        return result.exists;
      }
    },
    { message: "NPWP Tidak Ada Di Database", path: ["npwpId"] }
  )
  .refine(
    async (data) => {
      const response = await fetch(`/api/findNpwpByRole?roleId=${data.userId}`);
      const result = await response.json();
      console.log("Results:", result);
      return result.exists.some(
        (val: DatabaseWajibPajak) => val.id === data.npwpId
      );
    },
    {
      message: "NPWP Wajib Pajak Tidak Dibawah Pengawasan Anda",
      path: ["npwpId"],
    }
  );

export type EmpoweringSchema = z.infer<typeof empoweringSchema>;

export const updateEmpoweringSchema = z.object({
  id: z.union([z.string(), z.undefined()]).optional(),
  userId: z.string().optional(),
  npwpId: z
    .string()
    .refine((val) => val?.length === 15, { message: "NPWP Harus 15 Digit" }),
  pelaksanaanKegiatan: z.coerce.date({
    message: "Waktu Pelaksanaan Kegiatan Harus diisi",
  }),
  tahunPajak: z.string({ message: "harus diisi, Contoh: 2024" }),
  pph21: z.coerce.number().optional(),
  pph22: z.coerce.number().optional(),
  pph23: z.coerce.number().optional(),
  pph2529: z.coerce.number().optional(),
  pph26: z.coerce.number().optional(),
  pphFinal: z.coerce.number().optional(),
  pph15: z.coerce.number().optional(),
  ppn: z.coerce.number().optional(),
  pajakLainnya: z.coerce.number().optional(),
  kunci: z.boolean().optional(),
});
export type UpdateEmpoweringSchema = z.infer<typeof updateEmpoweringSchema>;

export const jawabanPembenahanCabangPusatBedaEntitasSchema = z.object({
  npwpCabangPusatQuestion: z.string({ message: "Harus Diisi !" }),
  namaCabangPusatQuestion: z.string({ message: "Harus Diisi !" }),
  nikCabangPusatQuestion: z.string({ message: "Harus Diisi !" }),
  jawabanLangsung: z.string({ message: "Harus Diisi !" }),
  perluDihapus: z.string({ message: "Harus Diisi !" }),
  keterangan: z.string({ message: "Harus Diisi !" }),
  dataId: z.string({ message: "Harus Diisi !" }).optional(),
  userId: z.string({ message: "Harus Diisi !" }).optional(),
});

export type JawabanPembenahanCabangPusatBedaEntitasSchema = z.infer<
  typeof jawabanPembenahanCabangPusatBedaEntitasSchema
>;

export const jawabanPembenahanWpNamaTtlSama = z.object({
  jawabanLangsung: z.string({ message: "Harus Diisi !" }),
  keterangan: z.string({ message: "Harus Diisi !" }),
  dataId: z.string({ message: "Harus Diisi" }).optional(),
  userId: z.string({ message: "Harus Diisi" }).optional(),
});

export type JawabanPembenahanWpNamaTtlSama = z.infer<
  typeof jawabanPembenahanWpNamaTtlSama
>;

export const jawabanPembenahanWpNikGanda = z.object({
  jawabanLangsung: z.string({ message: "Harus Diisi" }),
  keterangan: z.string({ message: "Harus Diisi" }),
  perluDihapus: z.string({ message: "Harus Diisi" }).optional(),
  nomorLhp: z.string({ message: "Harus Diisi" }).optional(),
  dataId: z.string({ message: "Harus Diisi" }).optional(),
  userId: z.string({ message: "Harus Diisi" }).optional(),
});

export type JawabanPembenahanWpNikGanda = z.infer<
  typeof jawabanPembenahanWpNikGanda
>;

export const jawabanPembenahanWpIdentitasGanda = z.object({
  jawabanLangsung: z.string({ message: "Harus Diisi" }),
  keterangan: z.string({ message: "Harus Diisi" }),
  perluDihapus: z.string({ message: "Harus Diisi" }).optional(),
  nomorLhp: z.string({ message: "Harus Diisi" }).optional(),
  dataId: z.string({ message: "Harus Diisi" }).optional(),
  userId: z.string({ message: "Harus Diisi" }).optional(),
});

export type JawabanPembenahanWpIdentitasGanda = z.infer<
  typeof jawabanPembenahanWpIdentitasGanda
>;
