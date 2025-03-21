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
  nipPanjang: z
    .string()
    .min(18, { message: "NIP Panjang is Required" })
    .max(18, { message: "Maximum 18 Karakter" }),
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
    userId: z.string().optional(),
    npwpId: z
      .string()
      .refine((val) => val?.length === 15, { message: "NPWP Harus 15 Digit" }),
    pelaksanaanKegiatan: z.coerce.date({
      message: "Waktu Pelaksanaan Kegiatan Harus diisi",
    }),
    statusSpt: z.enum(["Non RTLB", "RTLB"], { message: "Status SPT harus dipilih" }),
    klasifikasi: z.enum(["1", "2"], { message: "Klasifikasi harus dipilih" }),
    tahunPajak: z.string().min(1, { message: "Tahun tidak boleh Kosong" }),
    peserta: z.string().min(1, { message: "Pilih salah satu opsi" }),
    kluPenompangPenerimaan: z.string().min(1, { message: "Pilih salah satu opsi" }),
    potensiTambahan: z.string().min(1, { message: "Pilih salah satu opsi" }),
    kesimpulan: z.string().min(1, { message: "Pilih salah satu opsi" }),
    masukDpp: z.string().min(1, { message: "Pilih salah satu opsi" }),
    analisisLaporanKeuangan: z.string().min(1, { message: "Pilih salah satu opsi" }),
    analisisTransferPricing:z.string().min(1, { message: "Pilih salah satu opsi" }),
    mirroring:z.string().min(1, { message: "Pilih salah satu opsi" }),
    analisisWpGroup:z.string().min(1, { message: "Pilih salah satu opsi" }),
    kolaborasiDenganPenilai:z.string().min(1, { message: "Pilih salah satu opsi" }),
    pemanfaatanDataEksternal:z.string().min(1, { message: "Pilih salah satu opsi" }),
    dataVisit:z.string().min(1, { message: "Pilih salah satu opsi" }),
    alket: z.string().min(1, { message: "Pilih salah satu opsi" }),
    bobotKegiatan: z.string().min(1, { message: "Pilih salah satu opsi" }),
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
    pdf: z
      .any()
      .refine((files) => files && files.length === 1, { message: 'PDF file is required' })
      .refine(
        (files) => files?.[0]?.type === 'application/pdf',
        { message: 'Only PDF files are accepted' }
      ),
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
  statusSpt: z.enum(["Non RTLB", "RTLB"], { message: "Status SPT harus dipilih" }),
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
  jawabanLangsung: z.string({ message: "Harus Diisi !" }),
  perluDihapus: z.string({ message: "Harus Diisi !" }),
  nomorLhp: z.string({ message: "Harus Diisi !" }).optional(),
  hasilKlarifikasi: z.string({ message: "Harus Diisi !" }),
  nomorBa: z.string({ message: "Harus Diisi" }),
  npwp: z.string({ message: "Harus Diisi" }),
  namaWajibPajak: z.string({ message: "Harus Diisi !" }).optional(),
  keterangan: z.string({ message: "Harus Diisi !" }),
  dataId: z.string({ message: "Harus Diisi !" }).optional(),
  userId: z.string({ message: "Harus Diisi !" }).optional(),
  npwpLawan: z.string({ message: "Harus Diisi !" }),
});

export type JawabanPembenahanCabangPusatBedaEntitasSchema = z.infer<
  typeof jawabanPembenahanCabangPusatBedaEntitasSchema
>;

export const jawabanPembenahanWpNamaTtlSama = z.object({
  jawabanLangsung: z.string({ message: "Harus Diisi !" }),
  perluDihapus: z.string({ message: "Harus Diisi" }),
  nomorLhp: z.string({ message: "Harus Diisi !" }),
  hasilKlarifikasi: z.string({ message: "Harus Diisi !" }),
  nomorBa: z.string({ message: "Harus Diisi" }),
  npwp: z.string({ message: "Harus Diisi !" }),
  namaWajibPajak: z.string({ message: "Harus Diisi !" }),
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
  hasilKlarifikasi: z.string({ message: "Harus Diisi !" }),
  nomorBa: z.string({ message: "Harus Diisi" }),
  npwp: z.string({ message: "Harus Diisi" }),
  namaWajibPajak: z.string({ message: "Harus Diisi !" }).optional(),
  userId: z.string({ message: "Harus Diisi" }).optional(),
  npwpLawan: z.string({ message: "Harus Diisi !" }),
});

export type JawabanPembenahanWpNikGanda = z.infer<
  typeof jawabanPembenahanWpNikGanda
>;

export const jawabanPembenahanWpIdentitasGanda = z.object({
  jawabanLangsung: z.string({ message: "Harus Diisi" }),
  keterangan: z.string({ message: "Harus Diisi" }),
  perluDihapus: z.string({ message: "Harus Diisi" }).optional(),
  nomorLhp: z.string({ message: "Harus Diisi" }).optional(),
  hasilKlarifikasi: z.string({ message: "Harus Diisi !" }),
  nomorBa: z.string({ message: "Harus Diisi" }),
  npwp: z.string({ message: "Harus Diisi !" }),
  namaWajibPajak: z.string({ message: "Harus Diisi !" }),
  dataId: z.string({ message: "Harus Diisi" }).optional(),
  userId: z.string({ message: "Harus Diisi" }).optional(),
  npwpLawan: z.string({ message: "Harus Diisi !" }),
});

export type JawabanPembenahanWpIdentitasGanda = z.infer<
  typeof jawabanPembenahanWpIdentitasGanda
>;

export const sendingDataToKanwil = z
  .object({
    nomorNd: z.string({ message: "Harus Diisi" }),
    tanggalKirimNd: z.coerce.date({
      message: "Waktu Pelaksanaan Kegiatan Harus diisi",
    }),
    id: z.string().optional(),
  })
  .refine(
    async (data) => {
      if (data.id === "empoweringtw1") {
        const response = await fetch(`/api/findEmpoweringDataTw1`);
        const result = await response.json();
        return result.exists.length > 0;
      }
      return true;
    },
    {
      message: "Tidak Ada Daftar Empowering Triwulan I yang Dikirim",
      path: ["nomorNd"],
    }
  )
  .refine(
    async (data) => {
      if (data.id === "empoweringtw2") {
        const response2 = await fetch(`/api/findEmpoweringDataTw2`);
        const result2 = await response2.json();
        return result2.exists.length > 0;
      }
      return true;
    },
    {
      message: "Tidak Ada Daftar Empowering Triwulan II yang Dikirim",
      path: ["nomorNd"],
    }
  ).refine(
    async (data) => {
      if (data.id === "empoweringtw3") {
        const response = await fetch(`/api/findEmpoweringDataTw3`);
        const result = await response.json();
        return result.exists.length > 0;
      }
      return true;
    },
    {
      message: "Tidak Ada Daftar Empowering Triwulan III yang Dikirim",
      path: ["nomorNd"],
    }
  ).refine(
    async (data) => {
      if (data.id === "empoweringtw4") {
        const response = await fetch(`/api/findEmpoweringDataTw4`);
        const result = await response.json();
        return result.exists.length > 0;
      }
      return true;
    },
    {
      message: "Tidak Ada Daftar Empowering Triwulan IV yang Dikirim",
      path: ["nomorNd"],
    }
  ).refine(
    async (data) => {
      if (data.id === "bedahtw1") {
        const response = await fetch(`/api/findBedahDataTw1`);
        const result = await response.json();
        return result.exists.length > 0;
      }
      return true;
    },
    {
      message: "Tidak Ada Daftar Bedah WP Triwulan I yang Dikirim",
      path: ["nomorNd"],
    }
  ).refine(
    async (data) => {
      if (data.id === "bedahtw2") {
        const response = await fetch(`/api/findBedahDataTw2`);
        const result = await response.json();
        return result.exists.length > 0;
      }
      return true;
    },
    {
      message: "Tidak Ada Daftar Bedah WP Triwulan II yang Dikirim",
      path: ["nomorNd"],
    }
  ).refine(
    async (data) => {
      if (data.id === "bedahtw3") {
        const response = await fetch(`/api/findBedahDataTw3`);
        const result = await response.json();
        return result.exists.length > 0;
      }
      return true;
    },
    {
      message: "Tidak Ada Daftar Bedah WP Triwulan III yang Dikirim",
      path: ["nomorNd"],
    }
  ).refine(
    async (data) => {
      if (data.id === "bedahtw4") {
        const response = await fetch(`/api/findBedahDataTw4`);
        const result = await response.json();
        return result.exists.length > 0;
      }
      return true;
    },
    {
      message: "Tidak Ada Daftar Bedah WP Triwulan IV yang Dikirim",
      path: ["nomorNd"],
    }
  ).refine(
    async (data) => {
      if (data.id === "pembenahantw1") {
        const response = await fetch(`/api/findPembenahanDataTw1`);
        const result = await response.json();
        return result.exists.length > 0;
      }
      return true;
    },
    {
      message: "Tidak Ada Daftar Pembenahan MFWP Triwulan I yang Dikirim",
      path: ["nomorNd"],
    }
  ).refine(
    async (data) => {
      if (data.id === "pembenahantw2") {
        const response = await fetch(`/api/findPembenahanDataTw2`);
        const result = await response.json();
        return result.exists.length > 0;
      }
      return true;
    },
    {
      message: "Tidak Ada Daftar Pembenahan MFWP Triwulan II yang Dikirim",
      path: ["nomorNd"],
    }
  ).refine(
    async (data) => {
      if (data.id === "pembenahantw3") {
        const response = await fetch(`/api/findPembenahanDataTw3`);
        const result = await response.json();
        return result.exists.length > 0;
      }
      return true;
    },
    {
      message: "Tidak Ada Daftar Pembenahan MFWP Triwulan III yang Dikirim",
      path: ["nomorNd"],
    }
  ).refine(
    async (data) => {
      if (data.id === "pembenahantw4") {
        const response = await fetch(`/api/findPembenahanDataTw4`);
        const result = await response.json();
        return result.exists.length > 0;
      }
      return true;
    },
    {
      message: "Tidak Ada Daftar Pembenahan MFWP Triwulan IV yang Dikirim",
      path: ["nomorNd"],
    }
  );

export type SendingDataToKanwil = z.infer<typeof sendingDataToKanwil>;
