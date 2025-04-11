--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4 (Debian 17.4-1.pgdg120+2)
-- Dumped by pg_dump version 17.4 (Debian 17.4-1.pgdg120+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: BedahWPData; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."BedahWPData" (
    id integer NOT NULL,
    "npwpId" text,
    klasifikasi text,
    "tahunPajak" integer,
    pph21 double precision,
    pph22 double precision,
    pph23 double precision,
    pph2529 double precision,
    pph26 double precision,
    "pphFinal" double precision,
    pph15 double precision,
    ppn double precision,
    "pajakLainnya" double precision,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "userId" text,
    "pelaksanaanKegiatan" timestamp(3) without time zone,
    kunci boolean DEFAULT false,
    "sendingDataToKanwilId" integer,
    "pdfFile" text,
    alket integer,
    "analisisLaporanKeuangan" integer,
    "analisisTransferPricing" integer,
    "analisisWpGroup" integer,
    "bobotKegiatan" text,
    "dataVisit" integer,
    kesimpulan integer,
    "kluPenompangPenerimaan" integer,
    "kolaborasiDenganPenilai" integer,
    "masukDpp" integer,
    mirroring integer,
    "pemanfaatanDataEksternal" integer,
    peserta integer,
    "potensiTambahan" integer,
    "statusSpt" text
);


ALTER TABLE public."BedahWPData" OWNER TO admin;

--
-- Name: BedahWPData_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public."BedahWPData_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."BedahWPData_id_seq" OWNER TO admin;

--
-- Name: BedahWPData_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public."BedahWPData_id_seq" OWNED BY public."BedahWPData".id;


--
-- Name: DatabaseWajibPajak; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."DatabaseWajibPajak" (
    id text NOT NULL,
    nama text,
    alamat text,
    "nomorHp" text,
    "bentukHukum" text,
    jenis text,
    kecamatan text,
    kelurahan text,
    klu text,
    kota text,
    nik text,
    propinsi text,
    status text,
    "tanggalDaftar" timestamp(3) without time zone,
    "tanggalPKP" timestamp(3) without time zone,
    "tanggalPencabutanPKP" timestamp(3) without time zone,
    "nipId" text
);


ALTER TABLE public."DatabaseWajibPajak" OWNER TO admin;

--
-- Name: EmpoweringData; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."EmpoweringData" (
    id integer NOT NULL,
    "npwpId" text,
    "tahunPajak" integer,
    pph21 double precision,
    pph22 double precision,
    pph23 double precision,
    pph26 double precision,
    "pphFinal" double precision,
    pph15 double precision,
    ppn double precision,
    "pajakLainnya" double precision,
    "userId" text,
    pph2529 double precision,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "pelaksanaanKegiatan" timestamp(3) without time zone,
    "sendingDataToKanwilId" integer,
    kunci boolean,
    kpp text DEFAULT 'KPP Madya Dua Surabaya'::text NOT NULL
);


ALTER TABLE public."EmpoweringData" OWNER TO admin;

--
-- Name: EmpoweringData_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public."EmpoweringData_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."EmpoweringData_id_seq" OWNER TO admin;

--
-- Name: EmpoweringData_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public."EmpoweringData_id_seq" OWNED BY public."EmpoweringData".id;


--
-- Name: FinalPembenahanMfwp; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."FinalPembenahanMfwp" (
    id integer NOT NULL,
    npwp text,
    "namaWajibPajak" text,
    "jenisTarget" text,
    "hasilUjiValiditas" text,
    "keteranganUjiValiditas" text,
    "jenisMfwp" text,
    "npwpGanda" text,
    "detilKeterangan" text,
    "kebutuhanKlarifikasi" text,
    "hasilKlarifikasi" text,
    "buktiWpTidakMemberikanKlarifikasi" text,
    "usulanTindakanPembenahan" text,
    "prognosaTindakan" text,
    "alasanBelumDilakukanTindakanPembenahan" text,
    "npwpLawan" text,
    "usulanTindakanPembenahanLawan" text,
    keterangan text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "pembenahanCabangPusatBedahEntitasId" integer,
    "pembenahanWpIdentitasGandaId" integer,
    "pembenahanWpNamaTtlSamaId" integer,
    "pembenahanWpNikGandaId" integer,
    "sendingDataToKanwilId" integer
);


ALTER TABLE public."FinalPembenahanMfwp" OWNER TO admin;

--
-- Name: FinalPembenahanMfwp_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public."FinalPembenahanMfwp_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."FinalPembenahanMfwp_id_seq" OWNER TO admin;

--
-- Name: FinalPembenahanMfwp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public."FinalPembenahanMfwp_id_seq" OWNED BY public."FinalPembenahanMfwp".id;


--
-- Name: JawabanPembenahanCabangPusatBedaEntitas; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."JawabanPembenahanCabangPusatBedaEntitas" (
    id integer NOT NULL,
    "dataId" integer,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "userId" text,
    keterangan text,
    "jawabanLangsung" text,
    "perluDihapus" text,
    "nomorLhp" text
);


ALTER TABLE public."JawabanPembenahanCabangPusatBedaEntitas" OWNER TO admin;

--
-- Name: JawabanPembenahanCabangPusatBedaEntitas_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public."JawabanPembenahanCabangPusatBedaEntitas_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."JawabanPembenahanCabangPusatBedaEntitas_id_seq" OWNER TO admin;

--
-- Name: JawabanPembenahanCabangPusatBedaEntitas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public."JawabanPembenahanCabangPusatBedaEntitas_id_seq" OWNED BY public."JawabanPembenahanCabangPusatBedaEntitas".id;


--
-- Name: JawabanPembenahanWpIdentitasGanda; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."JawabanPembenahanWpIdentitasGanda" (
    id integer NOT NULL,
    "dataId" integer,
    "jawabanLangsung" text,
    "perluDihapus" text,
    "nomorLhp" text,
    keterangan text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "userId" text
);


ALTER TABLE public."JawabanPembenahanWpIdentitasGanda" OWNER TO admin;

--
-- Name: JawabanPembenahanWpIdentitasGanda_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public."JawabanPembenahanWpIdentitasGanda_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."JawabanPembenahanWpIdentitasGanda_id_seq" OWNER TO admin;

--
-- Name: JawabanPembenahanWpIdentitasGanda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public."JawabanPembenahanWpIdentitasGanda_id_seq" OWNED BY public."JawabanPembenahanWpIdentitasGanda".id;


--
-- Name: JawabanPembenahanWpNamaTtlSama; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."JawabanPembenahanWpNamaTtlSama" (
    id integer NOT NULL,
    "dataId" integer,
    "jawabanLangsung" text,
    keterangan text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "userId" text,
    "nomorLhp" text,
    "perluDihapus" text
);


ALTER TABLE public."JawabanPembenahanWpNamaTtlSama" OWNER TO admin;

--
-- Name: JawabanPembenahanWpNamaTtlSama_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public."JawabanPembenahanWpNamaTtlSama_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."JawabanPembenahanWpNamaTtlSama_id_seq" OWNER TO admin;

--
-- Name: JawabanPembenahanWpNamaTtlSama_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public."JawabanPembenahanWpNamaTtlSama_id_seq" OWNED BY public."JawabanPembenahanWpNamaTtlSama".id;


--
-- Name: JawabanPembenahanWpNikGanda; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."JawabanPembenahanWpNikGanda" (
    id integer NOT NULL,
    "dataId" integer,
    "jawabanLangsung" text,
    "perluDihapus" text,
    "nomorLhp" text,
    keterangan text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "userId" text
);


ALTER TABLE public."JawabanPembenahanWpNikGanda" OWNER TO admin;

--
-- Name: JawabanPembenahanWpNikGanda_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public."JawabanPembenahanWpNikGanda_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."JawabanPembenahanWpNikGanda_id_seq" OWNER TO admin;

--
-- Name: JawabanPembenahanWpNikGanda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public."JawabanPembenahanWpNikGanda_id_seq" OWNED BY public."JawabanPembenahanWpNikGanda".id;


--
-- Name: PembenahanCabangPusatBedahEntitas; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."PembenahanCabangPusatBedahEntitas" (
    id integer NOT NULL,
    "npwpCabang" text,
    "namaCabang" text,
    "alamatCabang" text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "nomorHpCabang" text,
    "emailCabang" text,
    "kppCabang" text,
    "kanwilCabang" text,
    "nipId" text,
    "seksiCabang" text,
    "noKepCabang" integer,
    "validitasCabang" text,
    "statusCabang" text,
    "npwpPusat" text,
    "namaPusat" text,
    "kppPusat" text,
    "kanwilPusat" text,
    "arPusat" text,
    "seksiPusat" text,
    "kepPusat" integer,
    "validitasPusat" text,
    "statusPusat" text,
    "namaBersihCabang" text,
    "namaBersihPusat" text,
    "nikBersihPusat" text,
    "nikBersihCabang" text,
    "tglBentukData" text,
    "currentStatus" text DEFAULT 'Progress'::text
);


ALTER TABLE public."PembenahanCabangPusatBedahEntitas" OWNER TO admin;

--
-- Name: PembenahanCabangPusatBedahEntitas_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public."PembenahanCabangPusatBedahEntitas_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."PembenahanCabangPusatBedahEntitas_id_seq" OWNER TO admin;

--
-- Name: PembenahanCabangPusatBedahEntitas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public."PembenahanCabangPusatBedahEntitas_id_seq" OWNED BY public."PembenahanCabangPusatBedahEntitas".id;


--
-- Name: PembenahanWpIdentitasGanda; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."PembenahanWpIdentitasGanda" (
    id integer NOT NULL,
    "aktaTgl" text,
    "aktaTglKe2" text,
    "aktaTmp" text,
    "aktaTmpKe2" text,
    "arKe2" text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    email text,
    "emailKe2" text,
    hp text,
    "hpKe2" text,
    jalan text,
    "jalanKe2" text,
    "jmlBayar10Thn" double precision,
    "jmlBayar10ThnKe2" double precision,
    "jmlLapor10Thn" integer,
    "jmlLapor10ThnKe2" integer,
    "jmlPh10Thn" integer,
    "jmlPhThnKe2" integer,
    "jnsWp" text,
    "jnsWp2" text,
    kanwil text,
    "kanwilKe2" text,
    "kdKlu" text,
    "kdKluKe2" text,
    "kdWil" text,
    "kdWilayahKe2" text,
    kpp text,
    "kppKe2" text,
    "namaWp" text,
    "namaWp2" text,
    "noAkta" integer,
    "noAktaKe2" text,
    "notarisInstansi" text,
    "notarisInstansiKe2" text,
    npwp2 text,
    "pjNama" text,
    "pjNamaKe2" text,
    "pjNoId" text,
    "pjNoIdKe2" text,
    "pjNpwp" text,
    "pjNpwpKe2" text,
    "saldoPiutang" integer,
    "saldoPiutangKe2" double precision,
    seksi text,
    "seksiKe2" text,
    "skorNama" double precision,
    "stsWp" text,
    "stsWpKe2" text,
    telp text,
    "telpKe2" text,
    "tglBayarTerakhir" text,
    "tglBayarTerakhirKe2" text,
    "tglBentukData" text,
    "tglDaftar" text,
    "tglDaftarKe2" text,
    "tglUpdateTerakhir" text,
    "tglUpdateTerakhirKe2" text,
    "thlLaporTerakhirKe2" integer,
    "thnLaporTerakhir" integer,
    "thnPhTerakhir" integer,
    "thnPhTerakhirKe2" integer,
    nip text,
    npwp1 text,
    "currentStatus" text DEFAULT 'Progress'::text NOT NULL
);


ALTER TABLE public."PembenahanWpIdentitasGanda" OWNER TO admin;

--
-- Name: PembenahanWpIdentitasGanda_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public."PembenahanWpIdentitasGanda_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."PembenahanWpIdentitasGanda_id_seq" OWNER TO admin;

--
-- Name: PembenahanWpIdentitasGanda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public."PembenahanWpIdentitasGanda_id_seq" OWNED BY public."PembenahanWpIdentitasGanda".id;


--
-- Name: PembenahanWpNamaTtlSama; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."PembenahanWpNamaTtlSama" (
    id integer NOT NULL,
    npwp text,
    nama text,
    nik text,
    alamat text,
    "nomorHp" text,
    email text,
    "tmpLahir" text,
    "tglLahir" text,
    kpp text,
    kanwil text,
    "nipId" text,
    seksi text,
    status text,
    "noKep" integer,
    "stsValid" text,
    "thnLaporTerakhir" integer,
    "jmlLapor10Thn" integer,
    "tglBayarTerakhir" text,
    "jmlBayar10thn" double precision,
    "thnPhTerakhir" integer,
    "jmlPh10Thn" integer,
    "saldoUtang" double precision,
    "tglUpdateTerakhir" text,
    "npwpSama" text,
    "namaSama" text,
    "nikSama" text,
    "alamatSama" text,
    "nomorHpSama" text,
    "emailSama" text,
    "tmpLahirSama" text,
    "tglLahirSama" text,
    "kppSama" text,
    "kanwilSama" text,
    "arSama" text,
    "seksiSama" text,
    "statusSama" text,
    "noKepSama" text,
    "stsValidSama" text,
    "thnLaporTerakhirSama" integer,
    "jmlLapor10ThnSama" integer,
    "tglBayarTerakhirSama" text,
    "jmlBayar10ThnSama" double precision,
    "thnPhTerakhirSama" integer,
    "jmlPh10ThnSama" integer,
    "saldoUtangSama" double precision,
    "tglUpdateTerakhirSama" text,
    "skorJwsNama" integer,
    "skorJwsTempat" integer,
    "skorEdsNama" integer,
    "skorEdsTempat" integer,
    "tglBentukData" text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "currentStatus" text DEFAULT 'Progress'::text NOT NULL
);


ALTER TABLE public."PembenahanWpNamaTtlSama" OWNER TO admin;

--
-- Name: PembenahanWpNamaTtlSama_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public."PembenahanWpNamaTtlSama_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."PembenahanWpNamaTtlSama_id_seq" OWNER TO admin;

--
-- Name: PembenahanWpNamaTtlSama_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public."PembenahanWpNamaTtlSama_id_seq" OWNED BY public."PembenahanWpNamaTtlSama".id;


--
-- Name: PembenahanWpNikGanda; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."PembenahanWpNikGanda" (
    id integer NOT NULL,
    no integer,
    nama1 text,
    nik1 text,
    kpp1 text,
    kanwil1 text,
    "statusValid1" text,
    "statusWp1" text,
    "updatedBy1" text,
    "noKep1" text,
    "penerimanFasilitasPen1" text,
    "dataLapor1" integer,
    "dataBayar1" integer,
    "dataTunggakan1" integer,
    "jumlahData1" text,
    "dataTransaksi1" text,
    "tempatLahir1" text,
    "tanggalLahir1" text,
    npwp2 text,
    nama2 text,
    nik2 text,
    kpp2 text,
    kanwil2 text,
    "statusValid2" text,
    "statusWp2" text,
    "updateBy2" text,
    "noKep2" text,
    "penerimaFasilitasPen2" text,
    "dataLapor2" integer,
    "dataBayar2" integer,
    "dataTunggakan2" integer,
    "jumlahData2" integer,
    "dataTransaksi2" text,
    "tempatLahir2" text,
    "tanggalLahir2" text,
    "kppTerdaftar1dan2" text,
    "hasilCekNikDukcapil" text,
    "namaDukcapil" text,
    "persenNamaDukcapil" integer,
    "edsSkor" integer,
    "jswSkor" integer,
    "cosSkor" integer,
    "diceSkor" integer,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "npwp1Id" text,
    "currentStatus" text DEFAULT 'Progress'::text NOT NULL
);


ALTER TABLE public."PembenahanWpNikGanda" OWNER TO admin;

--
-- Name: PembenahanWpNikGanda_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public."PembenahanWpNikGanda_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."PembenahanWpNikGanda_id_seq" OWNER TO admin;

--
-- Name: PembenahanWpNikGanda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public."PembenahanWpNikGanda_id_seq" OWNED BY public."PembenahanWpNikGanda".id;


--
-- Name: SendingDataToKanwil; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."SendingDataToKanwil" (
    id integer NOT NULL,
    "nomorNd" text NOT NULL,
    "tanggalKirimNd" timestamp(3) without time zone NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "statusKirim" text
);


ALTER TABLE public."SendingDataToKanwil" OWNER TO admin;

--
-- Name: SendingDataToKanwil_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public."SendingDataToKanwil_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."SendingDataToKanwil_id_seq" OWNER TO admin;

--
-- Name: SendingDataToKanwil_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public."SendingDataToKanwil_id_seq" OWNED BY public."SendingDataToKanwil".id;


--
-- Name: User; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public."User" (
    id text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    role text,
    nip text NOT NULL,
    "firstName" text,
    "lastName" text,
    password text,
    username text NOT NULL,
    "nipPanjang" text
);


ALTER TABLE public."User" OWNER TO admin;

--
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO admin;

--
-- Name: BedahWPData id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."BedahWPData" ALTER COLUMN id SET DEFAULT nextval('public."BedahWPData_id_seq"'::regclass);


--
-- Name: EmpoweringData id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."EmpoweringData" ALTER COLUMN id SET DEFAULT nextval('public."EmpoweringData_id_seq"'::regclass);


--
-- Name: FinalPembenahanMfwp id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."FinalPembenahanMfwp" ALTER COLUMN id SET DEFAULT nextval('public."FinalPembenahanMfwp_id_seq"'::regclass);


--
-- Name: JawabanPembenahanCabangPusatBedaEntitas id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."JawabanPembenahanCabangPusatBedaEntitas" ALTER COLUMN id SET DEFAULT nextval('public."JawabanPembenahanCabangPusatBedaEntitas_id_seq"'::regclass);


--
-- Name: JawabanPembenahanWpIdentitasGanda id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."JawabanPembenahanWpIdentitasGanda" ALTER COLUMN id SET DEFAULT nextval('public."JawabanPembenahanWpIdentitasGanda_id_seq"'::regclass);


--
-- Name: JawabanPembenahanWpNamaTtlSama id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."JawabanPembenahanWpNamaTtlSama" ALTER COLUMN id SET DEFAULT nextval('public."JawabanPembenahanWpNamaTtlSama_id_seq"'::regclass);


--
-- Name: JawabanPembenahanWpNikGanda id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."JawabanPembenahanWpNikGanda" ALTER COLUMN id SET DEFAULT nextval('public."JawabanPembenahanWpNikGanda_id_seq"'::regclass);


--
-- Name: PembenahanCabangPusatBedahEntitas id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."PembenahanCabangPusatBedahEntitas" ALTER COLUMN id SET DEFAULT nextval('public."PembenahanCabangPusatBedahEntitas_id_seq"'::regclass);


--
-- Name: PembenahanWpIdentitasGanda id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."PembenahanWpIdentitasGanda" ALTER COLUMN id SET DEFAULT nextval('public."PembenahanWpIdentitasGanda_id_seq"'::regclass);


--
-- Name: PembenahanWpNamaTtlSama id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."PembenahanWpNamaTtlSama" ALTER COLUMN id SET DEFAULT nextval('public."PembenahanWpNamaTtlSama_id_seq"'::regclass);


--
-- Name: PembenahanWpNikGanda id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."PembenahanWpNikGanda" ALTER COLUMN id SET DEFAULT nextval('public."PembenahanWpNikGanda_id_seq"'::regclass);


--
-- Name: SendingDataToKanwil id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."SendingDataToKanwil" ALTER COLUMN id SET DEFAULT nextval('public."SendingDataToKanwil_id_seq"'::regclass);


--
-- Data for Name: BedahWPData; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."BedahWPData" (id, "npwpId", klasifikasi, "tahunPajak", pph21, pph22, pph23, pph2529, pph26, "pphFinal", pph15, ppn, "pajakLainnya", "createdAt", "userId", "pelaksanaanKegiatan", kunci, "sendingDataToKanwilId", "pdfFile", alket, "analisisLaporanKeuangan", "analisisTransferPricing", "analisisWpGroup", "bobotKegiatan", "dataVisit", kesimpulan, "kluPenompangPenerimaan", "kolaborasiDenganPenilai", "masukDpp", mirroring, "pemanfaatanDataEksternal", peserta, "potensiTambahan", "statusSpt") FROM stdin;
1	060324688615000	1	2022	\N	\N	\N	2039747612	\N	\N	\N	\N	\N	2025-03-18 01:40:34.462	user_2smaTpzecsrBC8bCeslF7ApFR6j	2025-01-14 00:00:00	f	\N	/uploads/1742262034446-Hasil Rapat Pembahasan DSPP Wajib Pajak an Heng Hok Soei Shindo Sumidomo Tahun Pajak 2022.pdf	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
10	024430092609000	1	2022	\N	\N	53652924	118112691	\N	10000000	\N	\N	\N	2025-03-24 06:23:56.361	user_2smbEzk5YCUvPfdGMKapmH6g4aK	2025-03-20 00:00:00	t	\N	/uploads/1742797436354-Laporan Bedah Wajib Pajak an Cita Yasa Perdanapdf.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
11	028172906613000	1	2022	8894510	\N	3473192	297929675	\N	30687500	\N	\N	\N	2025-03-24 06:27:52.236	user_2smbEzk5YCUvPfdGMKapmH6g4aK	2025-03-20 00:00:00	t	\N	/uploads/1742797672228-Laporan Kegiatan Bedah Wajib Pajak an Sumber Tehnik Jayapdf.pdf	1	1	0	0	100%	0	1	1	0	1	0	1	1	1	Non RTLB
12	015266307631000	1	2022	\N	\N	\N	3202132554	\N	\N	\N	124720091	\N	2025-03-24 06:31:22.62	user_2smadYpFEUXhnCGjoYGcaGAkg7S	0005-03-20 00:00:00	t	\N	/uploads/1742797882608-Format Lap Bedah WP 2025 panamas.pdf	0	1	1	1	100%	1	1	1	0	1	0	0	1	1	Non RTLB
13	017310103614000	1	2021	\N	\N	\N	1875181635	\N	\N	\N	1167502138	\N	2025-03-24 06:33:15.526	user_2smadYpFEUXhnCGjoYGcaGAkg7S	2025-03-21 00:00:00	t	\N	/uploads/1742797995514-Format Lap Bedah WP 2025 tanjung sari.pdf	0	1	0	0	100%	1	1	1	0	1	0	0	1	1	Non RTLB
14	024430563618000	1	2021	\N	\N	\N	535520000	\N	437000000	\N	409000000	\N	2025-03-24 06:48:11.641	user_2smb9tL93JGktnVu0BveFwzJ36p	2025-03-21 00:00:00	t	\N	/uploads/1742798891634-Laporan Bedah WP atas nama PT Chalidana Inti Permata Tahun Pajak 2021.pdf	1	1	0	1	100%	1	1	1	0	1	0	1	1	1	Non RTLB
15	011080835631000	2	2022	\N	\N	2454258	355940098	\N	\N	\N	\N	\N	2025-03-24 07:01:30.075	user_2smZXnsIsnyUD4vOnRkYKe67QSm	2025-03-20 00:00:00	f	\N	/uploads/1742799690064-Laporan Bedah Profil - PT Moga Djaja 2022.pdf	0	1	0	1	100%	1	1	1	0	1	0	1	1	1	Non RTLB
19	014824874631000	2	2022	2236524	\N	80395406	51703245	\N	56095802	\N	40865000	\N	2025-03-24 07:18:32.412	user_2smZXnsIsnyUD4vOnRkYKe67QSm	2025-03-21 00:00:00	f	\N	/uploads/1742800712393-Laporan Bedah Profil - PT Waringin Megah 2022.pdf	0	1	0	1	100%	1	1	1	0	1	1	1	1	1	Non RTLB
20	805719812604000	2	2022	\N	\N	\N	418677403	\N	\N	\N	\N	\N	2025-03-24 07:31:09.201	user_2smarUb8cHYvdzDtY5MUO7mYyen	2025-03-20 00:00:00	f	\N	/uploads/1742801469190-LAP BEDAH WP LUMBANG JAYA MAKMUR.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
21	749944187615000	2	2022	\N	\N	\N	169913051	\N	\N	\N	\N	\N	2025-03-24 07:34:10.709	user_2smarUb8cHYvdzDtY5MUO7mYyen	2025-03-20 00:00:00	f	\N	/uploads/1742801650698-LAP BEDAH WP SARANA METAL JAYATAMA.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
22	011122926631000	2	2023	47090295	\N	30760000	518571860	\N	\N	\N	\N	\N	2025-03-24 07:50:28.783	user_2smbUveHvsH8BTJNUGIMAmkJTaN	2025-03-20 00:00:00	t	\N	/uploads/1742802628773-Laporan Bedah WP Kedawung Subur Tw 1.pdf	0	1	0	0	100%	1	1	1	0	1	1	0	1	1	Non RTLB
26	845176445604000	1	2023	\N	\N	5348732	447277578	\N	68950000	\N	\N	\N	2025-03-25 01:27:30.801	user_2smbHso2UW3p4SBYX3e6SuJFMly	2025-03-20 00:00:00	t	\N	/uploads/1742866050786-Laporan Bedah WP PT Tolinco Megah Mekatrindo 2023 (nadine).pdf	1	1	0	0	100%	0	1	1	0	1	0	1	1	1	Non RTLB
28	741661128604000	2	2021	3000000	\N	\N	50000000	\N	5000000	\N	5000000	\N	2025-03-25 03:58:24.346	user_2smZa1llq8GziSzCfdYk1FmMidd	2025-03-20 00:00:00	f	\N	/uploads/1742875104328-LAP BEDAH WP SUMBER JAYA FASTINDO 2.pdf	1	1	0	0	100%	0	1	1	0	1	0	1	1	1	Non RTLB
29	011504446631000	2	2023	\N	\N	2000000	150000000	\N	\N	\N	1000000	\N	2025-03-25 04:26:25.342	user_2smZa1llq8GziSzCfdYk1FmMidd	2025-03-20 00:00:00	f	\N	/uploads/1742876785329-LAP BEDAH WP DAMAI SENTOSA COOKING OIL 2.pdf	1	1	0	1	100%	0	1	1	0	1	0	1	1	1	Non RTLB
30	021927975005000	1	2022	\N	\N	\N	494646659	\N	\N	\N	\N	\N	2025-03-25 07:37:02.233	user_2smbHso2UW3p4SBYX3e6SuJFMly	2025-03-20 00:00:00	t	\N	/uploads/1742888222211-Laporan Bedah Profil TIRTA GRAHA NUSANTARA 2022.pdf	1	1	0	0	100%	0	1	1	0	1	0	1	1	1	Non RTLB
31	063554604606000	1	2022	\N	\N	\N	823938800	\N	138866667	\N	\N	\N	2025-03-25 07:45:50.185	user_2smb3nSakuIH32TbOrrGYEFR6S3	2025-03-21 00:00:00	f	\N	/uploads/1742888750171-Laporan Bedah WP an Mintarjo Widya Tjoapdf.pdf	0	1	0	1	100%	0	1	1	0	1	0	1	1	1	Non RTLB
32	316553148618000	1	2023	\N	\N	1537137	143964108	\N	\N	2639317	148068344	\N	2025-03-25 07:49:02.964	user_2smb3nSakuIH32TbOrrGYEFR6S3	2025-03-21 00:00:00	f	\N	/uploads/1742888942958-Laporan Bedah Wajib Pajak PT Delta Anugerah Bahari Nusantarapdf.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
33	703935312606000	1	2022	\N	\N	1277659	651881104	\N	\N	\N	64743927	\N	2025-03-25 08:24:30.053	user_2smZqNTeNZdiMZW4ZapYNi5FyfN	2025-01-16 00:00:00	t	\N	/uploads/1742891070038-LAP BEDAH WP PT MULTI BANGUN INDONESIA 2022.pdf	0	1	0	0	100%	0	1	1	0	0	0	0	1	1	Non RTLB
34	345244644606000	1	2021	\N	\N	\N	893150682	\N	\N	\N	\N	\N	2025-03-25 08:31:26.587	user_2smZqNTeNZdiMZW4ZapYNi5FyfN	2025-01-16 00:00:00	t	\N	/uploads/1742891486571-LAP BEDAH WP OWEN RAHADIYAN 2021.pdf	0	1	0	0	100%	0	1	1	0	0	0	0	1	1	Non RTLB
35	744936618613000	1	2023	5219047	\N	\N	686697531	\N	50113509	\N	64989457	\N	2025-03-25 08:33:12.47	user_2smbNtNMXKn7LTZrHb3JEz8Q2le	2025-03-20 00:00:00	t	\N	/uploads/1742891592451-Kegiatan Bedah Wajib Pajak  PT Berkah Industri Mesin Angkat Tahun Pajak 2023pdf.pdf	0	1	0	1	100%	0	1	1	0	1	1	1	1	1	Non RTLB
36	014972020606000	1	2021	\N	\N	69087240	243197257	\N	1478055	\N	230000	\N	2025-03-25 08:34:56.388	user_2smZqNTeNZdiMZW4ZapYNi5FyfN	2025-03-21 00:00:00	t	\N	/uploads/1742891696361-LAP BEDAH WP PT ATLAS SPA 2021.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
37	011087723611000	\N	2021	2755502	\N	\N	389298275	\N	\N	\N	18971000	\N	2025-03-26 01:59:04.857	user_2smbNtNMXKn7LTZrHb3JEz8Q2le	2025-03-21 00:00:00	t	\N	/uploads/1742954344841-Bedah WP Yay Kas PembangunanSurabaya Tahun 2021pdf.pdf	0	1	0	0	100%	1	1	1	0	1	0	1	1	1	Non RTLB
17	017308065607000	2	2021	30146659	\N	18896806	586284579	\N	283435579	\N	30394448	\N	2025-03-24 07:10:15.591	user_2smbmeLiBYVjOqT0oqnWJDOnGWm	2025-03-20 00:00:00	t	\N	/uploads/1743040848979-bedah wp cemako.pdf	0	1	0	0	100%	1	1	1	0	1	0	0	1	1	Non RTLB
24	021138698614000	1	2022	\N	\N	8697149	538019116	\N	26284914	\N	\N	\N	2025-03-25 01:22:03.938	user_2smbZ5PXEGvubrX47eEEhwhiaI5	2025-02-24 00:00:00	t	\N	/uploads/1743040856507-usul riksus TYMSU 2022.pdf	0	1	0	0	100%	1	1	1	0	0	0	0	1	1	Non RTLB
25	019793231631000	1	2023	17644924	\N	5538846	1148183441	\N	\N	\N	40428998	\N	2025-03-25 01:26:13.78	user_2smbZ5PXEGvubrX47eEEhwhiaI5	2025-03-21 00:00:00	t	\N	/uploads/1743040883335-WWR 2023.pdf	0	1	0	1	100%	0	1	1	0	1	1	0	1	1	Non RTLB
27	015107865631000	1	2023	48073534	\N	\N	472245399	\N	10219284	\N	\N	\N	2025-03-25 01:31:46.151	user_2smbZ5PXEGvubrX47eEEhwhiaI5	2025-03-21 00:00:00	t	\N	/uploads/1743040904555-GAS 2023.pdf	0	1	0	1	100%	0	1	1	0	1	1	0	1	1	Non RTLB
18	313752883604000	2	2022	60206628	\N	30949627	77356335	\N	\N	\N	206872003	\N	2025-03-24 07:16:40.968	user_2smbmeLiBYVjOqT0oqnWJDOnGWm	2025-03-20 00:00:00	t	\N	/uploads/1743041566195-bedah wp sukses.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
38	078692589607000	\N	2021	\N	\N	\N	162175718	\N	400000000	\N	\N	\N	2025-03-26 02:00:51.389	user_2smb9tL93JGktnVu0BveFwzJ36p	2025-03-21 00:00:00	t	\N	/uploads/1742954451374-Laporan Bedah Wajib Pajak atas nama Dermawan Suparsonopdf.pdf	0	1	0	1	100%	0	1	1	0	1	0	1	1	1	Non RTLB
39	312127038614000	\N	2023	30716332	\N	445168416	1000000	\N	10000000	\N	118384288	\N	2025-03-26 02:03:09.745	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T	2025-03-20 00:00:00	t	\N	/uploads/1742954589736-bedah wp trijaya segaran makmur.pdf	1	1	0	0	100%	0	1	1	0	1	0	1	1	1	Non RTLB
40	021698535609000	\N	2023	28745347	\N	388826768	59436216	\N	400000000	\N	807389645	\N	2025-03-26 02:07:15.07	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T	2025-03-21 00:00:00	t	\N	/uploads/1742954835059-bedah wp ubp.pdf	1	1	0	0	100%	1	1	1	0	1	0	1	1	1	Non RTLB
41	014972020606000	\N	2022	\N	\N	73720940	108569024	\N	13631723	\N	\N	\N	2025-03-26 02:09:06.501	user_2smZqNTeNZdiMZW4ZapYNi5FyfN	2025-03-21 00:00:00	f	\N	/uploads/1742954946489-LAP BEDAH WP PT ATLAS SPA 2022.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
42	016932956604000	\N	2023	8786102	\N	\N	1946823512	\N	\N	\N	464202832	\N	2025-03-26 03:21:27.412	user_2smZdMSwo8GLV0mqxsfv1IuJhlS	2025-03-21 00:00:00	t	\N	/uploads/1742959287401-LAPORAN KEGIATAN BEDAH WAJIB PAJAK PT KAYAN JAYA TANJUNG.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
43	015446990631000	\N	2021	11193055	\N	\N	341832991	\N	\N	\N	518747895	\N	2025-03-26 03:35:48.841	user_2smZdMSwo8GLV0mqxsfv1IuJhlS	2025-03-21 00:00:00	t	\N	/uploads/1742960148834-LKB WAJIB PAJAK PT SUBAINDOCAHAYA POLINTRACO.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
44	941544629619000	\N	2022	13675270	\N	41434802	20625000	\N	13234354	\N	30186806	1180000	2025-03-26 03:42:55.497	user_2smavKFCLtHThJWYtqSlhchbd7W	2025-03-20 00:00:00	f	\N	/uploads/1742960575485-LAPORAN KEGIATAN BEDAH WAJIB PAJAKpdf.pdf	0	1	0	0	100%	1	1	1	0	1	0	0	1	1	Non RTLB
45	313942005614000	\N	2022	511250	\N	76480093	216291098	\N	20000000	\N	148920335	\N	2025-03-26 04:26:57.531	user_2smbQbeE63eIw5egPdMsIgrWUck	2025-03-26 00:00:00	t	\N	/uploads/1742963217519-Laporan Kegiatan Bedah Wajib Pajak_2022.pdf	0	1	0	0	100%	1	1	1	0	1	0	1	1	1	Non RTLB
46	313942005614000	\N	2023	\N	\N	18341101	384553967	\N	2639286	\N	114225834	\N	2025-03-26 04:31:40.574	user_2smbQbeE63eIw5egPdMsIgrWUck	2025-03-20 00:00:00	f	\N	/uploads/1742963500560-Laporan Kegiatan Bedah Wajib Pajak_2023.pdf	0	1	0	0	100%	1	1	1	0	1	0	1	1	1	Non RTLB
49	313720831618000	\N	2023	\N	\N	194215885	\N	\N	\N	236096461	5258297	\N	2025-03-26 07:15:06.238	user_2smayyYdLDNM2IpTeaQwyGb3Iw8	2025-03-26 00:00:00	t	\N	/uploads/1742973306230-Laporan Kegiatan Bedah Wajib Pajak 2025 - PT Sentosa Laju Maritime.pdf	0	1	0	0	100%	0	0	1	0	1	0	1	1	1	Non RTLB
51	805935582605000	\N	2022	\N	\N	32755500	175500000	\N	27500000	\N	75648000	\N	2025-03-26 07:25:47.584	user_2smapMhjztr0ymBCpAvYMtdPvnK	2025-03-20 00:00:00	f	\N	/uploads/1742973947573-Lap Bedah WP PT Amaris Tirta Pratama.pdf	0	1	0	0	100%	0	1	1	0	1	1	0	1	1	Non RTLB
47	015726011631000	\N	2024	\N	\N	8686497	\N	\N	\N	\N	335200043	\N	2025-03-26 06:48:05.349	user_2sma8tnJRwwZckhHrrGIF28DQek	2025-03-20 00:00:00	f	\N	/uploads/1742974302417-Laporan Kegiatan Bedah Wajib Pajak a.n. PT. Aneka Kimia Inti.pdf	0	1	0	0	100%	1	1	1	0	1	0	0	1	1	Non RTLB
48	756498010618000	\N	2021	\N	\N	\N	185790072	\N	950119954	\N	53264583	\N	2025-03-26 07:11:40.073	user_2sma8tnJRwwZckhHrrGIF28DQek	2025-03-20 00:00:00	f	\N	/uploads/1742974366397-Laporan Kegiatan Bedah Wajib Pajak an PT Thirtha Inti Pratama.pdf	0	1	0	0	100%	1	1	1	0	1	0	0	1	1	Non RTLB
52	017394156604000	\N	2021	22079092	\N	29383124	127620356	\N	\N	\N	77965377	\N	2025-03-26 07:34:34.525	user_2smbK2DuLxiD1AymLK6jA1JtOsG	2025-03-20 00:00:00	t	\N	/uploads/1742974474508-Laporan Pelaksanaan Kegiatan Bedah Wajib Pajakpdf.pdf	1	1	0	0	100%	0	1	1	0	1	0	1	1	1	Non RTLB
53	315376236614000	\N	2022	\N	\N	30119691	374423539	\N	\N	\N	209049969	\N	2025-03-26 07:38:46.239	user_2smbK2DuLxiD1AymLK6jA1JtOsG	2025-03-20 00:00:00	t	\N	/uploads/1742974726222-Laporan Kegiatan Bedah Wajib Pajakpdf.pdf	0	1	0	0	100%	1	1	1	0	1	0	1	1	1	Non RTLB
54	014800445619000	\N	2023	\N	\N	\N	152750000	\N	\N	\N	85344451	\N	2025-03-26 07:39:26.197	user_2smapMhjztr0ymBCpAvYMtdPvnK	2025-03-20 00:00:00	f	\N	/uploads/1742974766184-LAP BEDAH WP PT HASIL FASTINDO.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
55	060557410618000	\N	2022	\N	\N	\N	97229900	\N	\N	\N	\N	\N	2025-03-26 07:43:47.585	user_2smavKFCLtHThJWYtqSlhchbd7W	2025-03-21 00:00:00	t	\N	/uploads/1742975027579-LAPORAN KEGIATAN BEDAH WAJIB PAJAK atas nama Sugito Winarkopdf.pdf	0	1	0	0	100%	1	1	1	0	1	0	0	1	1	Non RTLB
56	078801065611000	\N	2023	\N	\N	\N	512000000	\N	\N	\N	\N	\N	2025-03-26 07:48:23.034	user_2smayyYdLDNM2IpTeaQwyGb3Iw8	2025-03-21 00:00:00	t	\N	/uploads/1742975303031-Laporan Kegiatan Bedah Wajib Pajak 2025 - Kusuma Hadi Soetemo.pdf	0	1	0	0	100%	0	0	1	0	1	1	0	1	1	Non RTLB
60	026704551611000	\N	2022	271331442	\N	110100309	150000000	\N	\N	\N	110776426	\N	2025-03-27 01:41:11.689	user_2smaBk7vSR3r7bawHbmoBp7pxRO	2025-03-21 00:00:00	t	\N	/uploads/1743039671683-Laporan Kegiatan Bedah Wajib Pajak - PT. LVIORS JAYA SENTOSA 2022.pdf	0	1	0	0	75%	0	1	1	0	1	0	1	1	1	Non RTLB
59	018135251613000	\N	2023	144786000	\N	21158260	751150800	\N	\N	\N	\N	\N	2025-03-26 07:53:43.521	user_2smbUveHvsH8BTJNUGIMAmkJTaN	2025-03-20 00:00:00	t	\N	/uploads/1743040625577-Laporan Bedah WP Panca Pilar Tangguh Tw1 2025.pdf	0	1	0	0	100%	0	1	1	0	1	1	0	1	1	Non RTLB
23	031572886604000	1	2020	\N	\N	\N	4608204000	\N	\N	\N	\N	\N	2025-03-25 01:18:30.781	user_2smbZ5PXEGvubrX47eEEhwhiaI5	2025-02-24 00:00:00	t	\N	/uploads/1743040829949-usul riksus CNUS 2020.pdf	0	1	0	1	75%	0	1	1	0	0	0	1	1	1	Non RTLB
65	014680458609000	\N	2023	\N	\N	\N	\N	\N	570388709	\N	47069881	\N	2025-03-27 02:01:25.414	user_2smb6FNp04ByIe9yV2L3sFaG7L7	2025-03-20 00:00:00	f	\N	/uploads/1743040885405-LAP BEDAH WP RIS PUTRA DELTA.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
66	311539027614000	\N	2023	\N	\N	\N	\N	\N	128623599	\N	444984857	\N	2025-03-27 02:03:17.921	user_2smb6FNp04ByIe9yV2L3sFaG7L7	2025-03-21 00:00:00	f	\N	/uploads/1743040997914-LAP BEDAH WP GENTAYU CAKRA WIBOWO.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
67	020917613631000	\N	2020	463769847	\N	\N	513027103	\N	856271628	\N	1665231038	\N	2025-03-27 02:05:29.029	user_2smb6FNp04ByIe9yV2L3sFaG7L7	2025-01-16 00:00:00	f	\N	/uploads/1743041129018-LAP BEDAH WP CONTINENTAL CARGO CARRIER INDOTRANS.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
64	026704551611000	\N	2023	243612552	\N	207646570	250000000	\N	\N	\N	243601643	\N	2025-03-27 01:46:25.834	user_2smaBk7vSR3r7bawHbmoBp7pxRO	2025-03-21 00:00:00	t	\N	/uploads/1743045616626-Laporan Kegiatan Bedah Wajib Pajak - PT. LVIORS JAYA SENTOSA 2023.pdf	0	1	0	0	75%	0	1	1	0	1	0	1	1	1	Non RTLB
68	016638884604000	\N	2022	18292158	\N	8900529	275443046	\N	\N	\N	125201385	\N	2025-03-27 04:37:22.24	user_2smbpCYyFH3ezSUODUOhhBFVGAj	2025-03-21 00:00:00	t	\N	/uploads/1743050682597-Rajasa Putra.pdf	0	1	0	0	75%	1	1	1	0	1	0	0	1	1	Non RTLB
69	717134100604000	\N	2021	2661001	\N	9575533	336334501	\N	\N	\N	508542160	\N	2025-03-27 04:40:31.35	user_2smbpCYyFH3ezSUODUOhhBFVGAj	2025-03-21 00:00:00	t	\N	/uploads/1743050694946-Raja Beton.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
70	028174639613000	\N	2022	\N	\N	26379644	458654240	\N	\N	\N	414768079	\N	2025-03-27 04:56:13.173	user_2smaLHzr3vUpPpNTrxs5e2FCGzq	2025-03-20 00:00:00	t	\N	/uploads/1743051373163-Laporan Kegiatan Bedah Wajib Pajak an CV Rukun Makmur  2022pdf.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
71	869172072613000	\N	2022	\N	\N	45168200	\N	\N	890131200	\N	46377072	\N	2025-03-27 05:07:33.194	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu	2025-03-21 00:00:00	t	\N	/uploads/1743052053185-laporan bedah WP Depo JP 2022 (1).pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
72	731238697618000	\N	2021	\N	\N	1543800	117963000	\N	\N	\N	\N	\N	2025-03-27 05:09:51.042	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu	2025-03-21 00:00:00	t	\N	/uploads/1743052191037-laporan bedah wp ecolink 2021 (1).pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
73	751397589613000	\N	2022	\N	\N	3778756	285065395	\N	\N	\N	69291177	\N	2025-03-27 05:45:56.213	user_2smaLHzr3vUpPpNTrxs5e2FCGzq	2025-03-20 00:00:00	f	\N	/uploads/1743054356207-Laporan Kegiatan Bedah Wajib Pajak CV Boomax Chemical Works  2022pdf.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
74	097532170614000	\N	2021	\N	\N	\N	300000000	\N	50000000	\N	\N	\N	2025-03-27 06:00:31.782	user_2smaIfODFlzm8YDJfrstldzV5BA	2025-03-20 00:00:00	f	\N	/uploads/1743055231775-Laporan Kegiatan Bedah WP NNS-1.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
76	028172823613000	\N	2022	10000000	\N	10000000	300000000	\N	\N	\N	50000000	\N	2025-03-27 06:22:34.459	user_2smaIfODFlzm8YDJfrstldzV5BA	2025-03-21 00:00:00	t	\N	/uploads/1743056554454-Laporan Kegiatan Bedah WP BTS.pdf	0	1	0	0	100%	0	1	1	1	1	0	1	1	1	RTLB
77	016106734631000	\N	2021	47497165	\N	68497461	6081379510	\N	25408400	\N	69667091	\N	2025-04-08 02:20:29.147	user_2sman5MQQu57XoEHfjHe1ImowKn	2025-03-21 00:00:00	t	\N	/uploads/1744078829131-Laporan Bedah Wajib Pajak Warna Warni Media 2021.pdf	0	1	0	1	100%	0	1	1	0	1	0	1	1	1	Non RTLB
78	318111366613000	\N	2022	\N	\N	5973930	642009280	\N	6042072	\N	246426190	\N	2025-04-08 02:25:45.758	user_2sman5MQQu57XoEHfjHe1ImowKn	2025-03-21 00:00:00	t	\N	/uploads/1744079145750-Laporan Bedah Wajib Pajak Aperindo Prima Mandiri 2022.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
79	042114249606000	\N	2022	\N	\N	\N	599550166	\N	17800200	\N	\N	\N	2025-04-09 01:34:18.773	user_2smaYyAtW4LUhz8zof5cqmquyuT	2025-03-20 00:00:00	t	\N	/uploads/1744162458756-MARIA LINGGIARTI.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
80	315403352609000	\N	2022	\N	\N	\N	276832528	\N	\N	\N	241070611	\N	2025-04-09 01:37:32.49	user_2smaYyAtW4LUhz8zof5cqmquyuT	2025-03-20 00:00:00	t	\N	/uploads/1744162652480-PT KUSUMA TEKNIK PERSADA.pdf	0	1	0	0	100%	0	1	1	0	1	0	1	1	1	Non RTLB
81	014409262613000	\N	2023	1865029	\N	\N	740837769	\N	\N	\N	83904622	\N	2025-04-09 01:40:09.076	user_2smaYyAtW4LUhz8zof5cqmquyuT	2025-03-20 00:00:00	t	\N	/uploads/1744162809063-PT SURYA SEGARA SAFETY MARINE.pdf	0	1	0	0	100%	0	1	1	0	1	0	1	1	1	Non RTLB
86	025864240614000	\N	2021	7546273	\N	74472833	136872120	\N	\N	\N	\N	\N	2025-04-09 04:37:49.747	user_2smaQu2f8bFFd5ZdyG4txyueJ7A	2025-03-20 00:00:00	t	\N	/uploads/1744173469632-bedah wp_greensol indonesia 2021.pdf	0	1	0	0	100%	0	1	1	0	1	0	1	1	1	Non RTLB
87	931405583618000	\N	2021	3000000	\N	496588656	197466829	\N	\N	\N	\N	\N	2025-04-09 04:42:59.816	user_2smaQu2f8bFFd5ZdyG4txyueJ7A	2025-03-20 00:00:00	t	\N	/uploads/1744173779733-bedah wp_segara sakti sejati 2021.pdf	0	1	0	0	100%	0	1	1	0	1	0	1	1	1	Non RTLB
88	011409661631000	\N	2021	90721003	\N	\N	1219545264	\N	12655528	\N	487591800	\N	2025-04-09 07:24:04.49	user_2smbNtNMXKn7LTZrHb3JEz8Q2le	2025-01-16 00:00:00	t	\N	/uploads/1744183444478-Kegiatan Bedah Wajib Pajak PT Tectonia Grandis Tahun Pajak 2021pdf.pdf	0	1	0	0	100%	0	1	1	0	0	1	1	1	1	Non RTLB
89	022089205618000	\N	2023	\N	\N	9246777	672774718	\N	\N	\N	\N	\N	2025-04-09 08:00:55.317	user_2smaTpzecsrBC8bCeslF7ApFR6j	2025-03-20 00:00:00	t	\N	/uploads/1744185655301-LAP BEDAH WP BUANA CAHAYATAMA.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
90	826598484615000	\N	2022	\N	\N	4141597	191418333	\N	275523395	\N	\N	\N	2025-04-09 08:03:21.479	user_2smaTpzecsrBC8bCeslF7ApFR6j	2025-03-20 00:00:00	t	\N	/uploads/1744185801468-LAP BEDAH WP WIJAYA DUTA SEJAHTERA.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
91	028243285631000	\N	2021	\N	\N	5555556	316234644	\N	27777778	\N	\N	\N	2025-04-09 08:32:22.821	user_2smaNyTgjEYShVzC31CcgVW2p9W	2025-03-20 00:00:00	t	\N	/uploads/1744187542796-LAP 10 BEDAH WP KARYA ENERGI INDONESIA.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
92	015997810631000	\N	2021	34431723	\N	3607200	760800700	\N	\N	\N	66978253	\N	2025-04-09 09:25:53.576	user_2smagzuZma6eoLOdXEOAxgzjX7w	2025-03-20 00:00:00	f	\N	/uploads/1744190753569-Laporan Bedah WP ABADIKURNIA CITRARASApdf.pdf	0	1	1	1	100%	0	1	1	1	1	0	1	1	1	Non RTLB
93	060323730606000	\N	2021	\N	\N	\N	961522273	\N	\N	\N	\N	\N	2025-04-09 09:49:30.956	user_2smZoKKCH1wJ39OWYKrlIoxslVI	2025-03-20 00:00:00	f	\N	/uploads/1744192170947-Laporan Kegiatan Bedah Wajib Pajak eddy william katuari 2021.pdf	0	1	1	1	100%	0	1	1	0	1	0	1	1	1	Non RTLB
94	241556711619000	\N	2021	\N	\N	\N	1047746517	\N	3011244	\N	\N	\N	2025-04-10 02:20:47.405	user_2smbgVCwH0IXZPyre0iAyW8EYEd	2025-03-21 00:00:00	t	\N	/uploads/1744251748354-Laporan Bedah WP David Susanto Jahja.pdf	0	1	0	0	100%	0	1	1	0	1	0	1	1	1	Non RTLB
95	752862656619000	\N	2022	150000	\N	3774503	193879531	\N	\N	\N	3564754	\N	2025-04-10 02:25:08.448	user_2smbgVCwH0IXZPyre0iAyW8EYEd	2025-03-20 00:00:00	t	\N	/uploads/1744251908441-Laporan Bedah WP CV Cahaya Global Berjaya.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
96	316736602609000	\N	2023	5927503	\N	1317388	381821772	\N	96495120	\N	99222758	\N	2025-04-10 02:50:44.588	user_2smZfLt4t79qd8RpnHsGxAFWJgq	2025-03-20 00:00:00	t	\N	/uploads/1744253444578-Laporan Kegiatan Bedah Wajib Pajak - PT INDO BISMAR.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
97	012330759615000	\N	2022	\N	\N	10030250	951518106	\N	1048798	\N	88820378	\N	2025-04-10 02:54:08.75	user_2smZfLt4t79qd8RpnHsGxAFWJgq	2025-03-21 00:00:00	f	\N	/uploads/1744253648737-Laporan Kegiatan Bedah Wajib Pajak - PT Utomo Deck Metal Works.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
98	738003839611000	\N	2021	\N	\N	394548	16660646	\N	28872274	\N	5000000	\N	2025-04-10 03:24:59.478	user_2smZm1vDtfnfDSnbbcMX0bgfIZP	2025-03-21 00:00:00	f	\N	/uploads/1744255499467-Laporan Kegiatan Bedah Wajib Pajak - PT Akbar Maulana Abadi (1).pdf	0	1	0	0	100%	1	1	1	0	1	0	0	1	1	Non RTLB
99	025996125611000	\N	2022	\N	\N	3779240	69080800	\N	2000000	\N	144911889	\N	2025-04-10 03:28:56.115	user_2smZm1vDtfnfDSnbbcMX0bgfIZP	2025-03-20 00:00:00	f	\N	/uploads/1744255736100-Laporan Kegiatan Bedah Wajib Pajak - PT Akbar Maulana Abadi (1).pdf	0	1	0	0	100%	1	1	1	0	1	0	1	1	1	Non RTLB
100	040127599607000	\N	2021	\N	\N	\N	\N	\N	\N	\N	\N	\N	2025-04-10 03:40:31.379	user_2smZjxXbKtwSh3BEEUzt58Nggn2	2025-03-21 00:00:00	f	\N	/uploads/1744256431369-LAP BEDAH WP WINARTO KUNCORO 2021.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
101	040127599607000	\N	2022	\N	\N	\N	\N	\N	\N	\N	\N	\N	2025-04-10 03:46:12.182	user_2smZjxXbKtwSh3BEEUzt58Nggn2	2025-03-21 00:00:00	f	\N	/uploads/1744256772173-LAP BEDAH WP WINARTO KUNCORO 2022.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
102	041615006619000	\N	2021	\N	\N	\N	222449014	\N	\N	\N	\N	\N	2025-04-10 04:16:04.605	user_2smZoKKCH1wJ39OWYKrlIoxslVI	2025-03-20 00:00:00	f	\N	/uploads/1744258564594-Laporan Kegiatan Bedah Wajib Pajak Agus Wieseno 2021.pdf	0	1	0	1	100%	0	1	1	0	1	0	1	1	1	Non RTLB
103	014973234618000	\N	2022	\N	\N	2000000000	\N	\N	\N	\N	\N	\N	2025-04-10 07:00:44.383	user_2smagzuZma6eoLOdXEOAxgzjX7w	2025-03-20 00:00:00	t	\N	/uploads/1744268444375-freight bedah'.pdf	0	1	0	0	100%	0	1	1	0	1	0	0	1	1	Non RTLB
\.


--
-- Data for Name: DatabaseWajibPajak; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."DatabaseWajibPajak" (id, nama, alamat, "nomorHp", "bentukHukum", jenis, kecamatan, kelurahan, klu, kota, nik, propinsi, status, "tanggalDaftar", "tanggalPKP", "tanggalPencabutanPKP", "nipId") FROM stdin;
011433737631000	SS. U T A M A	JL TANJUNGSARI NO 12	08165430654	PT	BADAN	SUKOMANUNGGAL	TANJUNGSARI	15201	KOTA SURABAYA		JAWA TIMUR	Normal	1982-12-01 00:00:00	1985-03-01 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
022079735641000	HANEDA SUKSES MANDIRI	JL RUNGKUT INDUSTRI IV NO 28 RT 004 RW 005	081336779187	PT	BADAN	GUNUNG ANYAR	RUNGKUT TENGAH	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2007-03-27 00:00:00	2007-03-27 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
814829842619000	ANUGERAH CITRA CENDANA	JL MANYAR KERTOARJO I/35	088996038636	PT	BADAN	MULYOREJO	MANYAR SABRANGAN	13921	KOTA SURABAYA		JAWA TIMUR	Normal	2017-03-15 00:00:00	2019-12-10 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
014694210724001	JATIM WATKORAYA							47592				Normal	2015-01-21 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
014694210741001	JATIM WATKORAYA							46491				Normal	2022-04-26 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
014694210731001	JATIM WATKORAYA							46491				Normal	2014-02-18 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
022567143618002	MUTIARA TIMUR	JL RAYA KUPANG INDAH NO 15	081231654278	PT	BADAN	DUKUH PAKIS	DUKUH KUPANG	56101	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2014-11-27 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
014694210804002	JATIM WATKORAYA							46491				Normal	2007-08-30 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
014694210805001	JATIM WATKORAYA							46491				Normal	1999-08-09 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
014540199631000	BUMI MENARA INTERNUSA	JL MARGOMULYO NO 4-E	081517516390	PT	BADAN	TANDES	TANDES	10293	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
033432576606000	TRITYA MANFAAT SESAMA	JL BARATAJAYA BLOK A3 NO 59 RT 004 RW 007	62818318780	CV	BADAN	GUBENG	BARATAJAYA	86104	KOTA SURABAYA		JAWA TIMUR	Normal	2013-12-18 00:00:00	2017-01-11 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
597974278609000	RONNY IRAWAN PRIJADI	MARGOREJO INDAH BLOK A NO 605-608 RT 001 RW 008	082245558765		OP	WONOCOLO	MARGOREJO	Z5000	KOTA SURABAYA	3,57813E+15	JAWA TIMUR	Normal	2008-12-15 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
017394156604000	MITRA USAHA PANDU ARTHA	PATTIMURA PLAZA SEGI 8 BLOK D NO 802 RT 000 RW 000	088217284184	PT	BADAN	SUKOMANUNGGAL	SONOKWIJENAN		KOTA SURABAYA		JAWA TIMUR	Normal	2000-01-04 00:00:00	2000-12-18 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
022100291616000	IMMANUEL SURABAYA	JL KAPASAN KIDUL III NO 27 RT 003 RW 006	081331977788	CV	BADAN	SIMOKERTO	SIMOKERTO	47112	KOTA SURABAYA		JAWA TIMUR	PL/DE	2010-08-18 00:00:00	\N	2022-09-30 00:00:00	user_2smbK2DuLxiD1AymLK6jA1JtOsG
022066450613000	SURYA INDO PRATAMA	JL  KARET NO 67	087843981708	PT	BADAN	PABEAN CANTIAN	BONGKARAN	46421	KOTA SURABAYA		JAWA TIMUR	Normal	2004-02-20 00:00:00	2005-02-21 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
030823694604000	MITRA SETIA SEJAHTERA	RUKO PLAZA SEGI 8 KAV D-827	081333331559	CV	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2011-02-07 00:00:00	2011-02-14 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
014694210901001	JATIM WATKORAYA							46491				Normal	2007-07-02 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
014694210901002	JATIM WATKORAYA							47592				Normal	2010-08-06 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
014694210901003	JATIM WATKORAYA							47592				Non Efektif	2011-03-09 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
014694210903001	JATIM WATKORAYA							46491				Normal	1997-07-01 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
015353840531001	NIAGATAMA RAHARJA							46339				Normal	2012-10-08 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
015353840532001	NIAGATAMA RAHARJA							46339				Normal	2002-01-17 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
015353840525001	NIAGATAMA RAHARJA							46900				Normal	2012-10-09 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
015353840644001	NIAGATAMA RAHARJA							46447				Normal	2007-12-15 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
014694210901004	JATIM WATKORAYA							46491				Normal	2022-04-26 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
015353840608002	NIAGATAMA RAHARJA							46447				Normal	2019-04-30 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
015353840608001	NIAGATAMA RAHARJA							47599				Normal	2015-03-30 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
015925910655001	PERWIRAMULTI JAYA KENCANA							46641				Normal	2023-06-19 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
015925910601001	PERWIRAMULTI JAYA KENCANA							46641				Non Efektif	2013-09-16 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
060564549077001	SINGGIH GUNAWAN <DE`EXCELSO>							96990				PL/DE	2007-03-15 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
016106999728001	ASIAPUTRA CEMERLANG							77393				Normal	2016-05-16 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
020917811802001	PANCA MERAK SAMUDERA							50111				Normal	2009-09-03 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
020921987324001	PELAYARAN HUB MARITIM INDONESIA							52291				Non Efektif	2008-10-28 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
315756536613000	PANCA JAYA GEMILANG	JL HUSIN II NO 8 RT 003 RW 005	081235631584	CV	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	47791	KOTA SURABAYA		JAWA TIMUR	Normal	2012-08-09 00:00:00	2012-10-24 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
020917811734001	PANCA MERAK SAMUDERA							50131				PL/DE	2021-03-24 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
020921987417001	PELAYARAN HUB MARITIM INDONESIA							50133				Normal	2021-09-18 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
020921987504001	PELAYARAN HUB MARITIM INDONESIA							52291				PL/DE	2006-04-03 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
020921987721001	PELAYARAN HUB MARITIM INDONESIA							52291				Non Efektif	2011-02-22 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
020921987731001	PELAYARAN HUB MARITIM INDONESIA							50133				Non Efektif	2017-12-21 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
020921987741001	PELAYARAN HUB MARITIM INDONESIA							50133				Normal	2024-11-14 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
020921987734001	PELAYARAN HUB MARITIM INDONESIA							50133				Normal	2023-11-29 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
932630189624001	SINAR ANUGERAH NIAGA							47112				Normal	2019-11-20 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
020921987833001	PELAYARAN HUB MARITIM INDONESIA							50133				Normal	2023-02-27 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
020921987822001	PELAYARAN HUB MARITIM INDONESIA							50133				Non Efektif	2016-09-20 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
020921987811001	PELAYARAN HUB MARITIM INDONESIA							50133				Non Efektif	2021-11-03 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
023772023622001	CAHAYAUTAMA							81210				PL/DE	2012-04-02 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
028257905215001	WILSON INDOTOBACCO							12011				PL/DE	2013-08-13 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
028172237724001	PRIMATAMA ENERGI NUSANTARA							49431				Non Efektif	2021-05-05 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
030464937648001	BALIWONG INDONESIA							78101				Normal	2019-04-15 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
316736602656001	INDO BISMAR							46523				Non Efektif	2017-12-20 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
936249663606001	TAMAN TIMUR REGENSI	JL KERTAJAYA INDAH REGENCY BLOK A NO 7	082131778857	PT	BADAN	SUKOLILO	GEBANG PUTIH	68200	KOTA SURABAYA		JAWA TIMUR	Normal	2019-12-17 00:00:00	\N	2021-05-24 00:00:00	user_2smarUb8cHYvdzDtY5MUO7mYyen
734215957604000	TIMUR TERANG SUKSES	KOMPLEK PERGUDANGAN BUMI MASPION BLOK D NO 5-6	082337163901	PT	BADAN	BENOWO	ROMOKALISARI	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2015-07-08 00:00:00	2015-10-26 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
014690788631000	AURA SINAR BARU	RUKAN GRAND KETINTANG, JL. KETINTANG BARU I NO. 14-E	0318415934	PT	BADAN	GAYUNGAN	KETINTANG	71101	KOTA SURABAYA		JAWA TIMUR	Normal	1988-10-13 00:00:00	1989-04-01 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
735691339619000	MARMER GALERI INDONESIA	JL KENJERAN NO 527 RT 006 RW 010	081927988999	PT	BADAN	TAMBAKSARI	GADING	46638	KOTA SURABAYA		JAWA TIMUR	Normal	2015-08-03 00:00:00	2016-08-09 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
078799715611000	INDRA GUNAWAN WONOWIDJOJO	JL PANGLIMA SUDIRMAN NO 79-85 RT 001 RW 004	08113535505		OP	GENTENG	EMBONG KALIASIN	Z5000	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	2008-01-18 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
041726159607000	MOCHAMAD CHOLIS	JL DINOYO LOR BLOK V NO 21 RT 001 RW 003	081216005081		OP	TEGALSARI	KEPUTRAN	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	2008-11-07 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
210321501619000	MAHAGHORA	JL KENJERAN NO 546	087852285226	PT	BADAN	MULYOREJO	KALIJUDAN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2010-06-01 00:00:00	2011-06-22 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
804246890614000	ANUGRAH TEKNIK SENTOSA	JL PERTOKOAN PACIFIK MEGAH JL. DUPAK 17 NO B-10	62315476229	PT	BADAN	BUBUTAN	GUNDIH	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2016-11-01 00:00:00	2017-02-14 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
011082021503001	MERATUS LINE							50131				PL/DE	2013-06-25 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
022084644618000	LUMINTAS PUSPINDO	GEDUNG SOHO SKYLOFT LANTAI 25 UNIT 2528 JL MAYJEND SUNGKONO NO 89 RT 000 RW 000	0315670016	PT	BADAN	DUKUH PAKIS	GUNUNG SARI	17091	KOTA SURABAYA		JAWA TIMUR	Normal	2002-10-30 00:00:00	2021-05-24 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
012320511605000	WIJAYA RAGAM PRIMA PERKASA	JL RAJAWALI NO 84	0313523693	PT	BADAN	KREMBANGAN	KEMAYORAN	46652	KOTA SURABAYA		JAWA TIMUR	Normal	1986-02-06 00:00:00	1985-06-05 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
011082021923001	MERATUS LINE							50131				Normal	2018-04-18 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
015268816831001	PELAYARAN SAMASAGUNG TUNGGALPERKASA							50131				Normal	1995-10-06 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
022064810613001	AGASAM	TAMAN SAMPOERNA 6 RT.008 RW.002, KREMBANGAN UTARA	031-8431699	PT	BADAN	PABEAN CANTIAN	KREMBANGAN UTARA	47781	KOTA SURABAYA		JAWA TIMUR	PL/DE	2009-10-23 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
315325100612000	INDO JAYA TRITUNGGAL	KOMPLEK PERGUDANGAN OSOWILANGUN PERMAI BLOK B NO 25 RT 002 RW 004	081216221291	CV	BADAN	BENOWO	TAMBAK OSO WILANGUN	46638	KOTA SURABAYA		JAWA TIMUR	Normal	2012-05-22 00:00:00	2012-07-27 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
317374619223001	SARANA BAHTERA PERKASA							45302				Normal	2022-08-16 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
078668795606000	ETTY CAECILIA FITRIANI,ATMODIPURO	JL BILITON 32 RT 003 RW 007	62817325158		OP	GUBENG	GUBENG	Z5000	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	2003-06-12 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
014826895609000	BANGUN CITRA PERKASA	SIWALANKERTO PERMAI I BLOK D NO 10 RT 005 RW 006	081231348034	PT	BADAN	WONOCOLO	SIWALANKERTO	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2002-07-11 00:00:00	2003-04-16 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
033176165604000	INDO KONVERSI ENERGI	MUTIARA MARGOMULYO PERMAI BLOK C-3 NO.05	6281331169566	PT	BADAN	TANDES	TANDES	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2013-09-10 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
719571838606000	PESONA ALAM MUTIARA	JALAN KERTAJAYA INDAH TIMUR RUKO MEGAH GALAXY BLOK 14B NO 9	6281917319525	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2015-01-15 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
014815328614000	PUTRAGUNA JAYAMULIA	JL KALIANAK NO 55-EB RT 000 RW 000	082143146134	PT	BADAN	ASEM ROWO	GENTING KALIANAK	52293	KOTA SURABAYA		JAWA TIMUR	Normal	1989-06-01 00:00:00	1998-10-22 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
021138250614000	CENTRAL DIESEL	JL PENGHELA NO 14A-16 , ALUN-ALUN CONTONG	082121206212	PT	BADAN	BUBUTAN	ALUN-ALUN CONTONG	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2003-10-14 00:00:00	2003-10-23 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
020098414618000	SEA HARVEST	JL HR MUHAMMAD NO 269 RT 003 RW 001	082233000391	CV	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	56101	KOTA SURABAYA		JAWA TIMUR	Normal	2002-01-10 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
061383220619000	J.E.SENDJAJA.IR.MBA.	PERUMAHAN PAKUWON CITY VILLA ROYAL BLOK L. 2 NO 1-3 RT 004 RW 003	087851637188		OP	MULYOREJO	KEJAWAAN PUTIH TAMBAK	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	1985-03-05 00:00:00	\N	\N	\N
028174860613000	MAHKOTA ABADI PRIMA JAYA	JL PERAK TIMUR BLOK C-10 NO 512 RT 002 RW 003	087854213998	PT	BADAN			46209				Normal	2010-07-30 00:00:00	2014-03-07 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
727896193607000	ANUGRAH NUSANTARA PERSADA	JL. BOGOWONTO NO 15 RT 006 RW 014	6282230800297	PT	BADAN	TEGALSARI	DR. SOETOMO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2015-04-20 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
026094276505001	PERMATA ANUGERAH YALAPERSADA	JL. NYI AGENG SERANGLANTAI II NO 07 RT 003 RW 004, KORIPAN, KAB. SEMARANG				SUSUKAN	KORIPAN	41019	KAB. SEMARANG			Normal	2023-01-16 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
012330759615000	UTOMO DECK METAL WORKS	JL RUNGKUT INDUSTRI III NO 21	087851612492	PT	BADAN	TENGGILIS MEJOYO	KUTISARI	25112	KOTA SURABAYA		JAWA TIMUR	Normal	1985-02-08 00:00:00	1985-04-25 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
014540199039001	BUMI MENARA INTERNUSA							10299				Normal	2017-04-03 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
210531950613000	GRANIT MARMER ONIK	JL BUNGURAN NO 23-25A	6281252990627	PT	BADAN	PABEAN CANTIAN	BONGKARAN	47524	KOTA SURABAYA		JAWA TIMUR	Normal	2010-03-24 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
022064810036001	AGASAM							47781				Non Efektif	2006-12-11 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
017394156642001	MITRA USAHA PANDU ARTHA							47797				Normal	2022-07-15 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
022064810307001	AGASAM							47781				PL/DE	2007-11-27 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
316736602609000	INDO BISMAR	JL BENDUL MERISI SELATAN AIRDAS NO 59-61	08113541478	PT	BADAN	WONOCOLO	BENDUL MERISI	46511	KOTA SURABAYA		JAWA TIMUR	Normal	2013-01-25 00:00:00	2013-11-28 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
028257905624001	WILSON INDOTOBACCO							12011				Normal	2018-03-22 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
831019914601001	BELANJAATK.CO.ID							46421				Normal	2020-05-08 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
803504190901001	SUKSES INDAH METALINDO							47521				Normal	2022-09-05 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
022570931607000	UTAMA JAYA TEKNIK	JL PRAPANCA NO 14A RT 009 RW 004	0895352172787	CV	BADAN	WONOKROMO	DARMO	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2006-07-18 00:00:00	2008-11-26 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
014538730613001	EKA MATRA TANI	JL. RAJAWALI NO.84 (GEDUNG YOSINDO LANTAI 5) RT.006 RW.001, PERAK TIMUR	628113009011	PT	BADAN			46900				Normal	2003-03-26 00:00:00	\N	2021-05-24 00:00:00	user_2smb3nSakuIH32TbOrrGYEFR6S3
024429284609000	ARENA PRIMA INTERNATIONAL	JL BUNG TOMO NO 8 KAV.20	087751325505	PT	BADAN	WONOKROMO	NGAGEL	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2005-04-29 00:00:00	2005-07-19 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
014661573614000	JATMIKO CIPTA KARYA	JL RADEN SALEH NO 32-32I	085645015377	PT	BADAN	BUBUTAN	BUBUTAN	46491	KOTA SURABAYA		JAWA TIMUR	Normal	1990-01-08 00:00:00	1990-01-08 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
660418864615000	RICHARD HALIM	JL RUNGKUT TENGAH ZAMHURI NO 29-31 RT 001 RW 001	0895330374777		OP	GUNUNG ANYAR	RUNGKUT TENGAH	Z5000	KOTA SURABAYA	3,57825E+15	JAWA TIMUR	Normal	2014-01-06 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
014538730613000	EKA MATRA TANI	JL RAJAWALI NO 84 RT 006 RW 001	08113337868	PT	BADAN			46652				Normal	2008-01-21 00:00:00	2021-05-24 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
028250207604000	EIKON TECHNOLOGY	JL SIMPANG DARMO PERMAI UTARA NO 33A	628113489773	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	62021	KOTA SURABAYA		JAWA TIMUR	Normal	2008-11-26 00:00:00	2009-07-15 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
011082021942001	MERATUS LINE	DESA FALABISAHAYA RT 000 RW 000, FALABISAHAYA, KAB. KEPULAUAN SULA				MANGOLI UTARA	FALABISAHAYA	50131	KAB. KEPULAUAN SULA			Normal	2023-11-08 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
017927336606000	MULTI KARSA INTI USAHA	RUKO PUNCAK CBD UNIT 8C-STDTOLL, JL. KERAMAT NO 1	6281306306	PT	BADAN	WIYUNG	JAJAR TUNGGAL	46100	KOTA SURABAYA		JAWA TIMUR	Normal	1997-08-07 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
011082021722001	MERATUS LINE							50131				Normal	1998-08-26 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
316907104614000	MITRA TANGKAS PRATAMA	KAWASAN OSOWILANGUN BUSINESS PARK JL TAMBAK OSOWILANGUN NO 5 RT 002 RW 004	081382161729	PT	BADAN	BENOWO	TAMBAK OSO WILANGUN	52109	KOTA SURABAYA		JAWA TIMUR	Normal	2013-02-14 00:00:00	2019-01-17 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
011082021941001	MERATUS LINE							50131				Normal	1990-11-26 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
018132860023001	PELAYARAN MANA LAGI							50131				Normal	2018-04-05 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
826777286611000	BLUE OCEAN HEART	GEDUNG SINARMAS LAND PLAZA LANTAI 9 NO 910-915,  JALAN PEMUDA NO 60-70 RT 003 RW 001	0315457453	PT	BADAN	GENTENG	EMBONG KALIASIN	46523	KOTA SURABAYA		JAWA TIMUR	Normal	2017-08-25 00:00:00	2018-05-25 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
023770951222001	KOKEK							70203				Non Efektif	2013-08-27 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
078552783632002	WILAYAH PENGELOLAAN PERIKANAN NEGARA REPUBLIK INDONESIA 718							03111				PL/DE	2023-12-31 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
083286773609000	DONO PURWOKO,IR	TAMAN GAYUNGSARI TIMUR BLOK MGP NO 11 RT 003 RW 006	0811265055		OP	GAYUNGAN	MENANGGAL	Z5000	KOTA SURABAYA	3,57822E+15	JAWA TIMUR	Normal	2009-01-20 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
011089620631000	ARNOLDUS	JL DIPONEGORO NO 51	62315677562	YAY	BADAN	WONOKROMO	DARMO	86103	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
704721430043000	MITRA BAHARI LOGISTINDO	JL ALON-ALON PRIOK NO 27 RT 000 RW 000	082331528592	PT	BADAN	KREMBANGAN	PERAK BARAT	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2014-06-19 00:00:00	\N	2022-12-06 00:00:00	user_2smaNyTgjEYShVzC31CcgVW2p9W
705851731606000	ALAM NUANSA INDAH	JL DHARMAHUSADA INDAH BARAT BLOK 03 NO 66	081238026791	PT	BADAN	GUBENG	MOJO	68200	KOTA SURABAYA		JAWA TIMUR	Normal	2014-07-04 00:00:00	2018-09-12 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
040244709614001	OEI, ROBBY WIJAYA	JL KRAMAT GANTUNG NO 105 RT 004 RW 005	083857217776		OP	BUBUTAN	ALUN-ALUN CONTONG	46599	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	2013-10-24 00:00:00	\N	2021-05-24 00:00:00	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
723369518606000	CAHAYA MITRA MEDIKA SEJAHTERA	JALAN DHARMAHUSADA INDAH BARAT 3 NO 66, MOJO NO 66	087851315321	PT	BADAN	GUBENG	MOJO	86103	KOTA SURABAYA		JAWA TIMUR	Normal	2015-03-04 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
021137401619000	KREASI LESTARI ABADI	JL MANYAR KERTOARJO 50	081332033930	PT	BADAN	MULYOREJO	MANYAR SABRANGAN	46339	KOTA SURABAYA		JAWA TIMUR	Normal	2010-10-08 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
267067221618000	RICHARD HARTONO TEDJAKUSUMA	BINTANG GRAHA FAMILI XI BLOK O NO 156A RT 003 RW 011	08123594925		OP	WIYUNG	BABATAN	Z5000	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	2009-12-23 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
019417799607000	SOWOHI KENTITI JAYA	JL PASAR KEMBANG NO 23 RT 003 RW 002	081231145148	PT	BADAN	TEGALSARI	WONOREJO	50133	KOTA SURABAYA		JAWA TIMUR	Normal	2000-08-15 00:00:00	2008-12-09 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
020921987605000	PELAYARAN HUB MARITIM INDONESIA	JL IKAN MUNGSING VIII NO 96	0313281177	PT	BADAN	KREMBANGAN	PERAK BARAT	50133	KOTA SURABAYA		JAWA TIMUR	Normal	2010-05-20 00:00:00	2010-05-20 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
026332379605000	SRIMURNI SURABAYA	JL RAJAWALI NO 53-A RT 001 RW 015	082234899891	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	46620	KOTA SURABAYA		JAWA TIMUR	Normal	2009-10-05 00:00:00	2009-10-07 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
030823694503001	MITRA SETIA SEJAHTERA	KAWASAN INDUSTRI CANDI BLOK 27 NO 22 RT 000 RW 000, BAMBANKEREP, KOTA SEMARANG				NGALIYAN	BAMBANKEREP	46641	KOTA SEMARANG			Normal	2024-01-25 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
023555733619000	BORNEO SAMUDRA PERKASA	JL PANTAI MENTARI B 3	62313352328	PT	BADAN	BULAK	KENJERAN	50133	KOTA SURABAYA		JAWA TIMUR	Normal	2005-01-05 00:00:00	2009-06-30 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
014540199654002	BUMI MENARA INTERNUSA							10299				Normal	2007-07-30 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
016106866631000	YEKAPE SURABAYA	JL WIJAYA KUSUMA NO 36	087759460704	PT	BADAN	GENTENG	KETABANG	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
018230698815001	SUMBER MULTI REJEKI							77321				Non Efektif	2016-01-15 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
018347708509001	ANUGRAH EKSTRAVISI RAYA							47521				Normal	2024-03-01 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
021026679618000	STANDAR BETON INDONESIA	JL DARMO PERMAI SELATAN XVI NO 18	0818438008	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	23953	KOTA SURABAYA		JAWA TIMUR	Normal	2003-05-05 00:00:00	2003-05-13 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
019759513625001	WANA INDO RAYA							16101				Non Efektif	2014-07-16 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
030464937655001	BALIWONG INDONESIA							78101				Normal	2020-11-27 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
805719812604000	LUMBANG JAYA MAKMUR	JL RAYA SUKOMANUNGGAL JAYA NO 38 RT 002 RW 003	08123014049	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	47611	KOTA SURABAYA		JAWA TIMUR	Normal	2016-11-18 00:00:00	2016-12-05 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
762206738609000	SARANA ANUGERAH SEJAHTERA	JL JEMURSARI SELATAN IV NO 2D RT 001 RW 008	082335512521	PT	BADAN	WONOCOLO	JEMUR WONOSARI	46631	KOTA SURABAYA		JAWA TIMUR	Normal	2016-05-27 00:00:00	2016-08-09 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
839375144604000	OMCO JAYA PERKASA	KALIANAK MADYA IV NO 30 RT 004 RW 012	6285100820396	CV	BADAN	ASEM ROWO	ASEM ROWO	46631	KOTA SURABAYA		JAWA TIMUR	Normal	2018-02-01 00:00:00	2018-07-25 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
835243098606000	CAHAYA DUTA MAKMUR	JALAN NGAGEL JAYA SELATAN KOMP RMI BLOK B NO 19	6282233333618	PT	BADAN	GUBENG	BARATAJAYA	47793	KOTA SURABAYA		JAWA TIMUR	Normal	2017-12-18 00:00:00	2018-04-19 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
021137245604001	PERMATA ANUGRAH UTAMA	MARGOMULYO PERMAI P/23 B, BUNTARAN	0811322033	CV	BADAN	TANDES	MANUKAN WETAN	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2005-12-14 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
022072854613000	PELINDO DAYA SEJAHTERA	JL PERAK TIMUR NO 620 RT 002 RW 003	085746589616	PT	BADAN			78101				Normal	2008-03-14 00:00:00	2009-02-18 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
022574438607000	SURYA CITRA SAMUDRA	JL KEPUTRAN NO 27 RT 012 RW 001	081333862222	PT	BADAN	TEGALSARI	KEPUTRAN	46636	KOTA SURABAYA		JAWA TIMUR	Normal	2009-04-22 00:00:00	2009-05-20 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
023770951615000	KOKEK	JL PRAPEN INDAH BLOK J NO 12-A RT 005 RW 002	62318490807	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	69201	KOTA SURABAYA		JAWA TIMUR	Normal	2008-04-01 00:00:00	2013-07-22 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
011082021701001	MERATUS LINE	JL TABRANI AHMAD GG RUMPUT PERMAI NO 89 B RT 002 RW 022, KOTA PONTIANAK				PONTIANAK BARAT	SUNGAI JAWI DALAM	50131	KOTA PONTIANAK			Normal	2021-06-23 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
011082021224001	MERATUS LINE							50131				Normal	2022-04-05 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
829173517611000	FABRICSTORY INDONESIA	SIMPANG POJOK NO 15-17	081938685735	CV	BADAN	GENTENG	EMBONG KALIASIN	46422	KOTA SURABAYA		JAWA TIMUR	Normal	2017-09-29 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
011082021823001	MERATUS LINE							50131				Normal	2012-11-21 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
015265515642001	ADYABUANA PERSADA							23929				Normal	2002-03-11 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
015268816723001	SAMASAGUNG TUNGGAL PERKASA							50111				PL/DE	2002-08-22 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
017185059618000	HARAPAN MULIA HOKIWA	LIDAH HARAPAN TIMUR, PERUM LEMBAH HARAPAN NO 9	08113238702	PT	BADAN	LAKARSANTRI	LIDAH WETAN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2010-04-27 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
026094276609000	PERMATA ANUGERAH YALAPERSADA	JL GAYUNGSARI BARAT LANTAI 1 NO 91	081331782900	PT	BADAN	GAYUNGAN	GAYUNGAN	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-03 00:00:00	2009-11-05 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
015733348071000	ASSA LAND	JL BASUKI RACHMAD NO 16-18 RT 001 RW 011	087807031985	PT	BADAN	TEGALSARI	KEDUNGDORO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	1992-04-28 00:00:00	1992-04-28 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
021761275619000	SUMICO	JL NAMBANGAN 136	08123576886	CV	BADAN	KENJERAN	TANAH KALI KEDINDING	46339	KOTA SURABAYA		JAWA TIMUR	Normal	2003-05-01 00:00:00	2003-05-07 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
011091576631000	INTI DUTA LESTARI PLASINDO	JL RUNGKUT INDUSTRI BLOK 3 NO 29	08883182008	PT	BADAN	GUNUNG ANYAR	RUNGKUT MENANGGAL	22220	KOTA SURABAYA		JAWA TIMUR	Normal	1982-11-05 00:00:00	1985-01-26 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
317831394618000	ASTA KRIDA RUMENTANG	JL MENGANTI BABATAN 11 KAV 12 NO 12	623199423946	PT	BADAN	WIYUNG	BABATAN	78101	KOTA SURABAYA		JAWA TIMUR	Normal	2013-06-14 00:00:00	2013-07-23 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
028243285631000	KARYA ENERGI INDONESIA	JL SEMARANG 104 A-23	5458550	PT	BADAN	BUBUTAN	BUBUTAN	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2008-07-01 00:00:00	2008-09-03 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
912065638611000	JAYA SUKSES SELALU	BUMI MANDIRI TOWER 2 LEVEL 12, JL. PANGLIMA SUDIRMAN NO 66-68	083857661662	CV	BADAN	GENTENG	EMBONG KALIASIN	46201	KOTA SURABAYA		JAWA TIMUR	Normal	2019-04-15 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
028172823613000	BUANA TUNAS SEGARA SUBUR	JL PERAK TIMUR BLOK D-1 NO 512 RT 002 RW 003	0818217187	PT	BADAN			46209				Normal	2008-12-09 00:00:00	2008-12-23 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
032382848615000	RUKINA SUKSES ABADI	JL RUNGKUT MEJOYO UTARA X BLOK AA NO 17A	6281336473157	PT	BADAN	RUNGKUT	KALIRUNGKUT	42914	KOTA SURABAYA		JAWA TIMUR	Normal	2013-07-15 00:00:00	2013-11-20 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
315967398613000	GRACIA INTI UTAMA	KOMPLEK RUKO BUNGURAN NO 63 Q-1	081259538291	CV	BADAN	PABEAN CANTIAN	BONGKARAN	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2012-09-27 00:00:00	2012-10-18 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
021143854609001	SURYA SEJAHTERA	JL GUNUNG SARI NO 1	082140787186	CV	BADAN	WONOKROMO	SAWUNGGALING	45401	KOTA SURABAYA		JAWA TIMUR	Normal	2009-01-12 00:00:00	\N	2019-07-19 00:00:00	user_2smaIfODFlzm8YDJfrstldzV5BA
250712395619000	LAUW SYLVIA LEONARDI	VILLA BUKIT REGENCY 3 BLOK PE I NO 35 RT 003 RW 016	082231138055		OP	SAMBIKEREP	LONTAR	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2009-01-28 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
014661581613000	PULAU INDAH DIRGANTARA JAYA	JL KARET NO 4 RT 001 RW 001	62313533227	PT	BADAN	PABEAN CANTIAN	BONGKARAN	52291	KOTA SURABAYA		JAWA TIMUR	Normal	1990-01-08 00:00:00	1990-01-08 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
040244709604000	OEI, ROBBY WIJAYA	JL RAYA SATELIT UTARA BLOK BLOK CN NO 4 RT 006 RW 004	08113556588		OP	SUKOMANUNGGAL	TANJUNGSARI	47650	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	1983-12-04 00:00:00	2021-05-24 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
022567143609002	MUTIARA TIMUR	JL ADITYAWARMAN SUTOS BLOK P 35B-36 NO 55 RT 005 RW 011	031-91081278	PT	BADAN	WONOKROMO	SAWUNGGALING	47192	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2011-01-03 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
020919791605000	SINAR PERMATA ABADI	JL KALISOSOK KIDUL NO 4 RT 000 RW 000	0895339212014	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2003-09-16 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
014540199426001	BUMI MENARA INTERNUSA							10293				Normal	2014-09-26 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
021761275411001	SUMICO							47753				Normal	2005-02-24 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
017060922914001	PESONA GRAHA WISATA ALAM							55120				Normal	1996-12-18 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
022064810086001	AGASAM							47781				PL/DE	2006-12-12 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
030018162043001	LOGAM MAS INDAH							47521				Non Efektif	2021-09-30 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
316736602532001	INDO BISMAR							77311				Non Efektif	2017-12-15 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
017158783613000	BINTANGKALIMAS PERSADA	JL TELUK LAMPUNG NO 2 RT 001 RW 001	081231521488	PT	BADAN			77100				Normal	1995-02-17 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
032086373606000	MULTIUTAMA DISPOSINDO JAYA	JL KAPASARI NO 119 RT 112 RW 002	081233575500	PT	BADAN	SIMOKERTO	KAPASAN	47725	KOTA SURABAYA		JAWA TIMUR	Normal	2012-03-27 00:00:00	2013-12-24 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
015268816613000	PELAYARAN SAMASAGUNG TUNGGALPERKASA	JL KALIMAS BARU NO 71	087855673697	PT	BADAN			50131				Normal	1991-02-13 00:00:00	2010-06-14 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
014662373614000	PANCAPUTRA SATRIAWIBAWA	JL PAHLAWAN NO 60 RT 005 RW 005	62811337500	PT	BADAN	BUBUTAN	ALUN-ALUN CONTONG	46591	KOTA SURABAYA		JAWA TIMUR	Normal	1990-04-18 00:00:00	1990-04-18 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
022067078613000	BINTANG MILLENIUM SEJATI	JL KALIMAS BARU NO 54-56 RT 008 RW 001	0811349328	PT	BADAN			52240				Normal	2004-07-22 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
028252971618000	SELARAS KARUNIA SEJAHTERA	RUKO GOLDEN PALACE BLOK E NO 06	081235205379	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	41012	KOTA SURABAYA		JAWA TIMUR	Normal	2009-07-06 00:00:00	2014-07-11 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
019224690607001	LIMAN INTER MANDIRI	JL.KOMBES POL M.DURYAT 16-18 BLOK B-19, TEGALSARI		PT	BADAN	TEGALSARI	TEGALSARI	73100	KOTA SURABAYA		JAWA TIMUR	PL/DE	2006-10-11 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
011082021126002	MERATUS LINE							50133				Non Efektif	2014-02-10 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
831019914606000	BELANJAATK.CO.ID	JL KLAMPIS SEMALANG INDAH IX/2 W-01	6281803033263	CV	BADAN	SUKOLILO	KLAMPIS NGASEM	46421	KOTA SURABAYA		JAWA TIMUR	Normal	2017-10-26 00:00:00	2018-10-25 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
031257918609000	SELARAS MITRA INTEGRA	JL KETINTANG MADYA NO 80 RT 004 RW 004	6282257236369	PT	BADAN	GAYUNGAN	KETINTANG	70203	KOTA SURABAYA		JAWA TIMUR	Normal	2011-05-06 00:00:00	2013-07-04 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
011082021921001	MERATUS LINE							50131				Normal	2013-01-22 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
015268816811001	PELAYARAN SAMASAGUNG TUNGGALPERKASA							52221				Normal	2009-07-23 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
022066062834001	SAMAS AGUNG TRANS							52291				Normal	2023-06-19 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
022572879609000	ANUGRAH NUSA MINING	JL BOGOWONTO NO 15 RT 006 RW 014	6281357301321	PT	BADAN	TEGALSARI	DR. SOETOMO	07301	KOTA SURABAYA		JAWA TIMUR	Normal	2007-10-25 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
024429284603001	ARENA PRIMA INTERNATIONAL							46599				Normal	2014-06-23 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
867578726615000	DEKADE SELARAS	JL KENDANGSARI YKP BLOK H NO 14 RT 004 RW 002	081703423350	CV	BADAN	TENGGILIS MEJOYO	KENDANGSARI	46339	KOTA SURABAYA		JAWA TIMUR	Normal	2018-12-05 00:00:00	2019-03-12 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
017395013631001	SUTINDO RAYA MULIA	JL SIMOREJOSARI B III	085640439876	PT	BADAN	SUKOMANUNGGAL	SIMOMULYO	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2007-09-04 00:00:00	\N	2020-07-30 00:00:00	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
031937642615000	BIMASAKTI PUTRA PERKASA	RUKO PUNCAK CBD 6G, JL. KERAMAT I RT 003 RW 004	6281234626262	PT	BADAN	WIYUNG	JAJAR TUNGGAL	47725	KOTA SURABAYA		JAWA TIMUR	Normal	2012-03-08 00:00:00	2012-05-23 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
795187384604001	SIMON WIBOWO	MARGOMULYO PERMAI BLOK R 7	082141009549		OP	SUKOMANUNGGAL	SUKOMANUNGGAL	47793	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	2017-10-23 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
754783991613000	NIO PUTRA SEJATI	JL RAYA KRIKILAN KM.26 RT 009 RW 002	081282989898	PT	BADAN	DRIYOREJO	TANJUNGAN	52101	KAB. GRESIK		JAWA TIMUR	Normal	2016-03-29 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
735299265604000	BUMI AGRO LESTARI INDONESIA	JL KEPUTRAN BLOK VI NO 9 RT 003 RW 001	085791719393	PT	BADAN	TEGALSARI	KEPUTRAN	46312	KOTA SURABAYA		JAWA TIMUR	Normal	2015-07-28 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
011484805631000	JAYA KERTAS	KOMPLEK SEMUT MEGAH PLAZA E-15 JL STASIUN KOTA NO 26-Q	081211022505	PT	BADAN	PABEAN CANTIAN	BONGKARAN	17021	KOTA SURABAYA		JAWA TIMUR	Normal	1983-01-13 00:00:00	1985-04-01 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
060558038611001	ROBERT TANSIL	BASUKI RACHMAD 45 RT. 002 RW. 003	62816501122		OP	GENTENG	EMBONG KALIASIN	68111	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	2012-10-29 00:00:00	\N	2019-03-23 00:00:00	user_2smaIfODFlzm8YDJfrstldzV5BA
022064810613007	AGASAM	TAMAN SAMPOERNA 6 RT.008 RW.002, KREMBANGAN UTARA		PT	BADAN	PABEAN CANTIAN	KREMBANGAN UTARA	47781	KOTA SURABAYA		JAWA TIMUR	PL/DE	2009-12-07 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
012318176605000	PRIMKOPAL AKADEMI TNI ANGKATANLAUT	KOMPLEK AKADEMI TNI - AL RT 000 RW 000	6282244276948	KOP	BADAN	KREMBANGAN	MOROKREMBANGAN	46900	KOTA SURABAYA		JAWA TIMUR	Normal	1986-08-11 00:00:00	1989-07-22 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
062913371607000	EVELINE DARMONO	JL RAYA DARMO NO 65	08113200021		OP	TEGALSARI	KEPUTRAN	Z5000	KOTA SURABAYA	3,3741E+15	JAWA TIMUR	Normal	1985-05-29 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
022064810613004	AGASAM	TAMAN SAMPOERNA 6 RT.008 RW.002, KREMBANGAN UTARA		PT	BADAN	PABEAN CANTIAN	KREMBANGAN UTARA	47781	KOTA SURABAYA		JAWA TIMUR	PL/DE	2009-10-23 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
028172237613000	PRIMATAMA ENERGI NUSANTARA	JL PERAK TIMUR BLOK K-1 NO 512 RT 002 RW 003	082141013302	PT	BADAN			49431				Normal	2008-07-28 00:00:00	2013-12-10 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
031200629605000	BERLIAN JAYA MARITIM	JL LAKSDA M. NATSIR 29 BLOK A NO 8	088805912552	PT	BADAN	KREMBANGAN	PERAK BARAT	52240	KOTA SURABAYA		JAWA TIMUR	Normal	2011-05-31 00:00:00	2011-07-12 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
902028190614000	VERAWATI PURNAMA SARI	JL TIDAR NO 88 RT 003 RW 007	2628113548255		OP	SAWAHAN	SAWAHAN	96990	KOTA SURABAYA	3,57828E+15	JAWA TIMUR	Normal	2019-01-18 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
768833626618000	KEVIN WIBISONO	GRAHA FAMILY UTARA 6. D/143A	081233138138		OP	DUKUH PAKIS	PRADAH KALIKENDAL		KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	2016-08-29 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
012322764614000	KARYA EXPRESS JAYA	JL SEMARANG NO 27	6285853141159	PT	BADAN	BUBUTAN	JEPARA	49431	KOTA SURABAYA		JAWA TIMUR	Normal	1986-01-24 00:00:00	1989-03-23 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
022064810121001	AGASAM							46100				PL/DE	2007-12-10 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
022064810423001	AGASAM							47781				PL/DE	2006-12-11 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
024581282413001	SUTINDO CHEMICAL INDONESIA							20299				Normal	2018-12-17 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
031133275624001	EMJEBE PHARMA							21012				Normal	2014-09-29 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
022084644603001	LUMINTAS PUSPINDO							17091				Normal	2004-06-02 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
028172237313001	PRIMATAMA ENERGI NUSANTARA							49431				Normal	2017-11-15 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
030018162043002	LOGAM MAS INDAH							47521				Non Efektif	2021-10-14 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
032086373451001	MULTIUTAMA DISPOSINDO JAYA							47725				Normal	2021-09-09 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
031257918508001	SELARAS MITRA INTEGRA							73100				PL/DE	2015-02-20 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
030018162833001	LOGAM MAS INDAH							47521				Normal	2022-11-22 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
030464937601001	BALIWONG INDONESIA							78101				Normal	2017-08-08 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
030018162811001	LOGAM MAS INDAH							47521				Normal	2022-09-28 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
316553148225001	DELTA ANUGERAH BAHARI NUSANTARA							82990				Non Efektif	2021-11-23 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
014661573607001	JATMIKO CIPTA KARYA	JL KEDUNGSARI NO 26-28 RT 002 RW 001	085106128808	PT	BADAN	TEGALSARI	KEDUNGDORO	46491	KOTA SURABAYA		JAWA TIMUR	Normal	2017-03-15 00:00:00	\N	2017-10-09 00:00:00	user_2smarUb8cHYvdzDtY5MUO7mYyen
715177820615000	SARANA SUKSESTAMA SEJAHTERA	JL RAYA KUTISARI BLOK C NO 40	6285732166416	PT	BADAN	TENGGILIS MEJOYO	KUTISARI	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2014-11-20 00:00:00	2015-02-09 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
861048940604000	SUMBER MAS MAKMUR	KOMPLEK PERGUDANGAN SENTRAL MARGOMULYO PERMAI BLOK B/12 RT 016 RW 002	0817589396	CV	BADAN	SUKOMANUNGGAL	TANJUNGSARI	45301	KOTA SURABAYA		JAWA TIMUR	Normal	2018-10-02 00:00:00	2019-08-09 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
316736602528001	INDO BISMAR							77311				Non Efektif	2017-12-18 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
316736602532002	INDO BISMAR							77311				Non Efektif	2017-12-15 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
311697858615000	SENTRAL LAHARINDO SERVIS	JL RAYA JEMURSARI NO 218	6281536005753	PT	BADAN	TENGGILIS MEJOYO	TENGILIS MEJOYO	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2010-03-11 00:00:00	2010-03-11 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
316736602545001	INDO BISMAR							77311				Non Efektif	2017-12-13 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
022069728631000	BAHANA LINE	JL LAKSDA M. NASIR BLOK B-11 NO 29 RT 006 RW 008	08113662227	PT	BADAN	KREMBANGAN	PERAK BARAT	50131	KOTA SURABAYA		JAWA TIMUR	Normal	2006-04-19 00:00:00	2007-07-12 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
316736602642001	INDO BISMAR							46511				Normal	2021-11-05 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
078552783604000	GUSNO WIJAYA	PERUMAHAN VILLA TAMAN GAPURA BLOK G 1/14 RT 004 RW 013	0816523111		OP	SAMBIKEREP	LONTAR	Z5000	KOTA SURABAYA	3,57831E+15	JAWA TIMUR	Normal	2004-09-08 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
711147744615000	FLOW TECHNOLOGY INDONESIA	JL MEDOKAN AYU MA III BLOK D NO 34 RT 001 RW 008	08113527963	PT	BADAN	RUNGKUT	MEDOKAN AYU	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2014-09-29 00:00:00	2014-12-23 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
316736602656002	INDO BISMAR							47414				Non Efektif	2017-12-22 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
826622516951001	SORONG MANDIRI SEJAHTERA							46638				Normal	2018-01-22 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
019794213605000	MITRA SEGARA PERDANA	JL TANJUNG SADARI NO 90	081231521488	PT	BADAN	KREMBANGAN	PERAK BARAT	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2001-07-19 00:00:00	2023-09-20 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
022568786614000	LOGAM SEJATI	JL MARGOMULYO PERMAI BLOK Q NO 24-A	0817117588	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	46631	KOTA SURABAYA		JAWA TIMUR	Normal	2005-02-02 00:00:00	2010-02-22 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
829280866807001	KARUNIA INDAH SEGAR							11040				Normal	2018-10-16 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
818357766112001	CORINDO SUMBER MAKMUR							45302				Normal	2019-04-15 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
926180704913001	BAHARI SENTOSA JAYA							03254				Normal	2022-06-24 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
726915259606000	MICHELLE REGINA KATUARI	JL MANYAR KETOARJO 7 NO 31 RT 005 RW 011	081252776678		OP	GUBENG	MOJO	Z5000	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	2015-04-06 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
315854299607000	MEGA TIMUR SEMESTA	JL COKROAMINOTO NO 25 RT. 000 RW. 000	62818591716	PT	BADAN	TEGALSARI	DR. SOETOMO	45302	KOTA SURABAYA		JAWA TIMUR	Normal	2012-09-10 00:00:00	2012-11-05 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
021699871609000	UNIMES PUSAKA CEMERLANG	JL JEMURSARI BLOK XI NO 21 E-23 RT 003 RW 006	081217653530	PT	BADAN	WONOCOLO	JEMUR WONOSARI	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2003-03-29 00:00:00	2003-05-23 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
067094979609000	ALTINO SAMPAOUW	MARGOREJO INDAH I/21 BLOK B NO 106 RT 002 RW 008	0811305399		OP	WONOCOLO	MARGOREJO		KOTA SURABAYA	3,57802E+15	JAWA TIMUR	Normal	1993-02-03 00:00:00	2018-10-16 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
025148727609000	RETAIL PERKASA	JL RAYA NGAGEL NO 143 BLOK Z	000000005146	PT	BADAN	WONOKROMO	NGAGEL	47712	KOTA SURABAYA		JAWA TIMUR	Normal	2006-01-25 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
718024326611000	CITRA PUSTA KARYA	JAPFA INDOLAND CENTER TOWER 2 LEVEL 12 JALAN PANGLIMA SUDIRMAN NO 66-68 RT 001 RW 007	0895606191290	PT	BADAN	GENTENG	EMBONG KALIASIN	46523	KOTA SURABAYA		JAWA TIMUR	Normal	2014-12-30 00:00:00	2015-02-10 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
022572135604001	PERGUDANGAN KALIANAK RAYA	BUMI MASPION UTARA III NO.9.11,12 RT. 00 RW. 00	081357605075	PT	BADAN	BENOWO	ROMOKALISARI	52101	KOTA SURABAYA		JAWA TIMUR	PL/DE	2012-12-14 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
249087057619000	LION KOSASIH	RANGKAH I/90 RT.003 RW.007, RANGKAH	623113719260		OP	TAMBAKSARI	RANGKAH	Z5000	KOTA SURABAYA	3,5781E+15	JAWA TIMUR	Normal	2008-12-25 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
703351072614000	KARYA MANDIRI ANUGERAH	JL SEMARANG NO 94-124 BLOK BLOK A NO 16 RT 004 RW 005	0315458537	PT	BADAN	BUBUTAN	BUBUTAN	47793	KOTA SURABAYA		JAWA TIMUR	Normal	2014-06-02 00:00:00	2014-06-26 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
023551344619000	BAMBOE INDONESIA	JL KEDINDING TENGAH BLOK II NO 8	082229242211	PT	BADAN	KENJERAN	TANAH KALI KEDINDING	10772	KOTA SURABAYA		JAWA TIMUR	Normal	2004-03-18 00:00:00	2004-03-25 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
067094979613001	ALTINO SAMPAOUW	KALIMAS BARU 71 RT.009 RW.001, PERAK UTARA	0313291985		OP			52293		3,57802E+15		Non Efektif	2011-05-03 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
012325809604000	SURABAYA INTERNATIONAL SCHOOL	JL SEKOLAH INTERNATIONAL	08123562757	YAY	BADAN	LAKARSANTRI	LAKARSANTRI	85122	KOTA SURABAYA		JAWA TIMUR	Normal	1985-02-08 00:00:00	2022-04-11 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
018347708032001	ANUGRAH EKSTRAVISI RAYA							47521				Normal	2018-11-26 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
028172260613000	NILAM PORT TERMINAL INDONESIA	JL PERAK TIMUR NO 118 RT 001 RW 005	62313559416	PT	BADAN			52240				Normal	2008-08-04 00:00:00	2009-07-07 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
041726159607999	SHINDY ARLINA	JL. DINOYO LOR V/21 RT.001 RW.003, KEPUTRAN	089697027043		OP	TEGALSARI	KEPUTRAN	96990	KOTA SURABAYA		JAWA TIMUR	PL/DE	2010-01-08 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
726669732618000	SELARAS INTI KELOLA	JL RAYA DARMO PERMAI III	5668885	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2015-04-07 00:00:00	2017-10-10 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
838640779606000	SHIRLEY SAPUTRO	JALAN DHARMAHUSADA INDAH BARAT BLOK 3 NO 178A RT 007 RW 004	081333101112		OP	GUBENG	MOJO	Z5000	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	2018-01-26 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
041726159607998	SHEILA NALIA	JL. DINOYO LOR V/21 RT.001 RW.003, KEPUTRAN	0895389166657		OP	TEGALSARI	KEPUTRAN	96990	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	PL/DE	2010-01-08 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
019226679618000	PERKASA MULTI PERSADA	JL VILLA BUKIT MAS BLOK RC NO 16 RT 001 RW 007	019226679618000	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	46599	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2010-06-23 00:00:00	\N	2023-09-07 00:00:00	user_2smb3nSakuIH32TbOrrGYEFR6S3
011082021211001	MERATUS LINE							50131				Normal	2021-04-23 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
011082021721001	MERATUS LINE							50131				Normal	2012-12-17 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
019759513615000	WANA INDO RAYA	JL  RUNGKUT LOR RL V-H/36 RT 001 RW 013	6285648161688	CV	BADAN	RUNGKUT	KALIRUNGKUT	16101	KOTA SURABAYA		JAWA TIMUR	Normal	2000-07-27 00:00:00	2000-07-27 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
011082021922001	MERATUS LINE							50131				Normal	2011-12-19 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
016638223911001	MEDIA CIPTA PERKASA CABANG MATARAM							41012				PL/DE	2006-11-29 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
022066062823001	SAMAS AGUNG TRANS							52291				PL/DE	2011-02-07 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
022069728301001	BAHANA LINE							50131				Normal	2009-06-16 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
023770951601001	KOKEK							70100				PL/DE	2011-08-15 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
078552783081001	GUSNO WIJAYA							03111				Normal	2021-08-09 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
023378888614002	DWIJAYA SENTOSA ABADI	JL RAYA TAMBAK LANGON NO 7	031-7483652	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	46620	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2012-09-14 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
851992917615000	BERLIAN ANUGERAH ABADI	JL KUTISARI XI NO 11 G RT 008 RW 005	6281232568111	PT	BADAN	WONOCOLO	SIWALANKERTO	46691	KOTA SURABAYA		JAWA TIMUR	Normal	2018-07-03 00:00:00	2018-07-24 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
012083192613000	MARGASARI JAYA	JL KAPUAS NO 3 RT 002 RW 009	628176978761	PT	BADAN	TEGALSARI	KEPUTRAN	46206	KOTA SURABAYA		JAWA TIMUR	Normal	2001-01-22 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
029097615607000	BANGUN SARANA JAYA	JL RAYA DARMO BLOK B-16 NO 54-56 RT 003 RW 010	082145350658	PT	BADAN	TEGALSARI	DR. SOETOMO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2012-03-29 00:00:00	2016-07-01 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
061395976606000	SUTRISNO PRAJOGO	GRAHA FAMILI BLOK K NO 65 RT 04 RW 02	081231888230		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z2100	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	1985-05-09 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
705851459606000	WAHANA KREASI PERSADA	JL DHARMAHUSADA INDAH BARAT GG 3 NO 64	087851315321	PT	BADAN	GUBENG	MOJO	68200	KOTA SURABAYA		JAWA TIMUR	Normal	2014-07-04 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
023378888631000	DWIJAYA SENTOSA ABADI	SUBCO SPAZIO SUITES, 525 A, JL. MAYJEND YONO SOEWOYO BLOK KAV 3	0895602521106	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46620	KOTA SURABAYA		JAWA TIMUR	Normal	2004-06-15 00:00:00	2004-06-16 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
915713333611000	KARYA LAUT SEMESTA	JL KEMUNING NO 30	087853261012	CV	BADAN	GENTENG	KETABANG	03262	KOTA SURABAYA		JAWA TIMUR	Normal	2019-06-24 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
000000000632000	WAJIB PAJAK NON NPWP	JALAN TEBET RAYA NO.9, TEBET, JAKARTA SELATAN, JAKARTA		UNKNOWN	BADAN	TEBET	TEBET BARAT	Unass	JAKARTA SELATAN		DKI JAKARTA	Normal	2004-05-12 00:00:00	\N	\N	\N
313370017618000	MULTI ASIA PACIFIC LINE	SPAZIO BUILDING LT.6 UNIT 601 A JL MAYJEND YONO SOEWOYO BLOK KAV 3	085695989672	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	50111	KOTA SURABAYA		JAWA TIMUR	Normal	2011-07-07 00:00:00	2012-01-17 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
022064810613002	AGASAM	TAMAN SAMPOERNA 6 RT.008 RW.002, KREMBANGAN UTARA		PT	BADAN	PABEAN CANTIAN	KREMBANGAN UTARA	47781	KOTA SURABAYA		JAWA TIMUR	PL/DE	2009-10-23 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
015678816544001	TRISNA KARYA							42101				PL/DE	2011-12-07 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
012201810504001	INDRA JAYA SWASTIKA							52221				Normal	2015-02-25 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
017928326606000	ENCIETY BINAKARYA CEMERLANG	JL MANYAR TIRTOYOSO UTARA BLOK V NO 7	081233747815	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	70100	KOTA SURABAYA		JAWA TIMUR	Normal	1997-11-03 00:00:00	1997-11-05 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
015325020614001	DUTA PERKASA							47793				PL/DE	2018-02-09 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
022064810077001	AGASAM							47781				Normal	2006-12-11 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
018347708043001	ANUGRAH EKSTRAVISI RAYA							47521				Normal	2024-03-08 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
022064810432001	AGASAM							47711				PL/DE	2008-08-15 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
022064810542001	AGASAM							47781				PL/DE	2006-12-11 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
025150137914001	MITRA SURYA PERSADA							41019				Normal	2014-08-15 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
011089620902001	ARNOLDUS							86903				PL/DE	1986-12-22 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
028174860026001	MAHKOTA ABADI PRIMA JAYA							47216				PL/DE	2011-10-27 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
031937642601001	BIMASAKTI PUTRA PERKASA							46691				Non Efektif	2013-09-20 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
012144366026001	BAMBANG DJAJA							46900				Normal	1989-11-21 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
826777286621001	BLUE OCEAN HEART							46523				Normal	2020-05-08 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
012326732643001	ISTANA MOBIL SURABAYA INDAH							45101				Normal	2013-05-28 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
315237511613000	PURWANTO INVESTAMA INDONESIA	JL KALIMATI KULON NO 22 RT 002 RW 11	6289612134406	PT	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	66142	KOTA SURABAYA		JAWA TIMUR	Normal	2012-05-04 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
919442483611000	CHEARLENE SOEMARSONO	PENELEH BLOK 5 NO 31 RT 005 RW 003	6282131999431		OP	GENTENG	PENELEH	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	2019-06-28 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
348012329606000	RIO ADIWAHYU TANOYO	JL MANYAR KERTOARJO 6 NO 59 RT 006 RW 011	081252776678		OP	GUBENG	MOJO	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	2010-06-07 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
802681577604000	SELARAS TIGA BUMI ARTHA	JL RAYA MANUKAN KULON NO 44 RT 007 RW 010	081281281212	PT	BADAN	TANDES	MANUKAN KULON	45405	KOTA SURABAYA		JAWA TIMUR	Normal	2016-10-11 00:00:00	2017-05-15 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
019224690611000	LIMAN INTER MANDIRI	GALAXI BUMI PERMAI BLOK TG-4 NO 03 RT 001 RW 009	0811312685	PT	BADAN	SUKOLILO	KEPUTIH	73201	KOTA SURABAYA		JAWA TIMUR	Normal	2000-02-03 00:00:00	2000-02-08 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
316553148618000	DELTA ANUGERAH BAHARI NUSANTARA	GRIYA KEBRAON TENGAH BLOK M NO 09 RT 005 RW 011	-	PT	BADAN	KARANG PILANG	KEBRAON	82990	KOTA SURABAYA		JAWA TIMUR	Normal	2012-12-27 00:00:00	2017-09-04 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
903732980613000	DILIGENTA PERSADA	JL RAJAWALI NO 84 RT 003 RW 001	0313534516	CV	BADAN			47734				Normal	2019-02-06 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
011082021311001	MERATUS LINE							52240				Normal	2012-10-17 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
011082021723001	MERATUS LINE							50131				Normal	2013-04-09 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
014690788941001	AURA SINAR BARU	JL MR CHR SOPLANIT, KOTA AMBON				TELUK AMBON	RUMAH TIGA	71101	KOTA AMBON			Non Efektif	2017-04-10 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
011082021925001	MERATUS LINE							50131				Normal	2022-04-08 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
022066062811001	SAMAS AGUNG TRANS							52293				Normal	2014-11-25 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
022069728012001	BAHANA LINE							50131				Non Efektif	2011-08-10 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
210155107604000	KARYA MITRA MAJU BERSAMA	ROMOKALISARI INDUSTRI II BLK V NO.16-17C RT.000 RW.000, ROMOKALISARI	085717013922	PT	BADAN	BENOWO	ROMOKALISARI	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2007-11-05 00:00:00	2008-01-14 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
824990360614000	AUSMAN GROSIR INDO	JL. MARGOMULYO PERMAI BLOK. AJ NO 29 RT 001 RW 001	6285736929064	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	47593	KOTA SURABAYA		JAWA TIMUR	Normal	2017-08-01 00:00:00	2017-09-19 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
311697858803001	SENTRAL LAHARINDO SERVIS							47793				PL/DE	2016-04-01 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
931005540606000	RANCANG SELARAS MEDIA	JL SUKOSEMOLO RUKO GALAXY BUMI PERMAI BLOK J-1 NO 23A-25	085731969691	CV	BADAN	SUKOLILO	SEMOLOWARU	63990	KOTA SURABAYA		JAWA TIMUR	Normal	2019-10-10 00:00:00	2021-05-24 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
030711196606000	ARTHA NIAGA	JL GEDUNG GRAHA SA RUANG 503 LT 5 RAYA GUBENG NO 19 SD 21	081216283779	CV	BADAN	GUBENG	GUBENG	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2010-07-26 00:00:00	2010-09-28 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
317022093606000	MUTIARA MANDIRI SENTOSA	JALAN RUKO MEGA GALAXY BLOK 14B NO 09	6283849710025	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	68111	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2013-02-28 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
016777864614000	INDO ROMAS SEJAHTERA	JL SEMARANG 94-124 BLOK B1 NO 114A RT 000 RW 000	085755573998	PT	BADAN	BUBUTAN	BUBUTAN	46599	KOTA SURABAYA		JAWA TIMUR	Normal	1996-03-07 00:00:00	1996-03-07 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
028175313613000	MENTARI CAHAYA ABADI	JL KEMBANG JEPUN NO 149-F	6282139800080	PT	BADAN	PABEAN CANTIAN	BONGKARAN	47192	KOTA SURABAYA		JAWA TIMUR	Normal	2010-12-09 00:00:00	2010-12-09 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
011081726607000	AMBICO	JL DINOYO NO 29 RT 001 RW 008	089635877877	PT	BADAN	TEGALSARI	KEPUTRAN	10612	KOTA SURABAYA		JAWA TIMUR	Normal	1982-11-05 00:00:00	1988-02-01 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
097541999614000	HERLINE JULIAWATI	JL SEKOLAHAN NO 29 RT.001 RW.002	08111488971		OP	ASEM ROWO	ASEM ROWO	Z5000	KOTA SURABAYA	3,57828E+15	JAWA TIMUR	Normal	2008-05-12 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
021143854611000	SURYA SEJAHTERA	JL BASUKI RACHMAD NO 45-47 RT 002 RW 003	081216976298	CV	BADAN	GENTENG	EMBONG KALIASIN	45401	KOTA SURABAYA		JAWA TIMUR	Normal	2007-01-16 00:00:00	2008-03-10 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
011222148631000	SURYA DERMATO MEDICA LABORATORIES	JL RUNGKUT INDUSTRI III NO 31	089527658269	PT	BADAN	GUNUNG ANYAR	RUNGKUT MENANGGAL	21012	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
803504190901000	SUKSES INDAH METALINDO	JL. MARGOMULYO 44 PERGUDANGAN SURI MULIA BLOK BLOK II  NO NO. 14-15	081330238042	PT	BADAN	ASEM ROWO	ASEM ROWO	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2016-11-08 00:00:00	2017-07-12 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
660635764615000	BANGUN KREASI ARTHA	SIDOSERMO PDK III A NO 172 RT 000 RW 000	081336883707	PT	BADAN	WONOCOLO	SIDOSERMO	43304	KOTA SURABAYA		JAWA TIMUR	Normal	2014-01-09 00:00:00	2015-04-22 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
078769510657001	H. MOCHAMAD ILYAS	DSN NGIJO RT 001 RW 003, KAB. MALANG				KARANGPLOSO	NGIJO	68111	KAB. MALANG			Normal	2023-11-23 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
015678816952001	TRISNA KARYA							42101				Non Efektif	2021-07-30 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
022064810019001	AGASAM							47781				PL/DE	2006-12-11 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
061809968614000	FENNY WIDJAJA	JL. SUKABUMI NO 19 RT 002 RW 007	0816853012		OP	MENTENG	MENTENG	Z5000	KOTA ADM. JAKARTA PUSAT	3,17106E+15	DKI JAKARTA	Normal	1985-02-21 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
018347708023001	ANUGRAH EKSTRAVISI RAYA							47521				Normal	2018-11-14 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
019297191643002	CHALIDANA INTI CAHAYA							68111				Normal	2015-06-26 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
019951698606000	BHAKTI PERSADA SAUDARA PHARMA	JL PUCANG SEWU NO 17	081330442749	PT	BADAN	GUBENG	PUCANG SEWU	46691	KOTA SURABAYA		JAWA TIMUR	Normal	2000-06-26 00:00:00	2000-07-05 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
024542730407001	PRIMA PERSADA NUSANTARA							43211				PL/DE	2014-07-07 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
026094276627001	PERMATA ANUGERAH YALAPERSADA							41019				PL/DE	2013-12-19 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
814829842445001	ANUGERAH CITRA CENDANA							13921				Normal	2018-06-07 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
704721430822001	MITRA BAHARI LOGISTINDO							52291				Non Efektif	2021-04-27 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
826622516619000	SORONG MANDIRI SEJAHTERA	JL LEBAK ARUM BLOK 5 NO 76 RT 006 RW 009	082230006932	PT	BADAN	TAMBAKSARI	GADING	46638	KOTA SURABAYA		JAWA TIMUR	Normal	2017-08-25 00:00:00	2017-10-10 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
012144366512001	BAMBANG DJAJA							27113				Normal	2020-09-02 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
063554604606000	MINTARJO WIDYA,TJOA	PULAU GOLF FAMILY 2 BLOK G NO 90 RT 004 RW 002	08123047008		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	1985-05-11 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
028174357605000	BINTANG PANORAMA HIJAU	JL IKAN DORANG NO 1	081231521488	PT	BADAN	KREMBANGAN	PERAK BARAT	52240	KOTA SURABAYA		JAWA TIMUR	Normal	2010-11-16 00:00:00	2022-03-04 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
019225648609000	CIPTA PAPAN SENTOSA INDAH	JL RAYA NGAGEL NO 25 RT 004 RW 005	089519605040	PT	BADAN	WONOKROMO	NGAGEL	47526	KOTA SURABAYA		JAWA TIMUR	Normal	2000-06-07 00:00:00	2001-05-31 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
015927411604000	SURABAYA KENCANA ANUGRAH	JL RAYA DARMO PERMAI BLOK I NO 35 RT 004 RW 003	082328146815	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	22111	KOTA SURABAYA		JAWA TIMUR	Normal	1993-10-01 00:00:00	2015-02-18 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
021143508614000	TOOLINDO PRIMA JAYA	JL. BUBUTAN NO 81 RT 000 RW 000	083831008413	PT	BADAN	BUBUTAN	BUBUTAN	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2006-11-15 00:00:00	2006-11-16 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
028402949611000	SAGRAHA SATYA SAWAHITA	JL MUSTIKA NO 143 ZJ RT 006 RW 001	082233969644	PT	BADAN	WONOKROMO	NGAGEL	46696	KOTA SURABAYA		JAWA TIMUR	Normal	2008-06-16 00:00:00	2013-03-11 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
904329703613000	KAIROS MAKMUR	JL RAJAWALI NO 84 RT 003 RW 001	0313531404	CV	BADAN			47785				Normal	2019-02-07 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
726669732618001	SELARAS INTI KELOLA	KOMPLEK DARMO BOULEVARD	0317321920	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46641	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2015-11-16 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
011082021831001	MERATUS LINE							50131				Normal	2000-10-19 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
015927411624001	SURABAYA KENCANA ANUGRAH							22111				Normal	2000-06-28 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
015268816834001	PELAYARAN SAMASAGUNG TUNGGALPERKASA							50131				Normal	2023-06-09 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
803257641615000	MAHAKAM MEKANIK LESTARI	RAYA KALIRUNGKUT NO 5 KOMPLEK RUNGKUT MEGAH RAYA BLOK B NO 29 RT 000 RW 000	6285104930702	PT	BADAN	RUNGKUT	KALIRUNGKUT	33121	KOTA SURABAYA		JAWA TIMUR	Normal	2016-10-18 00:00:00	2021-10-01 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
869056176615000	POLY TUNAS INVESTAMA	JL RAYA KALI RUNGKUT 5 BLOK A NO 5	081238973197	PT	BADAN	RUNGKUT	KALIRUNGKUT	64200	KOTA SURABAYA		JAWA TIMUR	Normal	2018-12-19 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
026701615026001	BIOMETRIK CITRA SOLUSI							47411				Normal	2007-09-05 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
718024326009001	CITRA PUSTA KARYA							46412				Non Efektif	2015-06-16 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
022064810613009	AGASAM	TAMAN SAMPOERNA 6 RT.008 RW.002, KREMBANGAN UTARA		PT	BADAN	PABEAN CANTIAN	KREMBANGAN UTARA	47781	KOTA SURABAYA		JAWA TIMUR	PL/DE	2010-01-21 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
749506200604000	SANTUN SEMBILAN TELEVISI	PERUMAHAN LEMBAH HARAPAN NO 09	085730080900	PT	BADAN	LAKARSANTRI	LIDAH WETAN	60202	KOTA SURABAYA		JAWA TIMUR	Normal	2016-01-15 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
022064810613003	AGASAM	TAMAN SAMPOERNA 6 RT.008 RW.002, KREMBANGAN UTARA		PT	BADAN	PABEAN CANTIAN	KREMBANGAN UTARA	47781	KOTA SURABAYA		JAWA TIMUR	PL/DE	2009-10-23 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
028243996614000	ANGIN SOLUSINDO	JL PAKIS TIRTOSARI I/36 RT.003 RW.005, PAKIS	628563019979	PT	BADAN	SAWAHAN	PAKIS	43212	KOTA SURABAYA		JAWA TIMUR	Normal	2008-09-19 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
028174662606000	YULINDO UTAMA	Jl Kalianget NO 156 RT 002 RW 003	081217964474	PT	BADAN			46900				Normal	2010-09-01 00:00:00	2011-04-14 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
861333029606000	TIRTA ASA MULIA	JL DHARMAHUSADA INDAH BARAT BLOK III NO 64-66	0315961190	PT	BADAN	GUBENG	MOJO	10222	KOTA SURABAYA		JAWA TIMUR	Normal	2018-10-02 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
011331436607000	WIDYA MANDALA	JL DINOYO NO 42	081235903058	YAY	BADAN	TEGALSARI	KEPUTRAN	85321	KOTA SURABAYA		JAWA TIMUR	Normal	1982-11-25 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
022064810611001	AGASAM	PEMUDA 33-37,PLAZA SURABAYA LT.I NO.42 RT.000 RW.000, EMBONG KALIASIN	031-3539000	PT	BADAN	GENTENG	EMBONG KALIASIN	47711	KOTA SURABAYA		JAWA TIMUR	PL/DE	2007-01-04 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
017227679604000	EKAPERMATA SURYASENTOSA	JL MAYJEND.SUNGKONO KAV 239 RT 001 RW 002	081999308708	PT	BADAN	SUKOMANUNGGAL	PUTAT GEDE	68200	KOTA SURABAYA		JAWA TIMUR	Normal	2004-06-24 00:00:00	2004-08-24 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
014518286943001	SARI MAS PERMAI							10423				Normal	2019-01-21 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
015678816608001	TRISNA KARYA							42101				PL/DE	1995-05-04 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
014540199125001	BUMI MENARA INTERNUSA							10293				Normal	2015-01-14 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
022064810013001	AGASAM							47781				PL/DE	2006-12-11 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
022064810043001	AGASAM							47781				PL/DE	2006-12-12 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
018230698732001	SUMBER MULTI REJEKI							49432				PL/DE	2010-08-26 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
011409661631000	TECTONIA GRANDIS	JL GAYUNGSARI TIMUR X NO 2	62318297799	PT	BADAN	GAYUNGAN	MENANGGAL	41019	KOTA SURABAYA		JAWA TIMUR	Normal	1982-11-30 00:00:00	1984-12-31 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
022079735416001	HANEDA SUKSES MANDIRI							46599				Normal	2014-12-09 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
025150137642001	MITRA SURYA PERSADA							41013				Normal	2022-10-25 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
022064810804001	AGASAM							47713				PL/DE	2013-11-01 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
033393372225001	BERINGIN MAS POWERINDO							35111				Normal	2022-09-21 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
030464937609000	BALIWONG INDONESIA	JL SIDOSERMO BLOK VI NO 23 RT 003 RW 003	6287808784569	PT	BADAN	WONOCOLO	SIDOSERMO	78101	KOTA SURABAYA		JAWA TIMUR	Normal	2010-11-30 00:00:00	2010-12-14 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
818357766604000	CORINDO SUMBER MAKMUR	PERGUDANGAN BUMI MASPION JL ROMOKALISARI INDUSTRI II BLOK VII C NO 16	628155199595	CV	BADAN	BENOWO	ROMOKALISARI	45302	KOTA SURABAYA		JAWA TIMUR	Normal	2017-04-25 00:00:00	2017-09-27 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
011484805655001	JAYA KERTAS							17091				Normal	2012-04-04 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
826777286617001	BLUE OCEAN HEART							46523				Normal	2019-10-07 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
031133507615000	SANDJAJA SURABAYA	JL WIGUNA TIMUR BLOK X NO 5 RT 004 RW 004	081231191931	PT	BADAN	GUNUNG ANYAR	GUNUNG ANYAR TAMBAK	46638	KOTA SURABAYA		JAWA TIMUR	Normal	2011-08-03 00:00:00	2011-08-18 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
706571932613000	KALIMAS MITRA PERKASA	JL KARET NO 45	0817311878	PT	BADAN	PABEAN CANTIAN	BONGKARAN	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2014-07-17 00:00:00	2015-01-19 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
029690021609000	DWIKA SARANA TEKNIK	JL.MARGOREJO NO 107-F RT 002 RW 004	08123524785	PT	BADAN	WONOCOLO	MARGOREJO	41012	KOTA SURABAYA		JAWA TIMUR	Normal	2009-03-11 00:00:00	2009-04-23 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
032015638613000	WOWRACK INDONESIA	JL GENTENG KALI NO 8 RT 002 RW 011	623160002890	PT	BADAN	GENTENG	GENTENG	63112	KOTA SURABAYA		JAWA TIMUR	Normal	2012-04-05 00:00:00	2012-06-22 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
022093520611000	INDAH LESTARI	JL AMBENGAN NO 19 RT 002 RW 003	0315484936	PT	BADAN	GENTENG	KETABANG	96112	KOTA SURABAYA		JAWA TIMUR	Normal	2003-01-23 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
027774090606000	SUMBER ENERGY	JL RAYA MANYAR TIRTOMOYO NO 52 RT 001 RW 004	0881026347626	PT	BADAN	SUKOLILO	MENUR PUMPUNGAN	46691	KOTA SURABAYA		JAWA TIMUR	Normal	2009-01-08 00:00:00	2009-11-10 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
011082021042001	MERATUS LINE							50131				Normal	1995-11-15 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
816067870607000	FELICIA ORVALLA ANGGASAPUTRI	JL IR ANWARI NO 3 RT 005 RW 009	62816556553		OP	TEGALSARI	DR. SOETOMO	47611	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	2017-03-27 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
017396243614000	LAMBANG JAYA MAKMUR SENTOSA	JL KRAMAT GANTUNG NO 68	085731613774	PT	BADAN	BUBUTAN	ALUN-ALUN CONTONG	47711	KOTA SURABAYA		JAWA TIMUR	Normal	1997-12-24 00:00:00	1997-12-30 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
011082021903001	MERATUS LINE							50131				Normal	2016-01-18 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
016638223601001	MEDIA CIPTA PERKASA							41012				PL/DE	2011-11-25 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
312329774618000	TRISA PERDANA GROUP	MAYJEND SUNGKONO NO.182 RT.003 RW.004, DUKUH PAKIS	085806299197	CV	BADAN	DUKUH PAKIS	DUKUH PAKIS	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2010-10-01 00:00:00	2019-07-23 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
723138210606000	GLOBAL ARTHA PERSADA LOGISTIK	JL KLAMPIS JAYA NO 45A	085730010864	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	70202	KOTA SURABAYA		JAWA TIMUR	Normal	2015-02-25 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
022069728942001	BAHANA LINE							50114				PL/DE	2012-04-16 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
024545378655001	DUTA KARYA BERSATU							38211				Non Efektif	2019-07-03 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
011081908605000	PABRIK MINYAK PERNIAGAAN DAN INDUSTRI IKAN DORANG	JL IKAN DORANG NO 2	081249444224	PT	BADAN	KREMBANGAN	PERAK BARAT	10437	KOTA SURABAYA		JAWA TIMUR	Normal	1982-11-05 00:00:00	1984-05-19 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
011091568615000	RUNGKUT CAHAYA INDUSTRI	JL RUNGKUT INDUSTRI BLOK IV NO 6	0318439013	PT	BADAN	TENGGILIS MEJOYO	KUTISARI	22299	KOTA SURABAYA		JAWA TIMUR	Normal	1982-11-05 00:00:00	1993-03-19 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
033305236604000	DUTA CITRA LESTARI	JL JERUK NO 260 RT 002 RW 003	0811333377	PT	BADAN	LAKARSANTRI	JERUK	47529	KOTA SURABAYA		JAWA TIMUR	Normal	2013-11-12 00:00:00	2014-01-13 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
311881304618000	ROJEN INTERNATIONAL	RUKO GOLDEN PALACE E/9 JL HR MUHAMMAD	62317345584	CV	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	47729	KOTA SURABAYA		JAWA TIMUR	Normal	2010-04-30 00:00:00	2010-06-23 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
262032543609001	CHANDRA LIMANTARA	JL RAYA DARMO NO 177 RT 005 RW 004	62811342364		OP	WONOKROMO	DARMO	47736	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2015-05-22 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
022565766614000	SUBUR MITRA SUKSES	JL KALIANAK BARAT NO 55 (BLK) RT 002 RW 003	6281233847788	PT	BADAN	ASEM ROWO	GENTING KALIANAK	46339	KOTA SURABAYA		JAWA TIMUR	Normal	2002-11-20 00:00:00	2003-02-05 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
901089789619000	KHALIF ENERGI NUSANTARA	JL KALIJUDAN NO 98-B RT 004 RW 002	083856666301	PT	BADAN	MULYOREJO	KALIJUDAN	46421	KOTA SURABAYA		JAWA TIMUR	Normal	2019-01-10 00:00:00	2019-02-25 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
014252357618000	SEMESTA ELTRINDO PURA	JL RAYA MASTRIP KEDURUS NO 54	6285731135500	PT	BADAN	KARANG PILANG	KEDURUS	27900	KOTA SURABAYA		JAWA TIMUR	Normal	1987-07-30 00:00:00	1987-05-15 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
359245404606000	REBECCA WAHJUTIRTO TANOYO	JL MANYAR KERTOARJO 6 NO 21 RT 006 RW 011	081131196296		OP	GUBENG	MOJO	Z5000	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	2011-02-07 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
022088108631000	DAVINCI KERAMINDO INTERNASIONAL	JL MASTRIP WARUGUNUNG NO 28	628123260649	PT	BADAN	KARANG PILANG	WARU GUNUNG	46633	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
262032543619000	CHANDRA LIMANTARA	JL DHARMAHUSADA INDAH UTARA 1 NO 22 RT 001 RW 008	0811342354		OP	MULYOREJO	MULYOREJO	47736	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2009-09-30 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
030018162618000	LOGAM MAS INDAH	JL DUKUH KUPANG 27 / 8	08123229229	PT	BADAN	DUKUH PAKIS	DUKUH KUPANG	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2013-10-21 00:00:00	2015-02-04 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
016729105609000	BUANAMAS MUSTIKATAMA	JL NGAGEL JAYA SELATAN RMI BLOK D NO 16 LT 2 RT 002 RW 008	6285645061105	PT	BADAN	GUBENG	BARATAJAYA	46900	KOTA SURABAYA		JAWA TIMUR	Normal	1999-01-09 00:00:00	1995-11-29 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
014540199325001	BUMI MENARA INTERNUSA							10293				Normal	2008-10-20 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
042126631618000	SURIONTORO TEDJAKUSUMA	BINTANG GRAHA FAMILI XI BLOK O NO 156A RT 003 RW 011	62816509692		OP	WIYUNG	BABATAN	Z5000	KOTA SURABAYA	3,57824E+15	JAWA TIMUR	Normal	2009-07-22 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
012274536613000	BEN SANTOSA	JL NILAM BARAT BARU NO 20	082188884952	PT	BADAN			33151				Normal	1984-11-15 00:00:00	1985-03-30 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
018230698331001	SUMBER MULTI REJEKI							77321				Non Efektif	2001-07-17 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
026705822606000	LUMENA MANDIRI NUSANTARA	JL KLAMPIS ANOM I BLOK F-6 NO 26	0315932588	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	50135	KOTA SURABAYA		JAWA TIMUR	Normal	2008-01-31 00:00:00	2008-04-18 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
024581282027001	SUTINDO CHEMICAL INDONESIA							20299				Normal	2006-06-06 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
062907415619000	JIMMY SOETARSO	JL DHARMAHUSADA INDAH TIMUR BLOK M NO 17 RT 003 RW 008	62811306431		OP	MULYOREJO	MULYOREJO	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2010-01-22 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
023378888402001	DWIJAYA SENTOSA ABADI							46620				Non Efektif	2016-01-22 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
026094276304001	PERMATA ANUGERAH YALAPERSADA							41019				Non Efektif	2018-06-04 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
011409661532001	TECTONIA GRANDIS							42918				Non Efektif	2019-10-18 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
025867227618000	HOKKY FAMILI	JL ANCHOR PLAZA GRAHA FAMILI BLOK C NO 28	081234804588	CV	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46319	KOTA SURABAYA		JAWA TIMUR	Normal	2007-07-05 00:00:00	2007-09-06 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
936249663604000	TAMAN TIMUR REGENSI	PERUMAHAN THE CHOFA DARMO SATELIT TOWN, JL MAGNOLIA BLOK BLOK CM 17	085735249683	PT	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	68200	KOTA SURABAYA		JAWA TIMUR	Normal	2019-12-02 00:00:00	2021-05-24 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
749944187615000	SARANA METAL JAYATAMA	JL KUTISARI IV NO 2	081366363887	PT	BADAN	TENGGILIS MEJOYO	KUTISARI	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2016-01-20 00:00:00	2016-02-17 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
011082021631000	MERATUS LINE	JL ALOON ALOON PRIOK NO 27	08121650958	PT	BADAN	KREMBANGAN	PERAK BARAT	50131	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
018343541606000	WIJAYA KARYA	JL MANYAR KERTOARJO VII NO 3	0815031905	CV	BADAN	GUBENG	MOJO	46591	KOTA SURABAYA		JAWA TIMUR	Normal	1998-06-12 00:00:00	1998-06-29 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
011082021113001	MERATUS LINE							50131				Normal	2005-12-30 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
011082021509001	MERATUS LINE							50131				Normal	2022-06-08 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
011082021731001	MERATUS LINE							50131				Normal	1999-05-14 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
014538730654001	EKA MATRA TANI							47763				Normal	2010-08-18 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
016638223625001	MEDIA CIPTA PERKASA							41019				Non Efektif	2012-11-19 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
068757905616001	DJOKO ANDONO	JL GEMBONG SAWAH 1 RT 007 RW 004	0811312829		OP	SIMOKERTO	KAPASAN	96990	KOTA SURABAYA	3,57811E+15	JAWA TIMUR	Normal	2009-06-10 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
022069728215001	BAHANA LINE							50131				PL/DE	2011-06-22 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
022069728943001	BAHANA LINE							46610				PL/DE	2012-02-24 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
026701615901001	BIOMETRIK CITRA SOLUSI							61924				PL/DE	2014-11-19 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
027767300605000	MAHAKAM MINING RESOURCES	JL KEMAYORAN BARU NO 43 RT 000 RW 000	085104930704	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	05100	KOTA SURABAYA		JAWA TIMUR	Normal	2008-07-07 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
031202542605000	DEPO SURABAYA SEJAHTERA	JL TANJUNG SADARI NO 90	081808225566	PT	BADAN	KREMBANGAN	PERAK BARAT	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2012-08-31 00:00:00	2012-11-20 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
839799855614000	WIRATECH JAYA MANDIRI	JL. BUBUTAN NO 79	6281236410008	CV	BADAN	BUBUTAN	BUBUTAN	47793	KOTA SURABAYA		JAWA TIMUR	Normal	2018-02-08 00:00:00	2019-08-01 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
016823221609000	BINTANGNUSANTARA UTAMA	JL PAGESANGAN BARU BLOK VIII NO 5	0318272510	PT	BADAN	JAMBANGAN	PAGESANGAN	35114	KOTA SURABAYA		JAWA TIMUR	Normal	1994-09-12 00:00:00	1994-11-07 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
022565766631001	SUBUR MITRA SUKSES	MARGOMULYO INDUSTRI IV BLOK G NO 14-16	0317490044	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	46339	KOTA SURABAYA		JAWA TIMUR	Normal	2020-12-21 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
817587793618000	DJATI PERKASA NIAGA INDONESIA	JL PAKIS ARGOSARI BLOK C NO 6	08123577855	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	46335	KOTA SURABAYA		JAWA TIMUR	Normal	2017-04-11 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
018797787619000	JAYA TEKNIK	JL MULYOSARI PRIMA I NO 16 (MB-10)	0315963645	CV	BADAN	MULYOREJO	KALISARI	47523	KOTA SURABAYA		JAWA TIMUR	Normal	2000-03-21 00:00:00	2001-04-17 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
022064810613006	AGASAM	TAMAN SAMPOERNA 6 RT.008 RW.002, KREMBANGAN UTARA		PT	BADAN	PABEAN CANTIAN	KREMBANGAN UTARA	47781	KOTA SURABAYA		JAWA TIMUR	PL/DE	2009-12-07 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
744764101619001	MITRA ABADI SUCCESSINDO	JL LEBAK ARUM BLOK 5 NO 65 RT 006 RW 009	081216673398	PT	BADAN	TAMBAKSARI	GADING	47797	KOTA SURABAYA		JAWA TIMUR	Normal	2019-02-12 00:00:00	\N	2019-08-06 00:00:00	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
014694210611001	JATIM WATKORAYA	JL JAGALAN NO 39	087855702800	PT	BADAN	GENTENG	PENELEH	46491	KOTA SURABAYA		JAWA TIMUR	Normal	2018-04-17 00:00:00	\N	2021-05-24 00:00:00	user_2smZfLt4t79qd8RpnHsGxAFWJgq
022064810613000	AGASAM	JL RUNGKUT INDUSTRI RAYA NO 18	628161881296	PT	BADAN	GUNUNG ANYAR	RUNGKUT TENGAH	47781	KOTA SURABAYA		JAWA TIMUR	Normal	2003-03-18 00:00:00	2003-06-16 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
014540199801001	BUMI MENARA INTERNUSA	JL KIMA XV KAV R NO 4 C RT 004 RW 002, KOTA MAKASSAR				BIRINGKANAYA	DAYA	10299	KOTA MAKASSAR			Normal	2014-06-17 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
015678816923001	TRISNA KARYA							42101				Normal	2021-07-14 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
017227679603001	EKAPERMATA SURYASENTOSA							68111				Normal	2009-12-01 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
014540199732001	BUMI MENARA INTERNUSA							10299				PL/DE	2008-08-11 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
022064810061001	AGASAM							47781				Normal	2006-12-12 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
018347708027001	ANUGRAH EKSTRAVISI RAYA							47521				Normal	2008-06-24 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
020098620643001	DANTRINDO							31001				Normal	2013-01-04 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
025150137617001	MITRA SURYA PERSADA							41019				Normal	2018-04-19 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
022064810731001	AGASAM							47781				Non Efektif	2006-12-11 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
026094276029001	PERMATA ANUGERAH YALAPERSADA							41019				Non Efektif	2022-03-24 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
313162372724001	PRANATA LINES							50131				Non Efektif	2016-08-01 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
011409661601001	TECTONIA GRANDIS							42918				Non Efektif	2016-07-15 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
311640593619000	WIJAYA MEGA PUTERA	LEGUNDI SUMO ESTATE BLOK D NO 08 RT 001 RW 001	085707070072	PT	BADAN	DRIYOREJO	KRIKILAN	46599	KAB. GRESIK		JAWA TIMUR	Normal	2010-02-25 00:00:00	2017-12-21 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
704721430923001	MITRA BAHARI LOGISTINDO							52291				Normal	2020-09-29 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
740201033604000	SHERWIN WILLIAMS INDONESIA	KOMPLEK PERGUDANGAN MARGOMULYO BLO D-17/09 RT 003 RW 007	623199001531	PT	BADAN	TANDES	BALONGSARI	20221	KOTA SURABAYA		JAWA TIMUR	Normal	2015-09-23 00:00:00	2015-11-16 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
026226274611000	UNITED SHIPPING INDONESIA	JL GONDOSULI NO 08 RT 005 RW 006	08123982828	PT	BADAN	GENTENG	KETABANG	50131	KOTA SURABAYA		JAWA TIMUR	Normal	2007-09-03 00:00:00	2009-03-05 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
015265515631000	ADYABUANA PERSADA	JL MLIWIS NO 37	081357689798	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	23929	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
018132860613000	PELAYARAN MANA LAGI	JL KARET NO 104 RT 001 RW 001	081249358439	PT	BADAN	PABEAN CANTIAN	BONGKARAN	50131	KOTA SURABAYA		JAWA TIMUR	Normal	1997-06-17 00:00:00	2009-06-15 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
019227529611000	SANDILY INDOSING GEMILANG	KOMPLEK ANDHIKA PLAZA LT.II KAV 1-2 JL SIMPANG DUKUH NO 38-40 RT 002 RW 009	0315317996	PT	BADAN	GENTENG	KAPASARI	47412	KOTA SURABAYA		JAWA TIMUR	Normal	2001-05-04 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
028174977613000	ANGKASA MESIN SURABAYA	JL KEMBANG JEPUN NO 25	081331659805	CV	BADAN	PABEAN CANTIAN	BONGKARAN	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2010-09-06 00:00:00	2010-09-06 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
805199130604000	JAYAMULIA MAKMUR BERSAMA	RAYA SUKOMANUNGGAL JAYA 5 RUKO SATELITE TOWN SQUARE BLOK B-26	0317322896	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	46693	KOTA SURABAYA		JAWA TIMUR	Normal	2016-12-13 00:00:00	2017-02-21 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
015265515631001	ADYABUANA PERSADA	JL EMBONG MALANG NO 61-65	081357689897	PT	BADAN	TEGALSARI	KEDUNGDORO	23931	KOTA SURABAYA		JAWA TIMUR	Normal	2007-09-04 00:00:00	\N	2020-07-30 00:00:00	user_2smb3nSakuIH32TbOrrGYEFR6S3
806254074615000	SUDHA AGRO MAKMUR	JL RUNGKUT INDUSTRI VIII NO 16	081330587851	CV	BADAN	TENGGILIS MEJOYO	KUTISARI	47191	KOTA SURABAYA		JAWA TIMUR	Normal	2016-11-28 00:00:00	2017-10-27 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
011082021801001	MERATUS LINE							50131				Normal	2009-05-13 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
011082021914001	MERATUS LINE							50131				Normal	2016-06-23 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
011082021955001	MERATUS LINE							41012				Non Efektif	2012-10-10 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
023378888614001	DWIJAYA SENTOSA ABADI	JL MARGOMULYO PERMAI III BLOK D-22 RT 001 RW 001	031-7483652	PT	BADAN	TANDES	BALONGSARI	46620	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2012-09-14 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
908008451604000	NATALIE RENATA YACOB	JL VILLA BUKIT REGENCY 1 BLOK BLOK PC 8 NO 22 RT 001 RW 016	62811343663		OP	SAMBIKEREP	LONTAR	Z5000	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	2019-03-13 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
022069728953001	BAHANA LINE							50131				Non Efektif	2017-05-17 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
068757905616000	DJOKO ANDONO	TAMAN HUNIAN SATELIT JL SATURNUS BLOK GS NO 21 RT 010 RW 003	62811312829		OP	SUKOMANUNGGAL	TANJUNGSARI	64931	KOTA SURABAYA	3,57811E+15	JAWA TIMUR	Normal	1996-04-26 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
015733348609001	ASSA LAND	JL NGAGEL NO 123 RT 001 RW 002	081234568274	PT	BADAN	WONOKROMO	NGAGEL	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2011-12-19 00:00:00	\N	2021-05-24 00:00:00	user_2smaNyTgjEYShVzC31CcgVW2p9W
032692899027000	BANGUN CITRA PALU	RUKO MEGAH GALAXY BLOK BLOK 14 B NO 09	02142881116	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2012-11-23 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
021143854606001	SURYA SEJAHTERA	JL RAYA NGINDEN 139 B,C,D, NGINDEN JANGKUNGAN	082334255125	CV	BADAN	SUKOLILO	NGINDEN JANGKUNGAN	45401	KOTA SURABAYA		JAWA TIMUR	Normal	2009-01-29 00:00:00	\N	2019-08-21 00:00:00	user_2smaIfODFlzm8YDJfrstldzV5BA
311540454615000	MULTICAPITAL SARANA UTAMA	JL GUNUNG ANYAR TAMBAK UTARA I NO 3 RT 008 RW 003	087800071983	PT	BADAN	GUNUNG ANYAR	GUNUNG ANYAR TAMBAK	46631	KOTA SURABAYA		JAWA TIMUR	Normal	2010-01-29 00:00:00	2011-03-15 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
014815328605001	PUTRAGUNA JAYAMULIA	JL LAKSDA M NASIR BLOK F-10 NO 29 RT 000 RW 000	085967982278	PT	BADAN	KREMBANGAN	PERAK BARAT	52293	KOTA SURABAYA		JAWA TIMUR	Normal	2019-10-07 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
031133275615000	EMJEBE PHARMA	JL RAYA BABATAN KM 4	085655923152	PT	BADAN	PURWOSARI	BAKALAN	21012	KAB. PASURUAN		JAWA TIMUR	Normal	2011-07-19 00:00:00	2012-03-29 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
040228553605000	RUDY SOETARSO	JL KEMAYORAN BARU NO 86 RT 0 RW 0	081230216279		OP	KREMBANGAN	KEMAYORAN	Z5000	KOTA SURABAYA	3,57815E+15	JAWA TIMUR	Normal	1983-12-04 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
846552164618000	SENTOSA SAKTI MAKMUR	JALAN DUKUH KUPANG BLOK 20 NO 38 RT 004 RW 001	6282233522218	PT	BADAN	DUKUH PAKIS	DUKUH KUPANG	42209	KOTA SURABAYA		JAWA TIMUR	Normal	2018-04-17 00:00:00	2018-05-21 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
317136596604000	BAROKAH MANFAAT DUNIA AKHIRAT	KOMPLEK PERGUDANGAN BUMI MASPION BLOK VIIC/12	085655377780	PT	BADAN	BENOWO	ROMOKALISARI	43291	KOTA SURABAYA		JAWA TIMUR	Normal	2013-03-14 00:00:00	2013-03-26 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
014661623631000	KERAMIK DIAMOND INDUSTRIES	JL RUNGKUT MUTIARA BLOK B NO 04	08183856005555	PT	BADAN	GUNUNG ANYAR	RUNGKUT TENGAH	23929	KOTA SURABAYA		JAWA TIMUR	Normal	1990-01-13 00:00:00	1990-01-13 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
017162652604000	INDOMANDIRI ISOLASI	JL RAYA DARMO PERMAI TIMUR NO 19 Y	62317318999	PT	BADAN	SUKOMANUNGGAL	PUTAT GEDE	43291	KOTA SURABAYA		JAWA TIMUR	Normal	2012-01-02 00:00:00	2012-01-02 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
012144366631000	BAMBANG DJAJA	JL RUNGKUT INDUSTRI III NO 56	082257046397	PT	BADAN	GUNUNG ANYAR	RUNGKUT MENANGGAL	27113	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
018347708503001	ANUGRAH EKSTRAVISI RAYA	KAWASAN INDUSTRI CANDI KIC BLOK 8-B RT 000 RW 000, KOTA SEMARANG				NGALIYAN	BAMBANKEREP	47521	KOTA SEMARANG			Normal	2024-03-01 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
014540199617001	BUMI MENARA INTERNUSA							10299				Normal	2017-04-03 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
063553911606000	SOEGWANTO	JL RAYA GUBENG NO 100	62811589966		OP	GUBENG	GUBENG	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	1985-05-10 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
017394156402001	MITRA USAHA PANDU ARTHA							47797				Normal	2023-10-16 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
018137448613000	ENSYSTECH	JL. RAYA KUPANG BARU NO 27 RT 004 RW 005	085106015638	CV	BADAN	DUKUH PAKIS	DUKUH KUPANG	46491	KOTA SURABAYA		JAWA TIMUR	Normal	1999-08-02 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
022064810424001	AGASAM							47781				PL/DE	2006-12-11 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
022064810512001	AGASAM							47781				PL/DE	2007-11-27 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
022064810722001	AGASAM							47781				PL/DE	2006-12-11 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
011089620628001	ARNOLDUS <POLIKLINIK/BKIA MARGI RAHAYU>							86103				Normal	1985-04-19 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
026094276601001	PERMATA ANUGERAH YALAPERSADA							41019				Normal	2013-09-30 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
704721430043001	MITRA BAHARI LOGISTINDO							52291				Non Efektif	2019-08-07 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
022095590611000	EASTERN MART	JL JAKSA AGUNG SUPRAPTO BLOK - NO 31 RT 000 RW 000	08121712288	PT	BADAN	GENTENG	KETABANG	47593	KOTA SURABAYA		JAWA TIMUR	Normal	2006-01-27 00:00:00	2009-11-23 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
022572135614000	PERGUDANGAN KALIANAK RAYA	JL KALIANAK BARAT NO 116 RT 002 RW 001	08179311939	PT	BADAN	ASEM ROWO	GENTING KALIANAK	52101	KOTA SURABAYA		JAWA TIMUR	Normal	2007-05-03 00:00:00	2007-10-25 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
843699323606000	MEDISHOP INDONESIA SEHAT	JL ABDUL WAHAB SIAMIN RC-23 RT 001 RW 007	085107002500	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	46441	KOTA SURABAYA		JAWA TIMUR	Normal	2018-03-22 00:00:00	2018-07-09 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
022066062613000	SAMAS AGUNG TRANS	JL KALIMAS BARU NO 71 RT 006 RW 001	0895400919070	PT	BADAN			52291				Normal	2003-11-12 00:00:00	2011-10-03 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
458069648604000	IVO CHRISTA PRAJOGO	JL RAYA SATELIT SELATAN IN NO.39, SURABAYA	081236883388		OP	SUKOMANUNGGAL	TANJUNGSARI	Z5000	KOTA SURABAYA	3,57828E+15	JAWA TIMUR	Normal	2012-06-29 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
011082021126001	MERATUS LINE							50131				Normal	2012-10-30 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
011082021712001	MERATUS LINE							52293				Normal	1999-09-07 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
040572273611000	SULISTIANI SAMPOERNA	JL AMBENGAN NO 19 RT 001 RW 009	62315474816		OP	GENTENG	KETABANG		KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	2000-02-23 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
011082021834001	MERATUS LINE							50131				Normal	2013-03-15 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
019226679225001	PERKASA MULTI PERSADA							46599				PL/DE	2019-11-19 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
022066062831001	SAMAS AGUNG TRANS							52293				Normal	2011-03-01 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
022069728504001	BAHANA LINE							50111				PL/DE	2009-03-19 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
906125273607000	ANGGAR KULAWARGA UTAMA	JL NGINDEN II NO 109 RT 002 RW 002	08563289019	PT	BADAN	SUKOLILO	NGINDEN JANGKUNGAN	46638	KOTA SURABAYA		JAWA TIMUR	Normal	2019-03-01 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
017310475607000	GIGA GALAXY	JL KERTAJAYA INDAH TIMUR NO 33	085104727600	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	68111	KOTA SURABAYA		JAWA TIMUR	Normal	1997-04-24 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
022064810613005	AGASAM	TAMAN SAMPOERNA 6 RT.008 RW.002, KREMBANGAN UTARA		PT	BADAN	PABEAN CANTIAN	KREMBANGAN UTARA	47781	KOTA SURABAYA		JAWA TIMUR	PL/DE	2009-12-07 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
024542730631000	PRIMA PERSADA NUSANTARA	JL GUBENG KERTAJAYA V RAYA NO 09 RT 002 RW 001	0859180440518	PT	BADAN	GUBENG	GUBENG	42204	KOTA SURABAYA		JAWA TIMUR	Normal	2005-04-01 00:00:00	2005-04-11 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
022572366614000	KAIROS LOGAM MAKMUR	JL MARGOMULYO INDUSTRI XI-31 BLOK JJ NO 14-15 RT 001 RW 001	08113511116	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	24202	KOTA SURABAYA		JAWA TIMUR	Normal	2007-06-21 00:00:00	2008-02-29 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
027770031618000	ILYAS SAFIRA SUKRI	RAYA WIYUNG NO.101 RT.003 RW.003, JAJARTUNGGAL	081703227503	YAY	BADAN	WIYUNG	JAJAR TUNGGAL	88911	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2009-07-13 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
015678816614000	TRISNA KARYA	JL REMBANG SELATAN NO 33 RT 004 RW 005	081939372094	PT	BADAN	BUBUTAN	JEPARA	42101	KOTA SURABAYA		JAWA TIMUR	Normal	1992-05-06 00:00:00	2007-07-13 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
314516436618000	ANUGERAH HUTAMA ALAM	LIDAH HARAPAN TIMUR, PERUM LEMBAH HARAPAN NO 9	08113238702	PT	BADAN	LAKARSANTRI	LIDAH WETAN	07301	KOTA SURABAYA		JAWA TIMUR	Normal	2012-01-18 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
315000687614000	BERKAH NUSANTARA	JL. PERAK TIMUR NO 134	082131045030	CV	BADAN			46599				Normal	2012-04-04 00:00:00	2012-04-09 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
021143854614002	SURYA SEJAHTERA	JL KEDUNGDORO NO 2	085100767412	CV	BADAN	SAWAHAN	SAWAHAN	45401	KOTA SURABAYA		JAWA TIMUR	Normal	2009-01-13 00:00:00	\N	2019-07-24 00:00:00	user_2smaIfODFlzm8YDJfrstldzV5BA
931003461619001	ATAP PIRANTI MAYA	KENJERAN 300, RUKO CENTER POINT BLOK A NO 6 RT 008 RW 002	08165423350	CV	BADAN	TAMBAKSARI	GADING	62013	KOTA SURABAYA		JAWA TIMUR	Normal	2020-09-07 00:00:00	\N	2021-05-24 00:00:00	user_2smaNyTgjEYShVzC31CcgVW2p9W
064086374614000	KWAN MULYADI KARTONO	JL RADEN SALEH NO 14-D RT 003 RW 005	08113459488		OP	BUBUTAN	BUBUTAN	47791	KOTA SURABAYA	3,57813E+15	JAWA TIMUR	Normal	1989-05-31 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
589879808619000	DEVINA KONATRA	PERUMAHAN GRAHA FAMILI BLOK K NO 31 RT 004 RW 002	081808867789		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	2010-12-17 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
703641050604000	WIRA MAS INDOBANGUN	JL RAYA LIDAH KULON NO 88 RT 001 RW 003	082131416225	PT	BADAN	LAKARSANTRI	LIDAH KULON	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2014-06-05 00:00:00	2014-07-24 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
018347708418001	ANUGRAH EKSTRAVISI RAYA	KOMPLEK PERGUDANGAN BLOK H NO 39, KAB. TANGERANG				KOSAMBI	CENGKLONG	47521	KAB. TANGERANG			Non Efektif	2022-07-28 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
795187384618000	SIMON WIBOWO	JL KUPANG INDAH 16 NO 49 RT 005 RW 005	082180916432		OP	DUKUH PAKIS	DUKUH KUPANG	Z5000	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	2009-08-31 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
014540199651001	BUMI MENARA INTERNUSA							10299				Non Efektif	1996-01-19 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
312071285614000	SURYA PRIMA SURABAYA	JL MARGOMULYO 44 BLOK CC NO 17 RT 001 RW 001	0811311908	PT	BADAN	ASEM ROWO	ASEM ROWO	47736	KOTA SURABAYA		JAWA TIMUR	Normal	2010-06-28 00:00:00	2010-07-22 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
022064810063001	AGASAM							47781				PL/DE	2006-12-11 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
022064810076001	AGASAM							47781				Non Efektif	2007-11-28 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
022064810411001	AGASAM							47781				Non Efektif	2006-12-11 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
022064810451002	AGASAM							47781				PL/DE	2006-12-11 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
022064810701001	AGASAM							47781				PL/DE	2006-12-11 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
013198544607000	DIAN LESTARI PERDANA	JL EMBONG MALANG NO 61-65	0315320120	PT	BADAN	TEGALSARI	KEDUNGDORO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	1989-09-18 00:00:00	1991-08-01 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
015353840605000	NIAGATAMA RAHARJA	JL KALISOSOK KIDUL NO 02 RT 000 RW 000	081133388214	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	46447	KOTA SURABAYA		JAWA TIMUR	Normal	1994-12-07 00:00:00	2004-05-26 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
028174860005001	MAHKOTA ABADI PRIMA JAYA							46209				PL/DE	2012-05-01 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
028172823026001	BUANA TUNAS SEGARA SUBUR							47216				PL/DE	2010-03-18 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
026701615615000	BIOMETRIK CITRA SOLUSI	JL PANJANG JIWO 46-48 (RUKO PANJI MAKMUR) BLOK A NO 10	08113632712	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	47411	KOTA SURABAYA		JAWA TIMUR	Normal	2007-05-24 00:00:00	2012-07-24 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
713881258609000	BIRAWIDHA GARDA SANTOSA	JL KETINTANG BARU SELATAN I BLOK A NO 104 RT 000 RW 000	6285330804218	PT	BADAN	GAYUNGAN	KETINTANG	85440	KOTA SURABAYA		JAWA TIMUR	Normal	2014-11-05 00:00:00	2016-01-25 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
015265895613000	TENAGA KERJA BONGKAR MUAT<TKBM> USAHA KARYA TG.PERAK	JL KALIMAS BARU NO 107	0313291685	KOP	BADAN			66114				Normal	1990-06-28 00:00:00	2018-09-25 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
020674198609000	SARANA DEKINDO UTAMA	KO RUKO JL RAYA JEMURSARI 76 BLOK C NO 12 RT 001 RW 007	081331228689	PT	BADAN	WONOCOLO	JEMUR WONOSARI	47529	KOTA SURABAYA		JAWA TIMUR	Normal	2001-06-08 00:00:00	2001-06-25 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
024545378619000	DUTA KARYA BERSATU	JL MANYAR KERTOARJO III/52 RT 00 RW 00	082127676669	PT	BADAN	MULYOREJO	MANYAR SABRANGAN	81210	KOTA SURABAYA		JAWA TIMUR	Normal	2012-04-02 00:00:00	2012-04-02 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
705759777615000	KARYA WARNA INDONESIA	JL RAYA KENJERAN NO 637 RT 004 RW 005	082245191212	PT	BADAN	MULYOREJO	KALIJUDAN	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2014-07-03 00:00:00	2014-08-18 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
346347677618000	TOMY WIDYA,TJOA	PULAU GOLF FAMILY 2 / G-90 RT.004 RW.002, PRADAH KALIKENDAL	08973181979		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	2010-05-04 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
011082021811001	MERATUS LINE							50131				Normal	1991-05-15 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
014538730655001	EKA MATRA TANI							47763				Normal	2009-12-04 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
016638223644002	MEDIA CIPTA PERKASA							41012				PL/DE	2009-11-02 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
022066062042001	SAMAS AGUNG TRANS							52291				Normal	2013-04-10 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
022069728072001	BAHANA LINE							50131				Normal	2022-03-23 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
931003461611000	ATAP PIRANTI MAYA	JL PEMUDA, MYCO COWORKING SPACE TRILLIUM NO 108-116	081938068877	CV	BADAN	GENTENG	EMBONG KALIASIN	63990	KOTA SURABAYA		JAWA TIMUR	Normal	2019-10-10 00:00:00	2021-05-24 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
014518286631000	SARI MAS PERMAI	JL WARU GUNUNG NO 23	081233429678	PT	BADAN	KARANG PILANG	WARU GUNUNG	10423	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
011087723611000	KAS PEMBANGUNGUNAN KOTA SURABAYA	JL SEDEP MALEM NO 9-11 RT 000 RW 000	081331323247	YAY	BADAN	GENTENG	KETABANG	68111	KOTA SURABAYA		JAWA TIMUR	Normal	1982-11-05 00:00:00	\N	2023-08-01 00:00:00	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
022064810613008	AGASAM	TAMAN SAMPOERNA 6 RT.008 RW.002, KREMBANGAN UTARA		PT	BADAN	PABEAN CANTIAN	KREMBANGAN UTARA	47781	KOTA SURABAYA		JAWA TIMUR	PL/DE	2010-01-21 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
012111209606000	PENDIDIKAN PERHIMPUNAN BANK UMUM NASIONAL SWASTA JAWA TIMUR	JL WONOREJO UTARA NO 16 RT 004 RW 001	081703217175	YAY	BADAN	RUNGKUT	WONOREJO	85321	KOTA SURABAYA		JAWA TIMUR	Normal	1987-10-26 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
022085286618000	AGRO TANI NUSANTARA	SUBCO SPAZIO SUITES 525 A JL MAYJEND YONO SOEYOWO BLOK KAV 3	081217111078	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	47219	KOTA SURABAYA		JAWA TIMUR	Normal	2003-02-21 00:00:00	2004-10-21 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
011329133631000	BHIRAWA STEEL	JL MARGOMULYO NO 6 RT 001 RW 001	0317491719	PT	BADAN	TANDES	KARANG POH	24102	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
924478712611000	SURYA MENTARI PROPERTINDO	JL BASUKI RACHMAD NO 45-47	6281357155335	PT	BADAN	GENTENG	EMBONG KALIASIN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2019-08-06 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
800912503619000	WIWIK SANDORA	JL BABATAN PANTAI UTARA BLOK 2 NO 20 RT 001 RW 001	08123039469		OP	MULYOREJO	DUKUH SUTOREJO	Z5000	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	2016-09-21 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
140914102604000	LUKAS SURIJO HARTONO	PERUMAHAN BUKIT GOLF INTERNASIONAL BLOK BLOK GC-2 NO 24 RT 002 RW 004	628112990938		OP	LAKARSANTRI	LAKARSANTRI	47729	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	2010-06-08 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
022077226615000	CENTRAL WIRE INDUSTRIAL	JL RUNGKUT INDUSTRI RAYA NO 17A	081239061988	PT	BADAN	RUNGKUT	RUNGKUT KIDUL	27320	KOTA SURABAYA		JAWA TIMUR	Normal	2003-08-04 00:00:00	2003-08-04 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
026332528605000	BAHANA OCEAN LINE	JL LAKSDA M NASIR 29 BLOK B NO 10 RT 000 RW 000	08113536363	PT	BADAN	KREMBANGAN	PERAK BARAT	50131	KOTA SURABAYA		JAWA TIMUR	Normal	2009-11-12 00:00:00	2012-07-11 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
017077116606000	BUMIMANUNGGAL SEJAHTERA	JL KALIMANTAN NO 16 B	088990428500	PT	BADAN	GUBENG	GUBENG	46491	KOTA SURABAYA		JAWA TIMUR	Non Efektif	1996-02-12 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
015678816532001	TRISNA KARYA							42101				PL/DE	2011-10-28 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
015678816811001	TRISNA KARYA							42101				PL/DE	2008-07-31 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
014540199645001	BUMI MENARA INTERNUSA							10219				Normal	2014-10-17 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
016212904804001	HARINDRA SURYASEMPURNA							52291				PL/DE	2016-05-17 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
837985589604000	SEGAR KUMALA PERSADA	MARGOMULYO INDAH H.28	082117357366	PT	BADAN	TANDES	MANUKAN WETAN	46312	KOTA SURABAYA		JAWA TIMUR	Normal	2018-01-19 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
022064810404001	AGASAM							47781				PL/DE	2006-12-11 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
016106999614000	ASIAPUTRA CEMERLANG	JL MARGOMULYO 44 BLOK B NO 5-6	082139251443	PT	BADAN	ASEM ROWO	ASEM ROWO	77393	KOTA SURABAYA		JAWA TIMUR	Normal	1994-04-26 00:00:00	1994-06-20 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
023772023631000	CAHAYA UTAMA	KOMPLEK KANTOR MANGGA DUA BLOK A-6 NO 1	62318480903	PT	BADAN	WONOKROMO	JAGIR	78200	KOTA SURABAYA		JAWA TIMUR	Normal	2004-03-25 00:00:00	2004-12-24 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
022085286041001	AGRO TANI NUSANTARA							46447				PL/DE	2003-04-29 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
026094276034001	PERMATA ANUGERAH YALAPERSADA							41019				Normal	2022-12-04 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
026094276723001	PERMATA ANUGERAH YALAPERSADA							41019				Non Efektif	2021-08-30 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
704721430503001	MITRA BAHARI LOGISTINDO							52291				Non Efektif	2016-10-12 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
704721430831001	MITRA BAHARI LOGISTINDO							52291				Normal	2020-03-10 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
317374619609000	SARANA BAHTERA PERKASA	KO RUKO RAYA JEMURSARI 76 BLOK D NO 19 RT 001 RW 007	082265142785	PT	BADAN	WONOCOLO	JEMUR WONOSARI	45302	KOTA SURABAYA		JAWA TIMUR	Normal	2013-04-17 00:00:00	2013-05-22 00:00:00	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
021137245614000	PERMATA ANUGRAH UTAMA	JL. BALIWERTI NO 52 RT 003 RW 004	62312355	CV	BADAN	BUBUTAN	ALUN-ALUN CONTONG	46633	KOTA SURABAYA		JAWA TIMUR	Normal	2003-03-21 00:00:00	2003-03-25 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
016638223614000	MEDIA CIPTA PERKASA	JL DUKUH KUPANG TIMUR XVII/18 RT.005 RW.009, PAKIS	62315673911	PT	BADAN	SAWAHAN	PAKIS	42101	KOTA SURABAYA		JAWA TIMUR	Normal	2007-12-10 00:00:00	1994-07-18 00:00:00	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
855608188618000	MULTI MANDIRI INVESTAMA	JL PULAU GOLF FAMILY BLOK 2 NO G-90 RT 004 RW 002	628973181979	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	68200	KOTA SURABAYA		JAWA TIMUR	Normal	2018-08-08 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
011082021713001	MERATUS LINE							50133				Non Efektif	2014-04-02 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
011082021822001	MERATUS LINE							50131				Normal	2012-10-22 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
014538730655002	EKA MATRA TANI							47763				PL/DE	2010-11-05 00:00:00	\N	\N	user_2smb3nSakuIH32TbOrrGYEFR6S3
015268816042001	PELAYARAN SAMASAGUNG TUNGGALPERKASA							52221				Normal	2012-11-19 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
060602091604000	ANG WE LI,IR	KOMPLEK VILLA BUKIT REGENSY II BLOK BLOK PD 4 NO 18 RT 002 RW 016	081357129065		OP	SAMBIKEREP	LONTAR	47249	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	1985-01-31 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
022069728823001	BAHANA LINE							50131				Non Efektif	2018-07-17 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
024429284085001	ARENA PRIMA INTERNATIONAL							46641				Normal	2011-07-26 00:00:00	\N	\N	user_2smarUb8cHYvdzDtY5MUO7mYyen
931005540604001	RANCANG SELARAS MEDIA	MARGOMULYO INDAH KOMPLEK PERGUDANGAN MUTIARA BLOK B NO 19	081654233501	CV	BADAN	TANDES	MANUKAN WETAN	62011	KOTA SURABAYA		JAWA TIMUR	Normal	2020-09-07 00:00:00	\N	2021-05-24 00:00:00	user_2smaNyTgjEYShVzC31CcgVW2p9W
028174548614000	DUA BERLIAN PERKASA	JL MARGOMULYO PERMAI BLOK E NO 26	081703424208	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	50131	KOTA SURABAYA		JAWA TIMUR	Normal	2010-05-04 00:00:00	2011-01-27 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
085717049604000	DANIEL DOUGLAS WIJAYA	JL YUPITER BLOK BS NO 14 RT 010 RW 003	628113395888		OP	SUKOMANUNGGAL	TANJUNGSARI	Z5000	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	2013-12-13 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
744936618613000	BERKAH INDUSTRI MESIN ANGKAT	JL  PERAK TIMUR NO 428 RT 002 RW 003	03199093444	PT	BADAN			46599				Normal	2015-11-25 00:00:00	2016-02-19 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
015928815614000	LIANTA SURYA	JL TIDAR 97 , SAWAHAN	082285661900	CV	BADAN	SAWAHAN	SAWAHAN	47523	KOTA SURABAYA		JAWA TIMUR	Normal	1901-01-01 00:00:00	2000-04-07 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
019758309604000	PACKINDO	JL KEMAYORAN BARU NO 29A RT 009 RW 002	6285231610200	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	46695	KOTA SURABAYA		JAWA TIMUR	Normal	2000-05-29 00:00:00	2000-08-14 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
028252765604000	BERLIAN ADHI PERKASA	ROMOKALISARI INDUSTRI RAYA III NO 18-B	62895367295519	PT	BADAN	BENOWO	ROMOKALISARI	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2009-06-18 00:00:00	2017-12-07 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
083286773609001	RR.NOVIRA WIDAJANTI,DR	TAMAN GAYUNG SARI TIMUR MGP .11 RT.003 RW.006, MENANGGAL			OP	GAYUNGAN	MENANGGAL	Z2100	KOTA SURABAYA	3,57823E+15	JAWA TIMUR	PL/DE	2008-12-23 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
911890721611000	CV BANGUN MEGAH PERKASA	JL. PANGLIMA SUDIRMAN NO. 66-68 BUMI MANDIRI TOWER 2	081874669	CV	BADAN	GENTENG	EMBONG KALIASIN	46201	KOTA SURABAYA		JAWA TIMUR	Normal	2019-04-11 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
060558038604000	ROBERT TANSIL	JL PUNCAK PERMAI BLOK BLOK 1 NO 9 RT 006 RW 001	6281331713478		OP	SUKOMANUNGGAL	TANJUNGSARI		KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	1984-12-04 00:00:00	2012-12-12 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
744764101614000	MITRA ABADI SUCCESSINDO	JL RADEN SALEH, KOMP. RADEN SALEH SQUARE BLOK B NO 8 RT 000 RW 000	081228650610	PT	BADAN	BUBUTAN	BUBUTAN	47797	KOTA SURABAYA		JAWA TIMUR	Normal	2015-11-16 00:00:00	2016-01-11 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
704721430801001	MITRA BAHARI LOGISTINDO	JL NUSANTARA NO 26-28 RT 003 RW 006, PATTUNUANG, KOTA MAKASSAR				WAJO	PATTUNUANG	52291	KOTA MAKASSAR			Normal	2020-03-11 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
015678816543001	TRISNA KARYA							42101				Normal	2020-06-29 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
015678816608002	TRISNA KARYA							42101				Normal	2018-11-23 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
017227679612001	EKAPERMATA SURYASENTOSA							68111				PL/DE	2012-05-09 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
022064810023001	AGASAM							47781				PL/DE	2007-01-11 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
017394156416001	MITRA USAHA PANDU ARTHA							47521				Normal	2012-06-06 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
926180704611000	BAHARI SENTOSA JAYA	SUBCO SPAZIO SUITES 525A JL MAYJEN YONO SOEWOYO KAV 3	085107160183	CV	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	03254	KOTA SURABAYA		JAWA TIMUR	Normal	2019-08-21 00:00:00	2020-06-26 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
020919130605000	DUTA PRATAMA	RUKO PARAGON PLAZA BLOK C NO 11	081235162990	CV	BADAN	MENGANTI	KEPATIHAN	46491	KAB. GRESIK		JAWA TIMUR	Normal	2003-04-21 00:00:00	2003-05-07 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
078697471607000	DAYU KAKARTOLO NJOTO	JL DR.SUTOMO NO 31 RT 001 RW 013	03170299999		OP	TEGALSARI	DR. SOETOMO	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	2005-05-03 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
025150137823001	MITRA SURYA PERSADA							41019				Normal	2018-03-13 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
026704494503001	TENO TRACT INDONESIA							43901				Normal	2019-05-27 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
027767300728001	MAHAKAM MINING RESOURCES							05100				Non Efektif	2014-05-23 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
011409661628001	TECTONIA GRANDIS							42918				Normal	2017-09-29 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
704721430834001	MITRA BAHARI LOGISTINDO							52291				Normal	2020-09-28 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
826777286622001	BLUE OCEAN HEART							46523				Normal	2019-12-23 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
012144366602001	BAMBANG DJAJA							27113				Normal	2012-06-06 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
032015216613000	SAMUDRA INDAH PERSADA	KALIMAS BARU NO 38 RT 8 RW 1	0313253498	PT	BADAN			52293				Non Efektif	2012-01-31 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
820157279615000	AMMAR MAKMUR MANDIRI	JL MEDAYU UTARA 27 BLOK G NO 4 RT 005 RW 013	082244847816	CV	BADAN	RUNGKUT	MEDOKAN AYU	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2017-05-22 00:00:00	2018-02-23 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
019297191643001	CHALIDANA INTI CAHAYA							68111				Normal	2005-10-27 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
022064810541001	AGASAM							47781				PL/DE	2006-12-13 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
017395013631000	SUTINDO RAYA MULIA	JL DUPAK NO 135	081332906625	PT	BADAN	BUBUTAN	GUNDIH	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
026094276003001	PERMATA ANUGERAH YALAPERSADA							41019				Normal	2023-02-07 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
011091576003001	INTI DUTA LESTARI PLASINDO							22299				Normal	2019-11-12 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
028174860113001	MAHKOTA ABADI PRIMA JAYA							46209				PL/DE	2016-11-09 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
011409661648001	TECTONIA GRANDIS							42918				PL/DE	2020-06-03 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
704721430922001	MITRA BAHARI LOGISTINDO							52291				Normal	2021-06-03 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
826777286901001	BLUE OCEAN HEART							46523				Normal	2021-09-28 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
016106866642001	YEKAPE SURABAYA							68111				Normal	2013-11-13 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
017395013027001	SUTINDO RAYA MULIA							47521				Normal	2007-12-14 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
014694210614001	JATIM WATKORAYA	JL MAYJEND SUNGKONO NO 46	6287855702800	PT	BADAN	SAWAHAN	PAKIS	47592	KOTA SURABAYA		JAWA TIMUR	Normal	2008-02-13 00:00:00	\N	2015-09-28 00:00:00	user_2smZfLt4t79qd8RpnHsGxAFWJgq
017395013642001	SUTINDO RAYA MULIA							47521				Normal	2021-03-05 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
030711881606000	ARTARAYA TECHNOLOGIES	RUKO PANJI MAKMUR JL PANJANGJIWO BLOK A NO 12	030711881606000	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	47411	KOTA SURABAYA		JAWA TIMUR	Normal	2010-09-07 00:00:00	2011-01-18 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
842659658615000	PHILIP MORRIS SAMPOERNA INTERNATIONAL SERVICE CENTER	JL RUNGKUT INDUSTRI RAYA NO 18 RT 000 RW 000	62318431699	PT	BADAN	GUNUNG ANYAR	RUNGKUT TENGAH	62021	KOTA SURABAYA		JAWA TIMUR	Normal	2018-03-09 00:00:00	2018-06-06 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
031506413606000	AKR SURABAYA LAND CORPORINDO	JL SUMATRA NO 44-46	081553006261	PT	BADAN	GUBENG	GUBENG	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2011-05-06 00:00:00	2011-05-19 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
021138250004001	CENTRAL DIESEL							46599				Normal	2013-10-08 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
021138250903001	CENTRAL DIESEL							46599				Non Efektif	2013-06-25 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
028256915602001	VINO MANDIRI PERKASA	JL. MAYJEND H SOEMADI NO 86B RT 002 RW 005, KAB. MOJOKERTO				KUTOREJO	PESANGGRAHAN	27510	KAB. MOJOKERTO			Normal	2015-05-27 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
016402521086001	PERWIRABHAKTI SENTRASEJAHTERA							46491				Normal	2023-07-06 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
025407990822002	TRI JAYA TANGGUH							10424				Non Efektif	2015-04-14 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
013198544721001	DIAN LESTARI PERDANA							68111				Normal	2005-10-26 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
032945511625001	BANDARTRISULA							46637				Non Efektif	2015-01-22 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
032949638619000	JAYA BERKAH GEMILANG	PERUMAHAN POGOT PALM REGENCY BLOK B-31	085806788229	PT	BADAN	KENJERAN	TANAH KALI KEDINDING	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2013-09-18 00:00:00	2013-10-07 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
032945511821001	BANDARTRISULA							46637				Normal	2014-02-26 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
014694210721004	JATIM WATKORAYA							46491				Normal	2011-01-11 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
703935312515001	MULTI BANGUN INDONESIA							46634				Normal	2022-03-10 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
703935312626002	MULTI BANGUN INDONESIA							46634				PL/DE	2020-09-01 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
745923987541001	KARUNIA INDAH DELAPAN EXPRES							52292				Normal	2019-06-20 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
020539292604000	KINGWI MAKMUR	JL PERGUDANGAN OSOWILANGON PERMAI BLOK BLOK F1	085785914581	CV	BADAN	BENOWO	TAMBAK OSO WILANGUN	47412	KOTA SURABAYA		JAWA TIMUR	Normal	2001-08-06 00:00:00	2017-10-05 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
028250520607001	SUSHI-TEI SURABAYA	TUNJUNGAN PLAZA V UNIT TG-05 02 JL EMBONG MALANG NO 1,3,5	03199001002	PT	BADAN	TEGALSARI	KEDUNGDORO	56101	KOTA SURABAYA		JAWA TIMUR	Normal	2014-02-07 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
012318622032001	ANGKASA PERINDO SAKTI							46591				Normal	2005-10-03 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
187677505615000	NOTO SUTIKNO	JL YKP MEJOYO BLOK A1 NO 41 RT 004 RW 004	08884969333		OP	RUNGKUT	WONOREJO	47211	KOTA SURABAYA	3,57803E+15	JAWA TIMUR	Normal	2005-09-30 00:00:00	2013-04-08 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
066924358604000	HARYADI TJOKRO DJANTO	JL RAYA MAYJEND YONO SOEWOYO NO 66 RT 002 RW 009	081552028000		OP	WIYUNG	BABATAN	47521	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	1992-08-13 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
020495511045001	TRANS WORLD FREIGHT							52291				Non Efektif	2006-03-08 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
350957452607001	FENNY VANDA WIDJAJA	TUNJUNGAN PLAZA 3 LT. LG UNIT 18 JL BASUKI RAHMAT NO 08-12 RT 008 RW 010	081553004937		OP	TEGALSARI	KEDUNGDORO	47249	KOTA SURABAYA	3,57806E+15	JAWA TIMUR	Normal	2019-09-11 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
022565766644001	SUBUR MITRA SUKSES							46339				Normal	2018-12-10 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
935968537615000	POLARIS SUKSES PRIMA	JL RUNGKUT INDUSTRI I NO 15 RT 001 RW 005	08255211088	PT	BADAN	TENGGILIS MEJOYO	KENDANGSARI	64200	KOTA SURABAYA		JAWA TIMUR	Normal	2019-11-27 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
024427536628001	CIPTA KARYA MULTI TEKNIK							41012				Normal	2017-09-29 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
017060922606000	PESONA GRAHA WISATA ALAM	NGAGEL JAYA TENGAH NO.21, PUCANG SEWU	6281222264522	PT	BADAN	GUBENG	PUCANG SEWU	55120	KOTA SURABAYA		JAWA TIMUR	Normal	1995-11-07 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
031133861012001	LADANG KARYA HUSADA							47725				PL/DE	2022-11-30 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
062915640611000	HAUWANTO CHANDRANATA	JL WALIKOTA MUSTAJAB NO 64 RT 001 RW 005	087889168889		OP	GENTENG	KETABANG	Z5000	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	1985-06-24 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
741992721606000	ZEKA AGRO PERKASA	JL NGINDEN 3 NO 4	085755819137	PT	BADAN	SUKOLILO	NGINDEN JANGKUNGAN	46314	KOTA SURABAYA		JAWA TIMUR	Normal	2015-10-15 00:00:00	2016-01-06 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
012326732631000	ISTANA MOBIL SURABAYA INDAH	JL JENDERAL BASUKI RACHMAT NO 33-37	081332165177	PT	BADAN	GENTENG	EMBONG KALIASIN	45101	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
022064810721001	AGASAM							47781				Non Efektif	2007-06-04 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
023378888503001	DWIJAYA SENTOSA ABADI							46620				Non Efektif	2017-10-30 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
312395122655001	ANTAR SURYA MEDIA							73100				PL/DE	2013-03-18 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
664399623901001	APOLLO MANDIRI SEJAHTERA							46523				Non Efektif	2019-04-05 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
012318622614002	ANGKASA PERINDO SAKTI	JL RADEN SALEH NO 36I	085731571625	PT	BADAN	BUBUTAN	BUBUTAN	46631	KOTA SURABAYA		JAWA TIMUR	PL/DE	2012-03-08 00:00:00	\N	2020-07-30 00:00:00	user_2smaWxchS4q6cZDOd2DAzFcvD5R
704721430823001	MITRA BAHARI LOGISTINDO							52291				Non Efektif	2020-08-13 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
060562998606000	LIAUW HIN HOK	JL TANJUNG GOLF G2 NO 3A RT 003 RW 004	085645173038		OP	LAKARSANTRI	LAKARSANTRI	Z5000	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	1984-11-27 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
826777286626001	BLUE OCEAN HEART							46523				Normal	2020-04-17 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
028257905615000	WILSON INDOTOBACCO	JL RUNGKUT INDUSTRI BLOK IV NO 16	081241090757	PT	BADAN	TENGGILIS MEJOYO	KUTISARI	12011	KOTA SURABAYA		JAWA TIMUR	Normal	2008-06-30 00:00:00	2008-07-03 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
803504190614001	SUKSES INDAH METALINDO	MARGOMULYO 44 PERGUDANGAN SURI MULIA BLOK L NO 6C RT 001 RW 001	085102160300	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2021-02-26 00:00:00	\N	2021-05-24 00:00:00	user_2smZfLt4t79qd8RpnHsGxAFWJgq
857271498604000	ANUGERAH MAPAN JAYA	JL ROMOKALISARI INDUSTRI IV NO 27	0313979831	PT	BADAN	BENOWO	ROMOKALISARI	10298	KOTA SURABAYA		JAWA TIMUR	Normal	2018-09-17 00:00:00	2020-03-11 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
011091774606000	DIAN NUSANTARA MURNI <DIANUM>	JL BILITON NO 19	62315030622	PT	BADAN	GUBENG	GUBENG	46651	KOTA SURABAYA		JAWA TIMUR	Normal	1982-11-05 00:00:00	1989-03-21 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
068344944606000	BUDIANTO	JL MANYAR KARTIKA SELATAN NO 2 RT 001 RW 007	62811327605		OP	SUKOLILO	MENUR PUMPUNGAN	Z5000	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	1996-09-10 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
014973648618000	EKAWIRA SEMBADA	JL GRESIK NO 4A RT 001 RW 002	08563289019	PT	BADAN	KREMBANGAN	PERAK BARAT	41019	KOTA SURABAYA		JAWA TIMUR	Normal	1989-09-26 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
070475611604001	HARSONO	MARGOMULYO PERMAI BLOK Q-11 A	7483359		OP	SUKOMANUNGGAL	SUKOMANUNGGAL	47793	KOTA SURABAYA	3,57812E+15	JAWA TIMUR	Non Efektif	2017-10-23 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
312444052619000	BUMI PRANATA LAKSANA	JL KEJAWAN PUTIH MUTIARA NO 17 RT 003 RW 005	081333360517	PT	BADAN	MULYOREJO	KEJAWAAN PUTIH TAMBAK	81210	KOTA SURABAYA		JAWA TIMUR	Normal	2010-11-03 00:00:00	2013-04-02 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
455820068606000	ANTHONY SALIM	JL RAYA DHARMAHUSADA INDAH BLOK AA NO 11 RT 008 RW 004	0318963357		OP	GUBENG	MOJO	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	2012-05-22 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
315361956609000	SINGOSARI MEGAH ABADI	JL MARGOREJO INDAH BLOK A-506 NO 57 RT 001 RW 008	03184123999	PT	BADAN	WONOCOLO	MARGOREJO	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2012-05-25 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
313942005614000	KARURA FREIGHT FORWARDING & LOGISTICS	JL MARGOMULYO PERMAI BLOK K NO 31	6281252767949	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	52292	KOTA SURABAYA		JAWA TIMUR	Normal	2011-10-11 00:00:00	2012-01-02 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
016402521424001	PERWIRABHAKTI SENTRASEJAHTERA							46491				Normal	2010-02-23 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
022065098914001	HERSINDO ANUGERAH MULTITRANS							52291				Normal	2015-04-16 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
032945511504001	BANDARTRISULA							46637				Normal	2014-02-10 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
020495511605000	TRANS WORLD FREIGHT	JL LAKSDA M. NATSIR XXIX BLOK E NO 9 RT 003 RW 011	081335499818	PT	BADAN	KREMBANGAN	PERAK BARAT	52293	KOTA SURABAYA		JAWA TIMUR	Normal	2008-09-03 00:00:00	2008-09-04 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
032945511655001	BANDARTRISULA							46637				Normal	2014-05-13 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
020097390631000	SIANTAR TOP ANUGERAH SEJAHTERA	JL. JEMUR ANDAYANI 50 BLOK H NO.1D-6D, SIWALANKERTO	6281703805248	PT	BADAN	WONOCOLO	SIWALANKERTO	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2001-09-05 00:00:00	2001-09-26 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
032945511922001	BANDARTRISULA							46637				Normal	2020-01-14 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
703935312543001	MULTI BANGUN INDONESIA							46634				Normal	2021-03-19 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
060562923606000	J.B PREMADI ATMODIPURO	JL BILITON NO 32 RT 003 RW 007	085645399862		OP	GUBENG	GUBENG	96990	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	1984-11-27 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
078668787606000	AYDA SULIANTI	JL. BILITON NO 32 RT 003 RW 007	628155079999		OP	GUBENG	GUBENG	Z5000	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	2003-06-12 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
024579732615000	MASTER DAYA UTAMA	RUKO RUNGKUT MAKMUR BLOK C NO 27-28 RT 004 RW 007	62318781188	PT	BADAN	RUNGKUT	KALIRUNGKUT	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2005-08-26 00:00:00	2005-09-05 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
597932508618000	MECHTA SINGGIH PURWANTO	JL HR.MUHAMMAD NO 125 RT 003 RW 001	0811320441		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	2008-12-17 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
664399623606000	APOLLO MANDIRI SEJAHTERA	JALAN NGINDEN INTAN TIMUR 16A NO 10 RT 004 RW 010	0895700624111	PT	BADAN	SUKOLILO	NGINDEN JANGKUNGAN	47414	KOTA SURABAYA		JAWA TIMUR	Normal	2014-02-24 00:00:00	2014-09-24 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
022574453607000	SATYA BHAKTI WISON KOHAR	JL CEMPAKA NO 26	081808219293	YAY	BADAN	TEGALSARI	TEGALSARI	94990	KOTA SURABAYA		JAWA TIMUR	Normal	2009-04-24 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
020097390631002	SIANTAR TOP MULTIFINANCE							64911				PL/DE	2013-01-01 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
022565766603001	SUBUR MITRA SUKSES							46339				Normal	2023-01-27 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
028172344605000	BINTANG LAUT PLATINUM	JL HANG TUAH NO 3 RT 001 RW 009	082245247660	PT	BADAN	SEMAMPIR	UJUNG	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2010-02-01 00:00:00	2010-02-01 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
022565766626001	SUBUR MITRA SUKSES							46339				Normal	2016-12-28 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
750426561643001	KORIN INTIWIRA SEJAHTERA							28191				Normal	2022-10-18 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
022064810631001	AGASAM							47781				Normal	2006-12-13 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
814351755611000	ADI FORTUNE METAL	JL EMBONG TRENGGULI BLOK - NO 24 RT 000 RW 000	62818323779	CV	BADAN	GENTENG	EMBONG KALIASIN	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2017-03-08 00:00:00	2017-08-01 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
026094276447001	PERMATA ANUGERAH YALAPERSADA							41019				Normal	2023-02-28 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
015925910618000	PERWIRAMULTI JAYA KENCANA	JL SIMP.DARMO PERMAI SELATAN IV NO 84	085229028657	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46641	KOTA SURABAYA		JAWA TIMUR	Normal	1993-05-14 00:00:00	1994-02-03 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
704721430713001	MITRA BAHARI LOGISTINDO							52291				Normal	2020-01-17 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
704721430811001	MITRA BAHARI LOGISTINDO							52291				Normal	2019-11-19 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
826777286608001	BLUE OCEAN HEART							46523				Normal	2020-03-30 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
031203094605000	ARTODA BERSAUDARA	JL KEMAYORAN BARU NO 19-21 RT 009 RW 002	623521985	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	25920	KOTA SURABAYA		JAWA TIMUR	Normal	2013-01-07 00:00:00	2013-01-23 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
907864847604000	SUMAVIDA ANUGERAH PANGAN	JL BUNTARAN NO 10C RT 001 RW 002	6282182787878	PT	BADAN	TANDES	MANUKAN WETAN	46311	KOTA SURABAYA		JAWA TIMUR	Normal	2019-03-12 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
726522600613000	TULUS SEHATI TRANSPORT	JL TELUK KUMAI BARAT NO 113/12 RT 003 RW 002	081217046490	PT	BADAN			49431				Normal	2015-03-31 00:00:00	2015-06-23 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
705889426606000	MITRA LANCAR SEJAHTERA	JL KLAMPIS JAYA NO 146 BLOK N NO 307 RT 002 RW 006	08111015798	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2014-07-04 00:00:00	2014-08-01 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
017395013509001	SUTINDO RAYA MULIA							47521				Normal	2002-06-24 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
017395013721001	SUTINDO RAYA MULIA							47521				Normal	2001-01-19 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
033176827604000	ANUGERAH LANGGENG UNTUNG NIAGA	ROMOKALISARI INDUSTRI III NO 3	083830807070	PT	BADAN	BENOWO	ROMOKALISARI	52101	KOTA SURABAYA		JAWA TIMUR	Normal	2013-10-18 00:00:00	2017-08-28 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
020921193632002	PT BORNEO PRIMA							05100				PL/DE	2023-12-31 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
024430571618000	CHALIDANA INTI SAFIRA	JL MENGANTI BLOK C NO 9 RT 003 RW 003	081703227503	PT	BADAN	WIYUNG	JAJAR TUNGGAL	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2005-08-01 00:00:00	2021-05-24 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
718888241609000	BATU PERMATA MULIA	MARGOREJO INDAH BLOK A-506 NO 57 RT 001 RW 008	081330456499	PT	BADAN	WONOCOLO	MARGOREJO	55120	KOTA SURABAYA		JAWA TIMUR	Normal	2015-01-13 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
031130685615000	INDRADHANUSA INDONESIA	RUKO PANJI MAKMUR, JL PANJANGJIWO 46-48 BLOK D NO 07 RT 007 RW 002	082247320893	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	47773	KOTA SURABAYA		JAWA TIMUR	Normal	2011-01-26 00:00:00	2011-01-26 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
040227159607000	HADI SUTIONO	JL TRUNOJOYO NO 29 RT 001 RW 012	082226424567		OP	TEGALSARI	DR. SOETOMO	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2010-09-16 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
262032543901001	CHANDRA LIMANTARA							45403				Normal	2011-04-20 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
016402521903001	PERWIRA BHAKTI SENTRA SEJAHTERA							46491				Non Efektif	2010-03-01 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
931326672619001	ANGKASA MEDIA SOLUSI	JL PUTRO AGUNG WETAN RUKO KENJERAN PALACE BLOK B NO 2 RT 008 RW 002	0818332024	CV	BADAN	TAMBAKSARI	GADING	46691	KOTA SURABAYA		JAWA TIMUR	Normal	2020-09-03 00:00:00	\N	2021-05-24 00:00:00	user_2smaWxchS4q6cZDOd2DAzFcvD5R
032945511624001	BANDARTRISULA							46637				Normal	2014-02-13 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
032945511722001	BANDARTRISULA							46637				Normal	2014-09-30 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
317076057601001	WIRATAMA GRAHA RAHARJA							41011				Normal	2022-08-04 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
067152058028001	SUGIYONO WIYONO SUGIALAM							46900				PL/DE	2002-11-29 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
014694210721005	JATIM WATKORAYA							46491				Normal	2015-06-05 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
703935312625001	MULTI BANGUN INDONESIA							46634				Non Efektif	2020-09-08 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
017926437609001	SARANA TEKNIK WIRATAMA	JL BRATANG WETAN NO 32 RT 001 RW 009	081331506482	PT	BADAN	WONOKROMO	NGAGEL REJO	43211	KOTA SURABAYA		JAWA TIMUR	Normal	2014-05-08 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
021701073618000	SUMBER KURNIA MANDIRI	JL KEBRAON PRAJA BARAT 2 BLOK RC NO 21 RT 005 RW 012	081335332367	PT	BADAN	KARANG PILANG	KEDURUS	46610	KOTA SURABAYA		JAWA TIMUR	Normal	2003-06-17 00:00:00	2004-09-02 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
805271947614000	LOGAMASA ADHINUSA	KOMPLEK PERGUDANGAN SURIMULIA PERMAI BLOK 00-17, JL MARGOMULYO NO 44	085649264526	CV	BADAN	ASEM ROWO	ASEM ROWO	47797	KOTA SURABAYA		JAWA TIMUR	Normal	2016-11-14 00:00:00	2017-11-30 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
016130932626001	INTIDAYA DINAMIKA SEJATI							46599				Normal	2019-12-30 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
021143854608001	SURYA SEJAHTERA							45403				Normal	2014-03-14 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
022084735043001	PRIMA INDOJAYA MANDIRI							46100				Normal	2013-02-27 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
019297191618000	CHALIDANA INTI CAHAYA	JL.RAYA WIYUNG NO. 101 NO 101 RT 024 RW 008	6281703227503	PT	BADAN	WIYUNG	JAJAR TUNGGAL	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2008-08-27 00:00:00	2021-05-24 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
737737585619000	UNIVERSITAS AIRLANGGA	JL MULYOREJO	081380044548	PERSEKUTUAN	BADAN	MULYOREJO	MULYOREJO	85311	KOTA SURABAYA		JAWA TIMUR	Normal	2015-09-04 00:00:00	2016-05-11 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
030710859606000	INTERBRUCKE PERKASA	RUKO KLAMPIS SQUARE JL KLAMPIS JAYA MADYA BLOK C 9 NO 10 E	082337559854	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46620	KOTA SURABAYA		JAWA TIMUR	Normal	2010-07-02 00:00:00	2010-08-06 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
028230126606000	MESIN KASIR ONLINE	RUKO 21 KLAMPIS BLOK A.R.HAKIM 51 BLOK C NO 18-19	082298247676	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2008-10-06 00:00:00	2008-10-29 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
033393372604000	BERINGIN MAS POWERINDO	JAPFA INDOLAND CENTER TOWER I LT. 6/602 JL. JEND. BASUKI RAHMAT NO 129-137 RT 009 RW 002	6282232213821	PT	BADAN	GENTENG	EMBONG KALIASIN	35111	KOTA SURABAYA		JAWA TIMUR	Normal	2013-12-18 00:00:00	2014-01-16 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
751290354643001	TAHTA MAKMUR ABADI							46491				Normal	2016-08-16 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
014694210618001	JATIM WATKORAYA	JL.MJ.SUNGKONO 75 BLOK A1(RUKO DARMO GALERIA) RT.003 RW.005, GUNUNGSARI	031.5674895	PT	BADAN	DUKUH PAKIS	GUNUNG SARI	47592	KOTA SURABAYA		JAWA TIMUR	PL/DE	2002-08-21 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
097519532618000	SUPARMAN,MA	JL KENCANASARI TIMUR BLOK J NO 31-32	081290003899		OP	DUKUH PAKIS	GUNUNG SARI	96990	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	2004-06-14 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
026094276526001	PERMATA ANUGERAH YALAPERSADA							41019				Normal	2020-10-23 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
704721430731001	MITRA BAHARI LOGISTINDO							52291				Normal	2020-12-16 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
033213695613000	SARANA INTI MAJU	JL NGAGEL JAYA SELATAN BLOK B NO 25 RT 010 RW 008	081235044112	CV	BADAN	GUBENG	BARATAJAYA	46495	KOTA SURABAYA		JAWA TIMUR	Normal	2014-01-30 00:00:00	2017-07-26 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
012318622614001	ANGKASA PERINDO SAKTI	JL SEMARANG BLOK A35 NO 94-124	0313510130	PT	BADAN	BUBUTAN	BUBUTAN	46631	KOTA SURABAYA		JAWA TIMUR	PL/DE	2012-03-08 00:00:00	\N	2020-07-30 00:00:00	user_2smaWxchS4q6cZDOd2DAzFcvD5R
020917811605000	PANCA MERAK SAMUDERA	JL KREMBANGAN TIMUR NO 8-10 RT 000 RW 000	085546654751	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	50131	KOTA SURABAYA		JAWA TIMUR	Normal	2002-02-04 00:00:00	2003-11-14 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
014661417606000	HOSION SEJATI	JL MANYAR TIRTOMOYO VII 18	08113255115	PT	BADAN	SUKOLILO	MENUR PUMPUNGAN	46599	KOTA SURABAYA		JAWA TIMUR	Normal	1997-08-29 00:00:00	2013-01-15 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
737997122604000	LOOKMAN DJAJA LOGISTICS	JL RAYA PUTAT GEDE TIMUR NO 3	081233411981	PT	BADAN	SUKOMANUNGGAL	PUTAT GEDE	49431	KOTA SURABAYA		JAWA TIMUR	Normal	2015-08-28 00:00:00	2016-01-14 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
016933004604000	KASIH KARUNIA SEJAHTERA	TAMAN JEMURSARI SELATAN BLOK I NO 11 RT 002 RW 008	081553380234	PT	BADAN	WONOCOLO	JEMUR WONOSARI	46441	KOTA SURABAYA		JAWA TIMUR	Normal	1996-01-04 00:00:00	2005-07-18 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
708493242604000	RAJAPET PASTI SUKSES	JL RUKO GALERI BUKIT INDAH BLOK RK 3 NO 45	6281932168899	PT	BADAN	SAMBIKEREP	LONTAR	47754	KOTA SURABAYA		JAWA TIMUR	Normal	2014-08-25 00:00:00	2014-09-30 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
713797819609000	ALVINDO	MARGOREJO INDAH XIV BLOK C NO 601 RT 003 RW 008	081331675751	PT	BADAN	WONOCOLO	MARGOREJO	46339	KOTA SURABAYA		JAWA TIMUR	Normal	2014-10-31 00:00:00	2015-04-08 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
070475611613000	HARSONO	JL KUPANG INDAH 16 NO 49-A RT 005 RW 005	082180916432		OP	DUKUH PAKIS	DUKUH KUPANG	47592	KOTA SURABAYA	3,57812E+15	JAWA TIMUR	Normal	1999-01-06 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
022065098605000	HERSINDO ANUGERAH MULTITRANS	JL INDRAPURA BARU NO 353 E RT 003 RW 012	081266413011	PT	BADAN			52291				Normal	2011-06-16 00:00:00	2011-06-20 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
314638164606000	BUANA JAYA SURYA	JL PUCANG SEWU NO 49	082264469428	PT	BADAN	GUBENG	PUCANG SEWU	46691	KOTA SURABAYA		JAWA TIMUR	Normal	2012-02-08 00:00:00	2013-07-11 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
016402521604000	PERWIRABHAKTI SENTRASEJAHTERA	JL PATTIMURA PLAZA SEGI 8 BLOK C NO 831	087781002626	PT	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	46491	KOTA SURABAYA		JAWA TIMUR	Normal	2005-01-28 00:00:00	2005-01-31 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
311803563609000	ANUGRAH NIAGA GLOBALINDO	KOMP KANTOR MANGGA DUA JL JAGIR WONOKROMO 100 BLOK B-7 NO 18 RT 000 RW 000	081330515807	CV	BADAN	WONOKROMO	JAGIR	46447	KOTA SURABAYA		JAWA TIMUR	Normal	2011-09-22 00:00:00	\N	2023-09-01 00:00:00	user_2smbQbeE63eIw5egPdMsIgrWUck
012274536644001	BEN SANTOSA							30111				Normal	2011-10-04 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
016402521623001	PERWIRABHAKTI SENTRASEJAHTERA							46491				Normal	2010-02-25 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
024430571626001	CHALIDANA INTI SAFIRA							68111				Normal	2017-05-24 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
032945511521001	BANDARTRISULA							46637				PL/DE	2014-02-20 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
070961925619000	KANGMARTONO TEGUH	PERUMAHAN CHOFA JL ALAMANDA BLOK BLOK RC NO 16 RT 005 RW 003	0811315181		OP	SUKOMANUNGGAL	SUKOMANUNGGAL	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	1999-08-27 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
032945511723001	BANDARTRISULA							46637				Normal	2019-10-15 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
040900003607000	BUDI WIJAYA	JL UNTUNG SUROPATI NO 29	08121765595		OP	TEGALSARI	DR. SOETOMO	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	1983-12-30 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
032945511911001	BANDARTRISULA							46637				Normal	2014-02-13 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
820434306913001	SINAR AGRO GEMILANG INDAH							46201				Normal	2020-07-13 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
065267304611000	BUDI SAID	PERUMAHAN HELICONIA BLOK BLOK RG NO 2 RT 006 RW 006	082302113224		OP	SUKOMANUNGGAL	SONOKWIJENAN	47599	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	1992-11-30 00:00:00	2016-10-25 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
015266554614000	SURYA INDOALGAS	RUKO MEGA GALAXY JALAN KERTAJAYA INDAH TIMUR BLOK 16 A NO 12	08113401331	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	10298	KOTA SURABAYA		JAWA TIMUR	Normal	2009-06-01 00:00:00	2009-06-02 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
014815328216001	PUTRAGUNA JAYAMULIA							46100				PL/DE	2013-11-15 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
061808432604001	SOEGYANTO	JL TANJUNGSARI NO 002	0317490767		OP	SUKOMANUNGGAL	TANJUNGSARI	47301	KOTA SURABAYA	3,57806E+15	JAWA TIMUR	Normal	2006-07-17 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
021143854612001	SURYA SEJAHTERA							45403				Normal	2014-08-14 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
022084735128001	PRIMA INDOJAYA MANDIRI							41019				PL/DE	2007-01-09 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
022084735309002	PRIMA INDOJAYA MANDIRI							42101				Normal	2022-08-22 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
734381809615000	GEMILANGMEDITRA SOLUSINDO	JL RAYA KALIRUNGKUT 23 BLOK A NO 61	0816510190	PT	BADAN	RUNGKUT	KALIRUNGKUT	46691	KOTA SURABAYA		JAWA TIMUR	Normal	2015-07-07 00:00:00	2016-01-12 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
067832113619000	YONGKY WIJAYA	JL MENUR PUMPUNGAN  NO.07 RT 006 RW 005	6281398150001		OP	MULYOREJO	MANYAR SABRANGAN	Z5000	KOTA SURABAYA	3,17308E+15	JAWA TIMUR	Normal	1994-11-03 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
022565766625001	SUBUR MITRA SUKSES							46339				Non Efektif	2016-12-30 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
755661360604000	PANDAN JAYA INDONESIA	SIMPANG DPS XI NO 12	6285233133488	PT	BADAN	SAMBIKEREP	LONTAR	47920	KOTA SURABAYA		JAWA TIMUR	Normal	2016-03-21 00:00:00	2016-04-21 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
022574107631000	MITRA ALAM SEGAR	JL EMBONG MALANG NO 61-65	08123528620	PT	BADAN	TEGALSARI	KEDUNGDORO	11040	KOTA SURABAYA		JAWA TIMUR	Normal	2008-12-23 00:00:00	2009-05-28 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
026329110605000	SARANA AGUNG ABADI	JL MLIWIS NO 37 RT 001 RW 010	0315320252	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2006-12-19 00:00:00	2009-12-04 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
704721430921001	MITRA BAHARI LOGISTINDO							52291				Normal	2021-06-03 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
012144366121001	BAMBANG DJAJA							46599				PL/DE	2014-06-17 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
061808432614000	SOEGYANTO	JL TIDAR NO 30	085235184368		OP	SAWAHAN	SAWAHAN	96990	KOTA SURABAYA	3,57806E+15	JAWA TIMUR	Normal	1985-01-29 00:00:00	2021-07-14 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
028407013609000	PAMENANG BUANA RAYA	JL KRUKAH TIMUR 27 RT 004 RW 007	085215058034	PT	BADAN	GUBENG	BARATAJAYA	41012	KOTA SURABAYA		JAWA TIMUR	Normal	2009-03-03 00:00:00	2009-04-06 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
743454811604000	RESTU ANUGERAH SEJAHTERA	RUKO SATELIT TOWN SQUARE BLOK A NO 34	085100595902	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	47528	KOTA SURABAYA		JAWA TIMUR	Normal	2015-11-02 00:00:00	2015-12-02 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
315341719613000	BAHARI PRIMA PERKASA	RAYA KRIKILAN KM. 26	62313283498	PT	BADAN	DRIYOREJO	TANJUNGAN	46639	KAB. GRESIK		JAWA TIMUR	Normal	2012-05-23 00:00:00	2013-09-11 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
017395013503001	SUTINDO RAYA MULIA							47521				Normal	2015-03-30 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
755530789604000	LANGGENG ABADI TEKNIK	KOMP. PERGUDANGAN TAMBAK OSOWILANGUN BLOK E-20 RT 002 RW 004	082121010121	CV	BADAN	BENOWO	TAMBAK OSO WILANGUN	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2016-03-18 00:00:00	2016-09-21 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
017395013721002	SUTINDO RAYA MULIA							46631				Normal	2019-05-21 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
720285022606000	JERINDO SURYA UTAMA	JL MANYAR KERTOARJO V NO 18  20	0315672121	PT	BADAN	GUBENG	MOJO	46651	KOTA SURABAYA		JAWA TIMUR	Normal	2015-01-26 00:00:00	2015-11-02 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
022068993613000	SINAR JAYA PRIMA	KOMPLEK PERTOKOAN PENGAMPON SQURE BLOK E NO 17	0811318680	CV	BADAN	PABEAN CANTIAN	BONGKARAN	46631	KOTA SURABAYA		JAWA TIMUR	Normal	2005-11-22 00:00:00	2006-09-15 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
726075773605000	SAKA SUKSES UTAMA	JL IKAN TROWANI NO 3 RUANG A RT 000 RW 000	081332267234	CV	BADAN	KREMBANGAN	PERAK BARAT	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2015-03-27 00:00:00	2016-01-20 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
022571442614000	LOTUS GLOBALINDO SENTOSA	JL PASAR KEMBANG 4-6, RUKO GRAND FLOWER BLOK A NO.7, KUPANG KRAJAN	085100302331	PT	BADAN	SAWAHAN	KUPANG KRAJAN	47773	KOTA SURABAYA		JAWA TIMUR	Normal	2006-12-01 00:00:00	2014-04-15 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
932630189609000	SINAR ANUGERAH NIAGA	JL FLORES NO 27-29 RT 003 RW 004	081331752324	PT	BADAN	WONOKROMO	NGAGEL	47112	KOTA SURABAYA		JAWA TIMUR	Normal	2019-10-24 00:00:00	2019-11-15 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
812224541615000	ELGA PERMATA WIJAYA	JL WONOREJO SARI V 16 KAV 5 BLOK W NO 44 RT 003 RW 001	081216171878	PT	BADAN	RUNGKUT	WONOREJO	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2017-02-17 00:00:00	2017-05-18 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
012330759518001	UTOMO DECK METAL WORKS							43903				Normal	2001-03-01 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
025407990822001	TRI JAYA TANGGUH							11090				Normal	2008-04-10 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
032945511601001	BANDARTRISULA							46637				PL/DE	2014-02-13 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
031506413612001	AKR SURABAYA LAND CORPORINDO							68111				Normal	2016-07-28 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
014694210612001	JATIM WATKORAYA							46491				Normal	2013-08-12 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
032945511831001	BANDARTRISULA							46637				Normal	2014-02-20 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
318017373642001	SOLUSI MAJU BERSAMA							68111				Normal	2014-09-04 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
070839113614000	HARIJONO SANTOSO	JL BUKIT BARISAN NO 9 RT 003 RW 006	081352341168		OP	SAWAHAN	PETEMON	Z5000	KOTA SURABAYA	3,57806E+15	JAWA TIMUR	Normal	1999-03-05 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
061452041616000	DIDIK EDYSUN	JL KERTOPATEN NO 2-C RT 001 RW 008	081357823598		OP	SIMOKERTO	SIMOLAWANG	Z5000	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	1984-12-28 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
745923987428001	KARUNIA INDAH DELAPAN EXPRES							52292				Normal	2019-11-28 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
014409924631000	HUTAN ALAM	JL PERAK BARAT NO 149	08123114830	PT	BADAN	KREMBANGAN	PERAK BARAT	42101	KOTA SURABAYA		JAWA TIMUR	Normal	1987-07-02 00:00:00	1988-05-04 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
021143854601002	SURYA SEJAHTERA							45403				Normal	2014-08-08 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
026999870609000	PERHIMPUNAN PEMILIK DAN PENGHUNI ROYAL PLAZA SURABAYA	JL A. YANI, ROYAL PLAZA NO 16-18 RT 015 RW 004	62318270866	PERSEKUTUAN	BADAN	WONOKROMO	WONOKROMO	94990	KOTA SURABAYA		JAWA TIMUR	Normal	2007-10-02 00:00:00	2013-12-31 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
041086109614000	DJAING SUROTO	JL TEMBOK DUKUH 86 RT.002 RW.001	081952771799		OP	BUBUTAN	TEMBOK DUKUH	25933	KOTA SURABAYA	3,57813E+15	JAWA TIMUR	Normal	2007-05-10 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
823270376613000	SAHABAT TRANS BORNEO	JL PERAK TIMUR 512 BLOK F NO 09 RT 002 RW 003	0313292921	PT	BADAN			50131				Normal	2017-07-13 00:00:00	2022-06-17 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
829843846611000	INDO ALAM RAYA	GEDUNG BUMI MANDIRI TOWER 2 LEVEL 12, JL PANGLIMA SUDIRMAN NO 66-68 RT 001 RW 007	6282231428500	PT	BADAN	GENTENG	EMBONG KALIASIN	46638	KOTA SURABAYA		JAWA TIMUR	Normal	2017-10-19 00:00:00	2018-05-17 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
078801065611000	KUSUMA HADI SOETEMO	JL JIMERTO NO 2 RT 003 RW 008	082233063100		OP	GENTENG	KETABANG	Z5000	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	2008-10-13 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
020919593017001	AWAN SAMUDERA LESTARI							52293				Non Efektif	2023-07-31 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
020919593512001	AWAN SAMUDERA LESTARI							52291				PL/DE	2010-03-08 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
023773997612001	BINTANG INDO JAYA							10710				Normal	2019-09-25 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
933619330614000	GEMILANG JAYA NUSANTARA	JL MAYJEND SUNGKONO KOMPLEK DARMO PARK 1C NO 07 RT 003 RW 010	089678173533	CV	BADAN	SAWAHAN	PAKIS	46491	KOTA SURABAYA		JAWA TIMUR	Normal	2019-11-05 00:00:00	2020-06-15 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
060558038711001	ROBERT TANSIL							96990				Non Efektif	2012-12-21 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
013374681631000	SC. JOHNSON MANUFACTURING SURABAYA	JL RUNGKUT INDUSTRI I NO 24-26	087782774837	PT	BADAN	RUNGKUT	KALIRUNGKUT	21011	KOTA SURABAYA		JAWA TIMUR	Normal	1989-04-18 00:00:00	1989-05-17 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
020919593613000	AWAN SAMUDERA LESTARI	JL PERAK BARAT NO 83 RT 004 RW 005	6281231177376	PT	BADAN	KREMBANGAN	PERAK BARAT	52293	KOTA SURABAYA		JAWA TIMUR	Normal	2008-10-15 00:00:00	2008-10-23 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
835799057604000	WINNY AMELINDA ANGGAWINATA	VILLA BUKIT REGENSY II PD 4/18 RT 002 RW 016	081282006777		OP	SAMBIKEREP	LONTAR	Z5000	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	2017-12-19 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
826777286623001	BLUE OCEAN HEART							46523				Normal	2023-06-13 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
865595557607000	KALPASASTRA BASWARA NEGRI	PAKUWON CENTER SUPERBLOK TUNJUNGAN CITY LT.12 UNIT OF 12-11 & OF 12-12 JL EMBONG MALANG NO 1, 3, 5 RT 008 RW 010	0895634570192	PT	BADAN	TEGALSARI	KEDUNGDORO	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2018-11-14 00:00:00	2018-12-17 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
014252357642001	SEMESTA ELTRINDO PURA							27113				Normal	2000-10-05 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
016777864048001	INDO ROMAS SEJAHTERA							46599				Normal	1997-04-17 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
025866625606000	GRANDE IMPERIAL	JL SUMATRA NO 36	083849049400	PT	BADAN	GUBENG	GUBENG	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2007-05-07 00:00:00	2013-02-13 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
086088507613000	MANSUR MAGALINE	JL DHARMAHUSADA PERMAI 3/11 BLOK V-415 RT 002 RW 011	085103331989		OP	MULYOREJO	MULYOREJO	Z5000	KOTA SURABAYA	3,57812E+15	JAWA TIMUR	Normal	2009-06-22 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
751290354618000	TAHTA MAKMUR ABADI	PERGUDANGAN SINAR BUDURAN 3 BLOK D NO 1	085791861204	CV	BADAN	BUDURAN	SIWALANPANJI	46491	KAB. SIDOARJO		JAWA TIMUR	Normal	2016-02-03 00:00:00	2016-06-07 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
018389080604000	CENTRAL NIKMAT UTAMA	JL MARGOMULYO IV-G	62317491000	PT	BADAN	TANDES	MANUKAN WETAN	64931	KOTA SURABAYA		JAWA TIMUR	Normal	2000-06-02 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
019951698601001	BHAKTI PERSADA SAUDARA PHARMA							46441				Normal	2011-12-05 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
066641580618000	HERMAN KWANDY	PERUMAHAN GRAHA FAMILI BLOK PA NO 303-304 RT 004 RW 002	08123006638		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	2010-07-21 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
062584297606000	AMIN SALIM	JL RAYA DHARMAHUSADA INDAH BLOK AA NO 11 RT 008 RW 004	6281230232336		OP	GUBENG	MOJO		KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	1901-01-01 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
028256915604000	VINO MANDIRI PERKASA	JL MUTIARA MARGOMULYO PERMAI BLOK A KAV.21-22	085101202096	PT	BADAN	TANDES	MANUKAN WETAN	27510	KOTA SURABAYA		JAWA TIMUR	Normal	2010-05-03 00:00:00	2013-07-26 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
026332528823001	BAHANA OCEAN LINE							52299				Non Efektif	2013-01-30 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
064086374614001	RUTH YULIASTUTI							47791				Normal	2009-04-14 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
012318622631000	ANGKASA PERINDO SAKTI	RUKO SEMUT SQUARE B2	0313531111	PT	BADAN	PABEAN CANTIAN	BONGKARAN	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
012330759624001	UTOMO DECK METAL WORKS							38302				Normal	1996-02-16 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
026226274225001	UNITED SHIPPING INDONESIA							50131				Non Efektif	2020-12-10 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
031133911915001	GOLDEN MEDIKA MANDIRI							47725				Normal	2019-09-02 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
033176827454001	ANUGERAH LANGGENG UNTUNG NIAGA							52101				Normal	2019-11-06 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
032945511806001	BANDARTRISULA							46637				Normal	2018-01-25 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
014662332613000	SAHATI HAMPARAN TANGGUH	JL KALIMAS TIMUR NO 184-186 RT 004 RW 003	6281332291938	PT	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	10423	KOTA SURABAYA		JAWA TIMUR	Normal	1990-04-14 00:00:00	1990-04-14 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
703935312617001	MULTI BANGUN INDONESIA							46634				Normal	2018-01-22 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
703935312655001	MULTI BANGUN INDONESIA							46634				Normal	2022-05-11 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
745923987623001	KARUNIA INDAH DELAPAN EXPRES							52292				Normal	2022-10-11 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
025252743619000	VEMA DINAMIKA PERKASA	JL SOKA NO 1	62818325228	PT	BADAN	TAMBAKSARI	TAMBAKSARI	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2006-07-13 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
031257561609000	SIANTAR CEMERLANG TELEVISI	RAYA NGAGEL NO.109 RT.001 RW.002, NGAGEL	62628113545364	PT	BADAN	WONOKROMO	NGAGEL	60102	KOTA SURABAYA		JAWA TIMUR	Normal	2011-04-18 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
020097390061001	SIANTAR TOP MULTIFINANCE							64911				PL/DE	2005-06-28 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
022084735313001	PRIMA INDOJAYA MANDIRI							42101				Normal	2017-05-22 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
313081549614000	AGUNG JAYA	JL MARGOMULYO PERMAI G NO 29 RT.001 RW.001, GREGES	03182233159	CV	BADAN	ASEM ROWO	TAMBAK SARIOSO	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2011-04-14 00:00:00	2011-09-19 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
017308529614000	ANTAKESUMA INTI RAHARJA	JL MARGOMULYO PERMAI BLOK BLOK CC-11	089527587268	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	33121	KOTA SURABAYA		JAWA TIMUR	Normal	1996-06-06 00:00:00	1997-04-02 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
662045376607000	GRAHA TIGA SAUDARA	JL KEDUNGSARI NO 25 RT 001 RW 001	62811335525	PT	BADAN	TEGALSARI	WONOREJO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2014-02-03 00:00:00	2018-02-19 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
060564549606000	SINGGIH GUNAWAN	JL MANYAR KERTOARJO VIII NO 47	08123205020		OP	GUBENG	MOJO	96990	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Non Efektif	1984-12-10 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
020079331615000	PRIMA KARYA HUSADA	JL RUNGKUT INDUSTRI I NO 1 RT 001 RW 005	081366346267	PT	BADAN	TENGGILIS MEJOYO	KENDANGSARI	86103	KOTA SURABAYA		JAWA TIMUR	Normal	2002-10-11 00:00:00	2018-01-03 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
015618408609000	SURYA CENTRALINDO INTERCORPLTD.	JL.MARGOREJO INDAH XIX-5 BLOK D NO 521, SIDOSERMO	0838335049198	PT	BADAN	WONOCOLO	SIDOSERMO	47112	KOTA SURABAYA		JAWA TIMUR	Normal	1993-02-23 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
345244644606000	OWEN RAHADIYAN	KEDUNGSARI NO 66E RT 001 RW 001	085218890007		OP	TEGALSARI	KEDUNGDORO	Z5000	KOTA SURABAYA	3,17302E+15	JAWA TIMUR	Normal	2010-04-13 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
805184470617000	BEI LING PESONA ABADI	RUKO SATELIT TOWN SQUARE, JL RAYA SUKOMANUNGGAL JAYA BLOK BLOK D NO 18	0811318094	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2016-11-17 00:00:00	2017-01-09 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
031133861019001	LADANG KARYA HUSADA							47725				PL/DE	2022-11-02 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
664271582604000	TUNGGAL JAYA	MUTIARA MARGOMULYO PERMAI BLOK A-2 RT 001 RW 009	082162000020	CV	BADAN	TANDES	TANDES	46339	KOTA SURABAYA		JAWA TIMUR	Normal	2014-02-24 00:00:00	2014-09-17 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
825556426616000	MULTI GARMEN TRADING	JALAN KAPASAN NO 93 RT 008 RW 009	6281331084377	CV	BADAN	SIMOKERTO	KAPASAN	47513	KOTA SURABAYA		JAWA TIMUR	Normal	2017-08-08 00:00:00	2017-09-19 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
826777286624001	BLUE OCEAN HEART							46523				Normal	2020-09-02 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
314770678611000	INDOKERTAS PERKASA	JL EMBONG PURNOMO NO 20-22 RT 000 RW 000	082260260716	PT	BADAN	GENTENG	PENELEH	47650	KOTA SURABAYA		JAWA TIMUR	Normal	2012-02-29 00:00:00	2012-04-30 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
743566978614000	MEGAH SUMBER GEMILANG	JL MARGOMULYO 44 BLOK OO NO 10-11 RT 000 RW 000	0881026157428	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	46447	KOTA SURABAYA		JAWA TIMUR	Normal	2015-10-30 00:00:00	2017-04-21 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
032015141613000	PELAYARAN CAHAYA MAKMUR SEJAHTERA	JL KEBALEN TIMUR NO 103 RT 001 RW 004	081230994506	PT	BADAN	PABEAN CANTIAN	KREMBANGAN UTARA	50131	KOTA SURABAYA		JAWA TIMUR	Normal	2012-01-10 00:00:00	2016-08-04 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
020921193605000	BORNEO PRIMA	MENARA BCA LANTAI 36 SUITE 3605, JL MH THAMRIN NO 01	62315325082	PT	BADAN	MENTENG	MENTENG	05100	KOTA ADM. JAKARTA PUSAT		DKI JAKARTA	Normal	2004-12-13 00:00:00	2016-10-21 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
026329540605000	BAHTERA BERSAUDARA	JL KEMAYORAN BARU NO 19 RT 009 RW 002	087751242884	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	24101	KOTA SURABAYA		JAWA TIMUR	Normal	2007-05-07 00:00:00	2008-01-08 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
312511611614000	CAKRAWALA HARAPAN BERSAMA	JL MARGOMULYO PERMAI AC-34 RT.001 RW.001, GREGES	087888892717	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2010-11-24 00:00:00	2011-01-05 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
014973382631000	BAYACO AGUNG	JL MARGOMULYO INDUSTRI 4 BLOK G NO 14-16	0317490045	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	46447	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
021026679602001	STANDAR BETON INDONESIA							23953				Non Efektif	2004-01-19 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
802097279611000	OCTAGON KARYA PRATAMA	JL PANGLIMA SUDIRMAN NO 99A RT 001 RW 007	62811375018	PT	BADAN	GENTENG	EMBONG KALIASIN	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2016-10-05 00:00:00	2017-01-05 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
485297584619000	LISA OLIVIA KATUARI	JL DHARMAHUSADA INDAH I NO 61-63 RT 003 RW 008	081233912995		OP	MULYOREJO	MULYOREJO	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2007-10-30 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
042126631601001	SURIONTORO TEDJAKUSUMA							47230				PL/DE	2015-10-29 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
012322764901001	KARYA EXPRESS JAYA							52291				PL/DE	1986-05-19 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
814131181604000	SUMBER WIRA INDOSTEEL	JL RAYA ROMOKALISARI NO 88	081227593522	PT	BADAN	BENOWO	ROMOKALISARI	24101	KOTA SURABAYA		JAWA TIMUR	Normal	2017-03-07 00:00:00	2017-05-10 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
032945511506001	BANDARTRISULA							46637				Normal	2017-04-26 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
026226274612001	UNITED SHIPPING INDONESIA							50131				Non Efektif	2015-11-27 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
014694210418001	JATIM WATKORAYA							46491				Normal	2018-04-12 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
032945511802001	BANDARTRISULA							46637				Normal	2014-02-11 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
032945511901001	BANDARTRISULA							46637				Normal	2014-02-21 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
662045376643001	GRAHA TIGA SAUDARA							68111				Normal	2019-07-30 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
028250520604000	SUSHI-TEI SURABAYA	JL RAYA DARMO PERMAI III PASAR MODERN PUNCAK PERMAI NO 89	081249637825	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	56101	KOTA SURABAYA		JAWA TIMUR	Normal	2009-01-06 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
829516541609000	SUMBER HARAPAN BERKAH	JL JEMUR ANDAYANI XIX NO 2 RT 000 RW 000	087855512306	PT	BADAN	WONOCOLO	SIWALANKERTO	46411	KOTA SURABAYA		JAWA TIMUR	Normal	2017-10-05 00:00:00	2017-11-24 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
825615321604000	MEGA GALAXY MANDIRI	JL MARGOMULYO JAYA BLOK G	6282233443231	PT	BADAN	TANDES	MANUKAN WETAN	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2017-08-10 00:00:00	2017-09-26 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
016130932026001	INTIDAYA DINAMIKA SEJATI							46599				Normal	2020-01-30 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
021143854602001	SURYA SEJAHTERA							45401				Normal	2009-01-08 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
022066450503001	SURYA INDO PRATAMA							46421				Normal	2020-06-15 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
022084735312001	PRIMA INDOJAYA MANDIRI							42101				Non Efektif	2018-03-20 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
022084735438001	PRIMA INDOJAYA MANDIRI							42101				Non Efektif	2013-10-31 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
022565766602001	SUBUR MITRA SUKSES							46339				Normal	2016-12-28 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
022565766621001	SUBUR MITRA SUKSES							46339				Normal	2016-12-22 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
022565766629001	SUBUR MITRA SUKSES							46339				Normal	2022-01-21 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
022565766657001	SUBUR MITRA SUKSES							46339				Normal	2016-12-28 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
024427536601001	CIPTA KARYA MULTI TEKNIK							41012				Normal	2015-10-16 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
028172823801001	BUANA TUNAS SEGARA SUBUR							46641				PL/DE	2012-03-02 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
060558038732001	ROBERT TANSIL							96990				Non Efektif	2012-12-19 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
861333029913001	TIRTA ASA MULIA							10222				Normal	2022-12-05 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
016932956604001	KAYAN JAYA TANJUNG	MARGOMULYO INDAH 1 / D-2	0317490678	PT	BADAN	TANDES	BALONGSARI	31001	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2015-06-04 00:00:00	\N	2015-08-27 00:00:00	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
017158544613000	HARINDRA SEMPURNAUTAMA - PBM	JL PERAK TIMUR BLOK F-9 NO 512 RT 000 RW 000	62313292921	PT	BADAN			52221				Normal	1995-01-05 00:00:00	2001-01-12 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
014973101618000	CALINDOMAS AGUNG	JL MAYJEN SUNGKONO NO 121 RT 002 RW 002	085100992233	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	68111	KOTA SURABAYA		JAWA TIMUR	Normal	1989-06-26 00:00:00	2006-01-05 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
022089239324001	PURI WIRA MAHKOTA							45403				Normal	2012-05-02 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
012321964611000	INDONESIA RAYA ABADI	JL SERUNI NO 22	085353171763	PT	BADAN	GENTENG	KETABANG	47192	KOTA SURABAYA		JAWA TIMUR	Normal	2005-05-19 00:00:00	2018-07-12 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
826777286652001	BLUE OCEAN HEART							46523				Normal	2019-10-03 00:00:00	\N	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
031134406615000	JORDAN TRADING & CONSULTING	JL JEMURSARI NO 166 RT 005 RW 002	62318413592	PT	BADAN	TENGGILIS MEJOYO	KENDANGSARI	70209	KOTA SURABAYA		JAWA TIMUR	Normal	2011-10-13 00:00:00	2011-11-25 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
017928599619000	CITRA BERGERINDO	JL KERTAJAYA INDAH S 102-104 BLOK S NO 102-104	08123018008	PT	BADAN	MULYOREJO	MANYAR SABRANGAN	46441	KOTA SURABAYA		JAWA TIMUR	Normal	1997-11-27 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
014694210611000	JATIM WATKORAYA	JL KALIANYAR NO 15 D RT 000 RW 000	087855702800	PT	BADAN	GENTENG	GENTENG	46491	KOTA SURABAYA		JAWA TIMUR	Normal	1989-10-14 00:00:00	1989-12-07 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
750426561615000	KORIN INTIWIRA SEJAHTERA	JL KH ZAMHURI NO 29-31 RT 001 RW 001	085853086456	PT	BADAN	GUNUNG ANYAR	RUNGKUT TENGAH	28191	KOTA SURABAYA		JAWA TIMUR	Normal	2016-01-26 00:00:00	2016-04-08 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
030824809604000	CAHAYA BARU SENTOSA	MASPION ROMOKALISARI BLOK XIID NO.8 RT.00 RW.00, ROMOKALISARI	081232436063	CV	BADAN	BENOWO	ROMOKALISARI	46491	KOTA SURABAYA		JAWA TIMUR	Normal	2011-04-01 00:00:00	2011-05-10 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
017395013722001	SUTINDO RAYA MULIA							47521				Normal	2007-10-22 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
020918934614000	MULTI CONTAINER PRIMA	JL KALIANAK BARAT NO 80-B RT.001 RW.001, KALIANAK	0811307238	PT	BADAN	ASEM ROWO	GENTING KALIANAK	95120	KOTA SURABAYA		JAWA TIMUR	Normal	2011-09-20 00:00:00	2011-09-20 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
021143300614001	ISTANA SURYA PERKASA	JL. RADEN SALEH NO 14-D	628113459500	PT	BADAN	BUBUTAN	BUBUTAN	46530	KOTA SURABAYA		JAWA TIMUR	Normal	2017-01-16 00:00:00	\N	2021-05-24 00:00:00	user_2smbQbeE63eIw5egPdMsIgrWUck
030659650311000	KUDA LAUT SEJAHTERA	JL BELATUK 10 NO 02 RT 016 RW 000	081346565200	PT	BADAN	SUNGAI PINANG	TEMINDUNG PERMAI	46610	KOTA SAMARINDA		KALIMANTAN TIMUR	Normal	2011-04-19 00:00:00	2011-06-16 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
011222148023002	SURYA DERMATO MEDICA LABORATORIES							21012				PL/DE	2016-06-29 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
857271498809001	ANUGERAH MAPAN JAYA	POROS KARIANGO DUSUN MAJANNANG, KAB. MAROS				TANRALILI	KURUSUMANGE	10298	KAB. MAROS			Normal	2020-04-15 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
011218583618000	EXPLOITASI PERINDUSTRIAN GAWEREDJO	JL RAYA MASTRIP / BOGANGIN NO 6 RT 003 RW 005	6281357452154	PT	BADAN	KARANG PILANG	KEDURUS	14111	KOTA SURABAYA		JAWA TIMUR	Normal	1982-11-14 00:00:00	2012-05-05 00:00:00	\N	user_2smaNyTgjEYShVzC31CcgVW2p9W
313779837619000	ZHAFIRA BARAKAT	JL MULYOSARI TENGAH BLOK V NO 2B - 2C RT 001 RW 006	6281331355472	CV	BADAN	MULYOREJO	KALISARI	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2011-09-13 00:00:00	2011-12-28 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
032945511543001	BANDARTRISULA							46637				Normal	2014-02-18 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
032945511626001	BANDARTRISULA							46637				Normal	2014-02-28 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
033176827515001	ANUGERAH LANGGENG UNTUNG NIAGA							52101				Normal	2019-10-23 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
014694210721002	JATIM WATKORAYA							46491				Normal	2011-03-07 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
032945511923001	BANDARTRISULA							46637				Normal	2017-02-08 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
014694210722001	JATIM WATKORAYA							46491				Normal	1990-12-22 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
705982478626001	PERSADA NUANSA INDAH							68200				Normal	2018-10-29 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
313275638618000	SOLID MINERAL RESOURCES	LIDAH HARAPAN TIMUR, PERUM LEMBAH HARAPAN NO 9	08113385069	PT	BADAN	LAKARSANTRI	LIDAH WETAN	08999	KOTA SURABAYA		JAWA TIMUR	Normal	2011-05-30 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
014815328823001	PUTRAGUNA JAYAMULIA							52291				Normal	2010-04-07 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
021697396609000	MARTHYS ORTHOPAEDIC INDONESIA	DS. TEGALAN JL. INDROKILO BLOK - NO - RT 003 RW 006	081232180674	PT	BADAN	PRIGEN	BULUKANDANG	32502	KAB. PASURUAN		JAWA TIMUR	Normal	2002-09-19 00:00:00	2006-06-02 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
020919593003001	AWAN SAMUDERA LESTARI	GEDUNG PERKANTORAN PULOMAS SATU GED V LT 3 RG 10 NO 2 RT 000 RW 000, JAKARTA TIMUR				PULO GADUNG	KAYU PUTIH	52291	JAKARTA TIMUR			Non Efektif	2010-11-25 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
734350226618000	GAPURA SURYA	RAYA BANGKINGAN NO 97 RT 001 RW 003	6282341523123	CV	BADAN	LAKARSANTRI	BANGKINGAN	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2015-07-08 00:00:00	2015-09-09 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
016932956604000	KAYAN JAYA TANJUNG	JL MARGOMULYO INDAH I BLOK A/18-20	081331862645	PT	BADAN	TANDES	MANUKAN WETAN	31001	KOTA SURABAYA		JAWA TIMUR	Normal	1995-11-17 00:00:00	1996-02-28 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
713219665611000	SEGARA SUKSES MAKMUR	JAPFA TOWER II LEVEL 12 JL PANGLIMA SUDIRMAN NO 66-68 RT 003 RW 001	087853885189	CV	BADAN	GENTENG	EMBONG KALIASIN	03254	KOTA SURABAYA		JAWA TIMUR	Normal	2015-03-10 00:00:00	2021-05-24 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
022565766622001	SUBUR MITRA SUKSES							46339				Normal	2016-12-27 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
022565766647001	SUBUR MITRA SUKSES							46339				Normal	2022-01-21 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
078665981607001	HERU TANAYA	KARTINI NO 19	62811322998		OP	TEGALSARI	DR. SOETOMO	96121	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	2018-05-18 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
011407970631000	JASA PUSKOPAL KOMANDO ARMADA DUA SURABAYA	JL IKAN DORANG NO 01	081223983644	KOP	BADAN	KREMBANGAN	PERAK BARAT	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2008-08-27 00:00:00	2008-08-29 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
311840698607000	KARUNIA INDAH ABADI	JL EMBONG MALANG NO 61-65	0315353053	PT	BADAN	TEGALSARI	KEDUNGDORO	10740	KOTA SURABAYA		JAWA TIMUR	Normal	2010-04-20 00:00:00	2018-03-01 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
713712297618000	YENNY WIDYA,TJOA	PULAU GOLF FAMILY BLOK 2/G NO 90 RT 004 RW 002	628992417783		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	2014-10-31 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
019184621607000	GOZCO INVESTMENTS	GEDUNG BANK YUDHA BAKTI JL RAYA DARMO NO 54-56 RT 003 RW 010	5612614	PT	BADAN	TEGALSARI	DR. SOETOMO	70100	KOTA SURABAYA		JAWA TIMUR	Normal	2009-01-22 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
713797819063001	ALVINDO							46339				Normal	2023-05-19 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
831021845607000	SRIWIJAYA ABADI	JL RA KARTINI NO 69 RT 002 RW 009	6285244493775	CV	BADAN	TEGALSARI	DR. SOETOMO	46592	KOTA SURABAYA		JAWA TIMUR	Normal	2017-10-26 00:00:00	2017-11-21 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
012318622631001	ANGKASA PERINDO SAKTI	KOMPLEK PERGUDANGAN TAMBAK OSOWILANGUN INDAH BLOK C NO 45	08553011318	PT	BADAN	BENOWO	TAMBAK OSO WILANGUN	46631	KOTA SURABAYA		JAWA TIMUR	Normal	2007-09-04 00:00:00	\N	2020-07-30 00:00:00	user_2smaWxchS4q6cZDOd2DAzFcvD5R
029099231606000	PRAKARSA BUANA SENTOSA	JALAN BUMI MARINA EMAS TIMUR BLOK 4 NO 27 RT 000 RW 000	081333888683	CV	BADAN	SUKOLILO	KEPUTIH	47411	KOTA SURABAYA		JAWA TIMUR	Normal	2010-03-11 00:00:00	2010-08-19 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
031133911615000	GOLDEN MEDIKA MANDIRI	JL RAYA KALIRUNGKUT XXVII BLOK C NO 65	085746312276	PT	BADAN	RUNGKUT	KALIRUNGKUT	47725	KOTA SURABAYA		JAWA TIMUR	Normal	2011-09-13 00:00:00	2012-01-18 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
028175529613000	BAHARI SUKSES MANDIRI	JL SONGOYUDAN NO 56	081231377967	PT	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	47739	KOTA SURABAYA		JAWA TIMUR	Normal	2011-01-10 00:00:00	2011-01-10 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
909769051609000	HELMIGS SINERGI DUNIA	MARGOREJO INDAH BLOK BLOK D NO 521 RT 004 RW 005	08123018008	PT	BADAN	WONOCOLO	SIDOSERMO	70203	KOTA SURABAYA		JAWA TIMUR	Normal	2019-04-01 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
024427536609000	CIPTA KARYA MULTI TEKNIK	JL KETINTANG MADYA CEMPAKA NO 59 RT 006 RW 011	081259668143	PT	BADAN	JAMBANGAN	KARAH	41012	KOTA SURABAYA		JAWA TIMUR	Normal	2005-01-17 00:00:00	2005-01-20 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
850747502614000	ANUGERAH PANEN LESTARI	JL. DUMAR INDUSTRI NO D-7	089677277080	CV	BADAN	ASEM ROWO	ASEM ROWO	46651	KOTA SURABAYA		JAWA TIMUR	Normal	2018-06-07 00:00:00	2018-07-20 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
829280866607000	KARUNIA INDAH SEGAR	GEDUNG EKONOMI LANTAI VI, JL EMBONG MALANG NO 61-65 RT 001 RW 008	081252833011	PT	BADAN	TEGALSARI	KEDUNGDORO	11040	KOTA SURABAYA		JAWA TIMUR	Normal	2017-10-03 00:00:00	2018-08-13 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
021026679655001	STANDAR BETON INDONESIA							23953				Non Efektif	2004-01-16 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
011222148023001	SURYA DERMATO MEDICA LABORATORIES							21012				Normal	2007-01-30 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
931326672618000	ANGKASA MEDIA SOLUSI	GEDUNG SUBCO SPAZIO LEVEL 1 JL MAYJEND YONO SOEWOYO KAV NO 3	62818332024	CV	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	63990	KOTA SURABAYA		JAWA TIMUR	Normal	2019-10-11 00:00:00	2021-05-24 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
016402521517001	PERWIRABHAKTI SENTRASEJAHTERA							46491				Normal	2010-06-25 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
021143300418001	ISTANA SURYA PERKASA							46530				Normal	2016-10-10 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
031937998615000	MAHAKAM MAKMUR LESTARI	JL RAYA KALIRUNGKUT V BLOK B NO 29	081334988571	PT	BADAN	RUNGKUT	KALIRUNGKUT	46610	KOTA SURABAYA		JAWA TIMUR	Normal	2012-04-02 00:00:00	2017-12-28 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
032945511621001	BANDARTRISULA							46637				Normal	2017-08-31 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
014694210606001	JATIM WATKORAYA							46491				PL/DE	1996-09-02 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
014694210721001	JATIM WATKORAYA							46491				Normal	1990-06-26 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
031201114605000	MEGAH SEJAHTERA SCIENTIFIC	JL RAJAWALI NO 58 RT 001 RW 015	0313557078	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	47725	KOTA SURABAYA		JAWA TIMUR	Normal	2011-10-12 00:00:00	2011-11-22 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
813166972615000	NUGA SIGMA POTENZIA	JALAN SIDOSERMO BLOK PDK.1 NO 300/16 RT 001 RW 008	082341200064	PT	BADAN	WONOCOLO	SIDOSERMO	33111	KOTA SURABAYA		JAWA TIMUR	Normal	2017-02-21 00:00:00	2017-08-04 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
703935312626001	MULTI BANGUN INDONESIA							46634				Normal	2020-08-31 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
014694210722003	JATIM WATKORAYA							46491				Normal	2011-01-31 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
935326637606000	PERMATA WANA NUSANTARA	JL DHARMAHUSADA UTARA BLOK 7 NO 21 RT 004 RW 002	6285755881989	PT	BADAN	GUBENG	MOJO	47595	KOTA SURABAYA		JAWA TIMUR	Normal	2019-11-25 00:00:00	\N	2023-09-22 00:00:00	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
031133861615000	LADANG KARYA HUSADA	JL KUTISARI II NO 8	081335746090	PT	BADAN	TENGGILIS MEJOYO	KUTISARI	47725	KOTA SURABAYA		JAWA TIMUR	Normal	2011-09-08 00:00:00	2011-10-05 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
018347708604002	ANUGRAH EKSTRAVISI RAYA	JL TANJUNGSARI NO 44-I RT 001 RW 007	0317496004	PT	BADAN	SUKOMANUNGGAL	SIMOMULYO BARU	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2019-04-04 00:00:00	\N	2020-11-10 00:00:00	user_2smbK2DuLxiD1AymLK6jA1JtOsG
021143854648001	SURYA SEJAHTERA							45401				Normal	2009-04-17 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
012322871631000	PBM MITRA DHARMA LAKSANA	JL ALOON-ALOON PRIOK NO 27	082141255914	PT	BADAN	KREMBANGAN	PERAK BARAT	52240	KOTA SURABAYA		JAWA TIMUR	Normal	1986-01-28 00:00:00	1989-03-21 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
022084735513001	PRIMA INDOJAYA MANDIRI							42101				Non Efektif	2018-01-29 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
019757962618001	IMPERIUM HAPPY PUPPY	PERUMAHAN GRAHA FAMILI BLOK B NO 26-27 RT 004 RW 008	0317343388	PT	BADAN	WIYUNG	WIYUNG	93292	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2000-05-04 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
313162372613000	PRANATA LINES	JL TELUK KUMAI BARAT NO 74	0313282977	PT	BADAN			50131				Normal	2011-05-04 00:00:00	2012-12-12 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
022565766627001	SUBUR MITRA SUKSES							46339				Normal	2017-12-04 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
022078760655001	ANUGRAH MITRA JAYA							46441				PL/DE	2015-04-09 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
014658975631000	PERJUANGAN STEEL	JL MARGOMULYO INDAH NO 15 D	082139959582	CV	BADAN	TANDES	BALONGSARI	25119	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
211073275604000	SURABAYA ORTHOPEDI AND TRAUMATOLOGY HOSPITAL	JL EMERALD MANSION BLOK TX/10 RT 007 RW 006	085707404655	PT	BADAN	LAKARSANTRI	LIDAH KULON	86103	KOTA SURABAYA		JAWA TIMUR	Normal	2010-06-03 00:00:00	2011-05-13 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
028249092614000	LAURIGE ASIA	KOMPLEK ANGTROPOLIS BLK. B-2, RAYA MARGOMULYO 46 RT.001 RW.001, GREGES	0818519114	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	15121	KOTA SURABAYA		JAWA TIMUR	Normal	2010-11-08 00:00:00	2010-11-08 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
821214855613000	HENRY ANGESTI	TRENGGANU 20 RT 003 RW 007	087762530005		OP			Z5000		3,57812E+15		Normal	2017-06-06 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
068036474615000	BUDIMAN	JL ZAMHURI NO 29-31 RT 001 RW 001	083893324378		OP	GUNUNG ANYAR	RUNGKUT TENGAH	Z5000	KOTA SURABAYA	3,57825E+15	JAWA TIMUR	Normal	1994-11-17 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
041613092616000	SUPARLAN	JL SATURNUS TAMAN HUNIAN SATELIT BLOK BLOK G8 NO 21 RT 010 RW 003	082143194798		OP	SUKOMANUNGGAL	TANJUNGSARI	Z5000	KOTA SURABAYA	3,57811E+15	JAWA TIMUR	Normal	1984-02-01 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
017162918042001	LINTAS NIAGA JAYA							52291				Normal	2015-09-01 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
942000589604000	ANUGERAH TOTAL SOLUSI	JL. TANJUNGSARI BLOK 44-I RT 001 RW 007	0317495577	PT	BADAN	SUKOMANUNGGAL	SIMOMULYO	62019	KOTA SURABAYA		JAWA TIMUR	Normal	2020-01-30 00:00:00	2020-02-18 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
923471841604000	SUMBER JAYA INDONESIA	JL RAYA MADE UTARA NO 45 RT 002 RW 004	6282245639098	CV	BADAN	SAMBIKEREP	MADE	46530	KOTA SURABAYA		JAWA TIMUR	Normal	2019-07-29 00:00:00	2020-06-24 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
020921193632003	PT BORNEO PRIMA							05100				PL/DE	2023-12-31 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
021143300614000	ISTANA SURYA PERKASA	JL PETEMON BARAT NO 73-75 RT 002 RW 002	0315464128	PT	BADAN	SAWAHAN	KUPANG KRAJAN	46530	KOTA SURABAYA		JAWA TIMUR	Normal	2006-09-19 00:00:00	2009-01-19 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
042120915619000	WACHID HENDRIADI	JL SOKA NO 3 RT 004 RW 007	0818325228		OP	TAMBAKSARI	TAMBAKSARI	Z5000	KOTA SURABAYA	3,5781E+15	JAWA TIMUR	Normal	1984-04-11 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
757006853604000	ARTA LUMINTU	WISMA LIDAH KULON XK-02	62811305827	CV	BADAN	LAKARSANTRI	BANGKINGAN	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2016-04-20 00:00:00	2016-10-19 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
063648281616000	ARIFIN ONGKYWIJAYA	JL DONOREJO WETAN NO 54 RT 001 RW 011	081555733863		OP	SIMOKERTO	TAMBAKREJO		KOTA SURABAYA	3,57811E+15	JAWA TIMUR	Normal	1988-04-28 00:00:00	1989-03-16 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
018313692607000	SAHUINDO MARINO JAYA	JL PASAR KEMBANG NO 23 RT 003 RW 002	081331915399	PT	BADAN	TEGALSARI	WONOREJO	50131	KOTA SURABAYA		JAWA TIMUR	Normal	1998-10-19 00:00:00	2003-03-21 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
014694210906001	JATIM WATKORAYA	JL RAYA SEMPIDI NO 18, SEMPIDI, KAB. BADUNG				MENGWI	SEMPIDI	46491	KAB. BADUNG			Normal	2023-06-09 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
016733255619000	CING FONG	JL KEDINDING INDAH NO 8-A	08956243257	CV	BADAN	KENJERAN	TANAH KALI KEDINDING	28221	KOTA SURABAYA		JAWA TIMUR	Normal	1995-04-03 00:00:00	1995-04-25 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
078588779605000	NELSON PANJAITAN	JL TANJUNG PURA BLOK - NO 27 RT 003 RW 010	081703529158		OP	KREMBANGAN	PERAK BARAT	52291	KOTA SURABAYA	3,57815E+15	JAWA TIMUR	Normal	2003-04-24 00:00:00	2003-05-01 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
016402521039001	PERWIRABHAKTI SENTRASEJAHTERA							46491				PL/DE	2021-07-23 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
022078760615000	ANUGRAH MITRA JAYA	JL RAYA PANJANG JIWO 46-48 RUKO PANJI MAKMUR BLOK A NO 31-32 RT 002 RW 007	082141365600	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2004-01-21 00:00:00	2005-07-21 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
026226274048001	UNITED SHIPPING INDONESIA							47302				PL/DE	2013-07-29 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
014661623642001	KERAMIK DIAMOND INDUSTRIES							23929				Normal	1995-01-14 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
032945511627001	BANDARTRISULA							46637				Normal	2014-02-28 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
032945511811001	BANDARTRISULA							46637				Normal	2014-02-07 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
831906375428001	DIRGANTARA POS INTIMODA							53201				Normal	2018-10-17 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
820434306912001	SINAR AGRO GEMILANG INDAH							46201				Normal	2018-02-21 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
704901925607000	SHERRY CHERIA	JL DINOYO LOR BLOK V NO 21 RT 001 RW 003	628121760607		OP	TEGALSARI	KEPUTRAN	Z5000	KOTA SURABAYA	3,57806E+15	JAWA TIMUR	Normal	2014-06-20 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
014694210722004	JATIM WATKORAYA							46491				PL/DE	2020-08-04 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
014815328044001	PUTRAGUNA JAYAMULIA							52291				Normal	2003-09-30 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
016130932505001	INTIDAYA DINAMIKA SEJATI							46599				Normal	2020-02-04 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
017926437606000	SARANA TEKNIK WIRATAMA	JL NGAGEL JAYA UTARA NO 87	081331506482	PT	BADAN	GUBENG	BARATAJAYA	43211	KOTA SURABAYA		JAWA TIMUR	Normal	1997-06-12 00:00:00	1997-06-17 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
018347708604001	ANUGRAH EKSTRAVISI RAYA	PAKUWON TRADE CENTER LG BLOK A7-15, A7-16, A7-40 JL PUNCAK INDAH LONTAR NO 2	0317390629	PT	BADAN	SAMBIKEREP	LONTAR	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2018-12-07 00:00:00	\N	2020-10-19 00:00:00	user_2smbK2DuLxiD1AymLK6jA1JtOsG
033305178604000	MITRA SETIA SELARAS ABADI	JL RUKO G WALK BLOK W2/9A CITRALAND	081330899363	PT	BADAN	SAMBIKEREP	LONTAR	46610	KOTA SURABAYA		JAWA TIMUR	Normal	2013-11-06 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
016813131609000	MITRA KARYA MANDIRI JAYA	JL JAMBANGAN INDAH BLOK II NO KAV B-16 RT 003 RW 001	088801759804	PT	BADAN	JAMBANGAN	JAMBANGAN	41019	KOTA SURABAYA		JAWA TIMUR	Normal	1998-05-27 00:00:00	1998-06-09 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
031133747615000	BUKIT JAYA SQUARE	JL PANJANGJIWO NO 58 RT.001 RW.004, PANJANGJIWO	0812587679	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	46900	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2011-08-25 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
020674594609000	HELMIGS INDONESIA	RUKO JEMUR RAYA, JL. JEMUR SARI 203-205 BLOK C NO 3	6283833504919	PT	BADAN	WONOCOLO	SIDOSERMO	21022	KOTA SURABAYA		JAWA TIMUR	Normal	2001-07-05 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
016209173605000	MITRA CAHAYA ABADI METALINDO	JL RAJAWALI NO 86	08165417669	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	16295	KOTA SURABAYA		JAWA TIMUR	Normal	1993-09-09 00:00:00	1993-09-30 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
313152886619000	ULTRA ENGINEERING	JL KYAI TAMBAK DERES NO 16 RT 000 RW 000	03151500022	CV	BADAN	BULAK	BULAK	28191	KOTA SURABAYA		JAWA TIMUR	Normal	2011-05-02 00:00:00	2011-05-09 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
023773997643001	BINTANG INDO JAYA							10710				Normal	2015-02-24 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
060558038721001	ROBERT TANSIL							64911				Non Efektif	2012-12-21 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
024427536922001	CIPTA KARYA MULTI TEKNIK							41012				Non Efektif	2017-02-21 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
746394535614000	VICTOR MULYADI	JL. RADEN SALEH NO 14-D RT 003 RW 005	08113459500		OP	BUBUTAN	BUBUTAN	Z5000	KOTA SURABAYA	3,57813E+15	JAWA TIMUR	Normal	2015-12-03 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
910905454604000	SINGA MAS INTERNASIONAL	JL MANUKAN TAMA BLOK BLOK A2 NO 52 LT 2 RT 011 RW 006	081999752829	CV	BADAN	TANDES	MANUKAN KULON	46499	KOTA SURABAYA		JAWA TIMUR	Normal	2019-04-04 00:00:00	2019-07-18 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
028172344616001	BINTANG LAUT PLATINUM	JL HANGTUAH NO 3	031-3575109	PT	BADAN	SEMAMPIR	UJUNG	52291	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2012-12-06 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
017162918613000	LINTAS NIAGA JAYA	JL PERAK TIMUR NO 56 RT 002 RW 005	081217049898	PT	BADAN			52291				Normal	1997-01-21 00:00:00	1997-08-13 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
912744927609000	HELMIGS BINTANG TERANG	JL MARGOREJO INDAH BLOK BLOK D-521 RT 004 RW 005	08123018008	PT	BADAN	WONOCOLO	SIDOSERMO	70203	KOTA SURABAYA		JAWA TIMUR	Normal	2019-04-23 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
017395013032001	SUTINDO RAYA MULIA							47521				Normal	1999-10-25 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
801249053614000	ISTANA DIESEL SURABAYA	JL. PENGENAL I-F BLOK BLOK. A NO 10 RT 000 RW 000	082131451378	CV	BADAN	BUBUTAN	BUBUTAN	46530	KOTA SURABAYA		JAWA TIMUR	Normal	2016-09-26 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
831906375615000	DIRGANTARA POS INTIMODA	JL RAYA PANDUGO NO 147 RT 003 RW 03	6281234562160	PT	BADAN	RUNGKUT	WONOREJO	53201	KOTA SURABAYA		JAWA TIMUR	Normal	2017-11-03 00:00:00	2020-06-30 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
011091014631000	INDUSTRI KAWAT BAJA WONOSARI JAYA	JL KERTOPATEN NO 21/I	085732455406	PT	BADAN	SIMOKERTO	SIDODADI	25119	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
245477682607000	TEJA PUTRA LESMANA	JL TEGALSARI NO 35 RT 001 RW 001	08991524656		OP	TEGALSARI	TEGALSARI	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	2008-08-20 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
705762201611000	EKA SAPUTRA ALIM	JL WIJAYA KUSUMA NO 9 RT 003 RW 005	08111100099		OP	GENTENG	KETABANG	Z5000	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	2014-07-07 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
021138250721001	CENTRAL DIESEL							46591				Normal	2012-05-14 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
031204464605000	IMMANUEL BINTANG JAYA ABADI	JL LAKSDA M. NASIR NO 11-A	081330060032	PT	BADAN	KREMBANGAN	PERAK BARAT	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2013-09-02 00:00:00	2014-02-05 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
016402521043001	PERWIRABHAKTI SENTRASEJAHTERA							46491				PL/DE	2010-03-18 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
012330759528001	UTOMO DECK METAL WORKS							25112				Normal	2018-11-27 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
012330759804001	UTOMO DECK METAL WORKS							25112				Normal	2022-07-27 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
024430233618000	WIYUNG SEJAHTERA	JL KARANGAN PDAM NO 03	085855064671	PT	BADAN	WIYUNG	BABATAN	86103	KOTA SURABAYA		JAWA TIMUR	Normal	2005-07-06 00:00:00	2010-10-20 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
911598498618000	TERANG NUSANTARA INDAH	JL MAYJEND YONO SOEWOYO KAVLING NO 3 RT 000 RW 000	085233336666	CV	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46201	KOTA SURABAYA		JAWA TIMUR	Normal	2019-04-09 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
040227159905001	NOER WAHJU							97000				Normal	2013-09-25 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
032945511902001	BANDARTRISULA							46637				Normal	2014-02-18 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
743989550619000	SARANA CIPTA KOMPUTER	JL MOCHAMAD NOOR NO 114 RT 001 RW 001	6281234363035	CV	BADAN	TAMBAKSARI	DUKUH SETRO	46521	KOTA SURABAYA		JAWA TIMUR	Normal	2015-11-06 00:00:00	2015-12-17 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
014694210722002	JATIM WATKORAYA							46491				Normal	2011-01-31 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
745923987404001	KARUNIA INDAH DELAPAN EXPRES							52292				Normal	2021-05-19 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
014815328722001	PUTRA GUNA JAYA MULIA							52293				Normal	2011-07-15 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
022071781613000	ANDALAN TOTAL TRANSPORT	JL PERAK TIMUR BLOK D-5 NO 512 RT 002 RW 003	6281553765222	PT	BADAN			52291				Normal	2007-06-07 00:00:00	2008-05-13 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
021143854617001	SURYA SEJAHTERA							45403				Normal	2014-08-12 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
066534843606000	ALI TANUWIDJAJA	JALAN KERTAJAYA INDAH REGENCY BLOK C NO 7 RT 004 RW 002	085748163944		OP	SUKOLILO	GEBANG PUTIH	Z5000	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	1991-07-23 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
022084735434001	PRIMA INDOJAYA MANDIRI							42101				Normal	2016-12-16 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
020097390643001	SIANTAR TOP MULTIFINANCE							64911				PL/DE	2011-12-08 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
022565766608001	SUBUR MITRA SUKSES							46339				Normal	2016-12-29 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
011407970631002	PUSKOPAL ARMATIM SBY	IKAN DORANG 1, PERAK BARAT	082139923871	KOP	BADAN	KREMBANGAN	PERAK BARAT	52293	KOTA SURABAYA		JAWA TIMUR	Normal	2009-01-23 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
022565766654001	SUBUR MITRA SUKSES							46339				Normal	2022-02-18 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
078797875604000	JEFFRY PRIJADI	TANJUNG GOLF G-2/9 RT 003 RW 004, LAKARSANTRI	000982389478		OP	LAKARSANTRI	LAKARSANTRI	Z5000	KOTA SURABAYA	3,57813E+15	JAWA TIMUR	Normal	2006-11-21 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
024427536823001	CIPTA KARYA MULTI TEKNIK							41012				Non Efektif	2016-12-20 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
063646731643001	BUDI SAPUTRA SANTOSO							29300				Normal	2093-11-24 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
024428047618000	BANGUN KONSTRUKSI PERSADA	KETINTANG MADYA CEMPAKA NO 14 RT 006 RW 011	6281334103128	PT	BADAN	JAMBANGAN	KARAH	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2005-02-21 00:00:00	2005-02-21 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
023774425631000	NUR MEDICA FARMA	JL. GUNUNGSARI INDAH BLOK K-2, KEDURUS	085204348474	PT	BADAN	KARANG PILANG	KEDURUS	46441	KOTA SURABAYA		JAWA TIMUR	Normal	2004-08-19 00:00:00	2004-09-23 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
741504658618000	MAHAKAM MITRA LESTARI	KOMPLEK SPAZIO LEVEL 5 JALAN MAYJEND YONO SOEWOYO KAV 3 UNIT NO 525A RT 000 RW 000	0318716141	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	08999	KOTA SURABAYA		JAWA TIMUR	Normal	2015-10-07 00:00:00	2016-07-25 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
728412768607000	MANDIRI LESTARI MEDIKA	JL PANDEGILING NO 189	081331609619	PT	BADAN	TEGALSARI	DR. SOETOMO	46691	KOTA SURABAYA		JAWA TIMUR	Normal	2015-04-27 00:00:00	2015-05-06 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
030464853609000	SARANA ANUGERAH METAL	KO RUKO JL RAYA JEMURSARI 76 BLOK D NO 19 RT 001 RW 007	08113051013	PT	BADAN	WONOCOLO	JEMUR WONOSARI	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2010-11-24 00:00:00	2011-02-01 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
745923987614000	KARUNIA INDAH DELAPAN EXPRES	JL RAYA ARJUNA NO 83 RT 000 RW 000	085648893108	PT	BADAN	SAWAHAN	SAWAHAN	52292	KOTA SURABAYA		JAWA TIMUR	Normal	2015-11-27 00:00:00	2016-01-29 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
028174266613000	DEWADARU SEMESTA JAYA	JL PERAK TIMUR NO 36A	082143199839	PT	BADAN			46651				Normal	2010-02-17 00:00:00	2010-02-23 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
022089239604000	PURI WIRA MAHKOTA	JL SATELITE TOWN SQUARE BLOK E NO 25 NO 25	087853076410	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	45403	KOTA SURABAYA		JAWA TIMUR	Normal	2009-02-28 00:00:00	2009-04-14 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
017162918512001	LINTAS NIAGA JAYA							52293				Non Efektif	2015-01-12 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
014694210615001	JATIM WATKORAYA	JL RUNGKUT INDUSTRI III NO 72 RT 002 RW 005	087855702800	PT	BADAN	GUNUNG ANYAR	RUNGKUT TENGAH	46491	KOTA SURABAYA		JAWA TIMUR	Normal	2013-10-30 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
017395013418001	SUTINDO RAYA MULIA							47521				Normal	2007-12-07 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
739685550606000	NICHELLE BASTIAAN ONGKO	JL MANYAR KERTOARJO BLOK 3 NO 67 RT 003 RW 006	0818129090		OP	MULYOREJO	MANYAR SABRANGAN	Z5000	KOTA SURABAYA	3,5781E+15	JAWA TIMUR	Normal	2015-09-17 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
014826788619000	ANEKA JASUMA PLASTIK	JL KEDINDING INDAH NO 25-27	085655288032	PT	BADAN	KENJERAN	TANAH KALI KEDINDING	22291	KOTA SURABAYA		JAWA TIMUR	Normal	1990-07-13 00:00:00	1994-05-10 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
017928326022001	ENCIETY BINAKARYA CEMERLANG							70100				PL/DE	2005-12-13 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
019951698656001	BHAKTI PERSADA SAUDARA PHARMA							47725				PL/DE	2012-10-15 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
020921987627001	PELAYARAN HUB MARITIM INDONESIA	JL. SEMERU PERUM VILLA SUKOWIDI 2 BLOK MC-02 RT 003 RW 004, KLATAK, KAB. BANYUWANGI				KALIPURO	KLATAK	50133	KAB. BANYUWANGI			Non Efektif	2017-08-08 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
011091014712001	WONOSARI JAYA							24201				PL/DE	2012-01-20 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
025407990605000	TRI JAYA TANGGUH	JL PERAK BARAT NO 105 RT 001 RW 002	089687829126	PT	BADAN	KREMBANGAN	PERAK BARAT	11090	KOTA SURABAYA		JAWA TIMUR	Normal	2006-11-21 00:00:00	2008-02-11 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
011222148512001	SURYA DERMATO MEDICA LABORATORIES							47722				Normal	2013-09-11 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
024430571657001	CHALIDANA INTI SAFIRA	DSN LEBAN RT 000 RW 000, KAB. MALANG				KARANGPLOSO	TAWANGARGO	68111	KAB. MALANG			Normal	2023-07-14 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
016402521901001	PERWIRABHAKTI SENTRASEJAHTERA							46491				Normal	2020-10-30 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
032945511502001	BANDARTRISULA							46637				Normal	2014-04-15 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
032945511608001	BANDARTRISULA							46637				Normal	2014-03-19 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
032945511645001	BANDARTRISULA							46637				Normal	2017-11-30 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
032945511729001	BANDARTRISULA							46637				Normal	2019-02-19 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
032945511822001	BANDARTRISULA							46637				Normal	2014-03-20 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
842659658012001	PHILIP MORRIS SAMPOERNA INTERNATIONAL SERVICE CENTER							62021				Normal	2018-06-21 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
703935312624001	MULTI BANGUN INDONESIA							46634				Normal	2021-05-18 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
745923987037001	KARUNIA INDAH DELAPAN EXPRES							52292				Normal	2019-07-29 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
745923987512001	KARUNIA INDAH DELAPAN EXPRES							52292				Normal	2019-10-23 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
019792357613000	LIMALIMA DINAMIKA	KOMPLEK SEMUT INDAH BLOK B NO 16	081331474327	PT	BADAN	PABEAN CANTIAN	BONGKARAN	46521	KOTA SURABAYA		JAWA TIMUR	Normal	2000-10-18 00:00:00	2000-11-03 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
021143854601001	SURYA SEJAHTERA							46900				Normal	2009-02-11 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
021143854643001	SURYA SEJAHTERA							45401				Normal	2009-01-19 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
022084735309001	PRIMA INDOJAYA MANDIRI							42101				Normal	2011-04-18 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
015567449618000	BAKTI SURYAWANGSA	GEDUNG SOHO SKYLOFT LANTAI 25 UNIT 2588, JL. MAYJEND SUNGKONO NO 89	08113562990	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	64200	KOTA SURABAYA		JAWA TIMUR	Normal	2006-01-20 00:00:00	2016-05-10 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
022565766601001	SUBUR MITRA SUKSES							46339				Normal	2016-12-21 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
028252815604000	CITRARAYA MANDIRI MOTOR	JL EMERARD MANSION CITRARAYA BLOK TX KAV 6	081335584245	PT	BADAN	LAKARSANTRI	LIDAH KULON	45101	KOTA SURABAYA		JAWA TIMUR	Normal	2009-06-24 00:00:00	2010-04-12 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
020919593417001	AWAN SAMUDERA LESTARI							52293				PL/DE	2010-11-23 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
018386169604000	ANTABOGA MANUNGGAL KARSA	PATTIMURA (RUKO PLAZA SEGI DELAPAN KAV. C-810 )	085235103103	PT	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	46100	KOTA SURABAYA		JAWA TIMUR	Normal	1998-08-04 00:00:00	2010-07-16 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
067512962615000	HERRY MULJA	JL KUTISARI INDAH UTARA IV NO 25	0811304266		OP	TENGGILIS MEJOYO	KUTISARI	Z5000	KOTA SURABAYA	3,57824E+15	JAWA TIMUR	Normal	1993-08-24 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
060558038722001	ROBERT TANSIL							46900				Non Efektif	2012-12-20 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
032949760611000	RAJAWALI BINA MAJU	JALAN BABATAN PANTAI NO 14 RT 003 RW 001	6285736183114	CV	BADAN	MULYOREJO	DUKUH SUTOREJO	47411	KOTA SURABAYA		JAWA TIMUR	Normal	2013-09-24 00:00:00	2014-11-27 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
820434306619000	SINAR AGRO GEMILANG INDAH	JL RAYA MULYOSARI  BLOK PDD-38	0315991872	PT	BADAN	MULYOREJO	KALISARI	46201	KOTA SURABAYA		JAWA TIMUR	Normal	2017-05-23 00:00:00	2018-04-23 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
751225988604000	CENTRO BOGA DELICIO	RAYA KUPANG BARU NO 74	08113550850	PT	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	56101	KOTA SURABAYA		JAWA TIMUR	Normal	2016-02-03 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
713797819454001	ALVINDO							46339				Non Efektif	2023-11-03 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
025864240614000	GREENSOL INDONESIA	SPAZIO OFFICE BUILDING LT 6 UNIT 605 JL MAYJEND YONO SOEWOYO KAV 3	03199020102	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46620	KOTA SURABAYA		JAWA TIMUR	Normal	2007-11-26 00:00:00	2007-11-27 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
760495382618000	PENTAWIRA LOGISTICS INDONESIA	RUKO GOLDEN PALACE BLOK. C -17, JL HR. MUHAMMAD NO. 373 - 383	0816510204	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2016-05-04 00:00:00	2016-09-19 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
028251403604000	PROFIRA SEJAHTERA ABADI	JL PATTIMURA (RUKO PLAZA SEGI DELAPAN KAV. C-815)	62317318836	PT	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	46443	KOTA SURABAYA		JAWA TIMUR	Normal	2009-03-04 00:00:00	2017-12-29 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
028172377613000	MAHAWANGSA	JL LAKSDA M. NASIR BLOK G-18 NO 29 RT 006 RW 008	081232800990	PT	BADAN	KREMBANGAN	PERAK BARAT	80100	KOTA SURABAYA		JAWA TIMUR	Normal	2008-08-26 00:00:00	2011-06-28 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
023770845514001	DUTA RAMA							42918				Non Efektif	2011-09-06 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
756890786611000	DWIARTA PUTRA ALIM	WIJAYA KUSUMA NO 9 RT 003 RW 005	628111151888		OP	GENTENG	KETABANG	Z5000	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	2016-03-31 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
847018686607000	CHALIDANA INDONESIA JAYA	JL RAYA DARMO NO 75-77 RT 004 RW 006	6281703227503	PT	BADAN	TEGALSARI	KEPUTRAN	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2018-04-24 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
028254241614000	AGRO TANI SUKSES SEJAHTERA	JL KALIANAK BARAT NO 55-U RT 000 RW 000	6285333333555	PT	BADAN	ASEM ROWO	GENTING KALIANAK	46311	KOTA SURABAYA		JAWA TIMUR	Normal	2010-03-30 00:00:00	2011-03-01 00:00:00	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
317076057609000	WIRATAMA GRAHA RAHARJA	JL  PAGESANGAN IV KENCANA II NO 25 RT. 003 RW. 003 BLOK II NO 25 RT 003 RW 003	085850694721	PT	BADAN	JAMBANGAN	PAGESANGAN	41011	KOTA SURABAYA		JAWA TIMUR	Normal	2013-03-06 00:00:00	2014-02-25 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
067828061619000	TERRY RUNUDALIE	JL DHARMAHUSADA PERMAI 4/46 NO V-612 RT 003 RW 011	0811305241		OP	MULYOREJO	MULYOREJO		KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	1994-04-16 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
021026679654001	STANDAR BETON INDONESIA							23953				Non Efektif	2006-01-05 00:00:00	\N	\N	user_2smbNtNMXKn7LTZrHb3JEz8Q2le
016731473618000	SIANTAR TIARA ESTATE	JL LIDAH HARAPAN TIMUR PERUMAHAN LEMBAH HARAPAN	08113521917	PT	BADAN	LAKARSANTRI	LIDAH WETAN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2005-08-18 00:00:00	2005-08-19 00:00:00	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
851306548604000	PRAYUDA ASTHA NAWA	DREAMING LAND BLOK D5 NO 06 RT 009 RW 004	6281249107563	CV	BADAN	BENOWO	SEMEMI	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2018-06-26 00:00:00	2018-11-30 00:00:00	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
012274536625001	BEN SANTOSA							33151				PL/DE	2007-09-04 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
869024885609000	SAPARO WIJAYA ANTARIKSA	GRAHA PENA LT 15 R.1503 JL A. YANI NO 88	081235459848	PT	BADAN	GAYUNGAN	KETINTANG	64200	KOTA SURABAYA		JAWA TIMUR	Normal	2018-12-19 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
020921193714001	BORNEO PRIMA							05100				Normal	2013-01-31 00:00:00	\N	\N	user_2smbQbeE63eIw5egPdMsIgrWUck
032945511528001	BANDARTRISULA							46637				Normal	2014-02-25 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
014694210048001	JATIM WATKORAYA							47592				Non Efektif	2012-02-23 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
032945511721001	BANDAR TRISULA							46637				PL/DE	2015-03-26 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
032945511803001	BANDARTRISULA							46637				Normal	2017-04-06 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
014694210721003	JATIM WATKORAYA							47592				Non Efektif	2011-01-11 00:00:00	\N	\N	user_2smZfLt4t79qd8RpnHsGxAFWJgq
033299447085001	ELEMEN GEMILANG SURYAMASINKA							46100				Normal	2014-02-05 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
014825673616000	DAYA AGUNGSEMESTA	JL GEMBONG BLOK C-8 NO 2-16	0313763426	PT	BADAN	SIMOKERTO	KAPASAN	52231	KOTA SURABAYA		JAWA TIMUR	Normal	1990-04-10 00:00:00	1990-04-10 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
015309578619000	MULIASARI PERMAI	JL RAYA MULYOSARI NO 326	081330368894	PT	BADAN	MULYOREJO	KALISARI	46314	KOTA SURABAYA		JAWA TIMUR	Normal	1990-08-06 00:00:00	2001-07-02 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
661336511606000	HARTANTO MULTI TRADING	JL KALIBOKOR NO 109 RT 001 RW 002	0818337788	CV	BADAN	GUBENG	KERTAJAYA	46319	KOTA SURABAYA		JAWA TIMUR	Normal	2014-01-22 00:00:00	2014-02-24 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
926858135611000	BAHARI SENTOSA ALAM	JAPFA TOWER II LT 12 JL PANGLIMA SUDIRMAN NO 66-68 RT 003 RW 001	08967756971	CV	BADAN	GENTENG	EMBONG KALIASIN	03254	KOTA SURABAYA		JAWA TIMUR	Normal	2019-08-28 00:00:00	2021-09-07 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
059288522606000	LIONG,TJILIY ISWANDI LYONO	JL MOJOKLANGGRU KIDUL BLOK G NO 18 RT 002 RW 005	085730010864		OP	GUBENG	MOJO	Z5000	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	2013-09-24 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
016731473643001	SIANTAR TIARA ESTATE							68111				Normal	2011-06-23 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
020097390631001	SIANTAR TOP MULTIFINANCE							64911				PL/DE	2013-01-01 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
726567001619000	BERDIKARI PUTRA JAYA SEJAHTERA	JL KEDINDING TENGAH JAYA 2 NO 36-40 RT 004 RW 002	081357174471	PT	BADAN	KENJERAN	TANAH KALI KEDINDING	46499	KOTA SURABAYA		JAWA TIMUR	Normal	2015-04-01 00:00:00	2015-08-12 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
031000003725000	BLACKWOODS INDONESIA	SUBCO SPAZIO SUITES 525 A JL MAYJEND YONO SOEWOYO KAV 3	0811544250	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2011-02-17 00:00:00	2011-09-08 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
033360611609000	CITRA CAKRA PERSADA	JL RAYA JEMURSARI NO 213	081335584245	PT	BADAN	WONOCOLO	SIDOSERMO	45101	KOTA SURABAYA		JAWA TIMUR	Normal	2013-11-25 00:00:00	2013-12-12 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
830984019613000	FLORESTA INDO MANDIRI	PERTOKOAN SEMUT SQUARE LANTAI 3, JL  SEMUT BARU BLOK A NO 10 RT 002 RW 008	082140804250	PT	BADAN	PABEAN CANTIAN	BONGKARAN	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2017-10-24 00:00:00	2020-06-24 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
904974292611000	INI MIMPI MINI	INTILAND TOWER OFFICE SUITE LV 3 NO. 101 - 103 RT 000 RW 000	623160018156	PT	BADAN	GENTENG	EMBONG KALIASIN	56306	KOTA SURABAYA		JAWA TIMUR	Normal	2019-02-13 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
028172823511001	BUANA TUNAS SEGARA SUBUR							46319				PL/DE	2010-04-20 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
060558038731001	ROBERT TANSIL							96990				Non Efektif	2012-12-20 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
705851731653001	ALAM NUANSA INDAH							68200				Normal	2018-11-19 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
015447741611000	PRIMASENTOSA GANDA	GEDUNG INTILAND TOWER LT.3 JALAN PANGLIMA SUDIRMAN NO 101-103 RT 000 RW 000	081234614313	PT	BADAN	GENTENG	EMBONG KALIASIN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	1992-07-30 00:00:00	2013-06-21 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
904974292607001	INI MIMPI MINI	TUNJUNGAN PLAZA 6 LT. 4 UNIT 011 JL EMBONG MALANG NO 21-31 RT 008 RW 010	03160018516	PT	BADAN	TEGALSARI	KEDUNGDORO	56306	KOTA SURABAYA		JAWA TIMUR	Normal	2021-04-08 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
808481709606000	ITS PTN BH	JL KOMPLEK KAMPUS ITS	089665367728	LEMBAGA & BADAN LAIN	BADAN	SUKOLILO	KEPUTIH	85311	KOTA SURABAYA		JAWA TIMUR	Normal	2017-01-06 00:00:00	2017-01-23 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
023770845609000	DUTA RAMA	JL KETINTANG TIMUR PTT V NO 28	6282322329301	PT	BADAN	GAYUNGAN	KETINTANG	41012	KOTA SURABAYA		JAWA TIMUR	Normal	2004-01-26 00:00:00	2005-07-13 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
012328258604000	ADHI PURI JAYA	JL AMBENGAN NO 1 RT 006 RW 002	088235600565	PT	BADAN	GENTENG	KETABANG	68111	KOTA SURABAYA		JAWA TIMUR	Normal	1984-06-10 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
025865908216001	SEMESTA MITRA SEJAHTERA							01461				Normal	2017-04-05 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
030820161604000	METAPHORMOSA	JL.RAYA PUTAT GEDE TIMUR NO.25 RT.004 RW.002, PUTAT GEDE	082234533229	PT	BADAN	SUKOMANUNGGAL	PUTAT GEDE	24101	KOTA SURABAYA		JAWA TIMUR	Normal	2010-06-10 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
026329102605000	SURYA AGUNG MEGAH PERKASA	JL MLIWIS NO 37 RT 001 RW 010	0315320251	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2006-12-19 00:00:00	2009-12-04 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
315362335609000	BATU ARGO MAS	JL MARGOREJO INDAH BLOK A-506 NO 57 RT 001 RW 008	0318412999	PT	BADAN	WONOCOLO	MARGOREJO	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2012-05-25 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
313286981063001	ECLECTIC CONSULTING							62090				Non Efektif	2020-12-16 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
023548522606000	SUMBER ALAM	JALAN NGAGEL JAYA TENGAH 21	0313711873	CV	BADAN	GUBENG	PUCANG SEWU	46209	KOTA SURABAYA		JAWA TIMUR	Normal	2003-10-20 00:00:00	2009-06-03 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
026074419606000	GALA ARTA JAYA	JL KERTAJAYA INDAH TIMUR NO 33	085104727600	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2007-03-20 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
016406266606000	EKASAPTA HIDUPMAJU	JL RAYA GUBENG NO 27 RT 000 RW 000	62315032615	PT	BADAN	GUBENG	GUBENG	46599	KOTA SURABAYA		JAWA TIMUR	Normal	1994-01-03 00:00:00	1995-05-01 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
022090690615000	AGATOS MULTI SOLUSI	JL RAYA KALIRUNGKUT 5 BLOK A NO 32	087853783958	PT	BADAN	RUNGKUT	KALIRUNGKUT	71101	KOTA SURABAYA		JAWA TIMUR	Normal	2009-03-16 00:00:00	2009-04-03 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
012194635631000	WIDYA SATRIA	JL KETINTANG PERMAI BLOK BB NO 20	08563076971	PT	BADAN	JAMBANGAN	KARAH	42918	KOTA SURABAYA		JAWA TIMUR	Normal	1986-10-14 00:00:00	1986-10-14 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
757275615604000	KARYA BINTANG BARU	SENTRAL MARGOMULYO PERMAI BLOK A NO 19-20	623157485001	PT	BADAN	SUKOMANUNGGAL	TANJUNGSARI	46638	KOTA SURABAYA		JAWA TIMUR	Normal	2016-04-05 00:00:00	2016-10-29 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
020676516609000	KENANGA	JL KEBONSARI MANUNGGAL BLOK A NO 1 RT 002 RW 003	0317381800	CV	BADAN	JAMBANGAN	KEBONSARI	64911	KOTA SURABAYA		JAWA TIMUR	Normal	2001-10-19 00:00:00	2003-06-19 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
931405583618000	SEGARA SAKTI SEJATI	JL PESONA PERMATA GADING 1 BLOK L NO 30 RT 003 RW 015	082325556422	PT	BADAN	SIDOARJO	BLURUKIDUL	50133	KAB. SIDOARJO		JAWA TIMUR	Normal	2019-10-17 00:00:00	2019-10-23 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
919616177606000	SURYA AGUNG LESTARI	RUKO KLAMPIS MEGAH BLOK I NO 30 (LT.1)	628123232238	CV	BADAN	SUKOLILO	KLAMPIS NGASEM	47773	KOTA SURABAYA		JAWA TIMUR	Normal	2019-07-01 00:00:00	2019-08-16 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
012331385615001	GRIYO MAPAN SANTOSO	JL  PERSIL 61, ANCER NO 27-28 RT 000 RW 000	081249528321	PT	BADAN	GUNUNG ANYAR	GUNUNG ANYAR	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2017-05-04 00:00:00	\N	2021-05-24 00:00:00	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
705982478606000	PERSADA NUANSA INDAH	JL DHARMAHUSADA INDAH BARAT BLOK 03 NO 66	082144221148	PT	BADAN	GUBENG	MOJO	68200	KOTA SURABAYA		JAWA TIMUR	Normal	2014-07-04 00:00:00	2018-09-12 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
020096921604000	SURABAYA EUROPEAN SCHOOL	PAKUWON GOLF&FAMILY CLUB VILLA BUKIT REGENCY, LONTAR	62317315062	YAY	BADAN	SAMBIKEREP	LONTAR	85122	KOTA SURABAYA		JAWA TIMUR	Normal	2010-11-12 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
669486888619000	ROYAL PASIFIK MOTOR	JL RAYA KENJERAN NO 621 RT - RW -	08561146709	PT	BADAN	MULYOREJO	DUKUH SUTOREJO	45101	KOTA SURABAYA		JAWA TIMUR	Normal	2014-04-14 00:00:00	2016-02-03 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
312666514614000	SAMANDO	JL KOBLEN TENGAH NO 3 RT 006 RW 005	628113110303	PT	BADAN	BUBUTAN	BUBUTAN	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2011-01-12 00:00:00	2017-03-13 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
012194635518001	WIDYA SATRIA TAWAKAL TSANI MAKMUR							42918				PL/DE	2008-02-18 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
061716080616001	WIBOWO	JL. PEGIRIAN NO.116 RT.003 RW.010, SIDODADI			OP	SIMOKERTO	SIDODADI	47521	KOTA SURABAYA	1,12561E+16	JAWA TIMUR	Non Efektif	1997-10-21 00:00:00	\N	2015-04-13 00:00:00	user_2smbHso2UW3p4SBYX3e6SuJFMly
700137375606000	SURYA KIRANA LANGGENG	JL ARIF RAHMAN HAKIM NO 149	6281232478127	PT	BADAN	SUKOLILO	KEPUTIH	46333	KOTA SURABAYA		JAWA TIMUR	Normal	2014-04-22 00:00:00	2019-01-10 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
765167580618000	NICO KURNIADY	PERUMAHAN GRAHA FAMILI BLOK I NO 53 RT 004 RW 002	081330299529		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	2016-07-19 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
015446990651001	SUBAINDO CAHAYA POLINTRACO							47591				PL/DE	2000-06-29 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
016813131625001	MITRA KARYA MANDIRI JAYA							42101				Non Efektif	2014-11-04 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
804362499618000	INDOFASHION SUKSES ABADI	JL KENCANASARI BARAT BLOK G NO 21 RT 001 RW 005	081235744488	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	14111	KOTA SURABAYA		JAWA TIMUR	Normal	2016-10-31 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
012111266622001	MIKATASA AGUNG							20291				Normal	2016-12-06 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
016814899447001	JAYA SALVAGE INDONESIA							86903				Non Efektif	2016-07-20 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
028405801609000	BHAKTI INSAN KAMIL	JL. GAYUNG SARI BARAT BLOK XI NO 12-B RT 008 RW 005	087856046450	PT	BADAN	GAYUNGAN	GAYUNGAN	78300	KOTA SURABAYA		JAWA TIMUR	Normal	2008-12-22 00:00:00	2009-01-08 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
709014542616000	DAYAAGUNG SEMESTA EKSPRES	JL GEMBONG 2-16 (WISMA GEMINI)BLOK C NO 8 RT 006 RW 005	08113166111	PT	BADAN	SIMOKERTO	KAPASAN	52219	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2014-09-01 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
018314211614000	CIPTA WARNA JAYA	JL MARGOMULYO PERMAI BLOK G NO 2 RT 001 RW 001	082131888142	CV	BADAN	ASEM ROWO	TAMBAK SARIOSO	20293	KOTA SURABAYA		JAWA TIMUR	Normal	1999-01-04 00:00:00	1999-02-17 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
731759627036001	INDRACO GLOBAL INDONESIA							10761				PL/DE	2019-01-22 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
025150137618000	MITRA SURYA PERSADA	JL WIYUNG PRAJA NO 12 RT 001 RW 005	62317524406	PT	BADAN	WIYUNG	WIYUNG	41013	KOTA SURABAYA		JAWA TIMUR	Normal	2006-04-19 00:00:00	2006-11-14 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
015443997914001	BUKIDALAM BARISANI							41019				Non Efektif	2017-06-22 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
845424639606000	MANANG SEJAHTERA ABADI	JL ARIEF RACHMAN HAKIM NO 173 RT 004 RW 001	6282140310730	CV	BADAN	SUKOLILO	KEPUTIH	45103	KOTA SURABAYA		JAWA TIMUR	Normal	2018-04-06 00:00:00	2018-08-01 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
926858135913001	BAHARI SENTOSA ALAM							03219				Normal	2019-11-11 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
012330817631000	SURYA MULTI INDOPACK	JL. RUNGKUT INDUSTRI BLOK XIV NO 4 RT 004 RW 006	085155222333	PT	BADAN	TENGGILIS MEJOYO	KUTISARI	17022	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
067117150619000	LAUW KIANTARA SAPUTRA	JL DARMAHUSADA INDAH UTARA IV NO 32	0811371755		OP	MULYOREJO	MULYOREJO	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	1993-04-15 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
023773997617001	BINTANG INDO JAYA							10710				Normal	2019-01-18 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
013374681631001	WALETKENCANA PERKASA	JL.RUNGKUT INDUSTRI I NO 24-26, KALIRUNGKUT		PT	BADAN	RUNGKUT	KALIRUNGKUT	21012	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2007-04-09 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
024760589631000	KUDA MAS	RUKO PANJI MAKMUR B-31 JL PANJANGJIWO NO 46-48	0818588905	CV	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	46209	KOTA SURABAYA		JAWA TIMUR	Normal	2005-06-29 00:00:00	2005-09-09 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
731759627413000	INDRACO GLOBAL INDONESIA	JL MAYJEN YONO SOEWOYO PAKUWON SQUARE AK1/37 NO 66 RT 002 RW 009	082141431486	PT	BADAN	WIYUNG	BABATAN	10761	KOTA SURABAYA		JAWA TIMUR	Normal	2015-06-04 00:00:00	2015-08-19 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
028250520618001	SUSHI-TEI SURABAYA	MAYJEND SUNGKONO NO.89, CIPUTRA WORLD BLOK LT.3 NO 01	081235073885	PT	BADAN	DUKUH PAKIS	GUNUNG SARI	56101	KOTA SURABAYA		JAWA TIMUR	Normal	2015-01-21 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
929891950605000	AMARTA JAYA TRANSLOGISTIK	JL IKAN MUNGSING X NO 2 RT 006 RW 004	081216566697	PT	BADAN	KREMBANGAN	PERAK BARAT	50133	KOTA SURABAYA		JAWA TIMUR	Normal	2019-09-30 00:00:00	2019-10-21 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
746268671619000	YENNIFER SAPUTRA	JL DHARMAHUSADA IND UTARA 4 NO 32 RT 002 RW 008	628123018594		OP	MULYOREJO	MULYOREJO	47781	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	2015-12-02 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
012331385606000	GRIYO MAPAN SANTOSO	JL M JASIN POLISI ISTIMEWA NO 30 RT 005 RW 006	087731820809	PT	BADAN	TEGALSARI	KEPUTRAN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	1985-04-04 00:00:00	1985-08-07 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
839086055604000	PUTRA SANTOSO MAJU	JL TANJUNG SADARI NO 137 A	085101273666	PT	BADAN	KREMBANGAN	PERAK BARAT	46209	KOTA SURABAYA		JAWA TIMUR	Normal	2018-01-30 00:00:00	2021-04-06 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
732875299614000	TROPIS MEGA INTERNASIONAL	JL. RAYA ARJUNA NO 145	082215353636	PT	BADAN	SAWAHAN	SAWAHAN	47243	KOTA SURABAYA		JAWA TIMUR	Normal	2015-06-19 00:00:00	\N	2017-07-06 00:00:00	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
011407970631001	PUSKOPAL ARMATIM SURABAYA	JL SAMUDRA NO 9-11-15	081335652021	KOP	BADAN	PABEAN CANTIAN	BONGKARAN	55120	KOTA SURABAYA		JAWA TIMUR	Normal	1983-01-13 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
017077389631000	CIPTA KARYA HUSADA UTAMA	JL PROF.DR.MOESTOPO NO 31-35	085853265229	PT	BADAN	TAMBAKSARI	PACARKELING	86103	KOTA SURABAYA		JAWA TIMUR	Normal	1996-03-07 00:00:00	2006-06-28 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
312548910611000	KRIS GRAF INDONESIA	JL MAKAM PENELEH NO 108 RT 000 RW 000	0313722808	PT	BADAN	GENTENG	PENELEH	47415	KOTA SURABAYA		JAWA TIMUR	Normal	2010-12-06 00:00:00	2011-07-07 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
808450316611000	DUTABAJA SURYA PERKASA	JL EMBONG KENONGO NO 54-56 RT 002 RW 001	081331716890	PT	BADAN	GENTENG	EMBONG KALIASIN	46631	KOTA SURABAYA		JAWA TIMUR	Normal	2016-12-22 00:00:00	2017-02-01 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
028174423613000	CENTRAL PULAU LAUT	JL PERAK TIMUR BLOK F-9 NO 512 RT 002 RW 003	085331365379	PT	BADAN			46206				Normal	2010-03-30 00:00:00	2013-01-28 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
024580904604001	GLOBAL COMETAL INDONESIA	TANJUNG SARI NO 44-A RT 001 RW 007	083813534687	PT	BADAN	SUKOMANUNGGAL	SIMOMULYO BARU	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2015-10-15 00:00:00	\N	2016-12-30 00:00:00	user_2smbHso2UW3p4SBYX3e6SuJFMly
014658157613000	AGRINDO TRIHUTAMA	JL PERAK TIMUR NO 312	0313292448	PT	BADAN			46209				Normal	1988-09-22 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
019953215606000	MARANI RIPAH GLOBALINDO	JL NGAGEL JAYA INDAH NO 68	0315016796	PT	BADAN	GUBENG	BARATAJAYA	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2000-09-25 00:00:00	2000-10-12 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
015107857615001	GELORA NIAGA KENCANA	JL WONOREJO	083857587000	PT	BADAN	RUNGKUT	WONOREJO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2014-07-02 00:00:00	\N	2021-05-24 00:00:00	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
016406266614001	EKASAPTA HIDUPMAJU	JL.KALIANAK BARAT 53 LL, KALIANAK	08567279999	PT	BADAN	ASEM ROWO	GENTING KALIANAK	46491	KOTA SURABAYA		JAWA TIMUR	Normal	2005-02-07 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
017397217611000	BERKAT ANUGERAH AGUNG	JL GENTENG BESAR NO 10 RT 2 RW 10	6282230601766	PT	BADAN	GENTENG	GENTENG	77210	KOTA SURABAYA		JAWA TIMUR	Normal	1998-09-25 00:00:00	1998-11-26 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
020098620618000	DANTRINDO	GEDUNG SPAZIO OFFICE BUILDING LT 5 JL MAYOR JENDERAL YONO SOEWOYO KAV 3 NO S510 RT 008 RW 001	08113340613	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	31001	KOTA SURABAYA		JAWA TIMUR	Normal	2002-01-30 00:00:00	2002-05-06 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
015676646811001	ANUGRAH MAKMUR SEJAHTERA							52221				PL/DE	1994-05-09 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
313461915618000	JATIMAS DEVELOPMENT INDONESIA	JL RAYA DARMO NO 75-77 RT 004 RW 006	6281703227503	PT	BADAN	TEGALSARI	KEPUTRAN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2011-06-23 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
021143631611000	MASTEKINDO	JL TANJUNG ANOM BLOK I NO 7 RT 008 RW 004	628113520032	CV	BADAN	GENTENG	KAPASARI	47592	KOTA SURABAYA		JAWA TIMUR	Normal	2006-12-06 00:00:00	2007-08-02 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
014398366612001	BANK PERKREDITAN RAKYAT PRIMA KREDIT UTAMA							64131				Normal	2011-01-07 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
021758032619000	INDO JAYA PUTRA	JL LEBAK PERMAI UTARA III/18-A	62818370806	CV	BADAN	TAMBAKSARI	GADING	20116	KOTA SURABAYA		JAWA TIMUR	Normal	2002-10-02 00:00:00	2002-10-28 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
028404903903001	MUKTI ADHI SEJAHTERA							42918				Non Efektif	2015-04-10 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
017308529009001	ANTAKESUMA INTI RAHARJA							33121				Non Efektif	2015-07-02 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
312395122615000	ANTAR SURYA MEDIA	JL RUNGKUT INDUSTRI BLOK III NO 68-70 RT 004 RW 005	089524510821	PT	BADAN	GUNUNG ANYAR	RUNGKUT TENGAH	18111	KOTA SURABAYA		JAWA TIMUR	Normal	2010-10-21 00:00:00	2011-01-03 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
022089239075001	PURI WIRA MAHKOTA							45301				Normal	2009-07-06 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
916322258619000	MUTIARA SEKAWAN JAYA	JL KERTAJAYA INDAH V BLOK F - 331	62315962809	CV	BADAN	MULYOREJO	MANYAR SABRANGAN	64200	KOTA SURABAYA		JAWA TIMUR	Normal	2019-05-27 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
060595865604000	SANTOSO PRAJOGO	JL DARMO HARAPAN REGENCY BLOK BLOK RY NO 1-2 RT 008 RW 004	08113513168		OP	SUKOMANUNGGAL	TANJUNGSARI	Z5000	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	2000-02-29 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
022572259607000	MEGA INTI GEMILANG	JL KAPUAS NO 33 RT 007 RW 014	0816503401	PT	BADAN	TEGALSARI	DR. SOETOMO	43212	KOTA SURABAYA		JAWA TIMUR	Normal	2007-06-05 00:00:00	2007-07-19 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
067152058614000	SUGIONO WIYONO SUGIALAM	JL TAMBAK BAYAN TENGAH NO 36	0813800257		OP	BUBUTAN	ALUN-ALUN CONTONG	52211	KOTA SURABAYA	3,57813E+15	JAWA TIMUR	Normal	1993-10-09 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
066924358614001	HARYADI TJOKRO DJANTO	JL RADEN SALEH 45 KAV 19, GUNDIH	0317315017		OP	BUBUTAN	BUBUTAN	47521	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Non Efektif	2011-07-21 00:00:00	\N	2016-05-26 00:00:00	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
014409924618001	HUTAN ALAM	JL RAYA DUKUH KUPANG NO 67	031-5612935	PT	BADAN	DUKUH PAKIS	DUKUH KUPANG	42101	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2005-09-30 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
021760236619000	INNECO WIRA SAKTI HUTAMA	JL SUTOREJO SELATAN II/1-3	082245163671	PT	BADAN	MULYOREJO	DUKUH SUTOREJO	41011	KOTA SURABAYA		JAWA TIMUR	Normal	2003-03-05 00:00:00	2004-03-23 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
534389556607000	SHINDY ARLINA	JL DOHO NO 25 RT 002 RW 006	08123110987		OP	TEGALSARI	KEPUTRAN	Z5000	KOTA SURABAYA	3,57806E+15	JAWA TIMUR	Normal	2021-11-30 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
031258171609000	RADIANY DUTA PERKASA	JL AHMAD YANI NO 288-290 (CITO LT.25 NO.2510)	6281999022192	PT	BADAN	GAYUNGAN	DUKUH MENANGGAL	14111	KOTA SURABAYA		JAWA TIMUR	Normal	2011-05-20 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
730240769614000	GEMILANG AKAL SWASTI	JL KEBONROJO BLOK LT 2 NO 8	083857718018	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	47793	KOTA SURABAYA		JAWA TIMUR	Normal	2015-05-15 00:00:00	2022-04-13 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
314334830604000	KARYA DELITAMA PRIMA PERSADA	KOMPLEK PERGUDANGAN CENTRAL MARGOMULYO PERMAI BLOK C NO 12-12A	08113050148	PT	BADAN	SUKOMANUNGGAL	TANJUNGSARI	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2011-12-12 00:00:00	2016-03-23 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
060552940604000	TJANDRA MINDHARTA GOZALI	JL KUPANG INDAH II NO 48	0818338998		OP	SUKOMANUNGGAL	SONOKWIJENAN	Z5000	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	1984-12-11 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
066109174607000	ALBERTUS ANDRI ANGGASAPUTRO	JL IR ANWARI NO 3 RT 005 RW 009	082340285375		OP	TEGALSARI	DR. SOETOMO	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	1991-05-16 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
014518195614000	INCOMINDO MURNI JAYA	JL PAHLAWAN 41-A	0315479000	PT	BADAN	BUBUTAN	ALUN-ALUN CONTONG	46638	KOTA SURABAYA		JAWA TIMUR	Normal	1987-02-27 00:00:00	1989-09-01 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
018312827618000	SIKAM SELAMBAN	RUKO WONOKITRI INDAH, JL MAYJEND SUNGKONO BLOK S NO 19	0811310765	PT	BADAN	DUKUH PAKIS	GUNUNG SARI	46641	KOTA SURABAYA		JAWA TIMUR	Normal	1998-05-15 00:00:00	1998-06-17 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
766988612606000	MERLINA MEGAWATI	JL DHARMAHUSADA UTARA 10	082245028985		OP	GUBENG	MOJO	Z5000	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	2016-08-08 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
078767563609000	BOK,HANY SOEGENG BAGIO	MARGOREJO INDAH BLOK A-506 NO 57 RT 001 RW 008	0318412999		OP	WONOCOLO	MARGOREJO	96990	KOTA SURABAYA	3,57804E+15	JAWA TIMUR	Normal	2003-12-23 00:00:00	2012-02-03 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
026070946619000	AATIKAH LUBNAA	JL IKAN MUNGSING XI NO 25	081217239798	PT	BADAN	KREMBANGAN	PERAK BARAT	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2006-09-19 00:00:00	2012-04-25 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
315852897619000	FEMME INDONESIA	JL TUWOWO REJO BLOK 5 NO 41 RT 004 RW 007	6285736183056	CV	BADAN	TAMBAKSARI	GADING	46900	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2012-09-07 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
313994634614000	META TIGA MANDIRI	JL KARAH AGUNG VI NO 63	081248869289	CV	BADAN	JAMBANGAN	KARAH	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2011-10-18 00:00:00	2011-12-19 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
022095632611000	PELAYARAN SALIM SAMUDRA PASIFIC LINE	JL JAKSA AGUNG SUPRAPTO NO 30A	0315468701	PT	BADAN	GENTENG	KETABANG	50135	KOTA SURABAYA		JAWA TIMUR	Normal	2006-02-10 00:00:00	2006-04-18 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
097554026611000	ANTONIUS SUTANTO	JL AMBENGAN NO 19 RT 001 RW 009	0895377321564		OP	GENTENG	KETABANG	Z5000	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	2003-03-12 00:00:00	2022-12-19 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
971821830604000	VERNA MIRALIA TANSIL	JL PUNCAK PERMAI BLOK I NO 9 RT 006 RW 001	081235226958		OP	SUKOMANUNGGAL	TANJUNGSARI		KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	2012-02-23 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
062907852609000	LAUW, HARTANTO LUDY	PAKUWON INDAH VILLA BUKIT INDAH BLOK AAL NO 81-83 RT 003 RW 006	088805044540		OP	LAKARSANTRI	LIDAH WETAN	96990	KOTA SURABAYA	3,57804E+15	JAWA TIMUR	Normal	2008-12-30 00:00:00	2015-12-29 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
364448175619000	EMI SURYA DEWI SULISTIYO	JL RANGKAH 1/5 RT 001 RW 007	6281331133380		OP	TAMBAKSARI	RANGKAH	47999	KOTA SURABAYA	3,57811E+15	JAWA TIMUR	Normal	2011-05-03 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
016732414941001	BELIRANG KALISARI	PULAU DAMER RT 000 RW 000, WULUR, MALUKU BARAT DAYA				DAMER	WULUR	08911	KAB. MALUKU BARAT DAYA			Normal	2015-05-12 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
014976625543001	SUKSES EXPAMET							25112				Normal	2023-01-12 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
017397217951001	BERKAT ANUGERAH AGUNG							42918				Non Efektif	2013-04-11 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
016209173834001	MITRA CAHAYA ABADI METALINDO							16295				Normal	2019-10-28 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
041945015614000	SUKANTO TJAKRA	JL  ARGOPURO NO 55 RT 001 RW 007	6282232338826		OP	SAWAHAN	SAWAHAN	Z5000	KOTA SURABAYA	3,57806E+15	JAWA TIMUR	Normal	1984-03-22 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
713219665627001	SEGARA SUKSES MAKMUR							01495				Normal	2016-02-23 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
752862656619000	CAHAYA GLOBAL BERJAYA	JL RAYA KENJERAN NO 475, RUKO FIRA 51 BLOK D-17 RT 002 RW 011	085236556872	CV	BADAN	TAMBAKSARI	GADING	45406	KOTA SURABAYA		JAWA TIMUR	Normal	2016-02-25 00:00:00	2017-03-14 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
731759627418001	INDRACO GLOBAL INDONESIA							10761				PL/DE	2019-01-21 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
845424639609001	MANANG SEJAHTERA ABADI	JL. RAYA JEMURSARI NO 9A	6281278667838	CV	BADAN	WONOCOLO	JEMUR WONOSARI	45103	KOTA SURABAYA		JAWA TIMUR	Normal	2020-01-10 00:00:00	\N	2021-05-24 00:00:00	user_2smbgVCwH0IXZPyre0iAyW8EYEd
731759627905001	INDRACO GLOBAL INDONESIA							10761				Normal	2019-02-18 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
014797666611000	PERHIMPUNAN PERAWATAN PENDERITA PENYAKIT MATA	JL UNDAAN KULON NO 19 RT 000 RW 000	082141705004	PERSEKUTUAN	BADAN	GENTENG	PENELEH	86103	KOTA SURABAYA		JAWA TIMUR	Normal	1989-06-08 00:00:00	2001-02-14 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
031779341606000	MUTIARA LANGGENG BERSAMA	JL RUKO MEGAH GALAXY BLOK 14B NO 09	0315950413	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2011-11-17 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
017076191607000	PRIMADINAMIKA CIPTA SENTOSA	JL MAWAR NO 27-29 RT 003 RW 003	085104595559	PT	BADAN	TEGALSARI	TEGALSARI	46100	KOTA SURABAYA		JAWA TIMUR	Normal	1995-11-28 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
022067557618000	MITRA KABEL INDONESIA	DUKUH KUPANG BARAT BLOK I NO 180	081230051978	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	46523	KOTA SURABAYA		JAWA TIMUR	Normal	2007-10-29 00:00:00	2007-11-01 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
315533307611000	YILUFA AROMATICS	JL UNDAAN WETAN 46 D RT 000 RW 000	081803101688	CV	BADAN	GENTENG	KAPASARI	46651	KOTA SURABAYA		JAWA TIMUR	Normal	2012-06-25 00:00:00	2012-07-13 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
024339384062000	TATA PRIMA INDAH	JL RAYA GUBENG NO 70	081271817438	PT	BADAN	GUBENG	GUBENG	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2005-12-22 00:00:00	2006-12-22 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
805573896604000	KREASI KARTA UNGGUL	JL DARMO BAVARIAN II BLOK	085334805516	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	60202	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2016-11-16 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
315997106604000	INDORAYA SEKAYE	PERUMAHAN SATELITE TOWN SQUARE BLOK 5F/15	081232555171	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	41011	KOTA SURABAYA		JAWA TIMUR	Normal	2012-10-02 00:00:00	2012-10-10 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
069394278604000	CRISTIAN PRIWISATA YACOB	JL VILLA BUKIT REGENCY I BLOK PC8/22 RT 001 RW 016	081334202850		OP	SAMBIKEREP	LONTAR	Z5000	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	2009-01-20 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
024578353604000	PERHIMPUNAN PEMILIK DAN PENGHUNI PAKUWON TRADE CENTRE	JL PUNCAK INDAH LONTAR NO 2 (SPI) LANTAI ROOF RT 001 RW 001	082229133954	KIK	BADAN	SAMBIKEREP	LONTAR	94110	KOTA SURABAYA		JAWA TIMUR	Normal	2005-04-01 00:00:00	2014-01-21 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
014294854607000	ANUGRAH NUSANTARA SEJAHTERA	JL BOGOWONTO NO 15 RT 006 RW 014	6281332875061	PT	BADAN	TEGALSARI	DR. SOETOMO	07296	KOTA SURABAYA		JAWA TIMUR	Normal	2006-01-17 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
717769327615000	ANUGERAH HATATAH INDAH	JL SOPONYONO NO 10 RT 001 RW 006	089678477583	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2014-12-22 00:00:00	2015-01-29 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
033467911604000	MANNA LESTARI	JL SUKOMANUNGGAL JAYA 3N (CSH NO.16)	081336524377	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	47211	KOTA SURABAYA		JAWA TIMUR	Normal	2014-01-17 00:00:00	2022-04-04 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
061395984606000	TAI SIGIT TAHIR	JL DARMAHUSADA INDAH SEL 1 NO 15	082150288897		OP	GUBENG	MOJO	Z2100	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	1985-05-09 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
042227256606000	BAGONG BUDIHARTONO	JL DARMAHUSADA UTARA 10 RT 007 RW 002	0315938950		OP	GUBENG	MOJO	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	1984-07-19 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
211375241607000	JAMKRIDA JATIM <PERSERODA>	JL BASUKI RAHMAD NO 98-104 RT 000 RW 000	085259899302	PT	BADAN	TEGALSARI	TEGALSARI	64190	KOTA SURABAYA		JAWA TIMUR	Normal	2009-12-03 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
012322871113001	PBM MITRA DHARMA LAKSANA							52240				Normal	2021-03-03 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
012322871722001	PBM MITRA DHARMA LAKSANA							52240				Normal	2022-07-22 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
019953215611001	MARANI RIPAH GLOBALINDO	EMBONG MALANG NO 78A	03150461788	PT	BADAN	GENTENG	GENTENG	45403	KOTA SURABAYA		JAWA TIMUR	PL/DE	2014-11-28 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
311772438607000	ALTOFIT BERKAT ABADI	JL DIPONEGORO NO 152	087855565431	PT	BADAN	TEGALSARI	DR. SOETOMO	46412	KOTA SURABAYA		JAWA TIMUR	Normal	2010-04-01 00:00:00	2010-10-26 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
012194635952001	WIDYA SATRIA							42918				Non Efektif	2019-09-12 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
014294854632002	PT ANUGRAH NUSANTARA SEJAHTERA							68111				PL/DE	2023-12-31 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
764393278615000	FELICIA LIMANTARA	JL TENGGILIS UTARA X NO 8 RT 003 RW 004	085100586391		OP	TENGGILIS MEJOYO	TENGILIS MEJOYO	Z5000	KOTA SURABAYA	3,57825E+15	JAWA TIMUR	Normal	2016-06-24 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
028404838609000	WANA SEJAHTERA ABADI	JL PRAPANCA NO 16 RT 004 RW 009	6285706044155	PT	BADAN	WONOKROMO	DARMO	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2008-10-08 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
317333219606000	KREASI CITRA PERSADA	JL DHARMAHUSADA INDAH BARAT GG III NO 66	082228899746	PT	BADAN	GUBENG	MOJO	41012	KOTA SURABAYA		JAWA TIMUR	Normal	2013-04-12 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
015107857404001	GELORA NIAGA KENCANA							68111				Non Efektif	2016-04-18 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
024580904418001	GLOBAL COMETAL INDONESIA							46591				Normal	2009-05-25 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
311772438404001	ALTOFIT BERKAT ABADI							46100				PL/DE	2015-01-08 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
316227750901001	ASIATERRA GLOBAL							47243				PL/DE	2013-02-19 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
845424639619001	MANANG SEJAHTERA ABADI	JL. KENJERAN NO 436 RT 001 RW 014	62815924333	CV	BADAN	TAMBAKSARI	GADING	45103	KOTA SURABAYA		JAWA TIMUR	Normal	2020-01-14 00:00:00	\N	2021-05-24 00:00:00	user_2smbgVCwH0IXZPyre0iAyW8EYEd
210880621614000	ELCOBLAST INDONESIA	JL DUPAK 65-A RUKO MUTIARA BLOK B NO 19 RT 007 RW 005	081249556573	PT	BADAN	BUBUTAN	GUNDIH	46631	KOTA SURABAYA		JAWA TIMUR	Normal	2009-04-20 00:00:00	2014-05-05 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
805636735604000	JADE GOLF CITRA SURABAYA	KUPANG JAYA NO 48-A RT 013 RW 003	0317325412	ORGANISASI LAIN	BADAN	SUKOMANUNGGAL	SIMOMULYO BARU	94990	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2016-11-21 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
033305442604000	SABAR REJO	JL SIMOREJO TIMUR I NO 14 RT 001 RW 003	085103053043	PT	BADAN	SUKOMANUNGGAL	SIMOMULYO	43211	KOTA SURABAYA		JAWA TIMUR	Normal	2013-11-21 00:00:00	2014-05-28 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
022179048615000	CAHYA NUSANTARA LESTARI	JL RUNGKUT INDUSTRI BLOK II NO 6	08123095288	PT	BADAN	TENGGILIS MEJOYO	KENDANGSARI	46315	KOTA SURABAYA		JAWA TIMUR	Normal	2010-09-27 00:00:00	2018-11-22 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
022089239426001	PURI WIRA MAHKOTA							45406				Normal	2015-12-22 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
800189524607000	GEREJA MAWAR SHARON	JL CEMPAKA NO 18-I RT 002 RW 003	081249484618	ORGANISASI LAIN	BADAN	TEGALSARI	TEGALSARI	94910	KOTA SURABAYA		JAWA TIMUR	Normal	2016-09-15 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
033183682606000	MUTIARA ABADI SUKSES	JALAN KERTAJAYA INDAH TIMUR RUKO MEGAH GALAXY BLOK 16A NO 07	6283849710029	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2013-10-10 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
027913896611000	SURYA JAYA WIRA SUKSES	JL PECINDILAN NO 20 RT 001 RW 002	082124380258	CV	BADAN	GENTENG	KAPASARI	45302	KOTA SURABAYA		JAWA TIMUR	Normal	2011-02-16 00:00:00	2011-02-16 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
318087905615000	INDO JAYA NUSANTARA	RUKO PANJI MAKMUR LT.3 JL PANJANGJIWO BLOK B NO 31 RT 007 RW 002	085102516062	CV	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	46209	KOTA SURABAYA		JAWA TIMUR	Normal	2013-07-24 00:00:00	2017-05-08 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
915886774611000	KARUNIA SINAR MAS	BUMI MANDIRI TOWER II LT 12 JL PANGLIMA SUDIRMAN NO 66-68	081224551177	CV	BADAN	GENTENG	EMBONG KALIASIN	46202	KOTA SURABAYA		JAWA TIMUR	Normal	2019-05-22 00:00:00	2019-07-22 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
246351910606000	CHRISTINA HARLI	JL MANYAR KERTOARJO BLOK 6 NO 61 RT 006 RW 011	087238975008		OP	GUBENG	MOJO	Z5000	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	2008-10-22 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
026333369605000	KUTIM COAL UTAMA	JL KEMAYORAN BARU NO 43 RT 000 RW 000	085104930705	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	05100	KOTA SURABAYA		JAWA TIMUR	Normal	2010-05-31 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
022079735615001	HANEDA SUKSES MANDIRI	JL RUNGKUT INDUSTRI IV NO 28 RT 004 RW 005	082233999890	PT	BADAN	GUNUNG ANYAR	RUNGKUT TENGAH	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2015-01-27 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
019792084615000	SARANA UTAMAMAS INDOMOTOR	JL ZAMHURI NO 29-31	628113238702	PT	BADAN	GUNUNG ANYAR	RUNGKUT TENGAH	30911	KOTA SURABAYA		JAWA TIMUR	Normal	2003-04-30 00:00:00	2013-01-16 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
014398366606000	BANK PERKREDITAN RAKYAT PRIMA KREDIT UTAMA	JL KLAMPIS JAYA NO 23	0315925909	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	64131	KOTA SURABAYA		JAWA TIMUR	Normal	2005-05-12 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
033299447606000	ELEMEN GEMILANG SURYAMASINKA	JL NGAGEL JAYA SELATAN RMI BLOK K NO 16 RT 010 RW 008	087889511915	PT	BADAN	GUBENG	BARATAJAYA	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2013-12-06 00:00:00	2014-01-30 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
318017373604000	SOLUSI MAJU BERSAMA	JL PATTIMURA RUKO PLAZA SEGI DELAPAN BLOK A/868	08113442332	PT	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2013-07-12 00:00:00	2013-11-19 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
726567001613001	BERDIKARI PUTRA JAYA SEJAHTERA	JL. KEMBANG JEPUN NO 129-Q	6282132922634	PT	BADAN	PABEAN CANTIAN	BONGKARAN	46441	KOTA SURABAYA		JAWA TIMUR	Normal	2017-01-09 00:00:00	\N	2018-01-09 00:00:00	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
025129875609000	DAKWAH INTI MEDIA	JL RAYA DARMO NO 96	03425620999	PT	BADAN	WONOKROMO	DARMO	60102	KOTA SURABAYA		JAWA TIMUR	Normal	2010-09-22 00:00:00	2010-09-30 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
068036474615001	LING NDAY	RUNGKUT MAPAN BARAT I/FA-21 RT.01 RW.08, RUNGKUT TENGAH			OP	GUNUNG ANYAR	RUNGKUT TENGAH	47992	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	1997-08-29 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
015613896631000	PURI GALAXY	JL  KERTAJAYA INDAH TIMUR NO 33	08123261770	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	68111	KOTA SURABAYA		JAWA TIMUR	Normal	1992-03-07 00:00:00	2001-05-01 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
060564473614001	BOENARTA LIMANTARA	JL MARGOMULYO 44 BLOK CC-17	0315328042		OP	ASEM ROWO	ASEM ROWO	45403	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Non Efektif	2007-03-22 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
022567143611001	MUTIARA TIMUR	GEDUNG GRAND CITY LT.3 JL GUBENG POJOK NO 1 RT 000 RW 000	082331431692	PT	BADAN	GENTENG	KETABANG	56101	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2012-05-09 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
012194635529001	WIDYA SATRIA							41012				Non Efektif	2014-11-24 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
016732414631000	BELIRANG KALISARI	JL KARANGGAYAM I NO 2-A	081279585758	PT	BADAN	TAMBAKSARI	TAMBAKSARI	20114	KOTA SURABAYA		JAWA TIMUR	Normal	1995-01-19 00:00:00	1995-02-28 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
015446990626001	SUBAINDO CAHAYA POLINTRACO							46491				PL/DE	2000-09-15 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
028404838632002	PT WANA SEJAHTERA ABADI							02201				PL/DE	2023-12-31 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
011085198631000	INTILAND GRANDE	GEDUNG SPAZIO LT.8 GRAHA FESTIVAL KAV.3, JL. MAYJEND YONO SOEWOYO GRAHA FAMILI	623199000980	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2004-05-26 00:00:00	2004-05-26 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
012111266503001	MIKATASA AGUNG							20291				Normal	2016-08-16 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
022574107624001	MITRA ALAM SEGAR							11040				Normal	2010-01-21 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
015443997401001	BUKIDALAM BARISANI							41019				Non Efektif	2017-09-13 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
313461915603001	JATIMAS DEVELOPMENT INDONESIA							68111				Normal	2022-11-15 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
024428229609000	BAKTI MANDIRI PERKASA	RUKO PURI INDAH KETINTANG NO 15-16	0318296877	PT	BADAN	GAYUNGAN	KETINTANG	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2005-02-28 00:00:00	2005-03-01 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
834448896606000	TELOGO MAKMUR SENTOSA	JL GALAXI BUMI PERMAI BLOK I1 NO 10 RT 004 RW 012	081703302313	PT	BADAN	SUKOLILO	SEMOLOWARU	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2017-12-05 00:00:00	2018-02-09 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
022089239113001	PURI WIRA MAHKOTA							45403				Normal	2009-07-09 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
018347708604000	ANUGRAH EKSTRAVISI RAYA	JL.TANJUNGSARI NO.44-B RT.001 RW.016, SIMOMULYO	085729554517	PT	BADAN	SUKOMANUNGGAL	SIMOMULYO	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2008-05-08 00:00:00	2008-05-09 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
802008417613000	SEACON LNJ TERMINAL	JL PERAK TIMUR NO 56 RT 002 RW 005	081217049898	PT	BADAN			52109				Normal	2016-10-07 00:00:00	2017-01-11 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
701882060611000	MULTI PAKAN JAYA SENTOSA	CIPUTRA WORLD OFFICE TOWER UNIT 1220 JL MAYJEND SUNGKONO NO 89 RT 006 RW 008	6281332722286	PT	BADAN	DUKUH PAKIS	GUNUNG SARI	10801	KOTA SURABAYA		JAWA TIMUR	Normal	2014-05-13 00:00:00	2015-06-23 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
312831050618000	AA JAYA BERSAMA	JL KEBRAON 2 APEL NO 35 RT 005 RW 001	081259192224	CV	BADAN	KARANG PILANG	KEDURUS	46641	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2011-02-21 00:00:00	\N	2023-11-01 00:00:00	user_2smaIfODFlzm8YDJfrstldzV5BA
028174787613000	AURY MAKMUR	JL RUNGKUT INDUSTRI III NO 33A	628165407701	PT	BADAN	GUNUNG ANYAR	RUNGKUT MENANGGAL	46447	KOTA SURABAYA		JAWA TIMUR	Normal	2010-07-22 00:00:00	2010-07-23 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
019792084622001	SARANA UTAMAMAS INDOMOTOR							45401				Non Efektif	2004-09-24 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
019792084624001	SARANA UTAMAMAS INDOMOTOR							30911				Normal	2004-07-29 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
022567143609001	MUTIARA TIMUR	JL ADITYAWARMAN SUTOS BLOK P 34-35A, SAWUNGGALING NO 55 RT 002 RW 011	6282331431692	PT	BADAN	WONOKROMO	SAWUNGGALING	47192	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2011-01-03 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
021140405642001	KARYA JAYA SAMUDERA							50131				Normal	2022-06-21 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
027000066623002	BOGA LESTARI							10710				Normal	2015-01-07 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
316099647619000	SIDO MAKMUR JAYA	CENTRAL MARGOMULYO PERMAI BLOK C NO 10-11	081335348069	CV	BADAN	SUKOMANUNGGAL	TANJUNGSARI	47211	KOTA SURABAYA		JAWA TIMUR	Normal	2012-10-16 00:00:00	2012-12-21 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
022078182615000	SATONA	JL RAYA KENDANGSARI NO 29 RT 001 RW 001	081232788400	PT	BADAN	TENGGILIS MEJOYO	KENDANGSARI	46651	KOTA SURABAYA		JAWA TIMUR	Normal	2003-11-05 00:00:00	2004-06-07 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
850674052609000	CLARISSA RUSLI	MARGOREJO INDAH BLOK B NO 825 RT 002 RW 008	6281234135056		OP	WONOCOLO	MARGOREJO	Z5000	KOTA SURABAYA	3,57803E+15	JAWA TIMUR	Normal	2018-06-08 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
031200884605000	BINTANG LAUT PERKASA	JL KALIANAK TIMUR NO 152	085732231840	PT	BADAN	KREMBANGAN	PERAK BARAT	52219	KOTA SURABAYA		JAWA TIMUR	Normal	2011-07-26 00:00:00	2011-10-04 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
313762023016000	MERATUS BULK SHIPPING	JL ALOON-ALOON PRIOK NO 27 RT 000 RW 000	081333589084	PT	BADAN	KREMBANGAN	PERAK BARAT	50133	KOTA SURABAYA		JAWA TIMUR	Normal	2011-09-09 00:00:00	2012-10-25 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
012194403614000	TARUNA JAYA	JL RAYA ARJUNO NO 112-A	62315342026	CV	BADAN	SAWAHAN	SAWAHAN	14111	KOTA SURABAYA		JAWA TIMUR	Normal	1987-10-17 00:00:00	1985-05-24 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
028250520619001	SUSHI-TEI SURABAYA	JL DHARMAHUSADA INDAH TIMUR 35-37 (GALAXY MALL LT.1 NO 112A)	0315915880	PT	BADAN	MULYOREJO	MULYOREJO	56101	KOTA SURABAYA		JAWA TIMUR	Normal	2016-08-01 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
022574628607000	ANUGRAH BUMI RAYA	JL. BOGOWONTO NO 15 RT 006 RW 014	6282245352484	PT	BADAN	TEGALSARI	DR. SOETOMO	07296	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2010-02-25 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
929891950807001	AMARTA JAYA TRANSLOGISTIK							50133				Normal	2022-04-20 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
028251817604000	VICTORY GOLD	JL SIMO HILIR BARAT XIV KAV.173 NO 03 RT 014 RW 004	082230010068	PT	BADAN	SUKOMANUNGGAL	SIMOMULYO	45301	KOTA SURABAYA		JAWA TIMUR	Normal	2009-04-03 00:00:00	2018-02-22 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
712760032611000	BUMI MITRA SEKAWAN	SPAZIO BUILDING JL MAYJEND YONO SUWOYO KAV 3 UNIT 616 RT 005 RW 001	0895600210553	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2014-10-21 00:00:00	2017-04-06 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
030823587604000	CAHAYA MITRA SATYA BERSAMA PIALANG ASURANSI	JL DHARMAHUSADA INDAH BARAT 3 NO 64 66 RT 007 RW 005	0315966711	PT	BADAN	GUBENG	MOJO	66221	KOTA SURABAYA		JAWA TIMUR	Normal	2011-01-26 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
012322871731001	PBM MITRA DHARMA LAKSANA							52240				Non Efektif	2024-02-20 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
012322871922001	PBM MITRA DHARMA LAKSANA							52240				Normal	2022-07-22 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
016402570606000	GARUDA FARMA JAYA	JL NGAGEL JAYA TENGAH IV NO 32	0315945728	CV	BADAN	GUBENG	BARATAJAYA	47721	KOTA SURABAYA		JAWA TIMUR	Non Efektif	1993-08-12 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
756905311619000	EKA AGRI CAKRA DAYA SEMESTA	JL KALIJUDAN ASRI NO 61-D RT 009 RW 006	6281703641269	PT	BADAN	TAMBAKSARI	PLOSO	46593	KOTA SURABAYA		JAWA TIMUR	Normal	2016-04-01 00:00:00	2016-06-10 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
061716080616000	WIBOWO AL GWIE SIEN KOK	JL PEGIRIAN NO 116 RT 003 RW 010	08977461295		OP	SIMOKERTO	SIDODADI	64931	KOTA SURABAYA	3,57811E+15	JAWA TIMUR	Normal	2003-12-12 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
028404903609000	MUKTI ADHI SEJAHTERA	SIDOSERMO PDK 3A BLOK - NO 163 RT 003 RW 007	081252212595	PT	BADAN	WONOCOLO	SIDOSERMO	42918	KOTA SURABAYA		JAWA TIMUR	Normal	2008-10-15 00:00:00	2009-01-20 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
016814899009001	JAYA SALVAGE INDONESIA	JAMBORE RAYA NO 47, CIBUBUR, JAKARTA TIMUR				CIRACAS	CIBUBUR	43909	JAKARTA TIMUR			Normal	2007-07-23 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
014976625911001	SUKSES EXPAMET							25112				Normal	2023-01-12 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
015676646832001	PELAYARAN ANUGRAHMAKMUR SEJAHTERA							50131				PL/DE	2020-09-11 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
028404838941001	WANA SEJAHTERA ABADI							02201				Normal	2015-05-26 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
817466253657001	CHALIDANA HOSPITALITY INDONESIA							41012				Normal	2018-07-17 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
907266167609000	DIGDAYA SENTOSA ABADI	JL GAJAH MADA TREM NO 221-A RT 004 RW 008	6281215908050	CV	BADAN	WONOKROMO	SAWUNGGALING	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2019-03-05 00:00:00	2019-07-25 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
022567143619001	MUTIARA TIMUR	GALAXY MALL LT 4 NO. 407-408A JL DHARMAHUSADA INDAH TIMUR  NO 35-37, MULYOREJO NO 35-37 RT - RW -	0811374056	PT	BADAN	MULYOREJO	MULYOREJO	56101	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2014-03-14 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
022089239201001	PURI WIRA MAHKOTA							45403				Normal	2011-05-11 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
315856708606000	MUTIARA SINAR JAYA	RUKO MEGA GALAXY XVI BLOK A NO 7	6283831446999	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2012-09-10 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
315376236614000	FEDERAL SOLUSI INDOTAMA	RUKO SENTRA FORTUNA KAV 1, JL JAKSA AGUNG SUPRAPTO NO 39-41 RT 002 RW 008	081334659090	PT	BADAN	GENTENG	KETABANG	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2012-05-29 00:00:00	2012-07-25 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
014660005613000	PERUSAHAAN PELAYARAN NASIONAL NAMSURYA CITRASARI LINES	JL GATOTAN NO 20 RT 001 RW 008	081333358796	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	50133	KOTA SURABAYA		JAWA TIMUR	Normal	2009-04-15 00:00:00	2009-05-25 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
800189524609001	GEREJA MAWAR SHARON	JALAN NGAGEL, KOMPLEKS MARVEL CITY - VISION BUILDING LANTAI 7 BLOK VISION NO 123 RT 001 RW 002	085101911161	ORGANISASI LAIN	BADAN	WONOKROMO	NGAGEL	94910	KOTA SURABAYA		JAWA TIMUR	Normal	2020-11-14 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
019757962611001	IMPERIUM HAPPY PUPPY	JL. GUBENG POJOK NO.1,GRAND CITY MALL LT.3 NO.31,KETABANG		PT	BADAN	GENTENG	KETABANG	93292	KOTA SURABAYA		JAWA TIMUR	PL/DE	2013-11-25 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
019792357609001	LIMALIMA DINAMIKA	JL RAYA JEMURSARI NO 89 RT 003 RW 010	085334772310	PT	BADAN	WONOCOLO	JEMUR WONOSARI	46491	KOTA SURABAYA		JAWA TIMUR	Normal	2012-11-07 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
025248436606000	MUTIARA GRAHA KENCANA	JALAN RUKO MEGAH GALAXY BLOK 16A NO 17	6283831446799	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2005-12-02 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
022069074032001	LIGA TECHNIC							46591				Normal	2009-07-31 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
934856188611000	SURYA TERANG ABADI	JL BASUKI RACHMAD NO 45-47	085356563333	CV	BADAN	GENTENG	EMBONG KALIASIN	46206	KOTA SURABAYA		JAWA TIMUR	Normal	2019-11-18 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
022067557225001	MITRA KABEL INDONESIA							46523				Normal	2017-08-18 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
022067557721001	MITRA KABEL INDONESIA							46100				Normal	2011-06-10 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
061389300618000	LINDRA HARIYANTO,IR	JL DARMO PERMAI SELATAN BLOK V NO 3	082257445139		OP	DUKUH PAKIS	PRADAH KALIKENDAL		KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	1986-06-19 00:00:00	2013-11-25 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
015310089615000	AGRATIRTA SEJAHTERA	JL.PANJANG JIWO RAYA NO 58, PANJANGJIWO	0812657679	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	46900	KOTA SURABAYA		JAWA TIMUR	Non Efektif	1990-09-06 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
017161829613000	BAHTERA ELANG PERAK INDONESIA	JL DR IR H SOEKARNO NO. 30-32 UNIT 9J RT 003 RW 003	081216787787	PT	BADAN	MULYOREJO	KALIJUDAN	50133	KOTA SURABAYA		JAWA TIMUR	Normal	1996-08-07 00:00:00	2013-02-01 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
015325020609000	DUTA PERKASA	MARGOREJO INDAH BLOK C NO 510-A RT 003 RW 008	6281234455749	CV	BADAN	WONOCOLO	MARGOREJO	47793	KOTA SURABAYA		JAWA TIMUR	Normal	1991-02-14 00:00:00	1991-02-15 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
932630189513001	SINAR ANUGERAH NIAGA							47112				Normal	2019-11-20 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
025865908614000	SEMESTA MITRA SEJAHTERA	KOMPLEK DARMO PARK I BLOK III-B NO 9 RT 003 RW 010	081217208452	PT	BADAN	SAWAHAN	PAKIS	01461	KOTA SURABAYA		JAWA TIMUR	Normal	2007-02-12 00:00:00	2007-02-13 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
350957452614000	FENNY VANDA WIDJAJA	JL DHARMAHUSADA PERMAI 1/3 (V-139) RT 001 RW 011	6281553004937		OP	MULYOREJO	MULYOREJO	Z5000	KOTA SURABAYA	3,57806E+15	JAWA TIMUR	Normal	2010-08-06 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
806565222604000	FARADAY MOTOR INDONESIA	JL TANJUNGSARI NO 7	6281231725020	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	28112	KOTA SURABAYA		JAWA TIMUR	Normal	2016-11-29 00:00:00	2019-09-05 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
020541751604000	SURYA KAYU MULIA INDUSTRI	JL.MARGOMULYO INDAH B-12, BUNTARAN	085236196864	PT	BADAN	TANDES	MANUKAN WETAN	16102	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2002-10-08 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
028172583613001	MATAHARI	JL  KARET NO 43-45 RT 003 RW 002	628553000179	CV	BADAN	PABEAN CANTIAN	BONGKARAN	46491	KOTA SURABAYA		JAWA TIMUR	Normal	2017-10-23 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
012318598631000	SURYA MAHAKAM AGUNG CHEMICAL INDUSTRI COMPANY	JL MAYJEN SUNGKONO NO 121	085102311166	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	20299	KOTA SURABAYA		JAWA TIMUR	Normal	1989-11-03 00:00:00	1985-12-31 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
026999177614000	DYNAMIC TURBOCHARGER SYSTEMS INDONESIA	JL MARGOMULYO NO 46 BLOK E NO 4 RT 000 RW 000	087854882007	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2008-08-19 00:00:00	2008-09-04 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
012111266631000	MIKATASA AGUNG	JL RUNGKUT INDUSTRI II NO 2	082251515194	PT	BADAN	TENGGILIS MEJOYO	TENGILIS MEJOYO	20291	KOTA SURABAYA		JAWA TIMUR	Normal	1983-12-31 00:00:00	1985-01-26 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
012031902624001	ALPHA OMEGA							25933				Normal	2001-03-21 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
021761796606000	GLOBAL DINAMIKA USAHA MANDIRI	JL BILITON NO 25 RT 001 RW 007	085732881989	PT	BADAN	GUBENG	GUBENG	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2003-05-21 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
556728236607000	CHRISTIE ERIN HARSONO	JL IMAM BONJOL NO 97-99 RT 003 RW 012	08113489468		OP	TEGALSARI	DR. SOETOMO	Z5000	KOTA SURABAYA	3,57806E+15	JAWA TIMUR	Normal	2013-07-09 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
028172583613000	MATAHARI	JL KARET NO 45 RT 003 RW 002	623521556	CV	BADAN	PABEAN CANTIAN	BONGKARAN	47191	KOTA SURABAYA		JAWA TIMUR	Normal	2008-10-15 00:00:00	2008-11-11 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
019953215618001	MARANI RIPAH GLOBALINDO	JALAN RAYA MENGANTI WIYUNG NO 484 RT 003 RW 006	08155076153	PT	BADAN	WIYUNG	WIYUNG	45403	KOTA SURABAYA		JAWA TIMUR	Normal	2007-12-05 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
733680730606000	ASOKA KREASINDO ABADI	RAYA GUBENG NO 40 RT 003 RW 004	628123503182	CV	BADAN	GUBENG	GUBENG	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2015-06-26 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
016732414627001	BELIRANG KALISARI							20114				Non Efektif	2018-02-20 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
019953215624001	MARANI RIPAH GLOBALINDO							45403				Non Efektif	2003-01-10 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
842782716614000	SATU VISI PUTRA TBK	JL GREGES JAYA II BLOK B NO 19 RT 001 RW 001	082233918309	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	46422	KOTA SURABAYA		JAWA TIMUR	Normal	2018-03-08 00:00:00	2018-12-10 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
928844653603001	GRAHA ASRI SENTOSA							68111				Normal	2021-10-14 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
031202500605000	KEMBAR MAYANG	JL TANJUNG BATU NO 22 A RT 000 RW 000	081515149196	CV	BADAN	KREMBANGAN	PERAK BARAT	46201	KOTA SURABAYA		JAWA TIMUR	Normal	2012-08-15 00:00:00	2012-12-07 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
031778079606000	MUTIARA SUKSES JAYA	JL KERTAJAYA INDAH TIMUR 14 B NO 09	0315950413	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2011-08-19 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
021699244609000	TAJIMAKA INDONESIA	JEMURSARI V NO 5 RT 001 RW 010	6281233335606	PT	BADAN	WONOCOLO	JEMUR WONOSARI	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2003-02-25 00:00:00	2008-05-29 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
731759627624001	INDRACO GLOBAL INDONESIA							10761				Normal	2017-10-11 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
022086805606000	KHARISMA MUTIARA INDAH	JL KERTAJAYA INDAH BLOK 16 A NO 07	0315950413	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	68111	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2003-10-10 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
027772813619000	SURYAMAS MAJU ABADI	JL LEBAK TIMUR VIII NO 11 RT 002 RW 010	082146685535	PT	BADAN	TAMBAKSARI	GADING	47529	KOTA SURABAYA		JAWA TIMUR	Normal	2008-08-14 00:00:00	2016-11-24 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
032086753606000	MUTIARA SINAR SEJAHTERA	JALAN RUKO MEGA GALAXY BLOK 16A NO 7	6281914755052	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	68111	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2012-04-17 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
018745000609000	JABBARU ELEKTRODAYA TELEMATIKA	JL.GAYUNG KEBONSARI BLOK X NO 7	628123002627	PT	BADAN	GAYUNGAN	KETINTANG	43212	KOTA SURABAYA		JAWA TIMUR	Normal	1999-02-13 00:00:00	1999-02-13 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
316803121614000	WONOKITRI INDONESIA	JL MAYJEN SUNGKONO NO 48 RT. 001 RW. 001, PAKIS	085730329228	PT	BADAN	SAWAHAN	PAKIS	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2013-02-01 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
022067557004001	MITRA KABEL INDONESIA							43213				Normal	2010-11-30 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
746741305604000	OPTIMUS CAHAYA ABADI	KOMP. PERGUDANGAN MARGOMULYO JAYA BLOK I NO 12 RT 000 RW 000	6281234560777	CV	BADAN	TANDES	MANUKAN WETAN	47592	KOTA SURABAYA		JAWA TIMUR	Normal	2015-12-11 00:00:00	2018-09-25 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
027000066622001	BOGA LESTARI							10750				Normal	2014-11-27 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
023770845724001	DUTA RAMA							41012				PL/DE	2015-10-13 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
026704494606000	TENO TRACT INDONESIA	JL RAYA KERTAJAYA INDAH TIMUR BLOK P 116 NO 153	081259403931	PT	BADAN	SUKOLILO	GEBANG PUTIH	43901	KOTA SURABAYA		JAWA TIMUR	Normal	2007-10-30 00:00:00	2008-09-01 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
930053889619000	SEMAKIN MAJU BESAR JAYA	JL DHARMAHUSADA INDAH TENGAH V/5-7 BLOK C NO 190-191 RT 001 RW 009	6281233387777	PT	BADAN	MULYOREJO	MULYOREJO	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2019-10-01 00:00:00	2019-11-05 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
813166972603001	NUGA SIGMA POTENZIA							33111				Non Efektif	2022-08-04 00:00:00	\N	\N	user_2smaWxchS4q6cZDOd2DAzFcvD5R
060555547614000	IVAN GOENAWAN	JL TAMBAK BAYAN TENGAH 40 , ALUN-ALUN CONTONG	6281330685993		OP	BUBUTAN	ALUN-ALUN CONTONG	Z5000	KOTA SURABAYA	3,57813E+15	JAWA TIMUR	Normal	1985-02-21 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
313720831618000	SENTOSA LAJU MARITIME	JL BUKIT DARMO BOULEVARD NO 2 F	082361801777	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	50111	KOTA SURABAYA		JAWA TIMUR	Normal	2011-08-22 00:00:00	2012-10-24 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
041240219619000	HARIYONO SOEBAGIO	JL DHARMAHUSADA INDAH BLOK I NO 60 (L-7A) RT 004 RW 009	082138271668		OP	MULYOREJO	MULYOREJO	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2008-02-15 00:00:00	2017-12-08 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
027768886618000	EUROFINS ANGLER BIOCHEMLAB	JL SAWO NO 17-19 RT 004 RW 002	623199200900	PT	BADAN	SAMBIKEREP	BERINGIN	72101	KOTA SURABAYA		JAWA TIMUR	Normal	2009-03-02 00:00:00	2009-05-05 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
012194403009001	TARUNA JAYA							46100				Non Efektif	2015-08-11 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
062547781606000	TEDY SUGITO, THE	JL GALAXI BUMI PERMAI BLOK D1 NO 7 RT 002 RW 009	08123298665		OP	SUKOLILO	KEPUTIH	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	2008-11-27 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
012031902619000	ALPHA OMEGA	JL GUBENG MASJID NO.55, PACAR KELING	6281331319885	CV	BADAN	TAMBAKSARI	PACARKELING	28193	KOTA SURABAYA		JAWA TIMUR	Normal	1983-05-13 00:00:00	1987-08-01 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
240550129607000	ROBERT CHRISTIAN TANOKO	JL DR CIPTO NO 3 RT 001 RW 011	628113558000		OP	TEGALSARI	DR. SOETOMO	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	2006-12-19 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
764935573614000	MAJU BERSAMA	JL. PERGUDANGAN MARGOMULYO PERMAI F-3 RT 000 RW 000	6281938670189	CV	BADAN	ASEM ROWO	TAMBAK SARIOSO	47593	KOTA SURABAYA		JAWA TIMUR	Normal	2016-07-12 00:00:00	2016-07-28 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
928844653609000	GRAHA ASRI SENTOSA	JL SIDOSERMO PDK 3 A NO 163 RT 003 RW 007	6287855609570	PT	BADAN	WONOCOLO	SIDOSERMO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2019-09-18 00:00:00	2019-09-24 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
012194635831001	WIDYA SATRIA							42918				PL/DE	2007-11-06 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
014408363605000	GAJAH MADA	JL PERAK BARAT NO 105 RT 000 RW 000	6285100278008	CV	BADAN	KREMBANGAN	PERAK BARAT	52293	KOTA SURABAYA		JAWA TIMUR	Normal	1986-05-03 00:00:00	2023-09-12 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
015676646811002	PELAYARAN ANUGERAH BERKAT SAMUDERA							50111				PL/DE	2004-01-07 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
016775850616000	PACTRANS INDO CARGO	JL GEMBONG II BLOK C-8 NO 16 RT 000 RW 000	081334583701	PT	BADAN	SIMOKERTO	KAPASAN	47249	KOTA SURABAYA		JAWA TIMUR	Normal	1995-03-17 00:00:00	2021-11-18 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
012111266643001	MIKATASA AGUNG							21012				Normal	2003-10-22 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
018133363612001	EKA NUSA BAHARI							50131				Normal	2020-10-22 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
015443997445001	BUKIDALAM BARISANI							41019				Normal	2018-09-10 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
315681270606000	MUTIARA CAHAYA SUKSES	RUKO MEGA GALAXY 16 A 7	0315950413	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46900	KOTA SURABAYA		JAWA TIMUR	PL/DE	2012-07-26 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
032846388612000	BANGUN SARANA BAJA BUMI METALINDO PERSADA	JL BUKIT PALMA CITRALAND, RUKO GALERIA BLOK RA3 NO 11 RT 008 RW 003	085246145299	PT	BADAN	BENOWO	SEMEMI	25113	KOTA SURABAYA		JAWA TIMUR	Normal	2013-05-02 00:00:00	2014-04-23 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
731759627212001	INDRACO GLOBAL INDONESIA							10761				Normal	2017-08-29 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
211254552013000	BUMI NUSANTARA JAYA	JL KEDUNGSARI NO 66-E RT 001 RW 001	6281901775747	PT	BADAN	TEGALSARI	KEDUNGDORO	46610	KOTA SURABAYA		JAWA TIMUR	Normal	2009-10-14 00:00:00	2019-06-26 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
731759627642001	INDRACO GLOBAL INDONESIA							10761				Normal	2020-07-02 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
033183666606000	MUTIARA MANDIRI BERSAMA	JALAN KERTAJAYA INDAH TIMUR RUKO MEGAH GALAXY BLOK 16A NO 07	6283849710022	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	68111	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2013-10-10 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
027000066619001	BOGA LESTARI	MULYOSARI BLOK F NO 97	082335145848	CV	BADAN	MULYOREJO	KALISARI	47242	KOTA SURABAYA		JAWA TIMUR	Normal	2015-04-09 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
313894537604000	BARGE INDONESIA	JL RAYA KENDANGSARI NO 11 RT 001 RW 001	082338694438	PT	BADAN	TENGGILIS MEJOYO	KENDANGSARI	50131	KOTA SURABAYA		JAWA TIMUR	Normal	2011-10-04 00:00:00	2013-11-19 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
913402707618000	GUNUNG REMPAH MAS	KOMPLEK RUKO SURYA INTI PERMATA II BLOK C NO 16-17 RT 000 RW 000	6281222555789	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	47920	KOTA SURABAYA		JAWA TIMUR	Normal	2019-04-29 00:00:00	2019-06-18 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
318243060619000	AFLAH AZARIA	JL MULYOSARI TENGAH BLOK V NO 2B - 2C RT 001 RW 006	082141610507	PT	BADAN	MULYOREJO	KALISARI	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2013-08-29 00:00:00	2013-10-04 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
022089239901001	PURI WIRA MAHKOTA							45403				Normal	2011-08-05 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
704209949607000	GRAHA EKA GUNA	JL KEDUNGSARI NO 25 RT 001 RW 001	6282231668082	PT	BADAN	TEGALSARI	WONOREJO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2014-06-16 00:00:00	2019-01-25 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
027000066643002	BOGA LESTARI							47242				Normal	2015-10-01 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
845424639652001	MANANG SEJAHTERA ABADI							45103				Normal	2019-05-24 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
028405801653001	BHAKTI INSAN KAMIL	JALAN MOJOSAWUR NO 71 RT 001 RW 002, KOTA BLITAR				SUKOREJO	SUKOREJO	78300	KOTA BLITAR			Normal	2023-11-21 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
022574628811001	ANUGRAH BUMI RAYA							07296				PL/DE	2015-06-08 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
704209949643001	GRAHA EKA GUNA	PERUMAHAN SOUTHLAKE BLOK AA NO 1B RT 000 RW 000, BANJARKEMUNING, KAB. SIDOARJO				SEDATI	BANJARKEMUNING	68111	KAB. SIDOARJO			Normal	2024-07-16 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
024578783604000	TANRISE INDONESIA	JL HR MOHAMMAD NO 209 RT 002 RW 002 NO 209 RT 002 RW 002	081234141996	PT	BADAN	SUKOMANUNGGAL	PUTAT GEDE	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2005-05-16 00:00:00	2011-10-25 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
078769510609000	H. MOCHAMAD ILYAS	JL RAYA WIYUNG NO 101	081231988351		OP	WIYUNG	JAJAR TUNGGAL	68111	KOTA SURABAYA	3,50921E+15	JAWA TIMUR	Normal	2004-02-24 00:00:00	2015-10-19 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
015107857606000	GELORA NIAGA KENCANA	JL KERTAJAYA INDAH TIMUR 33	085104727600	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	68111	KOTA SURABAYA		JAWA TIMUR	Normal	1990-12-22 00:00:00	2021-05-24 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
015446990631000	SUBAINDOCAHAYA POLINTRACO	JL SENTONG NO 3-D	082257435731	PT	BADAN	TANDES	MANUKAN WETAN	16299	KOTA SURABAYA		JAWA TIMUR	Normal	1992-04-29 00:00:00	1992-04-29 00:00:00	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
910496348609000	HELMIGS CITRA INDO	JL MARGOREJO INDAH BLOK BLOK D NO 521 RT 004 RW 005	0811316380	PT	BADAN	WONOCOLO	SIDOSERMO	70203	KOTA SURABAYA		JAWA TIMUR	Normal	2019-03-30 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
015676646613000	PELAYARAN ANUGRAHMAKMUR SEJAHTERA	JL PERAK TIMUR NO 518 M RT 002 RW 003	6281331733727	PT	BADAN			50131				Normal	1991-09-12 00:00:00	2007-05-16 00:00:00	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
912434271605000	SEA ARMADA INDONESIA	IKAN DORANG NO 01	087798148227	CV	BADAN	KREMBANGAN	PERAK BARAT	46521	KOTA SURABAYA		JAWA TIMUR	Normal	2019-04-18 00:00:00	2019-07-17 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
015676646832002	PELAYARAN ANUGRAHMAKMUR SEJAHTERA	KELURAHAN BUNTA I RT 000 RW 000, BUNTA SATU, KAB. BANGGAI				BUNTA	BUNTA SATU	50131	KAB. BANGGAI			Normal	2023-09-26 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
316227750604000	ASIATERRA GLOBAL	GEDUNG PAKUWON SQUARE LT.7/66 JL MAYJEN YONO SOEWOYO RT 002 RW 009	0317483471	PT	BADAN	WIYUNG	BABATAN	47243	KOTA SURABAYA		JAWA TIMUR	Normal	2012-11-05 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
260373063619000	HWADIANTO SAPUTRA	JL BUKIT DARMO GOLF BLOK N NO 55 RT 005 RW 001	0811371755		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2009-08-13 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
849642269604000	UNION STONES INDONESIA	ROYAL RESIDENCE - SOHO BLOK BS 10 NO 56	08123147988	CV	BADAN	LAKARSANTRI	SUMURWELUT	46634	KOTA SURABAYA		JAWA TIMUR	Normal	2018-05-24 00:00:00	2018-09-17 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
837922848614000	ANUGERAH BUMI SEMPU MANDIRI	JL BALIWERTI NO 124-128 RT 006 RW 010	085655000700	PT	BADAN	BUBUTAN	ALUN-ALUN CONTONG	03211	KOTA SURABAYA		JAWA TIMUR	Normal	2018-01-18 00:00:00	2021-02-10 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
020920666613000	KEIVAN BERSAUDARA	RUKO PENGAMPON SQUARE BLOK G NO 21 RT 012 RW 010	6281330751303	PT	BADAN	PABEAN CANTIAN	BONGKARAN	47592	KOTA SURABAYA		JAWA TIMUR	Normal	2004-06-10 00:00:00	2004-07-30 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
015266554603001	SURYA INDOALGAS							10773				Normal	2004-05-17 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
488479312607000	HANDONO LIMBOWO, IR	JL DR. CIPTO NO 16-18 RT 001 RW 011	0816503718		OP	TEGALSARI	DR. SOETOMO	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	2007-12-01 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
831611694613000	SURYA TEGUH GEMILANG	JL SLOMPRETAN NO 108	081249590615	PT	BADAN	PABEAN CANTIAN	BONGKARAN	46421	KOTA SURABAYA		JAWA TIMUR	Normal	2017-11-01 00:00:00	2018-01-09 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
016813131647001	MITRA KARYA MANDIRI JAYA							41019				Non Efektif	2018-12-10 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
015676646822001	PELAYARAN ANUGRAHMAKMUR SEJAHTERA							50131				Non Efektif	2018-04-03 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
833256795614000	SENTOSO PRAKARSA NUSANTARA	JL. BUBUTAN NO 59 RT 001 RW 004	628155029990	CV	BADAN	BUBUTAN	BUBUTAN	47793	KOTA SURABAYA		JAWA TIMUR	Normal	2017-11-23 00:00:00	2018-01-04 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
021927975009001	TIRTA GRAHA NUSANTARA							46530				Non Efektif	2015-04-17 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
311772438423001	ALTOFIT BERKAT ABADI							46412				Normal	2019-02-11 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
800854895611000	MENTARI MEGAH	JL BASUKI RACHMAD NO 45-47 RT 002 RW 003	081357155335	CV	BADAN	GENTENG	EMBONG KALIASIN	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2016-09-22 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
015443997644001	BUKIDALAM BARISANI							41012				Non Efektif	2011-07-28 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
719571812606000	PESONA GRAHA MUTIARA	JALAN KERTAJAYA INDAH TIMUR RUKO MEGAH GALAXY BLOK 14B NO 9	6285746036339	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2015-01-15 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
315856476606000	MUTIARA SINAR INDAH	JL RUKO MEGA GALAXY 14 B NO 09	0315950413	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46900	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2012-09-10 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
015443997922001	BUKIDALAM BARISANI							42918				Non Efektif	2015-05-13 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
032945511614000	BANDARTRISULA	JL PETEMON KALI NO. 58, PETEMON	0315470017	PT	BADAN	SAWAHAN	PETEMON	46637	KOTA SURABAYA		JAWA TIMUR	Normal	2013-12-02 00:00:00	2014-01-28 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
845424639604001	MANANG SEJAHTERA ABADI	JL HR MUHAMMAD NO 30	082131432771	CV	BADAN	SUKOMANUNGGAL	PUTAT GEDE	45103	KOTA SURABAYA		JAWA TIMUR	PL/DE	2019-01-15 00:00:00	\N	2019-06-11 00:00:00	user_2smbgVCwH0IXZPyre0iAyW8EYEd
031506827606000	AL HARUM	JL NGINDEN INTAN BARAT IV NO 31	087851323308	CV	BADAN	SUKOLILO	NGINDEN JANGKUNGAN	47724	KOTA SURABAYA		JAWA TIMUR	Normal	2011-06-06 00:00:00	2011-12-23 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
022089239518001	PURI WIRA MAHKOTA							45403				Normal	2017-10-23 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
018798447606000	KURNIAJAYA MULTISENTOSA	JL NGAGEL JAYA SELATAN KOMPLEK RMI BLOK E NO 29	081233447722	PT	BADAN	GUBENG	BARATAJAYA	46691	KOTA SURABAYA		JAWA TIMUR	Normal	2000-04-19 00:00:00	2000-07-18 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
022089239731001	PURI WIRA MAHKOTA							45103				Normal	2009-06-09 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
014694806606000	KASIH JATIM	JL BONGKARAN NO 64 RT 000 RW 000	0313561410	PT	BADAN	PABEAN CANTIAN	BONGKARAN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	1998-03-25 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
027000066626001	BOGA LESTARI							47242				Normal	2022-08-04 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
027000066643001	BOGA LESTARI							47242				Normal	2015-09-09 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
802884825604000	ANUGERAH ESA PERKASA	EAST WOOD EW 6 NO 69 RT 001 RW 008	081934857732	CV	BADAN	SAMBIKEREP	SAMBIKEREP	46209	KOTA SURABAYA		JAWA TIMUR	Normal	2016-10-13 00:00:00	2016-12-14 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
061372264604001	JOHAN HIDAYAT	PAKUWON INDAH CITY WALK FT 32, LONTAR	031-7390484		OP	SAMBIKEREP	LONTAR	56101	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	2005-10-18 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
078665981619000	HERU TANAYA	JL GALAXI  BUMI PERMAI BLOK F 7 NO 2 RT 003 RW 012	0811322998		OP	SUKOLILO	SEMOLOWARU	47111	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	2003-04-29 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
015926439604000	PELAYARAN PUTRAUTAMAMANDIRI LINES	JL SIMO POMAHAN I/32	620317329424	PT	BADAN	SUKOMANUNGGAL	SIMOMULYO	52221	KOTA SURABAYA		JAWA TIMUR	Normal	1993-07-27 00:00:00	1998-02-09 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
857941595615000	TRANSINDO INNOVATIVE AROMA	WONOREJO PERMAI SELATAN 8/CC-535 RT 004 RW 006	0811376839	CV	BADAN	RUNGKUT	WONOREJO	56304	KOTA SURABAYA		JAWA TIMUR	Normal	2018-09-07 00:00:00	2019-07-16 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
015443997631000	BUKIDALAM BARISANI	JL KEDUNG ASEM NO 104 RT 004 RW 002	62318783377	PT	BADAN	RUNGKUT	KEDUNG BARUK	41019	KOTA SURABAYA		JAWA TIMUR	Normal	1991-03-28 00:00:00	2001-01-31 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
752243790615000	SURYA KEMENANGAN SEJAHTERA	JL RUNGKUT INDUSTRI VIII NO 22-24 RT 000 RW 000	08123019063	PT	BADAN	TENGGILIS MEJOYO	KUTISARI	46443	KOTA SURABAYA		JAWA TIMUR	Normal	2016-02-16 00:00:00	2016-04-06 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
025865908311001	SEMESTA MITRA SEJAHTERA	JL SALAK RAYA NO.93 NO 93 RT 002 RW 001, KOTA BENGKULU				SINGARAN PATI	TIMUR INDAH	01461	KOTA BENGKULU			Normal	2017-04-27 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
060564473614002	BOENARTA LIMANTARA	KEDUNGDORO 80 E-F RT.003 RW.013, SAWAHAN	62818508587		OP	SAWAHAN	SAWAHAN	45403	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2011-03-28 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
012322871042001	PERUSAHAAN BONGKAR MUAT MITRA DHARMA LAKSANA							52240				Normal	2020-06-17 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
014976625631000	SUKSES EXPAMET	JL KALIANAK BARAT NO 57-C	081332232329	PT	BADAN	ASEM ROWO	GENTING KALIANAK	25112	KOTA SURABAYA		JAWA TIMUR	Normal	1990-10-04 00:00:00	1990-10-04 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
021927975005000	TIRTA GRAHA NUSANTARA	JL DHARMAHUSADA INDAH UTARA BLOK I-B NO 59-60	085100510794	PT	BADAN	MULYOREJO	MULYOREJO	46594	KOTA SURABAYA		JAWA TIMUR	Normal	2006-12-04 00:00:00	2007-07-13 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
022567143619002	MUTIARA TIMUR	JL KEJAWAN PUTIH MUTIARA (EAST COAST CENTER MALL LT. GF) NO 17	6289661808099	PT	BADAN	MULYOREJO	KEJAWAAN PUTIH TAMBAK	56101	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2018-08-07 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
012331385648001	GRIYO MAPAN SANTOSO							68111				Normal	2010-05-25 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
822596565618000	PENTAGIM DIGITAL INTERAKTIF	BUMI MANDIRI TOWER 2 LEVEL 12 JL PANGLIMA SUDIRMAN KAV. 66-68	089675702705	PT	BADAN	GENTENG	EMBONG KALIASIN	46512	KOTA SURABAYA		JAWA TIMUR	Normal	2017-07-06 00:00:00	2019-09-18 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
839549474619000	CITRA INTI PRIMA SEJAHTERA	JL POGOT LAMA NO 11 RT 004 RW 005	08113003788	PT	BADAN	KENJERAN	TANAH KALI KEDINDING	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2018-02-13 00:00:00	2018-10-26 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
015676646816003	PELAYARAN ANUGRAH MAKMUR SEJAHTERA CAB.RAHA							50133				PL/DE	2007-03-18 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
014294854925001	ANUGRAH NUSANTARA SEJAHTERA							68111				Normal	2015-12-01 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
016212904613000	HARINDRA SURYASEMPURNA	JL  PERAK TIMUR BLOK F-9 NO 512 RT 002 RW 003	62313292920	PT	BADAN			52291				Normal	1994-11-11 00:00:00	1995-12-13 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
024580904027001	GLOBAL COMETAL INDONESIA							46591				Normal	2006-06-06 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
211375241643001	JAMKRIDA JATIM							66112				Non Efektif	2019-02-26 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
804610855225001	TRUST TRADING INDONESIA							46635				Normal	2018-01-18 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
018386169645001	ANTABOGA MANUNGGAL KARSA							10612				PL/DE	2014-06-20 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
015443997727001	BUKIDALAM BARISANI							41019				Normal	2018-11-19 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
921381000619000	MUTIARA RODA MAS	JL KERTAJAYA INDAH BLOK V NO F-331 RT 000 RW 000	08175078888	CV	BADAN	MULYOREJO	MANYAR SABRANGAN	64200	KOTA SURABAYA		JAWA TIMUR	Normal	2019-07-11 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
022089239307001	PURI WIRA MAHKOTA							45403				Normal	2009-08-28 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
317317303619000	MUTIARA KARYA SUKSES	JL DHARMAHUSADA INDAH UTARA VI BLOK U/252&265 RT. 000 RW. 000	62315999746	PT	BADAN	MULYOREJO	MULYOREJO	46100	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2013-04-10 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
746293935619000	MUTIARA SURYA HARMONI	JL DHARMAHUSADA INDAH UTARA VI/U-252 RT 000 RW 000	62315962900	PT	BADAN	MULYOREJO	MULYOREJO	41012	KOTA SURABAYA		JAWA TIMUR	Normal	2015-12-04 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
028242691614000	ADI JASA	JL RAYA DEMAK NO 90-92	5310944	YAY	BADAN	BUBUTAN	GUNDIH	88911	KOTA SURABAYA		JAWA TIMUR	Normal	2008-04-30 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
022089239521001	PURI WIRA MAHKOTA							45403				Normal	2015-12-30 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
016130932611000	INTIDAYA DINAMIKA SEJATI	SIDOSERMO INDAH BLOK I NO 11	081330286826	PT	BADAN	WONOCOLO	SIDOSERMO	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2005-08-18 00:00:00	2005-08-18 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
824390611614000	PUTRA LAMBANG JAYA	JL KRAMAT GANTUNG NO 50	6281331088822	CV	BADAN	BUBUTAN	ALUN-ALUN CONTONG	47712	KOTA SURABAYA		JAWA TIMUR	Normal	2017-07-26 00:00:00	2017-08-30 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
023770845446001	DUTA RAMA							41012				PL/DE	2017-11-30 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
016729725086001	MULTICLEAN JAYALESTARI							81210				Normal	2018-02-01 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
717963136411001	MUTIARA DAYA ABADI							68111				Non Efektif	2018-07-27 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
024763161615000	MITRA BAHAGIA CITRA MEDIKA	JL RAYA KALIRUNGKUT XXVII BLOK C NO 63	62318782078	PT	BADAN	RUNGKUT	KALIRUNGKUT	47725	KOTA SURABAYA		JAWA TIMUR	Normal	2006-04-06 00:00:00	2007-08-16 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
012332094631000	RITA SINAR INDAH	JL RUNGKUT INDUSTRI IV NO 24	08123067136	PT	BADAN	RUNGKUT	KALIRUNGKUT	20231	KOTA SURABAYA		JAWA TIMUR	Non Efektif	1985-06-14 00:00:00	\N	2023-10-30 00:00:00	user_2smaIfODFlzm8YDJfrstldzV5BA
745923987401001	KARUNIA INDAH DELAPAN EXPRES	JALAN JENDERAL AHMAD YANI NO 123A, SUMUR PECUNG, KOTA SERANG				SERANG	SUMUR PECUNG	52292	KOTA SERANG			Normal	2023-10-20 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
025865908225001	SEMESTA MITRA SEJAHTERA							01461				Normal	2019-03-06 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
041614173619000	GWIE GUNAWAN	JL DHARMAHUSADA IND BLOK B NO 147	087855273499		OP	MULYOREJO	MULYOREJO	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	1984-02-01 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
664399623632001	APOLLO MANDIRI SEJAHTERA	GEDUNG WTC SURABAYA R 275 JL PEMUDA NO 27-31	0895700624111	PT	BADAN	GENTENG	EMBONG KALIASIN	47414	KOTA SURABAYA		JAWA TIMUR	Normal	2022-10-11 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
813427432611000	MIL PLATINUM BERSAUDARA SURABAYA	JL TUNJUNGAN NO 19	6281347207559	PT	BADAN	GENTENG	GENTENG	55110	KOTA SURABAYA		JAWA TIMUR	Normal	2017-02-27 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
024581282631000	SUTINDO CHEMICAL INDONESIA	JL TANJUNGSARI NO 44-I RT 001 RW 007	081615073220	PT	BADAN	SUKOMANUNGGAL	SIMOMULYO	20299	KOTA SURABAYA		JAWA TIMUR	Normal	2006-02-23 00:00:00	2006-02-24 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
020919775605000	PRIMA ANUGRAH LESTARI ABADI	JL KALISOSOK KIDUL NO 4	0313524251	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2003-09-16 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
024580904614001	GLOBAL COMETAL INDONESIA	JL DUPAK 135 , GUNDIH	0313553232	PT	BADAN	BUBUTAN	GUNDIH	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2010-09-17 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
028274546063000	WAHANA INTER NUSA	GEDUNG BUMI MANDIRI TOWER 2 LT. 12 JL PANGLIMA SUDIRMAN NO 66-68	085104658233	CV	BADAN	GENTENG	EMBONG KALIASIN	43291	KOTA SURABAYA		JAWA TIMUR	Normal	2008-09-04 00:00:00	2008-10-20 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
033176025604000	IVAN BUAH	JL ROMOKALISARI NO 28D	081510236855	CV	BADAN	BENOWO	ROMOKALISARI	46312	KOTA SURABAYA		JAWA TIMUR	Normal	2013-09-04 00:00:00	2013-10-28 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
016814899609000	JAYA SALVAGE INDONESIA	KOMPLEK PERGUDANGAN MARGOMULYO JAYA JL SENTONG ASRI BLOK C6	087861716750	PT	BADAN	TANDES	BALONGSARI	86903	KOTA SURABAYA		JAWA TIMUR	Normal	2002-01-31 00:00:00	2002-08-08 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
817466253607000	CHALIDANA HOSPITALITY INDONESIA	JL RAYA DARMO NO 75-77 RT 004 RW 006	6281703227503	PT	BADAN	TEGALSARI	KEPUTRAN	41012	KOTA SURABAYA		JAWA TIMUR	Normal	2017-04-20 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
012194635648001	WIDYA SATRIA							42918				Normal	2018-09-06 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
024580904604000	GLOBAL COMETAL INDONESIA	JL TANJUNGSARI NO 44 I RT 001 RW 007	0313576034	PT	BADAN	SUKOMANUNGGAL	SIMOMULYO BARU	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2006-01-18 00:00:00	2006-01-30 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
728063520606000	CAHAYA DHARMA LESTARI	JL DHARMAHUSADA INDAH BARAT GG 3 NO 66	081358668937	PT	BADAN	GUBENG	MOJO	41011	KOTA SURABAYA		JAWA TIMUR	Normal	2015-04-17 00:00:00	2017-09-07 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
015446990655001	SUBAINDO CAHAYA POLINTRACO							46339				PL/DE	2000-07-04 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
014294854632003	PT ANUGRAH NUSANTARA SEJAHTERA							68111				PL/DE	2023-12-31 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
014976625907001	SUKSES EXPAMET	JL BYPASS IDA BAGUS MANTRA BR MASPAIT, KAB. GIANYAR				BLAHBATUH	KERAMAS	25111	KAB. GIANYAR			Normal	2017-01-23 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
015676646823001	PELAYARAN ANUGRAHMAKMUR SEJAHTERA							50135				Non Efektif	2017-05-30 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
017397217911001	BERKAT ANUGERAH AGUNG							46100				PL/DE	2003-04-14 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
028230126026001	MESIN KASIR ONLINE							47411				Normal	2019-05-29 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
024546111606000	KHARISMA GRAHA MUTIARA	JALAN RUKO MEGA GALAXY BLOK 16A NO 17	6283831444599	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	68111	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2005-10-11 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
030711485606000	MAYA OPTIMA INVESTAMA	JL KERTAJAYA 109 RT 001 RW 005	0315030450	PT	BADAN	GUBENG	AIRLANGGA	22299	KOTA SURABAYA		JAWA TIMUR	Normal	2010-08-06 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
015443997732001	BUKIDALAM BARISANI							41019				Non Efektif	2016-07-28 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
015443997814001	BUKIDALAM BARISANI							41019				Non Efektif	2015-09-07 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
022089239216001	PURI WIRA MAHKOTA							45403				Normal	2009-10-07 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
017162918041001	LINTAS NIAGA JAYA							52291				PL/DE	2010-04-07 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
012201810631000	INDRA JAYA SWASTIKA	JL KALIANAK BARAT NO 57 A	620317481388	PT	BADAN	ASEM ROWO	GENTING KALIANAK	52221	KOTA SURABAYA		JAWA TIMUR	Normal	1987-10-12 00:00:00	1990-12-31 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
022089239429001	PURI WIRA MAHKOTA							45403				Normal	2009-08-13 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
019792084602001	SARANA UTAMAMAS INDOMOTOR							45401				PL/DE	2004-08-25 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
947170858607000	BUMI NUSANTARA BARA	JL KEDUNGSARI NO 66-E RT 001 RW 001	081298877050	PT	BADAN	TEGALSARI	KEDUNGDORO	46610	KOTA SURABAYA		JAWA TIMUR	Normal	2020-03-19 00:00:00	2021-03-19 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
031779697606000	MUTIARA SINAR GEMILANG	JALAN RUKO MEGAH GALAXY BLOK 14B NO 09	6281914755053	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46900	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2011-12-14 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
019760222604000	MANDIRI SUKSES ABADI	PERUMAHAN KOMPLEK PERMATA TANJUNGSARI BLOK BLOK B NO 55 RT 001 RW 016	62317498678	CV	BADAN	SUKOMANUNGGAL	SIMOMULYO	46339	KOTA SURABAYA		JAWA TIMUR	Normal	2008-03-04 00:00:00	2008-03-06 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
023770845644001	DUTA RAMA							82990				PL/DE	2012-06-26 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
032945511801001	BANDARTRISULA	JL. IR. SUTAMI PERGUDANGAN LANTEBUNG BLOK A 1 NO 2,3 & 3 A RT 000 RW 000, KOTA MAKASSAR				TAMALANREA	PARANG LOE	46637	KOTA MAKASSAR			Normal	2014-01-30 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
311840961618000	RAJAWALI BARA MAKMUR	PERUMAHAN ROYAL RESIDENCE CROWN SOHO BLOK BS15/7A RT 006 RW 002	03199421000	PT	BADAN	LAKARSANTRI	SUMURWELUT	46610	KOTA SURABAYA		JAWA TIMUR	Normal	2010-04-20 00:00:00	2020-11-27 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
012327193631000	DWI TUNGGAL PUTRA	JL EMBONG TANJUNG NO 40	0315344861	PT	BADAN	GENTENG	EMBONG KALIASIN	61300	KOTA SURABAYA		JAWA TIMUR	Normal	1985-06-04 00:00:00	1987-01-01 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810618003	ABADIKURNIA CITRARASA	JL RAYA MENGANTI WIYUNG NO A 20-21 RT 001 RW 007	6285321753030	PT	BADAN	WIYUNG	WIYUNG	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2018-04-12 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
026333369728001	KUTIM COAL UTAMA							05100				Non Efektif	2014-05-23 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
012318598602001	SURYA MAHAKAM AGUNG CHEMICAL INDUSTRI COMPANY							20299				Normal	1992-01-15 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
014972020623001	ATLAS SPA							93111				Normal	2007-08-22 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
021697396008001	MARTHYS ORTHOPAEDIC INDONESIA							46900				PL/DE	2003-04-23 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
019757962618000	IMPERIUM HAPPY PUPPY	JL HR MOCHAMAD NO 73-B RT 004 RW 001	081259963330	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	93292	KOTA SURABAYA		JAWA TIMUR	Normal	2000-05-04 00:00:00	2006-04-21 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
011329158631000	TIMUR MEGAH STEEL	JL EMBONG KENONGO NO 60	085853495836	PT	BADAN	GENTENG	EMBONG KALIASIN	25952	KOTA SURABAYA		JAWA TIMUR	Normal	1982-11-25 00:00:00	1985-01-01 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
475965992607000	GRACE HENDARTO	JL TRUNOJOYO NO 30 RT 001 RW 012	081233731122		OP	TEGALSARI	DR. SOETOMO	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	2007-08-01 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
929891950507001	AMARTA JAYA TRANSLOGISTIK							52291				Normal	2020-11-17 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
738663145606000	NICOLEEN BASTIAAN ONGKO	JL MANYAR KERTOARJO BLOK 3 NO 67 RT 003 RW 006	0817320320		OP	MULYOREJO	MANYAR SABRANGAN	Z5000	KOTA SURABAYA	3,5781E+15	JAWA TIMUR	Normal	2015-09-07 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
022567143604001	MUTIARA TIMUR	PAKUWON MALL LT 2 UNIT 59-60 JL PUNCAK INDAH LONTAR NO 2	089661808099	PT	BADAN	SAMBIKEREP	LONTAR	56101	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2019-09-30 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
754905297604000	PRIMA ANUGERAH SANTOSO	JL RAYA PAKAL INDAH NO.16 BLOK BLOK B-14 RT 001 RW 001	03199019189	PT	BADAN	PAKAL	PAKAL	43905	KOTA SURABAYA		JAWA TIMUR	Normal	2016-03-14 00:00:00	2017-03-07 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
018133363611000	EKA NUSA BAHARI	GEDUNG BUMI MANDIRI LT 6/601A JL BASUKI RACHMAT NO 129-137 RT 000 RW 000	089676254348	PT	BADAN	GENTENG	EMBONG KALIASIN	50131	KOTA SURABAYA		JAWA TIMUR	Normal	2007-12-11 00:00:00	2008-10-13 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
026094540609000	HASIL ALAM NUSANTARA	JL PRAPANCA NO 16 RT 004 RW 009	6281703445464	PT	BADAN	WONOKROMO	DARMO	46207	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2007-04-24 00:00:00	\N	2020-11-03 00:00:00	user_2smbHso2UW3p4SBYX3e6SuJFMly
804610855604000	TRUST TRADING INDONESIA	RUKO SATELIT TOWN SQUARE BLOK B NO 5 JL RAYA SUKOMANUNGGAL JAYA RT 005 RW 003	081358447500	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	46635	KOTA SURABAYA		JAWA TIMUR	Normal	2016-11-04 00:00:00	2016-12-05 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
845176445604000	TOLINCO MEGAH MEKATRINDO	SENTRAL MARGOMULYO PERMAI B-6 RT 016 RW 002	6281252663993	PT	BADAN	SUKOMANUNGGAL	TANJUNGSARI	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2018-04-04 00:00:00	2018-05-11 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
097560320611000	LEMAN HADI SOETEMO	JL JIMERTO NO 2 RT 008 RW 008	082233063100		OP	GENTENG	KETABANG	Z5000	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	2004-12-01 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
060564473619000	BOENARTA LIMANTARA	JL DARMAHUSADA INDAH UTARA I/22 RT 001 RW 008	62811311908		OP	MULYOREJO	MULYOREJO	45406	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	1984-12-10 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
015676646811003	PELAYARAN ANUGERAH MAKMUR SEJAHTERA							50111				Normal	2011-12-27 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
317899144604000	SUMBER PENGAYOMAN SEJATI	PUNCAK SAMBISARI III / 6-9 RT. 001 RW. 003	6281803212944	YAY	BADAN	SAMBIKEREP	LONTAR	85240	KOTA SURABAYA		JAWA TIMUR	Normal	2013-06-24 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
012111266402001	MIKATASA AGUNG							20291				Normal	2016-10-17 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
014398366625001	BANK PERKREDITAN RAKYAT PRIMA KREDIT UTAMA							64131				Non Efektif	2006-05-16 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
024428047601001	BANGUN KONSTRUKSI PERSADA							41019				Normal	2017-09-22 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
024428047624001	BANGUN KONSTRUKSI PERSADA							41019				Normal	2016-11-11 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
015443997629001	BUKIDALAM BARISANI							42918				Non Efektif	2013-04-16 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
021140405614000	KARYA JAYA SAMUDERA	JL DUPAK BLOK B-21 NO 61 RT 000 RW 000	081331862645	PT	BADAN	BUBUTAN	GUNDIH	50131	KOTA SURABAYA		JAWA TIMUR	Normal	2005-02-01 00:00:00	2005-04-07 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
241556711619000	DAVID SUSANTO JAHJA	JL LEBAK JAYA 3 NO 26 RT 003 RW 003	081515971111		OP	TAMBAKSARI	GADING	Z5000	KOTA SURABAYA	3,5781E+15	JAWA TIMUR	Normal	2007-04-13 00:00:00	2018-11-07 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
027000066606001	BOGA LESTARI	BARATA JAYA 19 NO 26	083890075774	CV	BADAN	GUBENG	BARATAJAYA	47242	KOTA SURABAYA		JAWA TIMUR	Normal	2015-07-10 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
014659734613000	HALMAHERA NUSANTARA LINE	JL. SEMUT KALI NO 12-A	0317328806	PT	BADAN	PABEAN CANTIAN	BONGKARAN	50131	KOTA SURABAYA		JAWA TIMUR	Normal	1989-06-26 00:00:00	2014-09-02 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
022567143618001	MUTIARA TIMUR	MAYJEN SUNGKONO NO.89, MALL CIPUTRA WORLD BLOK LT.3 UNIT NO 12	6282331776064	PT	BADAN	DUKUH PAKIS	GUNUNG SARI	56101	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2014-11-24 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
022089239435001	PURI WIRA MAHKOTA							45403				Normal	2016-06-02 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
063646731606000	BUDI SAPUTRO SANTOSO	JL DHARMAHUSADA INDAH BARAT BLOK 3 NO 178 RT 007 RW 004	08121619099		OP	GUBENG	MOJO	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	1987-11-24 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
314960394607000	MEGASURYA MANDIRI MAKMUR	JL DARMO KALI NO 8-12 RT 003 RW 005	0315030450	PT	BADAN	TEGALSARI	KEPUTRAN	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2012-03-29 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
719355661619000	TANJUNG RAYA	JL KAPAS MADYA INDAH NO 10 RT 000 RW 000	62313767169	CV	BADAN	TAMBAKSARI	KAPASMADYA BARU	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2015-01-14 00:00:00	\N	2023-09-27 00:00:00	user_2smbgVCwH0IXZPyre0iAyW8EYEd
027000066602001	BOGA LESTARI	JALAN MOJOPAHIT NO 436 B, KRANGGAN, KOTA MOJOKERTO				KRANGGAN	KRANGGAN	47242	KOTA MOJOKERTO			Normal	2022-08-04 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
027000066627001	BOGA LESTARI							47242				Normal	2022-08-04 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
027000066648001	BOGA LESTARI							47242				Normal	2022-08-04 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
023770845723001	DUTA RAMA							42201				PL/DE	2013-04-11 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
020097630619002	TOENG MAKMUR	PERUMAHAN PAKUWON CITY JL LAGUNA KEJAWAN PUTIH BARAT NO 04 RT 005 RW 003	087890000939	PT	BADAN	MULYOREJO	KEJAWAAN PUTIH TAMBAK	47593	KOTA SURABAYA		JAWA TIMUR	Normal	2019-07-30 00:00:00	\N	2021-05-24 00:00:00	user_2smagzuZma6eoLOdXEOAxgzjX7w
021694104609000	FOCON INDONESIA	JL A.YANI NO 269 RT 002 RW 001	6281230809504	PT	BADAN	WONOCOLO	SIWALANKERTO	23953	KOTA SURABAYA		JAWA TIMUR	Normal	2002-02-12 00:00:00	2002-03-21 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
060310166614001	PRAKASH H.KIANI	JL.BUBUTAN 25 , BUBUTAN			OP	BUBUTAN	BUBUTAN	47711	KOTA SURABAYA	0	JAWA TIMUR	PL/DE	1995-09-11 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
025865908301001	SEMESTA MITRA SEJAHTERA							01461				Normal	2017-04-03 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
014518195614001	INCOMINDO MURNI JAYA	JL MARGOMULYO 44 BLOK G NO 5	0315479000	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2006-06-27 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
026227157604000	SARANA MERDEKA ABADI	JL GRIYA CITRA ASRI RM 31 NO 01 RT 006 RW 001	0317441924	PT	BADAN	SAMBIKEREP	BERINGIN	78101	KOTA SURABAYA		JAWA TIMUR	Normal	2007-12-10 00:00:00	2008-12-17 00:00:00	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
031936446615000	BIMURA PUTRA PERSADA	RUKO PANJI MAKMUR JL PANJANGJIWO 46-48 BLOK C NO 27 RT 007 RW 002	081233454585	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2012-01-06 00:00:00	2012-01-25 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
014972020606000	ATLAS SPA	JL DHARMAHUSADA INDAH BARAT GG III NO 64-66	085655245869	PT	BADAN	GUBENG	MOJO	93116	KOTA SURABAYA		JAWA TIMUR	Normal	1990-02-15 00:00:00	1991-07-23 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
062907852604001	LAUW, HARTANTO LUDY	ROMOKALISARI INDUSTRI RAYA III NO.3	082141867959		OP	BENOWO	ROMOKALISARI	52101	KOTA SURABAYA	3,57804E+15	JAWA TIMUR	Normal	2013-09-27 00:00:00	\N	2021-05-24 00:00:00	user_2smbHso2UW3p4SBYX3e6SuJFMly
012322871509001	PBM MITRA DHARMA LAKSANA							52240				Normal	2022-07-11 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
016732927619000	METRO ABDIBINA SENTOSA	JL RAYA GADING PANTAI NO 31	0313511545	PT	BADAN	MULYOREJO	DUKUH SUTOREJO	27120	KOTA SURABAYA		JAWA TIMUR	Normal	1995-02-22 00:00:00	1995-05-04 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
028250520623001	SUSHI-TEI SURABAYA	JL. KAWI NO 24, MALL OLYMPIC GARDEN NO 37-43 RT 003 RW 007, KOTA MALANG				KLOJEN	KAUMAN	56101	KOTA MALANG			Normal	2024-06-20 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
012331385643001	GRIYO MAPAN SENTOSA							68111				PL/DE	2011-07-07 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
825057193604000	INDO MAKMUR	MARGOMULYO PERMAI BLOK Q NO 15A	0317344952	CV	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2017-08-03 00:00:00	2017-10-09 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
019417641614000	TIGA BERSAUDARA	JL SIMO SIDOMULYO BLOK III NO 60A RT 005 RW 016	081330201060	CV	BADAN	SAWAHAN	PETEMON	46447	KOTA SURABAYA		JAWA TIMUR	Normal	2000-07-31 00:00:00	2013-01-03 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
026223438604000	MAKMUR JAYA	JL MARGOMULYO JAYA BLOK B NO 6	085649059920	CV	BADAN	TANDES	MANUKAN WETAN	77311	KOTA SURABAYA		JAWA TIMUR	Normal	2006-12-01 00:00:00	2013-02-27 00:00:00	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
018230698631000	SUMBER MULTI REJEKI	JL RAYA JEMUR ANDAYANI NO 11-A	081217699693	PT	BADAN	WONOCOLO	JEMUR WONOSARI	49432	KOTA SURABAYA		JAWA TIMUR	Normal	1997-10-30 00:00:00	1997-11-10 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
017926437085001	SARANA TEKNIK WIRATAMA							46900				Normal	2011-06-20 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
016732414624001	BELIRANG KALISARI							68111				Normal	2000-12-05 00:00:00	\N	\N	user_2smbHso2UW3p4SBYX3e6SuJFMly
744418427606000	SANTICA HARMONI ABADI	JALAN RAYA DHARMAHUSADA AA NO 11 RT 008 RW 004, MOJO NO 11 RT 008 RW 004	082132395588	PT	BADAN	GUBENG	MOJO	47591	KOTA SURABAYA		JAWA TIMUR	Normal	2015-11-16 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
929982908613000	PRIMA VODA LOGISTIK	KOMPLEK PERTOKOAN PENGAMPON SQUARE BLOK E-19, JALAN SEMUT BARU RT 012 RW 010	08113548348	PT	BADAN	PABEAN CANTIAN	BONGKARAN	52295	KOTA SURABAYA		JAWA TIMUR	Normal	2019-09-27 00:00:00	2019-10-02 00:00:00	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
311840698807001	KARUNIA INDAH ABADI							10740				Normal	2018-04-09 00:00:00	\N	\N	user_2smZdMSwo8GLV0mqxsfv1IuJhlS
031778061606000	MUTIARA MASYHUR ABADI	JALAN KERTAJAYA INDAH TIMUR BLOK 14B NO 09	6283831446899	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2011-08-19 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
703935312606000	MULTI BANGUN INDONESIA	JL BARATAJAYA NO 38	081130516169	PT	BADAN	GUBENG	BARATAJAYA	46634	KOTA SURABAYA		JAWA TIMUR	Normal	2014-06-16 00:00:00	2014-07-30 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
317992238613000	KENZIE KURNIA ABADI	JL PERAK TIMUR BLOK B-5 NO 564 RT 002 RW 003	0313294746	CV	BADAN			46631				Normal	2013-07-08 00:00:00	2013-08-28 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
031259641631000	JAWA POS KORAN	GEDUNG GRAHA PENA LT 4-5 JL A YANI NO 88	087852601802	PT	BADAN	GAYUNGAN	KETINTANG	58130	KOTA SURABAYA		JAWA TIMUR	Normal	2011-08-15 00:00:00	2011-09-05 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
717963136606000	MUTIARA DAYA ABADI	JL RAYA KUPANG BARU BLOK II NO 01	62315955730	PT	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2014-12-24 00:00:00	2018-01-23 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
017162918041002	LINTAS NIAGA JAYA							52291				PL/DE	2011-05-03 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
027000066609000	BOGA LESTARI	JL DIPONEGORO NO 182 RT 002 RW 013	0315662677	CV	BADAN	TEGALSARI	DR. SOETOMO	47242	KOTA SURABAYA		JAWA TIMUR	Normal	2007-10-25 00:00:00	2008-04-15 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
803240795616000	TRI GLOBAL PERSADA	JL. DONOREJO NO 48-B RT 001 RW 001	6281283812919	PT	BADAN	SIMOKERTO	KAPASAN	46209	KOTA SURABAYA		JAWA TIMUR	Normal	2016-10-18 00:00:00	2019-02-11 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
022069074613000	LIGA TECHNIC	JL KALIAGUNG BLOK B NO 9 RT 002 RW 005	085838825578	PT	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2005-12-06 00:00:00	2006-01-03 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
016777534607000	MEGAHKENCANA INDAH DINAMIKA	JL MAWAR NO 27-29 RT 003 RW 003	085104595559	PT	BADAN	TEGALSARI	TEGALSARI	46100	KOTA SURABAYA		JAWA TIMUR	Normal	1995-12-01 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
032692410027000	PALU BUANA SENTOSA	RUKO MEGAH GALAXY BLOK BLOK 14 B NO 09	021428811167	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2012-10-22 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
746293935452001	MUTIARA SURYA HARMONI	JL. RAYA BINONG KAV.9 RT 006 RW 002, KAB. TANGERANG				CURUG	BINONG	41012	KAB. TANGERANG			Normal	2017-11-10 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
027000066623001	BOGA LESTARI							10710				Normal	2015-01-07 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
027000066905001	BOGA LESTARI							47242				Normal	2018-04-13 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
316309087609000	TUNAS AGUNG SENTOSA	RAYA MARGOREJO INDAH A NO 131-132 RT 001 RW 008	6282245929365	PT	BADAN	WONOCOLO	MARGOREJO	43291	KOTA SURABAYA		JAWA TIMUR	Normal	2012-11-19 00:00:00	2013-03-20 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
023770845955003	DUTA RAMA							41019				PL/DE	2011-05-20 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
025865908224001	SEMESTA MITRA SEJAHTERA							01461				Normal	2023-05-09 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
023773997615000	BINTANG INDO JAYA	JL RUNGKUT INDUSTRI III NO 34B	083831839183	PT	BADAN	TENGGILIS MEJOYO	KUTISARI	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2009-09-01 00:00:00	2011-02-02 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
022092878618000	BIRU SEMESTA ABADI	JL MENGANTI KARANGAN NO 36 A RT 002 RW 003	081231648899	PT	BADAN	WIYUNG	BABATAN	46319	KOTA SURABAYA		JAWA TIMUR	Normal	2011-05-30 00:00:00	2011-05-30 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
016729725631000	MULTICLEAN JAYALESTARI	RUKO PANJI MAKMUR BLOK C.35-37 JL PANJANG JIWO NO 46-48	085732020770	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	81210	KOTA SURABAYA		JAWA TIMUR	Normal	2001-11-15 00:00:00	2013-03-07 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
016209074613000	CITRALAUT SEMPURNAJAYA - EMKL	JL. PERAK TIMUR 512 (BLOK F/9)                    , PERAK UTARA	0313292481	PT	BADAN			52291				Normal	1993-08-27 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
031778095606000	MUTIARA INTI SUKSES	JALAN KERTAJAYA INDAH TIMUR BLOK 14B NO 09	6283830644207	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2011-08-19 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
926443763611000	SENTRA SARANA BERSAMA	SKYLOFT SOHO UNIT 1968 CIPUTRA WORLD JL MAYJEND SUNGKONO NO 80 RT 008 RW 006	081904059027	PT	BADAN	DUKUH PAKIS	GUNUNG SARI	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2019-08-25 00:00:00	2019-08-28 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
027000066642001	BOGA LESTARI							47242				Normal	2022-08-04 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
701882060602001	MULTI PAKAN JAYA SENTOSA											Normal	2015-07-09 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
021143854611001	SURYA SEJAHTERA	JL KUSUMA BANGSA 51	082335592386	CV	BADAN	GENTENG	KETABANG	45401	KOTA SURABAYA		JAWA TIMUR	Normal	2009-01-27 00:00:00	\N	2021-05-24 00:00:00	user_2smaIfODFlzm8YDJfrstldzV5BA
016732794615001	BON AMI ABADI	JL RAYA JEMURSARI NO 163 RT 006 RW 002	082234112904	PT	BADAN	TENGGILIS MEJOYO	KENDANGSARI	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2013-11-22 00:00:00	\N	2019-12-31 00:00:00	user_2smagzuZma6eoLOdXEOAxgzjX7w
011331733631000	KEBON AGUNG	JL RAYA MARGOREJO INDAH BLOK A NO 131-132 RT 001 RW 008	0318497279	PT	BADAN	WONOCOLO	MARGOREJO	10721	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
040255267611001	BENNY PRAKOSO <SAFARI JEWELRY>	GRAND CITY LT.2, JL.GUBENG POJOK 1 NO 3	085102385788		OP	GENTENG	KETABANG	47735	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	2004-03-19 00:00:00	\N	2021-05-24 00:00:00	user_2smagzuZma6eoLOdXEOAxgzjX7w
752243790426001	SURYA KEMENANGAN SEJAHTERA							46443				Normal	2023-06-16 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
020097630619001	TOENG MAKMUR	DHARMAHUSADA INDAH TMR 35-37(GALAXI MAL LT.3/309) RT.000 RW.000, MULYOREJO	081330681672	PT	BADAN	MULYOREJO	MULYOREJO	47920	KOTA SURABAYA		JAWA TIMUR	Normal	2011-10-18 00:00:00	\N	2021-05-24 00:00:00	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810631001	ABADIKURNIA CITRARASA	RUKO SENTRA TAMAN GAPURA BLOK I NO 20 RT 004 RW 013	6281213157702	PT	BADAN	SAMBIKEREP	LONTAR	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2019-06-13 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810618002	ABADIKURNIA CITRARASA	KOMPLEK LOOP PLAZA GRAHA FAMILI JL MAYJEN YONO SOEWOYO NO 21	087862487055	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2016-11-07 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
027913870611000	INTAN CHEMICAL	RUKO AMBENGAN PLAZA JL AMBENGAN NO 1-X RT 000 RW 000	081357012830	PT	BADAN	GENTENG	KETABANG	46651	KOTA SURABAYA		JAWA TIMUR	Normal	2011-02-08 00:00:00	2011-03-01 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
016776221611000	MULTICIPTA POLY PERKASA	JL PANGLIMA SUDIRMAN NO 72-75	6281259728648	PT	BADAN	GENTENG	EMBONG KALIASIN	46696	KOTA SURABAYA		JAWA TIMUR	Normal	1995-05-11 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
021760236914001	INNECO WIRA SAKTI HUTAMA							41011				Non Efektif	2018-10-01 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
027911312611000	KITA INVESTAMA	JL SIMPANG DUKUH NO 38-40	0818513388	PT	BADAN	GENTENG	KAPASARI	68200	KOTA SURABAYA		JAWA TIMUR	Normal	2008-12-10 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
025865908648001	SEMESTA MITRA SEJAHTERA							01461				Normal	2022-05-23 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
025865908655001	SEMESTA MITRA SEJAHTERA							01461				Normal	2022-05-23 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
032945511323001	BANDARTRISULA							46637				Normal	2017-05-12 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
014973234503001	FREIGHT EXPRESS INDONESIA							50131				Normal	2021-03-19 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
011331733507001	KEBON AGUNG							10721				Normal	1982-12-03 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810623004	ABADIKURNIA CITRARASA							10710				PL/DE	2019-12-02 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810626003	ABADIKURNIA CITRARASA							10710				Normal	2024-08-30 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
012327193723001	DWI TUNGGAL PUTRA							95110				PL/DE	2013-03-15 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
020097630652001	TOENG MAKMUR							47599				Normal	2013-09-19 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
022081004804001	DIRGANTARA SURYA PERSADA							52291				PL/DE	2015-11-24 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
024195570615000	ENVIRONEER	JL RUNGKUT INDUSTRI III NO 37	0318436617	PT	BADAN	GUNUNG ANYAR	RUNGKUT MENANGGAL	28221	KOTA SURABAYA		JAWA TIMUR	Normal	2008-03-18 00:00:00	2009-02-23 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
015680457605000	PELAYARAN SURYA HANDAL SAKTI	JL TANJUNG BATU BLOK B NO 7 RT 000 RW 000	085731613667	PT	BADAN	KREMBANGAN	PERAK BARAT	50131	KOTA SURABAYA		JAWA TIMUR	Normal	2010-02-08 00:00:00	2013-04-30 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
064086242619000	ANG SOEJANTO WIDJAJA	JL RAYA KERTAJAYA INDAH NO 114	62811318975		OP	MULYOREJO	MANYAR SABRANGAN	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2008-02-15 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
018745224607000	DEGA KARYA	JL KUPANG PANJAAN BLOK IV NO 36-D	082233267284	CV	BADAN	TEGALSARI	DR. SOETOMO	18111	KOTA SURABAYA		JAWA TIMUR	Normal	2006-08-15 00:00:00	2006-08-16 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
023555014428001	CORPUS PRIMA MANDIRI							70100				Normal	2018-10-18 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
024195570085001	ENVIRONEER							26490				PL/DE	2012-06-12 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
020675476618000	PERDAMAIAN INDONESIA	JL RAYA MASTRIP KEDURUS NO 43 RT 003 RW 002	085955236995	PT	BADAN	KARANG PILANG	KEDURUS	22194	KOTA SURABAYA		JAWA TIMUR	Normal	2001-08-21 00:00:00	2002-11-15 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
316973353619000	IDE SEHATI	JL BRONGGALAN 1/21 RT 002 RW 008	0811333129	PT	BADAN	TAMBAKSARI	PACARKEMBANG	43212	KOTA SURABAYA		JAWA TIMUR	Normal	2013-02-21 00:00:00	2013-04-15 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
060317088611000	L. AMIE SUTJAHJO	JL PRABAN NO 11	0816528117		OP	GENTENG	KAPASARI	52211	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	1984-06-11 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
350394607609000	DENNY IRYANTO	GRAHA FAMILY BLOK P NO 27 RT 003 RW 011	085233346363		OP	WIYUNG	BABATAN	Z5000	KOTA SURABAYA	3,57802E+15	JAWA TIMUR	Normal	2010-07-26 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
085707388604000	ELLY PAULINA,PRAJOGO	JL RAYA SATELIT SELATAN BLOK BLOK IN NO 39-40 RT 011 RW 003	0		OP	SUKOMANUNGGAL	TANJUNGSARI	Z5000	KOTA SURABAYA	3,57828E+15	JAWA TIMUR	Normal	2013-06-19 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
831322813604000	MILL AGRO INDONESIA	KAWASAN INDUSTRI DAN PERGUDANGAN MASPION, JL ROMOKALISARI INDUSTRI 3 NO. 3	085731300061	PT	BADAN	BENOWO	ROMOKALISARI	10616	KOTA SURABAYA		JAWA TIMUR	Normal	2017-10-27 00:00:00	2018-04-02 00:00:00	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
022089239701001	PURI WIRA MAHKOTA							45403				Normal	2009-06-03 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
022089239801001	PURI WIRA MAHKOTA							45403				PL/DE	2006-06-20 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
767878911611000	INTER NIAGA PERKASA	GEDUNG BUMI MANDIRI TOWER II LT.12 JL PANGLIMA SUDIRMAN NO 66-68 RT 001 RW 007	085931141515	PT	BADAN	GENTENG	EMBONG KALIASIN	46651	KOTA SURABAYA		JAWA TIMUR	Normal	2016-08-19 00:00:00	2016-11-09 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
211341672607000	BANGUN MULTI WAHANA	RUKAN DARMO SQUARE B-16 LT.3 JL RAYA DARMO NO 56 RT 003 RW 010	6281380099939	PT	BADAN	TEGALSARI	DR. SOETOMO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2009-11-19 00:00:00	2016-07-01 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
022067557301001	MITRA KABEL INDONESIA							46641				Normal	2017-01-11 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
041921354604000	HADI PRAJITNO	PERUMAHAN BUKIT GOLF BLOK E-2 NO 03 RT 003 RW 004	082276282828		OP	LAKARSANTRI	LAKARSANTRI	49413	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	1984-03-22 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
020098299604000	SURYA SENTRAL DIAROMA	JL RAYA LONTAR TIMUR RUKO GALERI BUKIT INDAH RK-3 NO 38	08179309594	PT	BADAN	SAMBIKEREP	LONTAR	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2011-01-04 00:00:00	2011-01-04 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
015997810607003	ABADIKURNIA CITRARASA	RUKO PERMATA BINTORO JL KETAMPON I BLOK A NO 8-9 RT 005 RW 014	0315673078	PT	BADAN	TEGALSARI	DR. SOETOMO	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2017-05-31 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
315134650618000	KREASI ENERGI ALAM	JL RAYA SUKOMANUNGGAL JAYA NO 28	081918064755	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	46610	KOTA SURABAYA		JAWA TIMUR	Normal	2012-04-20 00:00:00	2013-01-15 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
023773997611001	BINTANG INDO JAYA	GEDUNG GRAND CITY MALL LT.4 JL GUBENG POJOK NO 1 RT 000 RW 000	08885082299	PT	BADAN	GENTENG	KETABANG	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2013-10-24 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
016732794619003	BON AMI ABADI	JL BABATAN PANTAI UTARA BLOK 2 NO 3-C RT 001 RW 005	62315058109	PT	BADAN	MULYOREJO	KALIJUDAN	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2019-09-26 00:00:00	\N	2021-05-24 00:00:00	user_2smagzuZma6eoLOdXEOAxgzjX7w
020097630614000	TOENG MAKMUR	JL TIDAR NO 84	085100497048	PT	BADAN	SAWAHAN	SAWAHAN	47593	KOTA SURABAYA		JAWA TIMUR	Normal	2001-09-24 00:00:00	2002-11-20 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810605001	ABADIKURNIA CITRARASA	JL INDRAPURA NO 53-A	081330712388	PT	BADAN	KREMBANGAN	KEMAYORAN	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2007-01-19 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810613001	ABADIKURNIA CITRARASA	GEDUNG ATOM MALL LANTAI DASAR BLOK A NO 81	085100652202	PT	BADAN	PABEAN CANTIAN	BONGKARAN	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2017-09-22 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
019795103604000	WAHANA SENTRA NIAGA	JL SENTONG ASRI KOMPLEK PERGUDANGAN MARGOMULYO BLOK A-1	62317498666	PT	BADAN	TANDES	BALONGSARI	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2010-01-14 00:00:00	2010-01-14 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
023773997611002	BINTANG INDO JAYA	GEDUNG PLAZA SURABAYA LT.1 NO.24-A JL PEMUDA BLOK - NO 33-37 RT 003 RW 001	08883722576	PT	BADAN	GENTENG	EMBONG KALIASIN	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2013-12-31 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
187386669942001	HERMANTO GUNAWAN	JL PAH REVOLUSI RT.002 RW.03, GAMALAMA, KOTA TERNATE				KOTA TERNATE TENGAH	GAMALAMA	47711	KOTA TERNATE			Non Efektif	2010-11-03 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
848019675618000	LINTAS LAUTAN LUAS	JALAN DUKUH KUPANG BARAT BLOK 25 NO 11 RT 004 RW 008	6281333522606	PT	BADAN	DUKUH PAKIS	DUKUH KUPANG	50131	KOTA SURABAYA		JAWA TIMUR	Normal	2018-05-04 00:00:00	2018-08-16 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
025865908657001	SEMESTA MITRA SEJAHTERA							01461				Normal	2019-05-06 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
032945511013001	BANDARTRISULA							46637				Normal	2014-02-20 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
032945511426001	BANDARTRISULA							46637				Normal	2014-02-11 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
020097630609002	TOENG MAKMUR	MARVEL CITY LT 1 NO 29 RT 005 RW 002	62816528967	PT	BADAN	WONOKROMO	NGAGEL	47593	KOTA SURABAYA		JAWA TIMUR	PL/DE	2018-02-05 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810628002	ABADIKURNIA CITRARASA	CHERRY NO 10 RT 008 RW 001, SISIR, KOTA BATU				BATU	SISIR	10710	KOTA BATU			Normal	2024-08-30 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015283369953001	PELAYARAN NASIONAL EKALYA PURNAMASARI							50131				PL/DE	2002-01-24 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810623006	ABADIKURNIA CITRARASA							10710				Normal	2023-06-27 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
019795103801001	WAHANA SENTRA NIAGA							46641				PL/DE	2010-11-10 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
021694104624001	FOCON INDONESIA							23953				Normal	2010-08-24 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810643001	ABADIKURNIA CITRARASA							10710				Normal	2008-06-04 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
019131945605000	TAGAYA FLORINDO INTERNATIONAL	JL RAJAWALI NO 49 J-K RT 001 RW 010	0313526000	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	52291	KOTA SURABAYA		JAWA TIMUR	Normal	1999-10-21 00:00:00	2006-06-28 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
015447147604000	WIHARDJA KUSUMA	JL DARMO PERMAI TIMUR X/5	087703357050	PT	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	46491	KOTA SURABAYA		JAWA TIMUR	Normal	1992-05-15 00:00:00	1992-05-15 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
015103195905001	UNITED AUTOMOBIL SEMBILAN PULUH UTAMA							52291				Normal	2014-08-14 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
019131945517001	TAGAYA FLORINDO INTERNATIONAL							52291				Normal	2005-02-15 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
022568448414001	TURBONED INDONESIA							46591				Non Efektif	2005-06-14 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
015997810655001	ABADIKURNIA CITRARASA							10710				Normal	2023-10-27 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
026329219603001	TANJUNG PERAK SWADAYA							52296				Normal	2023-10-12 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
705413839618000	MEDIA PUTRA NUSANTARA	PERTOKOAN SENTRA DARMO VILLA JL RAYA DARMO PERMAI SELATAN BLOK C-2 NO 6-14 RT 004 RW 007	081232229299	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	61929	KOTA SURABAYA		JAWA TIMUR	Normal	2014-07-01 00:00:00	2016-02-26 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
021137500609001	VICTORY INTERNATIONAL FUTURES	MARVELL CITY MALL, GROUND FLOOR UNIT G-27, JL NGAGEL NO 123 RT 005 RW 002	081359060906	PT	BADAN	WONOKROMO	NGAGEL	64999	KOTA SURABAYA		JAWA TIMUR	Normal	2011-12-28 00:00:00	\N	2015-07-14 00:00:00	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
028174928613000	GRAND WISATA HARMONI	JL SEMUT KALI NO 48-50	085784222961	PT	BADAN	PABEAN CANTIAN	BONGKARAN	55120	KOTA SURABAYA		JAWA TIMUR	Normal	2010-08-11 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
032949455619000	ORI AQUATIK	JL KENJERAN 633-A3	000999888990	PT	BADAN	MULYOREJO	DUKUH SUTOREJO	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2013-09-09 00:00:00	2013-12-06 00:00:00	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
027000066617001	BOGA LESTARI							47242				Normal	2015-02-26 00:00:00	\N	\N	user_2smbgVCwH0IXZPyre0iAyW8EYEd
660076357609000	CAHAYA INVESTINDO	JL MARGOREJO INDAH BLOK A-506 NO 57 RT 001 RW 008	0318412999	PT	BADAN	WONOCOLO	MARGOREJO	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2013-12-13 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
032945511432001	BANDARTRISULA	JL. PONDOK TIMUR RAYA NO 93 RT 001 RW 018, PENGASINAN, KOTA BEKASI				RAWA LUMBU	PENGASINAN	46637	KOTA BEKASI			Non Efektif	2014-02-13 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
826830598613000	DAIHO MESIN	JL KEMBANG JEPUN NO 36	081246465866	CV	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	47791	KOTA SURABAYA		JAWA TIMUR	Normal	2017-08-28 00:00:00	2020-05-20 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
022067557804001	MITRA KABEL INDONESIA							46491				Normal	2011-03-29 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
072403512619000	RIJANTO JOESOEF	JL DHARMAHUSADA INDAH BLOK 3 NO 27 RT 004 RW 009	0811307777		OP	MULYOREJO	MULYOREJO	Z5000	KOTA SURABAYA	3,51508E+15	JAWA TIMUR	Normal	2001-05-31 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
025864240515001	GREENSOL INDONESIA							46201				Normal	2015-12-08 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
027767318618000	MAHAKAM MULTI MINING LESTARI	LIDAH HARAPAN TIMUR, PERUM LEMBAH HARAPAN NO 9	08113238702	PT	BADAN	LAKARSANTRI	LIDAH WETAN	05100	KOTA SURABAYA		JAWA TIMUR	Normal	2008-07-07 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015588544606000	MITRASENTOSA PURITAMA	JL RAYA GUBENG NO 5	0811347211	PT	BADAN	GUBENG	GUBENG	46441	KOTA SURABAYA		JAWA TIMUR	Normal	1991-09-19 00:00:00	1995-02-02 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
025865908315001	SEMESTA MITRA SEJAHTERA							01461				Normal	2022-07-19 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
313286981604000	ECLECTIC CONSULTING	JL SOHO SKYLOFT THE VOILA APARTEMENT CIPUTRA WORLD UNIT SKYLOFT 1678	08113451678	PT	BADAN	DUKUH PAKIS	GUNUNG SARI	62090	KOTA SURABAYA		JAWA TIMUR	Normal	2011-12-22 00:00:00	2012-01-02 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
015997810614001	ABADIKURNIA CITRARASA	JL BANYU URIP NO 129 C RT 005 RW 003	6281249978466	PT	BADAN	SAWAHAN	BANYU URIP	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2018-11-14 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
752243790901001	SURYA KEMENANGAN SEJAHTERA							46443				Normal	2019-03-12 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
012266649631000	HASTA KARYA PERDANA	JL GAYUNG KEBONSARI MANUNGGAL NO 18 RT 006 RW 003	62318283908	PT	BADAN	JAMBANGAN	KEBONSARI	42204	KOTA SURABAYA		JAWA TIMUR	Normal	1986-06-26 00:00:00	1989-08-01 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
825395593611000	MEGA RAMIN INDONESIA	JL EMBONG KARTIKO NO 5 RT 000 RW 000	08123118696	PT	BADAN	GENTENG	PENELEH	46610	KOTA SURABAYA		JAWA TIMUR	Normal	2017-08-07 00:00:00	2017-10-11 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
014797898072001	SARANABHAKTI TIMUR							50131				Normal	2023-07-20 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
025865908649001	SEMESTA MITRA SEJAHTERA							01461				Normal	2019-10-23 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
028172344044001	BINTANG LAUT PLATINUM							52291				Normal	2016-06-08 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
032945511413001	BANDARTRISULA							46637				Normal	2017-03-21 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
016732794619001	BON AMI ABADI	RUKO PATOS AA1-007	031-5912948	PT	BADAN	MULYOREJO	KEJAWAAN PUTIH TAMBAK	47192	KOTA SURABAYA		JAWA TIMUR	Normal	2011-08-24 00:00:00	\N	2021-05-24 00:00:00	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810622001	ABADIKURNIA CITRARASA							10710				Normal	2009-01-22 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810623003	ABADIKURNIA CITRARASA							10710				Normal	2019-12-02 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810603001	ABADIKURNIA CITRARASA							10710				Normal	2016-10-28 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
020097630012001	TOENG MAKMUR							47111				Normal	2012-01-31 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
016732794606000	BON AMI ABADI	JL MANYAR KERTOARJO V NO 17	0315950908	PT	BADAN	GUBENG	MOJO	10710	KOTA SURABAYA		JAWA TIMUR	Normal	1995-02-13 00:00:00	2021-05-24 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
040900045607000	AGUS WIBISONO	JL TRUNOJOYO NO 58 RT 001 RW 012	082330491508		OP	TEGALSARI	DR. SOETOMO	68111	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	1983-12-30 00:00:00	2019-01-31 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
015997810643002	ABADIKURNIA CITRARASA							10710				Normal	2013-10-30 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
024763161915001	MITRA BAHAGIA CITRA MEDIKA							47725				PL/DE	2019-09-02 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
024763161951001	MITRA BAHAGIA CITRA MEDIKA							47725				Non Efektif	2019-12-30 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810652001	ABADIKURNIA CITRARASA							10710				Normal	2015-10-06 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
769578261618000	INTER BOGA LESTARI	JL HR MUHAMMAD NO 269 RT 003 RW 001	081216871210	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	56101	KOTA SURABAYA		JAWA TIMUR	Normal	2016-09-06 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
028230332921001	FEVA INDONESIA							41019				Normal	2017-03-09 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
031255490215001	GARIS HARMONI							46593				Normal	2016-08-10 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
025864414618000	JAYA MOBILINDO	RUKO VILLA BUKIT MAS JL AW SIAMIN BLOK RO NO 12 RT 004 RW 007	08977427144	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	77100	KOTA SURABAYA		JAWA TIMUR	Normal	2006-06-30 00:00:00	2006-07-03 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
751397589613000	BOOMAX CHEMICAL WORKS	JL. TELUK KUMAI NO 58-B RT 001 RW 002	62818331738	CV	BADAN			20291				Normal	2016-02-04 00:00:00	2016-05-12 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
312056617614001	WIJAYA PRATAMA NUSANTARA	JL BALIWERTI NO 109-B	62811326885	PT	BADAN	BUBUTAN	ALUN-ALUN CONTONG	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2014-02-21 00:00:00	\N	2021-05-24 00:00:00	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
312056617619000	WIJAYA PRATAMA NUSANTARA	JL H MOCH NOOR NO 11	081213149710	PT	BADAN	TAMBAKSARI	KAPASMADYA BARU	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2010-06-23 00:00:00	2010-08-25 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
015446529604000	GRADIAL PERDANAPERKASA	JL.SIMO TAMBAAN II/72-A RT.002 RW.009, SIMOMULYO	6287701537852	PT	BADAN	SUKOMANUNGGAL	SIMOMULYO	15201	KOTA SURABAYA		JAWA TIMUR	Normal	1992-02-28 00:00:00	1992-02-28 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
031255011201001	DEXA ARFINDO PRATAMA							46691				Normal	2021-11-30 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
022567143607000	MUTIARA TIMUR	TUNJUNGAN PLAZA UNIT NO. TG-05 06-08, JL EMBONG MALANG NO 1,3,5 RT 008 RW 010	082331776064	PT	BADAN	TEGALSARI	KEDUNGDORO	56101	KOTA SURABAYA		JAWA TIMUR	Normal	2003-10-09 00:00:00	\N	\N	user_2smbK2DuLxiD1AymLK6jA1JtOsG
023770845712001	DUTA RAMA							41019				PL/DE	2013-09-27 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
032945511529001	BANDARTRISULA	TOYAREJA, KAB. PURBALINGGA				PURBALINGGA	TOYAREJA	46637	KAB. PURBALINGGA			Normal	2020-07-22 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
015997810615001	ABADIKURNIA CITRARASA	JL DR IR H SOEKARNO RUKO PROMENADE MERR SURABAYA NO 18	085100622202	PT	BADAN	RUNGKUT	KEDUNG BARUK	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2018-12-03 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
025864240225001	GREENSOL INDONESIA							46620				Normal	2022-09-07 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
024545154606000	SINAR BARU PERKASA	JL KEDUNG COWEK NO 156-158	089503386474	CV	BADAN	BULAK	BULAK	25120	KOTA SURABAYA		JAWA TIMUR	Normal	2005-08-30 00:00:00	2005-09-16 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
025865908304001	SEMESTA MITRA SEJAHTERA							01461				Normal	2019-06-25 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
015283369941000	PELAYARAN NASIONAL EKALYA PURNAMASARI TBK.	GRAHA KCT LT. III JL WR SUPRATMAN NO 23 RT 001 RW 011	628125236140	PT	BADAN	TEGALSARI	DR. SOETOMO	50211	KOTA SURABAYA		JAWA TIMUR	Normal	1992-04-23 00:00:00	2002-02-08 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810604002	ABADIKURNIA CITRARASA	JL RAYA SATELIT INDAH BLOK AN NO 1C	0317349889	PT	BADAN	SUKOMANUNGGAL	TANJUNGSARI	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2017-08-08 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810619001	ABADIKURNIA CITRARASA	JL KAPAS KRAMPUNG BLOK KAV. D NO 75 RT 001 RW 004	085921337504	PT	BADAN	TAMBAKSARI	RANGKAH	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2015-12-16 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
025865908621001	SEMESTA MITRA SEJAHTERA							01461				Normal	2016-08-02 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
025865908622001	SEMESTA MITRA SEJAHTERA							01461				Normal	2017-01-27 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
758280093605000	KOMODITAS MULTI SAMUDERA	NGAGEL JAYA SELATAN LANTAI 1 BLOK - NO 15R RT 000 RW 000	082244495509	CV	BADAN	GUBENG	PUCANG SEWU	46491	KOTA SURABAYA		JAWA TIMUR	Normal	2016-04-13 00:00:00	2016-10-31 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
014973234618000	FREIGHT EXPRESS INDONESIA	JL MAYJEND SUNGKONO NO 204 RT 003 RW 004	62315670567	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	50131	KOTA SURABAYA		JAWA TIMUR	Normal	2005-08-29 00:00:00	2005-08-30 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
011081726624001	AMBICO							10710				Normal	2001-02-14 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
025865908648002	SEMESTA MITRA SEJAHTERA							01461				Normal	2022-05-24 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
025865908652001	SEMESTA MITRA SEJAHTERA							01461				PL/DE	2017-01-26 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
032945511324001	BANDARTRISULA							46637				PL/DE	2014-04-03 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
015997810649001	ABADIKURNIA CITRARASA	JL. PRESIDEN KH. ABDURAHMAN NO 17A/165A, CANDIMULYO, KAB. JOMBANG				JOMBANG	CANDIMULYO	10710	KAB. JOMBANG			Normal	2024-04-01 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015283369721001	PELAYARAN NASIONAL EKALYAPURNAMASARI							50131				Normal	2018-04-09 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810623005	ABADIKURNIA CITRARASA							10710				Normal	2021-11-30 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
016732794652001	BONAMI ABADI							47111				PL/DE	2012-03-22 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
019795103612001	WAHANA SENTRA NIAGA							46639				PL/DE	2014-08-15 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810631003	ABADIKURNIA CITRARASA							10710				Normal	2021-05-07 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
313919904614000	MULTI PET	JL TIDAR NO 194 RT 010 RW 007	0315481916	CV	BADAN	BUBUTAN	TEMBOK DUKUH	47754	KOTA SURABAYA		JAWA TIMUR	Normal	2011-10-07 00:00:00	2011-11-07 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
927407940611000	WIJAYA INDAH MULIA	INTILAND TOWER SUITES LEVEL 3, JL PANGLIMA SUDIRMAN KAV. 101-103	08999739333	PT	BADAN	GENTENG	EMBONG KALIASIN	46492	KOTA SURABAYA		JAWA TIMUR	Normal	2019-09-10 00:00:00	2019-11-05 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
014974612721001	INTERJAYA SURYA MEGAH							46599				Non Efektif	2015-04-01 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
086333952609000	STEPHANIE KANE ILHAM	MARGOREJO INDAH BLOK C NO 433 RT 003 RW 008	0318910434		OP	WONOCOLO	MARGOREJO	Z5000	KOTA SURABAYA	3,57802E+15	JAWA TIMUR	Normal	2009-02-24 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
031257876607000	INTIM BHAKTI NUGRAHA	JL RONGGOLAWE NO 8	081336589619	PT	BADAN	TEGALSARI	DR. SOETOMO	41011	KOTA SURABAYA		JAWA TIMUR	Normal	2011-05-04 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
031255490609000	GARIS HARMONI	JL JEMURSARI SELATAN BLOK IV NO 20 RT 001 RW 008	08113557038	PT	BADAN	WONOCOLO	JEMUR WONOSARI	46593	KOTA SURABAYA		JAWA TIMUR	Normal	2011-01-03 00:00:00	2011-02-22 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
026329219045001	TANJUNG PERAK SWADAYA							52296				Normal	2014-02-05 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
869172072613000	DEPO JANGKAR PASIFIK	JL KALIANGET NO 100 RT 002 RW 003	08113112232	PT	BADAN			46593				Normal	2018-12-26 00:00:00	2019-01-03 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
024764524615000	CIPTA PERSADA ANUGERAH NUSANTARA	JL KALIRUNGKUT NO 40	087840536165	PT	BADAN	RUNGKUT	KALIRUNGKUT	47301	KOTA SURABAYA		JAWA TIMUR	Normal	2006-09-07 00:00:00	2010-04-27 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
868674920619000	ANG EVELIN	JL RAYA KERTAJAYA INDAH NO 114 RT 003 RW 009	6281238973197		OP	MULYOREJO	MANYAR SABRANGAN	Z5000	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	2018-12-14 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
311840961604001	RAJAWALI BARA MAKMUR							46610				PL/DE	2018-04-23 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
024580169604000	CASA FIERO	JL RAYA SUKOMANUNGGAL JAYA A/11	081703581063	CV	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	47528	KOTA SURABAYA		JAWA TIMUR	Normal	2005-10-11 00:00:00	2006-01-26 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
014798235631000	BHAKTI TAMARA	JL RAYA MENGANTI NO. 479 ROYAL SQUARE LT.3	08816962905	PT	BADAN	WIYUNG	BABATAN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	1990-03-22 00:00:00	1990-03-22 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
723138236606000	WARDAYA ADHI KARSA	JL RAYA GUBENG NO 19 21 GRAHA SA LT 8 R 823A	0315048228	PT	BADAN	GUBENG	GUBENG	46521	KOTA SURABAYA		JAWA TIMUR	Normal	2015-02-25 00:00:00	2015-03-23 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
825355910613000	SUMBER MURNI SEJAHTERA	JL SIAGA BLOK C NO 23 RT 003 RW 004	08123259698	PT	BADAN	PABEAN CANTIAN	BONGKARAN	46419	KOTA SURABAYA		JAWA TIMUR	Normal	2017-08-15 00:00:00	2017-09-14 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
031255011122001	DEXA ARFINDO PRATAMA							46691				Normal	2020-11-27 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
097532170614000	NANIEK NOVIJANTI SUTANTO	JL RAYA KERTAJAYA INDAH 128 BLOK S NO 210 RT 003 RW 009	08165425352		OP	MULYOREJO	MANYAR SABRANGAN	Z5000	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	2006-04-17 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
751459181606000	MIX PRO INDONESIA	JL GALAXI BUMI PERMAI BLOK M2 NO 07 RT 001 RW 009	081335335999	PT	BADAN	SUKOLILO	MEDOKAN SEMAMPIR	42101	KOTA SURABAYA		JAWA TIMUR	Normal	2016-02-05 00:00:00	2016-07-19 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
257524165619000	YONGKI SUTEJO SALIM	JL.MANYAR KERTOARJO I/24, SURABAYA	082140856279		OP	MULYOREJO	MANYAR SABRANGAN		KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2009-06-04 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
061372264618000	JOHAN HIDAYAT	JL PAKIS ARGOSARI V BLOK B NO 10 RT 003 RW 002	62898765412		OP	DUKUH PAKIS	DUKUH PAKIS	68111	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	1997-04-14 00:00:00	\N	2017-03-27 00:00:00	user_2smagzuZma6eoLOdXEOAxgzjX7w
024769804615000	WIRA USAHA ABADI	GAYUNGSARI BARAT 3 NO 47-49 RT 002 RW 004	085104930701	PT	BADAN	GAYUNGAN	GAYUNGAN	05100	KOTA SURABAYA		JAWA TIMUR	Normal	2008-02-28 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
732291679611000	TOTAL SOLUSI MULTI INTEGRASI	JL MANYAR KERTA ADI NO 19B	0895382416428	PT	BADAN	MULYOREJO	MANYAR SABRANGAN	46511	KOTA SURABAYA		JAWA TIMUR	Normal	2015-06-10 00:00:00	2015-06-30 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
015997810606001	ABADIKURNIA CITRARASA	JL RAYA GUBENG NO 70 RT 003 RW 004	6285700652202	PT	BADAN	GUBENG	GUBENG	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2018-11-26 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
061653556614000	LAKSMONO KARTIKA	JL SEMARANG NO 136	08123292268		OP	BUBUTAN	BUBUTAN	70203	KOTA SURABAYA	3,57813E+15	JAWA TIMUR	Normal	1984-08-07 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
312796543618000	BONCAFE LESTARI	MANYAR KERTOARJO BLOK IX NO 2-8 RT 003 RW 011	5913832	PT	BADAN	GUBENG	MOJO	32906	KOTA SURABAYA		JAWA TIMUR	Normal	2011-02-11 00:00:00	2011-05-12 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
752243790807001	SURYA KEMENANGAN SEJAHTERA							46443				Normal	2017-09-11 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
857882625619000	HESTAMA JAYA MANDIRI	JL KEDINDING TENGAH JAYA TMR BLOK III NO 15 RT 003 RW 012	68123285422	PT	BADAN	KENJERAN	TANAH KALI KEDINDING	46631	KOTA SURABAYA		JAWA TIMUR	Normal	2018-09-07 00:00:00	2018-09-14 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
021760236648001	INNECO WIRA SAKTI HUTAMA							41011				Non Efektif	2019-05-06 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
015997810616001	ABADIKURNIA CITRARASA	JL SULTAN ISKANDAR MUDA RUKO NO.3 NO 12-14A	03199093638	PT	BADAN	SEMAMPIR	UJUNG	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2018-12-03 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
915676340611000	RISANDO GLOBAL INOVASI	JL KEMUNING NO 30	089681609750	CV	BADAN	GENTENG	KETABANG	47725	KOTA SURABAYA		JAWA TIMUR	Normal	2019-06-24 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
021143854618001	SURYA SEJAHTERA	JL. BABATAN UNESA NO 98	08155240578	CV	BADAN	WIYUNG	BABATAN	45401	KOTA SURABAYA		JAWA TIMUR	Normal	2014-08-12 00:00:00	\N	2019-08-01 00:00:00	user_2smaIfODFlzm8YDJfrstldzV5BA
025865908656001	SEMESTA MITRA SEJAHTERA							01461				Normal	2022-05-25 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
032945511307001	BANDARTRISULA							46637				Normal	2014-03-10 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
016732794416001	BON AMI ABADI							10710				Normal	2024-03-21 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810611001	ABADIKURNIA CITRARASA	GEDUNG PLAZA SURABAYA LT. I-2G JL PEMUDA NO 33-37	6285100652202	PT	BADAN	GENTENG	EMBONG KALIASIN	10710	KOTA SURABAYA		JAWA TIMUR	PL/DE	2017-01-31 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
020097630623001	TOENG MAKMUR							47593				Normal	2018-02-02 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810617001	ABADIKURNIA CITRARASA							10710				Normal	2000-10-18 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
667471965618000	DIAN STEFANI SUGIALAM	JL GRAHA FAMILY SELATAN BLOK AA NO 6 RT 004 RW 002	0818779543		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA	3,57814E+15	JAWA TIMUR	Normal	2014-03-24 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
014974612039001	INTERJAYA SURYA MEGAH							46900				PL/DE	1996-06-17 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
015997810651001	ABADIKURNIA CITRARASA							10710				Normal	2002-02-26 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
027913870035001	INTAN CHEMICAL							46651				Normal	2022-09-27 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
023555014512001	CORPUS PRIMA MANDIRI							70203				Normal	2018-10-23 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
024195570503001	ENVIRONEER							28221				Non Efektif	2019-07-04 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
022064869613000	WIJAYA SANTOSA JAYA	JL SONGOYUDAN NO 51	087853156634	CV	BADAN	PABEAN CANTIAN	KREMBANGAN UTARA	46447	KOTA SURABAYA		JAWA TIMUR	Normal	2003-03-21 00:00:00	2004-06-04 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
060310166048999	JOTI PRAKASH KHIANI							47711				PL/DE	2010-04-07 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
031255490625001	GARIS HARMONI							46593				Normal	2019-11-22 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
312701535614000	SURYA AGUNG PERKASA	JL DUKUH KUPANG TIMUR XVII/46 RT.005 RW.009, PAKIS	6285231325588	CV	BADAN	SAWAHAN	PAKIS	47412	KOTA SURABAYA		JAWA TIMUR	Normal	2011-01-20 00:00:00	2011-01-21 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
867035750604000	NOVEL OMEGA PROTEIN	PERUMAHAN FOREST MANSION BLOSSOM HILL JL RAYA MENGANTI A/15	082137468959	PT	BADAN	LAKARSANTRI	LIDAH WETAN	46206	KOTA SURABAYA		JAWA TIMUR	Normal	2018-12-05 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
312056617619001	WIJAYA PRATAMA NUSANTARA	JL KEDUNG COWEK NO 19	6281211746384	PT	BADAN	TAMBAKSARI	GADING	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2015-08-14 00:00:00	\N	2021-05-24 00:00:00	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
022088835028001	NOSREDNA							47724				Normal	2015-08-07 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
311784755424001	MEGA PRIMA MULIA							46100				Normal	2010-06-28 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
311784755643001	MEGA PRIMA MULIA							46900				Normal	2010-07-22 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
723138236331001	WARDAYA ADHI KARSA	JL JEND A THALIB RT 000 RW 000, TELANAIPURA, KOTA JAMBI				TELANAIPURA	TELANAIPURA	46521	KOTA JAMBI			Non Efektif	2019-12-18 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
015617665624001	PRASIDHA INTI JAYA							68111				Normal	2012-05-29 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
015446529645001	GRADIAL PERDANAPERKASA							15201				Normal	2019-07-25 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
014410245605000	JAYA BARU MALANTI	JL PERAK BARAT NO 23	085655285661	PT	BADAN	KREMBANGAN	PERAK BARAT	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2010-01-13 00:00:00	2010-03-29 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
312460058722001	SUMBER SARANA INDAH							46610				Normal	2015-06-05 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
031259807607000	PRIMA VOS LIGHT BLOCK	JL RAYA DARMO PERMAI SELATAN NO 33	082232070713	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46638	KOTA SURABAYA		JAWA TIMUR	Normal	2012-03-20 00:00:00	2012-04-24 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
021143854614001	SURYA SEJAHTERA	JL RAYA DUPAK NO 31	085536978378	CV	BADAN	BUBUTAN	JEPARA	45401	KOTA SURABAYA		JAWA TIMUR	Normal	2009-01-13 00:00:00	\N	2019-07-24 00:00:00	user_2smaIfODFlzm8YDJfrstldzV5BA
366935351619000	NICO AKIRA JOESOEF	JL DHARMAHUSADA INDAH BLOK 3 NO 27 RT 004 RW 009	081233387777		OP	MULYOREJO	MULYOREJO	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2011-06-21 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
752243790071001	SURYA KEMENANGAN SEJAHTERA							46443				Normal	2017-03-01 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
062586664618000	MOERTOMO BASOEKI	JL RAYA KUPANG BARU NO 23 RT 004 RW 005	2345356537		OP	DUKUH PAKIS	DUKUH KUPANG	70100	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	1986-08-12 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
020097630609001	TOENG MAKMUR	RAYA MARGOREJO INDAH BLOK A NO 136-146 RT 001 RW 008	081330681672	PT	BADAN	WONOCOLO	MARGOREJO	47593	KOTA SURABAYA		JAWA TIMUR	Normal	2011-11-08 00:00:00	\N	2021-05-24 00:00:00	user_2smagzuZma6eoLOdXEOAxgzjX7w
021758032418001	INDO JAYA PUTRA							46339				Non Efektif	2017-12-11 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
015997810609001	ABADIKURNIA CITRARASA	JL RAYA JEMURSARI BLOK A 9-10 NO 76	08113344786	PT	BADAN	WONOCOLO	JEMUR WONOSARI	10710	KOTA SURABAYA		JAWA TIMUR	Normal	1998-12-01 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810607001	ABADIKURNIA CITRARASA	JL KOMBES POL M.DURYAT NO 14-16 RT 001 RW 003	087862487055	PT	BADAN	TEGALSARI	TEGALSARI	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2004-09-03 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
021760236911001	INNECO WIRA SAKTI HUTAMA							41011				Normal	2021-06-22 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
032945511331001	BANDARTRISULA							46637				Normal	2017-07-12 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
019795103026001	WAHANA SENTRA NIAGA							46631				PL/DE	2007-01-16 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810628001	ABADIKURNIA CITRARASA							10710				Normal	2013-10-31 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
014973234124001	FREIGHT EXPRESS INDONESIA							50131				Normal	2021-07-09 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
312271570615000	BERKAT BERSAMA TEKNIK	JL RAYA WIGUNA UTARA NO 34 RT 003 RW 003	6285736572522	PT	BADAN	GUNUNG ANYAR	GUNUNG ANYAR TAMBAK	42206	KOTA SURABAYA		JAWA TIMUR	Normal	2010-09-02 00:00:00	2011-12-15 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
911430452609000	PROLIND TAMA INVESTA	GRAHA PENA LT. 15 SUITE 1503, JL. ACHMAD YANI NO 88	628999739333	PT	BADAN	GAYUNGAN	KETINTANG	64200	KOTA SURABAYA		JAWA TIMUR	Normal	2019-04-09 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
014974612413001	INTERJAYA SURYAMEGAH							46591				Normal	2008-01-16 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
015103195009001	UNITED AUTOMOBIL SEMBILAN PULUH UTAMA							77100				Normal	2018-02-09 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
015103195413002	UNITED AUTOMOBIL SEMBILAN PULUH UTAMA							49221				Normal	2011-07-19 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
023555014121001	CORPUS PRIMA MANDIRI							70100				Normal	2018-10-22 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
311784755614000	MEGA PRIMA MULIA	JL DUPAK RUKUN NO 108 RT 006 RW 005	081277686154	PT	BADAN	ASEM ROWO	ASEM ROWO	46610	KOTA SURABAYA		JAWA TIMUR	Normal	2010-04-06 00:00:00	2010-05-19 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
014974612631000	INTERJAYA SURYAMEGAH	JL RUNGKUT INDUSTRI III NO 45	6285100588827	PT	BADAN	GUNUNG ANYAR	RUNGKUT MENANGGAL	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
063438584614000	JIVAT HARDASMAL KHIANI	JL AGUNG INDAH I BLOK L.1 NO 8 RT 015 RW 016	62816929792		OP	TANJUNG PRIOK	SUNTER AGUNG	Z5000	KOTA ADM. JAKARTA UTARA	3,57813E+15	DKI JAKARTA	Normal	1986-08-26 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
210639910618000	MAKMUR JAYA	JL DUKUH KUPANG BLOK XX NO 1 RT 005 RW 002	081330410345	PT	BADAN	DUKUH PAKIS	DUKUH KUPANG	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2008-12-19 00:00:00	2010-03-23 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
021757612631000	SAPTA PERMATA	KOMPLEK PERKANTORAN MANGGA DUA BLOK A 10 NO. 15-16, JL JAGIR WONOKROMO NO 100	089611770515	PT	BADAN	WONOKROMO	JAGIR	46339	KOTA SURABAYA		JAWA TIMUR	Normal	2002-09-05 00:00:00	2002-09-30 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
060565298606000	SOEGENG HENDARTO	JL DHARMAHUSADA UTARA AA NO 23 24	62811338007		OP	GUBENG	MOJO	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Non Efektif	1984-12-14 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
011085016631000	PEGAWAI PELABUHAN INDONESIA	JL PERAK TIMUR NO 298 RT 002 RW 003	081234540682	KOP	BADAN			64141				Normal	1982-11-05 00:00:00	1992-05-06 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
016729626631000	WEISS TECH	JL. RAYA KEBARON NO 27 RT 002 RW 001	08113544720	PT	BADAN	TULANGAN	KEBARON	28299	KAB. SIDOARJO		JAWA TIMUR	Normal	1994-07-28 00:00:00	1996-09-23 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
025407354613001	KARUNIA PRIMA ENGINEERING	KO PENGAMPON SQUARE BLOK D NO 31 RT 000 RW 000	0313556111	PT	BADAN	PABEAN CANTIAN	BONGKARAN	47592	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2014-04-04 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
012322590631000	HALIM SARANA CAHAYA SEMESTA	JL HR. MUHAMMAD NO 41	08123029027	PT	BADAN	SUKOMANUNGGAL	PUTAT GEDE	46651	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
705413839063001	MEDIA PUTRA NUSANTARA							47919				Normal	2022-05-23 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
019293463615000	WANA INDAH ASRI	KOMPLEK LANDMARK DELTA C-8, PANJANGJIWO PERMAI RT 002 RW 004	08113164813	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	46900	KOTA SURABAYA		JAWA TIMUR	Normal	1999-07-20 00:00:00	1999-07-20 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
031255011542002	DEXA ARFINDO PRATAMA							46691				PL/DE	2013-02-22 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
020493367822001	INTISHAR KARYA							71101				Normal	2020-02-06 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
761400092642001	AGROTERA INTEGRIA SOLUSINDO							46530				Normal	2017-07-31 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
950484071619000	MAHESWARA WIRASANA KONSTRUKSI	JL MULYOREJO NO 64 RT 004 RW 002	6281333377075	CV	BADAN	MULYOREJO	MULYOREJO	42101	KOTA SURABAYA		JAWA TIMUR	Normal	2020-06-16 00:00:00	2020-09-21 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
060565298606001	SOEGENG HENDARTO	-			OP	GUBENG	MOJO	96990	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	2009-02-18 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
015928971618000	MANDALINDO TATAPERKASA	JL DUKUH KUPANG BARAT I NO 194/196	089651556536	PT	BADAN	DUKUH PAKIS	DUKUH KUPANG	31001	KOTA SURABAYA		JAWA TIMUR	Normal	1994-02-25 00:00:00	1994-03-12 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
703935312648001	MULTI BANGUN INDONESIA	JL. NASIONAL DUSUN SUNDULAN RT 000 RW 000, SUMBERAGUNG, KAB. TUBAN				PLUMPANG	SUMBERAGUNG	46634	KAB. TUBAN			Normal	2024-09-13 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
015997810619002	ABADIKURNIA CITRARASA	JL RAYA MULYOSARI BLOK PFF NO 78-E	081330022380	PT	BADAN	MULYOREJO	KALISARI	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2017-01-31 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
021704028618000	SANG WON	JL PABRIK ES KASRI	08113541386	PT	BADAN	PANDAAN	TAWANGREJO	46636	KAB. PASURUAN		JAWA TIMUR	Normal	2004-01-19 00:00:00	2018-06-26 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
016823023606000	SATIVA KARYAMANDIRI	JL RAYA GUBENG NO 68A-68B	0895342021319	PT	BADAN	GUBENG	GUBENG	47722	KOTA SURABAYA		JAWA TIMUR	Normal	2004-08-30 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
015997810618001	ABADIKURNIA CITRARASA	RUKO RICH PALACE JL MAYJEND SUNGKONO BLOK R8-R9 NO 149-151	083831229758	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2004-09-02 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
025865908603001	SEMESTA MITRA SEJAHTERA							01461				Normal	2017-02-06 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
015325392611000	MARGABUMI MATRARAYA	KOMPLEK ANDHIKA PLAZA JL SIMPANG DUKUH BLOK DD NO 38 RT 002 RW 009	0315313296	PT	BADAN	GENTENG	KAPASARI	52213	KOTA SURABAYA		JAWA TIMUR	Normal	2001-04-04 00:00:00	1991-03-31 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810631002	ABADIKURNIA CITRARASA	RS. ADI HUSADA UNDAAN WETAN, JL UNDAAN WETAN NO 40-44	08123157702	PT	BADAN	GENTENG	KETABANG	10710	KOTA SURABAYA		JAWA TIMUR	PL/DE	2019-11-20 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
700352248613000	ALUR PELAYARAN BARAT SURABAYA	PRAPAT KURUNG UTARA NO 58 RT 003 RW 010	082146655254	PT	BADAN			42914				Normal	2014-04-24 00:00:00	2014-05-22 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810631000	ABADIKURNIA CITRARASA	JL KERTAJAYA NO 63	0818306375	PT	BADAN	GUBENG	AIRLANGGA	10710	KOTA SURABAYA		JAWA TIMUR	Normal	1993-03-17 00:00:00	1993-04-15 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
257798124606000	DEBORA WAHJUTIRTO TANOYO	JL MANYAR KERTOARJO BLOK 6 NO 21 RT 006 RW 011	081212529575		OP	GUBENG	MOJO	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	2009-06-10 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
014797898951001	SARANABHAKTI TIMUR							50131				Non Efektif	2016-03-14 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
025865908656002	SEMESTA MITRA SEJAHTERA							01461				Normal	2022-05-25 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
028405801528001	BHAKTI INSAN KAMIL							85440				Normal	2014-03-03 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
032945511416001	BANDARTRISULA							46637				Normal	2014-02-18 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
040255267607001	OEI BENNY PRAKOSO	TUNJUNGAN PLAZA STAND Z01-012.012E,014A JL BASUKI RAHMAT NO 08-12 RT 008 RW 010	087703330788		OP	TEGALSARI	KEDUNGDORO	47735	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	2003-04-17 00:00:00	\N	2021-05-24 00:00:00	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810603005	ABADIKURNIA CITRARASA	BASUKI RAHMAT NO 522 RT 011 RW 003, KRIAN, KAB. SIDOARJO				KRIAN	KRIAN	10710	KAB. SIDOARJO			Normal	2024-10-16 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
011331733654001	KEBON AGUNG							10721				Normal	1985-06-04 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810603002	ABADIKURNIA CITRARASA							10710				PL/DE	2016-10-28 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
020097630428001	TOENG MAKMUR							47593				Normal	2012-02-03 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
022081004504001	DIRGANTARA SURYA PERSADA							49431				Non Efektif	2011-10-12 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
024545154602001	SINAR BARU PERKASA							25120				Normal	2007-05-07 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
014974612805001	INTERJAYA SURYA MEGAH							46591				PL/DE	2009-05-04 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
015103195542001	UNITED AUTOMOBIL SEMBILAN PULUH UTAMA							77100				Non Efektif	2014-08-21 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
022568448006001	TURBO TECH INDONESIA							82990				Normal	2017-12-21 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
724871314607000	GOLDEN MULTI SARANA	JL RAYA DARMO NO. 54-56, KOMPLEK DARMO SQUARE LT.5 BLOK B NO 16	082239701745	PT	BADAN	TEGALSARI	DR. SOETOMO	46620	KOTA SURABAYA		JAWA TIMUR	Normal	2015-03-16 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
026332775605000	SETIAWAN MITRA UTAMA LOGISTIK	JL KREMBANGAN BARAT NO 26C RT 002 RW 011	082139126812	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2010-01-11 00:00:00	2014-02-12 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
840647960614000	ZORTEA ASIA PASIFIC	JL. MUTIARA TAMBAK LANGON BLOK D NO 33 RT 001 RW 005	081231221530	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	46651	KOTA SURABAYA		JAWA TIMUR	Normal	2018-02-15 00:00:00	2018-05-21 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
316806603613000	MERANTAU MAS	LONG BEACH BLOK S.11 NO 32 RT 012 RW 008	089699261128	PT	BADAN	MULYOREJO	KALISARI	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2013-02-04 00:00:00	2016-03-30 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
315222612615001	GUNAWANGSA KREASINDO	JL RAYA KEDUNGBARUK NO 96	6281231973919	PT	BADAN	RUNGKUT	KEDUNG BARUK	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2014-06-09 00:00:00	\N	2021-05-24 00:00:00	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
751459181924001	MIX PRO INDONESIA							42101				Normal	2022-04-27 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
762796688615000	INSPIRASI DUNIA MEDIA	JL PALMERAH UTARA NO 62A RT 003 RW 006	081331016433	PT	BADAN	PAL MERAH	PALMERAH	73100	KOTA ADM. JAKARTA BARAT		DKI JAKARTA	Normal	2016-06-01 00:00:00	2016-06-16 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
024761264615000	INDAH MAYANG SARI SEJAHTERA	JL KERTAJAYA INDAH V BLOK F NO 331 RT 000 RW 000	031-8475614	PT	BADAN	MULYOREJO	MANYAR SABRANGAN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2005-09-23 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
762591535504000	BERKAH MULTI CARGO	JL. PERAK TIMUR NO.610 GEDUNG B PELINDO REGIONAL III LT.4 RT 002 RW 003	0313282216	PT	BADAN			52291				Normal	2016-05-30 00:00:00	2017-12-15 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
341364669606000	ROBERT GUNAWAN	JL MANYAR KERTOARJO 8 NO 47 RT 004 RW 011	082330491508		OP	GUBENG	MOJO	Z5000	KOTA SURABAYA	3,17402E+15	JAWA TIMUR	Normal	2010-02-12 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
062912894611000	WIDJOJO SOEJONO	JL EMBONG PLOSO NO 8-10	0844799277943		OP	GENTENG	EMBONG KALIASIN	70100	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	1985-05-21 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
020493367702001	INTISHAR KARYA	RAMAYADI <PANTAI RAMAYADI> RT 000 RW 000, JAWAI LAUT, KAB. SAMBAS				JAWAI SELATAN	JAWAI LAUT	71101	KAB. SAMBAS			Normal	2022-06-04 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
015617665426001	PRASIDHA INTI JAYA							68111				Normal	2014-03-25 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
019293463504001	WANA INDAH ASRI							46900				Normal	2019-11-07 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
022084735614000	PRIMA INDOJAYA MANDIRI	JL RAYA DUKUH KUPANG NO 93	0882006768552	PT	BADAN	SAWAHAN	PAKIS	42101	KOTA SURABAYA		JAWA TIMUR	Normal	2002-11-15 00:00:00	2006-10-17 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
011329158642001	TIMUR MEGAH STEEL							25952				Normal	1996-04-24 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
012318598722001	SURYA MAHAKAM AGUNG CHEMICAL INDUSTRI COMPANY							20119				Normal	1985-05-29 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
015997810604001	ABADIKURNIA CITRARASA	JL MANUKAN TAMA NO 141-F RT 002 RW 008	0317415577	PT	BADAN	SAMBIKEREP	LONTAR	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2017-08-08 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
028258770615000	MAHAKAM MULTI LESTARI	JL. RAYA JUANDA PARK RESIDENCE PERMATA JUANDA BLOK B NO 01	085104930701	PT	BADAN	SEDATI	SEDATIAGUNG	05100	KAB. SIDOARJO		JAWA TIMUR	Normal	2008-09-24 00:00:00	2021-08-03 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
752205153604000	DONALD PRAYOGO	JL RAYA SATELIT SELATAN BLOK BLOK IN/39 RT 011 RW 003	081234579281		OP	SUKOMANUNGGAL	TANJUNGSARI	Z5000	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	2016-02-15 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
822144838611000	TIRTOBUMI PROPERTI INDONESIA	KOMPLEK ANDHIKA PLAZA BLOK 38 DD JL. SIMPANG DUKUH NO 38-40	628113404998	PT	BADAN	GENTENG	GENTENG	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2017-06-20 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810619003	ABADIKURNIA CITRARASA	GEDUNG STASIUN SURABAYA GUBENG JL GUBENG MASJID RT 001 RW 007	081233345306	PT	BADAN	TAMBAKSARI	PACARKELING	10710	KOTA SURABAYA		JAWA TIMUR	PL/DE	2017-09-22 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
021703137606000	ADIL JUWITA	JL GALAXI BUMI PERMAI BLOK A 2 NO 7	6281332060525	PT	BADAN	SUKOLILO	KEPUTIH	86103	KOTA SURABAYA		JAWA TIMUR	Normal	2012-03-09 00:00:00	2012-11-09 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
016825747609000	SATIVA WIRO SAMPURNO	JL KUTAI NO 22 RT 001 RW 005	089661683088	PT	BADAN	WONOKROMO	DARMO	46900	KOTA SURABAYA		JAWA TIMUR	Normal	1994-12-26 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
012330817643001	SURYA MULTI INDOPACK							17022				Normal	2004-07-20 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
025865908649004	SEMESTA MITRA SEJAHTERA							01461				Normal	2022-05-23 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
032945511303001	BANDARTRISULA							46637				Normal	2017-10-20 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
014973234801001	FREIGHT EXPRESS INDONESIA	JL YOS SUDARSO NO 221 B, KOTA MAKASSAR				UJUNG TANAH	TABARINGAN	50134	KOTA MAKASSAR			Normal	2003-05-12 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810653001	ABADIKURNIA CITRARASA	JL. VETERAN NO 64 RT 000 RW 000, KEPANJEN KIDUL, KOTA BLITAR				KEPANJEN KIDUL	KEPANJEN KIDUL	10710	KOTA BLITAR			Normal	2024-04-01 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810623001	ABADIKURNIA CITRARASA							10710				Normal	2017-02-16 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810626001	ABADIKURNIA CITRARASA							10710				Normal	2016-05-18 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
012266649643001	HASTA KARYA PERDANACABANG SIDOARJO							46491				PL/DE	1993-10-21 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
020097630423001	TOENG MAKMUR							47593				Normal	2022-07-20 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810612002	ABADIKURNIA CITRARASA							10710				Normal	2016-02-17 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
022568448614000	TURBO TECH INDONESIA	JL SENTRAL MARGOMULYO PERMAI BLOK B NO 12-A RT 015 RW 002	0317499055	PT	BADAN	SUKOMANUNGGAL	TANJUNGSARI	82990	KOTA SURABAYA		JAWA TIMUR	Normal	2004-11-29 00:00:00	2005-05-03 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
015997810644001	ABADIKURNIA CITRARASA							10710				Normal	2013-11-21 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015103195048001	UNITED AUTOMOBIL SEMBILAN PULUH UTAMA							49421				Non Efektif	2011-03-29 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
019131945041002	TAGAYA FLORINDO INTERNATIONAL							52291				PL/DE	2007-12-10 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
012083598615000	KARYAWAN UNILEVER INDONESIA SURABAYA	JL RUNGKUT INDUSTRI IV NO 5-11	08973812599	KOP	BADAN	TENGGILIS MEJOYO	KUTISARI	66114	KOTA SURABAYA		JAWA TIMUR	Normal	1901-01-01 00:00:00	2000-10-27 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
028230332656001	FEVA INDONESIA							42930				Normal	2012-01-02 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
028258770728001	MAHAKAM MULTI LESTARI							05100				Normal	2014-05-23 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
029096914606000	GRESIK DOCKING INDONESIA	JL MEDOKAN SEMAMPIR INDAH 85	6282264479287	PT	BADAN	SUKOLILO	MEDOKAN SEMAMPIR	47920	KOTA SURABAYA		JAWA TIMUR	Normal	2009-08-28 00:00:00	2011-03-07 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
031255490601001	GARIS HARMONI							46593				Normal	2016-03-11 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
683571632604000	ENDY OSCAR PRAYOGO	JL DARMO HARAPAN 1 / ISEN NO 11 RT 007 RW 004	08113566921		OP	SUKOMANUNGGAL	TANJUNGSARI	Z5000	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	2009-01-20 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
210639910514001	MAKMUR JAYA							46599				PL/DE	2010-11-05 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
021137500911001	VICTORY INTERNATIONAL FUTURES							66191				Non Efektif	2014-01-24 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
086306321609000	MICHAEL JONAN	JL KETINTANG PERMAI BD/11 RT.002 RW.011, KARAH BLOK BD NO 11 RT 002 RW 011	083872708700		OP	JAMBANGAN	KARAH	Z5000	KOTA SURABAYA	3,57823E+15	JAWA TIMUR	Normal	2007-03-09 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
016815128609000	JAWA POS RADAR	GEDUNG GRAHA PENA JL. A YANI NO 88 RT 003 RW 008	08563255359	PT	BADAN	GAYUNGAN	KETINTANG	46422	KOTA SURABAYA		JAWA TIMUR	Normal	2002-02-08 00:00:00	2002-02-11 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
018346544606000	ADHIBUSANA KARYA FLORENTINE	JL DHARMAHUSADA UTARA VII NO 11	0817568000	CV	BADAN	GUBENG	MOJO	14112	KOTA SURABAYA		JAWA TIMUR	Normal	1999-03-24 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
316177237604000	TOSHIN PRIMA FINE BLANKING	JL MARGOMULYO INDAH BLOK C-1	62818151138	PT	BADAN	TANDES	MANUKAN WETAN	29300	KOTA SURABAYA		JAWA TIMUR	Normal	2012-10-29 00:00:00	2012-11-30 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
014251888624001	KOKI INDOCAN							10393				Normal	2001-03-02 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
031255011428001	DEXA ARFINDO PRATAMA							46691				Normal	2021-01-27 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
014296099643001	INDOXIDE							20299				Normal	2010-02-23 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
020493367655002	INTISHAR KARYA							71101				Normal	2019-12-18 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
312701535625001	SURYA AGUNG PERKASA							47412				Non Efektif	2015-12-03 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
316714252454001	ADIL SENTOSA ABADI							52292				Normal	2019-09-23 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
033375023604000	MULTI BANGUN SEJAHTERA	RAYA LONTAR NO.23-25 RT 004 RW 002	085103039678	PT	BADAN	SAMBIKEREP	LONTAR	46631	KOTA SURABAYA		JAWA TIMUR	Normal	2013-11-26 00:00:00	2014-01-24 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
752243790455001	SURYA KEMENANGAN SEJAHTERA							46443				PL/DE	2021-05-08 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
064600984606000	AMAN RASGIONO	JL PUCANG ANOM TIMUR NO 9 RT 004 RW 006	089630921111		OP	GUBENG	KERTAJAYA	45403	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	1989-03-14 00:00:00	1992-02-29 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
457799955619000	RHESA NORATO JOESOEF	JL DHARMAHUSADA INDAH BLOK 3 NO 27 RT 004 RW 009	081233397777		OP	MULYOREJO	MULYOREJO	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2012-06-25 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
023773997607001	BINTANG INDO JAYA	TUNJUNGAN PLAZA PE LG 27-29 JL BASUKI RAHMAT NO 7-12	081252351690	PT	BADAN	TEGALSARI	KEDUNGDORO	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2012-02-16 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
066105552607000	EDHI SUWINO SUGIJANTO	JL TEGALSARI NO 34	081330707840		OP	TEGALSARI	TEGALSARI	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Non Efektif	1990-10-03 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
025865908629001	SEMESTA MITRA SEJAHTERA							01461				Normal	2022-05-23 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
022081004614000	DIRGANTARA SURYA PERSADA	KOMPLEK PERGUDANGAN MUTIARA JL TAMBAK LANGON INDAH NO 24	6285708880908	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2008-11-05 00:00:00	2009-06-19 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
011081726032001	AMBICO							46900				PL/DE	1987-02-27 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
025865908649006	SEMESTA MITRA SEJAHTERA							01461				Normal	2022-05-23 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
025865908649003	SEMESTA MITRA SEJAHTERA							01461				Normal	2022-05-23 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
032945511401001	BANDARTRISULA							46100				Normal	2014-05-21 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
032945511428001	BANDARTRISULA							46637				PL/DE	2014-04-03 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
811072313619000	NAGAMAS MAKMUR BERSAMA	RUKO PAKUWON SQUARE BLOK AA2 NO 16	0315952434	CV	BADAN	MULYOREJO	KEJAWAAN PUTIH TAMBAK	45301	KOTA SURABAYA		JAWA TIMUR	Normal	2017-01-26 00:00:00	2017-05-04 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
014975809614000	PERMATA CITRANUSA	JL TANJUNGSARI NO 24 RT 000 RW 000	085954670360	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	03112	KOTA SURABAYA		JAWA TIMUR	Normal	1990-07-18 00:00:00	2020-09-22 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
011331733632002	PT KEBON AGUNG - PG TRANGKIL							10721				PL/DE	2023-12-31 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
014661565613000	BINATAMA SAMUDERA SURYA	PERAK TIMUR 54, PERAK TIMUR	081220754431	PT	BADAN			50141				Normal	1990-01-05 00:00:00	2006-02-08 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810603003	ABADIKURNIA CITRARASA							10710				Normal	2021-06-02 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810612001	ABADIKURNIA CITRARASA							10710				Normal	2007-01-30 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
821647344614000	BUMI INDONESIA GEMILANG	JL MARGOMULYO NO 63 RT 001 RW 001	6285850875450	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	45301	KOTA SURABAYA		JAWA TIMUR	Normal	2017-06-12 00:00:00	2018-04-17 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
725240154607000	GRAHA BANGUN DEVELOPMENT	KOMPLEK DARMO SQUARE B-17 LT.3  JL RAYA DARMO NO 54-56 RT 003 RW 010	081333888650	PT	BADAN	TEGALSARI	DR. SOETOMO	41013	KOTA SURABAYA		JAWA TIMUR	Normal	2015-03-20 00:00:00	2020-12-03 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
014974612416001	INTERJAYA SURYAMEGAH							46599				Normal	2003-03-17 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
314264961618000	MUTIARA MULIA RAYA	JL SIMPANG DARMO PERMAI SELATAN BLOK 4 NO 49 RT 002 RW 008	082257425634	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46699	KOTA SURABAYA		JAWA TIMUR	Normal	2011-11-30 00:00:00	2012-05-14 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
015997810654001	ABADIKURNIA CITRARASA							47222				Normal	2010-08-16 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
023555014906001	CORPUS PRIMA MANDIRI							70100				Normal	2019-01-02 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
026329219414001	TANJUNG PERAK SWADAYA							52104				Normal	2015-03-24 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
014296099631000	INDOXIDE	JL SERUNI NO 33 RT 007 RW 009	0811308701	PT	BADAN	GENTENG	KETABANG	20299	KOTA SURABAYA		JAWA TIMUR	Normal	2007-09-04 00:00:00	2007-09-04 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
060317088613001	L. AMIE SUTJAHJO	JL LAKSDA M NASIR NO 14 RT 005 RW 001	0816528117		OP	PABEAN CANTIAN	KREMBANGAN UTARA	52211	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	2011-05-26 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
078698107614000	RIANA SANDALAPU	JL SEKOLAHAN 29	082232321787		OP	ASEM ROWO	ASEM ROWO	Z5000	KOTA SURABAYA	3,57829E+15	JAWA TIMUR	Normal	2005-07-27 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
668407919606000	CHELIYONO JENARDI TEJO	JL PUCANG ANOM TIMUR NO 9 RT 004 RW 006	6282131432771		OP	GUBENG	KERTAJAYA	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	2014-04-04 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
021137500952001	VICTORY INTERNATIONAL FUTURES							42918				PL/DE	2014-02-24 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
740598891604000	NATURAL JAVA SPICE	JL RAYA BUMI MASPION I KAV.5 NO 14	6281131188820	PT	BADAN	BENOWO	ROMOKALISARI	10772	KOTA SURABAYA		JAWA TIMUR	Normal	2015-09-28 00:00:00	2015-12-31 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
031255011015001	DEXA ARFINDO PRATAMA							46691				Normal	2016-06-08 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
311784755429001	MEGA PRIMA MULIA							46610				Normal	2020-06-26 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
015928971602001	MANDALINDO TATAPERKASA	JL RAYA PERNING NO 157-158 RT 000 RW 000, KAB. MOJOKERTO				JETIS	PERNING	31001	KAB. MOJOKERTO			Normal	2001-08-01 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
015446529624001	GRADIAL PERDANAPERKASA							15201				Normal	2009-01-09 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
810150706606000	AMERICAN ORTHODONTICS INDONESIA	RUKO MEZZANINE B.07 JL NGINDEN SEMOLO NO.38-40 RT 004 RW 001	6281231484463	PT	BADAN	SUKOLILO	NGINDEN JANGKUNGAN	46691	KOTA SURABAYA		JAWA TIMUR	Normal	2017-01-17 00:00:00	2018-08-08 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
019293463913001	WANA INDAH ASRI							46900				Normal	2014-04-25 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
020493367732001	INTISHAR KARYA							71101				Non Efektif	2021-06-25 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
719151466615001	ARENA BAN INDONESIA	JL RUNGKUT ASRI TIMUR NO 36-38 RT 006 RW 009	03187856209	CV	BADAN	RUNGKUT	RUNGKUT KIDUL	45301	KOTA SURABAYA		JAWA TIMUR	Normal	2019-07-29 00:00:00	\N	2019-10-07 00:00:00	user_2smapMhjztr0ymBCpAvYMtdPvnK
024769960602001	HAVANNA TEGUH PERTIWI							23953				Normal	2014-03-19 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
016732794604001	BON AMI ABADI	RUKO CITRALAND GATEWAY JUNCTION BLOK BLOK TL 6 NO 5 RT 004 RW 013	03151162590	PT	BADAN	SAMBIKEREP	LONTAR	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2013-11-25 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
752243790501001	SURYA KEMENANGAN SEJAHTERA							46443				Normal	2019-02-20 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
752243790521001	SURYA KEMENANGAN SEJAHTERA							46443				Normal	2017-03-09 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
021760236543001	INNECO WIRA SAKTI HUTAMA							41011				Normal	2020-02-03 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
021760236625001	PT. INNECO WIRA SAKTI HUTAMA							41012				PL/DE	2011-07-04 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
025865908626001	SEMESTA MITRA SEJAHTERA							01461				Normal	2016-07-20 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
025865908642001	SEMESTA MITRA SEJAHTERA							01461				Normal	2022-05-24 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
839799855029001	WIRATECH JAYA MANDIRI	JL. PEMBANGUNAN III NO 2 C RT 013 RW 001, PETOJO UTARA, JAKARTA PUSAT				GAMBIR	PETOJO UTARA	47793	JAKARTA PUSAT			Normal	2022-10-31 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
012330817414001	SURYA MULTI INDOPACK							22220				Normal	2004-03-04 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
187386669606000	HERMANTO GUNAWAN	JL MANYAR TIRTOASRI BLOK 8 NO 1 RT 007 RW 004	085342209470		OP	SUKOLILO	MENUR PUMPUNGAN	47919	KOTA SURABAYA	8,27106E+15	JAWA TIMUR	Normal	2005-09-30 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
028172344042001	BINTANG LAUT PLATINUM							52291				PL/DE	2010-10-13 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
032945511421001	BANDARTRISULA							46637				Normal	2017-04-05 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
020097630618001	TOENG MAKMUR	JL PLAZA GRAHA FAMILY BLOK BLOK C NO 20	081330681672	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	47593	KOTA SURABAYA		JAWA TIMUR	Normal	2011-10-26 00:00:00	\N	2020-12-03 00:00:00	user_2smagzuZma6eoLOdXEOAxgzjX7w
031259807809001	PRIMA VOS LIGHT BLOCK	PATTENE 88 BUSINESS PARK BLOK V NO 33 RT 000 RW 000, PA"BENTENGANG, KAB. MAROS				MARUSU	PA"BENTENGANG	46638	KAB. MAROS			Non Efektif	2023-12-22 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810623002	ABADIKURNIA CITRARASA							10710				Normal	2017-02-16 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810626002	ABADIKURNIA CITRARASA							10710				Normal	2018-03-08 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
019795103436001	WAHANA SENTRA NIAGA							46639				Normal	2018-06-08 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810629001	ABADIKURNIA CITRARASA							10710				Normal	2009-08-05 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
028174639613000	RUKUN MAKMUR	JL KHM MANSYUR NO 25-I	083830421731	CV	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	47243	KOTA SURABAYA		JAWA TIMUR	Normal	2010-05-20 00:00:00	2011-02-16 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
022078307615000	KADIPO MITRA SEHATI	RUNGKUT ASRI BARAT 12/29, RUNGKUT KIDUL	6282331772276	CV	BADAN	RUNGKUT	RUNGKUT KIDUL	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2003-11-20 00:00:00	2005-08-23 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
241721448604000	ARIS UTAMA	JL DARMO HARAPAN TIMUR 2 BLOK RN NO 2 RT 008 RW 004	628563052953		OP	SUKOMANUNGGAL	SUKOMANUNGGAL	Z5000	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	2007-05-04 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
015103195124001	UNITED AUTOMOBIL SEMBILAN PULUH UTAMA							49221				Non Efektif	2016-11-16 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
019131945022001	TAGAYA FLORINDO INTERNATIONAL							52291				PL/DE	2004-05-10 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
023555014012001	CORPUS PRIMA MANDIRI							70100				Normal	2018-10-17 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
011329430631000	KEDAWUNG SETIA CORRUGATED CARTON BOX INDUSTRIAL	JL MASTRIP NO 862 RT 002 RW 002	0317661983	PT	BADAN	KARANG PILANG	WARU GUNUNG	17022	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
021137500607001	VICTORY INTERNATIONAL FUTURES	JL KARTINI NO 84 RT.000 RW.000, DR.SUTOMO	6285730300053	PT	BADAN	TEGALSARI	DR. SOETOMO	66142	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2011-12-20 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
021137500611000	VICTORY INTERNATIONAL FUTURES	PAKUWON CENTER-SUPERBLOK TUNJUNGAN CITY OFFICE BUILDING LT 15 UNIT 5,6,7 JL EMBONG MALANG NO 1-3-5	085852138841	PT	BADAN	TEGALSARI	KEDUNGDORO	66142	KOTA SURABAYA		JAWA TIMUR	Normal	2003-05-06 00:00:00	2003-05-08 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
748924834614000	REJEKI JAYA MAKMUR	JL MARGOMULYO PERMAI BLOK AG NO 6 RT 001 RW 001	6281234512508	CV	BADAN	ASEM ROWO	TAMBAK SARIOSO	47794	KOTA SURABAYA		JAWA TIMUR	Normal	2016-01-12 00:00:00	2017-02-23 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
734100100619000	KELVIN HARTONO PUTRA	JL DHARMAHUSADA INDAH BLOK 2 NO L-171 RT 005 RW 009	08155264656		OP	MULYOREJO	MULYOREJO	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	2015-07-03 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
717082390619000	DUA BERKAH TEKNIK	JL BABATAN PANTAI UTARA BLOK XI NO 34 RT 007 RW 001	6285854825774	PT	BADAN	MULYOREJO	DUKUH SUTOREJO	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2014-12-18 00:00:00	2015-02-24 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
022066872417001	SURYA TIMUR LINE							50131				Normal	2016-11-22 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
317666477606000	ARTHA ADIPERSADA	JL NGAGEL JAYA SELATAN B 27-28 RT 010 RW 008	03199444614	PT	BADAN	GUBENG	BARATAJAYA	32402	KOTA SURABAYA		JAWA TIMUR	Normal	2013-05-24 00:00:00	2014-10-23 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
017159179605000	TRIGUNA SAMUDRATRANS	JL TANJUNG BATU BLOK - NO 15 Q-R RT 003 RW 008	085101151174	PT	BADAN	KREMBANGAN	PERAK BARAT	52291	KOTA SURABAYA		JAWA TIMUR	Normal	1995-05-03 00:00:00	1995-08-15 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
800754582604000	ROBERT WIJAYA	JL RAYA SATELIT UTARA BLOK BLOK CN/4 RT 006 RW 003	08885306629		OP	SUKOMANUNGGAL	TANJUNGSARI	46521	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	2016-09-16 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
019293463602001	WANA INDAH ASRI	DSN WONOSARI RT 006 RW 003, WONOSARI, KAB. MOJOKERTO				NGORO	WONOSARI	46900	KAB. MOJOKERTO			Normal	2019-10-21 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
318111366613000	APERINDO PRIMA MANDIRI	JL PERAK TIMUR BLOK A9-A10 NO 512 RT 002 RW 003	082228448880	PT	BADAN			78101				Normal	2013-07-29 00:00:00	2013-08-28 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
014296099043002	INDOXIDE							20299				PL/DE	2011-11-08 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
020493367601001	INTISHAR KARYA							71101				Normal	2021-04-08 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
023164429951001	PAPUA SEJAHTERA							47192				Normal	2017-01-27 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
024769960615000	FORTUNA TEGUH PERTIWI	JL RUNGKUT INDUSTRI III NO 56	08818465156	PT	BADAN	GUNUNG ANYAR	RUNGKUT MENANGGAL	23953	KOTA SURABAYA		JAWA TIMUR	Normal	2008-03-12 00:00:00	2008-09-10 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
025865908313001	SEMESTA MITRA SEJAHTERA							01461				Normal	2019-10-16 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
752243790518001	SURYA KEMENANGAN SEJAHTERA							46443				Normal	2016-03-28 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
752243790657001	SURYA KEMENANGAN SEJAHTERA							46443				Normal	2023-11-16 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
021760236621001	INNECO WIRA SAKTI HUTAMA							41011				Normal	2020-08-28 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
017396177611000	MULTICIPTA BETON PANCABANGUN	JL PANGLIMA SUDIRMAN NO 73	6281259728648	PT	BADAN	GENTENG	EMBONG KALIASIN	46639	KOTA SURABAYA		JAWA TIMUR	Normal	1997-11-27 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
016732794619002	BON AMI ABADI	JL DHARMAHUSADA INDAH I BLOK B NO 154	0315058108	PT	BADAN	MULYOREJO	MULYOREJO	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2015-09-02 00:00:00	\N	2021-05-24 00:00:00	user_2smagzuZma6eoLOdXEOAxgzjX7w
369990015604000	KENT PRAWIRA UTAMA	JL DARMO HARAPAN TIMUR 2 BLOK RN NO 2 RT 008 RW 004	6281234527777		OP	SUKOMANUNGGAL	TANJUNGSARI	Z5000	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	2011-09-06 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
317310753606000	KREASI CITRA PERMATA	JL DHARMAHUSADA INDAH BARAT GG III NO 64	6281330354888	PT	BADAN	GUBENG	MOJO	41012	KOTA SURABAYA		JAWA TIMUR	Normal	2013-04-10 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
014797898609000	SARANABHAKTI TIMUR	JL KALIANAK NO 51-P RT 000 RW 000	081331747593	PT	BADAN	ASEM ROWO	GENTING KALIANAK	50131	KOTA SURABAYA		JAWA TIMUR	Normal	1989-06-30 00:00:00	1989-10-13 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
025865908656003	SEMESTA MITRA SEJAHTERA							01461				Normal	2022-05-25 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
032945511425001	BANDARTRISULA							46637				Normal	2014-01-29 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
022081004809001	DIRGANTARA SURYA PERSADA	KOMPLEK PERGUDANGAN PATTENE PARK 88 BLOK AC NO 16 RT 000 RW 000, TEMMAPADUAE, KAB. MAROS				MARUSU	TEMMAPADUAE	52291	KAB. MAROS			Normal	2022-06-10 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
014975809625001	PERMATA CITRANUSA							03112				Non Efektif	2011-07-15 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
816112239618000	SARANA MITRA BETON	JL MAYJEND SUNGKONO NO 91 C RT 003 RW 002	081357330909	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	47524	KOTA SURABAYA		JAWA TIMUR	Normal	2017-03-27 00:00:00	2017-08-28 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
012266649612001	HASTA KARYA PERDANA							43211				Non Efektif	1993-10-23 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
020097630043001	TOENG MAKMUR							47593				Normal	2013-02-14 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810642001	ABADIKURNIA CITRARASA							10710				Normal	2022-06-03 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
316866474615000	INTERKON CIPTA PERSADA	JL RAYA PANJANG JIWO 46-48, RUKO PANJI MAKMUR BLOK B NO 9 RT 007 RW 007	085256272727	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	41011	KOTA SURABAYA		JAWA TIMUR	Normal	2013-02-08 00:00:00	2014-07-11 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
014974612125001	INTERJAYA SURYAMEGAH							46599				Normal	2014-04-07 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
014974612821001	INTERJAYA SURYA MEGAH							52291				PL/DE	2006-05-11 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
019131945041001	TAGAYA FLORINDO INTERNATIONAL							52291				Normal	2007-12-10 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
028230332625001	FEVA INDONESIA							42918				Non Efektif	2013-11-04 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
024195570414001	ENVIRONEER							28221				Normal	2015-04-22 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
031259807612001	PRIMA VOS LIGHT BLOCK							46638				Normal	2018-06-25 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015103195631000	UNITED AUTOMOBIL SEMBILAN PULUH UTAMA	JL WONOREJO TIMUR NO 99	628562255558	PT	BADAN	RUNGKUT	WONOREJO	49221	KOTA SURABAYA		JAWA TIMUR	Normal	2005-12-14 00:00:00	2006-01-11 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
078805355611000	SANTOSA KOESPIANTO	JL GENTENG DALEM NO 10-12	0818308235		OP	GENTENG	GENTENG	Z5000	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	2008-12-24 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
026329219614000	TANJUNG PERAK SWADAYA	JL RAYA GREGES NO 2-4 RT 001 RW 001	6281233628882	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	52296	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-16 00:00:00	2007-06-26 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
031255490642001	GARIS HARMONI							46593				Normal	2013-07-24 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
022078471615000	INTI MAS ABADI	JL. RAYA KEDUNG ASEM BLOK B-6 NO 9	088803578369	PT	BADAN	RUNGKUT	KEDUNG BARUK	46315	KOTA SURABAYA		JAWA TIMUR	Normal	2003-12-16 00:00:00	2003-12-29 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
021137500903001	VICTORY INTERNATIONAL FUTURES							66191				Normal	2011-12-19 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
731238697618000	ECOLINK KIMIA SEJAHTERA	JALAN VILA BUKIT MAS BLOK SB NO 01 RT 004 RW 006	087855034649	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	46651	KOTA SURABAYA		JAWA TIMUR	Normal	2015-05-29 00:00:00	2015-07-06 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
716816947613000	PELINDO PROPERTI INDONESIA	JL PERAK BARAT BLOK - NO 379 RT 002 RW 003	62313298635	PT	BADAN			41019				Normal	2014-12-11 00:00:00	2015-11-04 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
030016463618000	NICKO NUSA TRADE	JL ABDUL WAHAB SIAMIN BLOK RC NO 01	0818315956	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2010-01-11 00:00:00	2010-01-12 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
734542087619000	GAZELLE BATIK	DHARMAHUSADA INDAH PERMAI BLOK V NO 119	0315948962	CV	BADAN	MULYOREJO	MULYOREJO	13134	KOTA SURABAYA		JAWA TIMUR	Normal	2015-07-10 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
014296099043001	INDOXIDE							20299				Non Efektif	2011-11-07 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
016106734428001	WARNA WARNI MEDIA							73201				Normal	2003-04-25 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
030016463614001	NICKO NUSA TRADE	JL BALIWERTI NO 115	0818315956	PT	BADAN	BUBUTAN	ALUN-ALUN CONTONG	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2019-07-01 00:00:00	\N	2019-09-24 00:00:00	user_2sman5MQQu57XoEHfjHe1ImowKn
021137500036001	VICTORY INTERNATIONAL FUTURES							66142				Normal	2019-06-14 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
021137500072001	VICTORY INTERNATIONAL FUTURES							66142				PL/DE	2014-09-04 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
040127565607000	TJONDRO WIDJOJO	JL DINOYO NO 82 RT 008 RW 003	082132228939		OP	TEGALSARI	KEPUTRAN	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	1983-11-29 00:00:00	\N	2020-12-17 00:00:00	user_2smapMhjztr0ymBCpAvYMtdPvnK
316317106401001	BETON PRIMA INTI							23953				Normal	2015-01-28 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
763500014606000	SURYA PRIMA IMPLANTAMA	JL KO GALAXI BUMI PERMAI G 6 NO 8A	081330212277	PT	BADAN	SUKOLILO	MEDOKAN SEMAMPIR	47725	KOTA SURABAYA		JAWA TIMUR	Normal	2016-06-14 00:00:00	2016-10-10 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
015997810607002	ABADIKURNIA CITRARASA	JL POLISI ISTIMEWA NO 1 RT 005 RW 006	083856647444	PT	BADAN	TEGALSARI	KEPUTRAN	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2015-07-03 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
016775850953001	PACTRANS INDO CARGO							79111				Non Efektif	2019-03-18 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
040255267606000	OEI BENNY PRAKOSO	JL RAYA KERTAJAYA INDAH 109 RT 001 RW 006 NO 109 RT 001 RW 006	085102385788		OP	SUKOLILO	GEBANG PUTIH	47735	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	1983-12-04 00:00:00	2021-05-24 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
752243790831001	SURYA KEMENANGAN SEJAHTERA							46443				Normal	2017-01-12 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
312570682614000	SUMBER GUNA HIDUP SEJAHTERA	JL MARGOMULYO PERMAI ,GREGES BLOK AC NO 12	087806519583	PT	BADAN	ASEM ROWO	ASEM ROWO	30921	KOTA SURABAYA		JAWA TIMUR	Normal	2010-12-14 00:00:00	2011-10-11 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015444748618000	SUMBER RUBBERINDO JAYA	RAYA MASTRIP KEDURUS NO 33-A RT 006 RW 001	081235660931	PT	BADAN	KARANG PILANG	KEDURUS	22191	KOTA SURABAYA		JAWA TIMUR	Normal	1991-07-24 00:00:00	1991-07-24 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
753017334643000	SINAR ABADI	PERGUDANGAN ROMOKALISARI BLOK D-28 NO D-28	085100800717	CV	BADAN	BENOWO	SEMEMI	46312	KOTA SURABAYA		JAWA TIMUR	Normal	2016-02-23 00:00:00	2022-06-02 00:00:00	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
014797898823001	SARANABHAKTI TIMUR							50131				Non Efektif	2018-10-24 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
025865908649002	SEMESTA MITRA SEJAHTERA							01461				Normal	2022-05-23 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
028230332606000	FEVA INDONESIA	JL GALAXI KLAMPIS UTARA 8 RT 001 RW 009	08123524017	PT	BADAN	SUKOLILO	KEPUTIH	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2008-10-29 00:00:00	2009-09-03 00:00:00	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
032945511405001	BANDARTRISULA							46637				Normal	2014-01-30 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
016732794606001	BON AMI ABADI	JL MANYAR KERTOARJO BLOK 8 NO 2	0315058109	PT	BADAN	GUBENG	MOJO	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2019-10-15 00:00:00	\N	2021-05-24 00:00:00	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810621001	ABADIKURNIA CITRARASA							10710				Normal	2023-10-12 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015283369955001	PELAYARAN NASIONAL EKALYAPURNAMASARI							50131				Normal	2017-11-01 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
019795103417001	WAHANA SENTRA NIAGA							46100				PL/DE	2013-07-17 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
020097630086001	TOENG MAKMUR							47593				Normal	2023-07-12 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015325533609000	ARYANA CAKASANA	JL NGAGEL JAYA UTARA NO 35 RT 003 RW 004	62315023863	PT	BADAN	GUBENG	PUCANG SEWU	41019	KOTA SURABAYA		JAWA TIMUR	Normal	1991-04-11 00:00:00	1991-04-11 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
027002344609000	VAGANZA SUKSES INTERNASIONAL	JL GAYUNGSARI BLOK XI NO 33	6281235050584	PT	BADAN	GAYUNGAN	GAYUNGAN	46491	KOTA SURABAYA		JAWA TIMUR	Normal	2008-03-11 00:00:00	2011-02-07 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
015997810643003	ABADIKURNIA CITRARASA							10710				Normal	2021-06-02 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
014974612504001	INTERJAYA SURYAMEGAH							46599				Normal	2010-02-05 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
024769804728001	WIRA USAHA ABADI							05100				Non Efektif	2014-05-23 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
027913870642001	INTAN CHEMICAL							46651				Normal	2018-02-26 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
023555014623001	CORPUS PRIMA MANDIRI							70100				Normal	2018-11-08 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
026329219112001	TANJUNG PERAK SWADAYA							52240				PL/DE	2009-07-13 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
097555098616000	DEWI MEGARATNA DARMADJI	JL GEMBONG 2-16 BLOK C-8 RT 006 RW 005	088805411688		OP	SIMOKERTO	KAPASAN	Z5000	KOTA SURABAYA	3,57812E+15	JAWA TIMUR	Normal	2003-04-07 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
031255490432001	GARIS HARMONI							46593				Normal	2017-12-05 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
078698107616001	RIANA SANDALAPU	ITC MEGA GROSIR LT. G BLOK D8/1 BLOK D1/ 3-3A JL GEMBONG NO 20-30 RT 000 RW 000	6287861402253		OP	SIMOKERTO	KAPASAN	47713	KOTA SURABAYA	3,57829E+15	JAWA TIMUR	Normal	2019-05-23 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
751459181624001	MIX PRO INDONESIA							42101				Normal	2017-09-08 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
816112239323001	SARANA MITRA BETON							47524				Normal	2017-11-14 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
022066872325001	SURYA TIMUR LINE							50111				Non Efektif	2014-02-07 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
016824393609000	METRO MENGGALA	MARGOREJO INDAH VI NO 9 RT 002 RW 008	081322663922	PT	BADAN	WONOCOLO	MARGOREJO	42918	KOTA SURABAYA		JAWA TIMUR	Normal	1994-11-03 00:00:00	1994-12-02 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
027914944619000	WARNA WARNI INVESTAMA	JL PANGLIMA SUDIRMAN NO 21	085648595712	PT	BADAN	GENTENG	EMBONG KALIASIN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2011-08-25 00:00:00	2014-03-11 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
314264961741001	MUTIARA MULIA RAYA							46641				Normal	2019-07-15 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
031255011301001	DEXA ARFINDO PRATAMA							46691				Normal	2022-03-15 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
019293463311001	WANA INDAH ASRI							46100				PL/DE	2004-08-26 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
014296891644001	CAHAYA CERAH							42101				PL/DE	2010-04-07 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
020493367655001	INTISHAR KARYA							71101				Normal	2014-12-19 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
066774332619000	BOEDI SANDJAYA	JL KARANG ASEM 14 NO 52 RT 007 RW 008	082132228939		OP	TAMBAKSARI	PLOSO	Z5000	KOTA SURABAYA	3,5781E+15	JAWA TIMUR	Normal	1992-06-27 00:00:00	2021-03-16 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
312335383615000	REALITA SEJAHTERA	JL PANJANGJIWO NO 58 RT 001 RW 004	08813109075	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	41012	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2010-10-04 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
576054555619000	RATNA KOMALASARI	JL RANGKAH 1/90 RT 003 RW 007	62313729260		OP	TAMBAKSARI	RANGKAH	Z5000	KOTA SURABAYA	3,57811E+15	JAWA TIMUR	Normal	2008-11-19 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
024761389615000	MAJU JAYA LESTARI	JL RAYA RUNGKUT TENGAH NO 78 RT 003 RW 003	081235666248	CV	BADAN	GUNUNG ANYAR	RUNGKUT TENGAH	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2005-10-07 00:00:00	2005-11-29 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
023551195606000	PRIMA KARYA CEMERLANG	JL RAYA DUNGUS KM 4 NO 33 RT 022 RW 006	081332187610	PT	BADAN	SUKODONO	SUKODONO	17022	KAB. SIDOARJO		JAWA TIMUR	Normal	2004-03-15 00:00:00	2004-04-12 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
025865908617001	SEMESTA MITRA SEJAHTERA							01461				Normal	2022-05-24 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
060310166614000	PRAKASH HARDASMAL KHIANI	JL AGUNG INDAH VI BLOK M2 NO 9 RT 015 RW 016	0816903440		OP	TANJUNG PRIOK	SUNTER AGUNG	Z5000	KOTA ADM. JAKARTA UTARA	3,57813E+15	DKI JAKARTA	Normal	1984-04-23 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
857941595643001	TRANSINDO INNOVATIVE AROMA							56304				Normal	2021-06-17 00:00:00	\N	\N	user_2smaQu2f8bFFd5ZdyG4txyueJ7A
021760236913001	INNECO WIRA SAKTI HUTAMA							41011				Normal	2019-07-18 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
313286981542001	ECLECTIC CONSULTING	JALAN UMBUL PERMAI NO 112B RT 001 RW 021, SINDUHARJO, KAB. SLEMAN				NGAGLIK	SINDUHARJO	62090	KAB. SLEMAN			Normal	2024-11-25 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
014797898801001	SARANABHAKTI TIMUR							50142				Normal	2015-04-21 00:00:00	\N	\N	user_2smaIfODFlzm8YDJfrstldzV5BA
025865908649005	SEMESTA MITRA SEJAHTERA							01461				Normal	2022-05-23 00:00:00	\N	\N	user_2smayyYdLDNM2IpTeaQwyGb3Iw8
026999177403001	DYNAMIC TURBOCHARGER SYSTEMS INDONESIA							46599				Non Efektif	2012-02-01 00:00:00	\N	\N	user_2smZqNTeNZdiMZW4ZapYNi5FyfN
015997810603004	ABADIKURNIA CITRARASA	A. YANI - KARANGNONGKO RT 008 RW 003, PEKARUNGAN, KAB. SIDOARJO				SUKODONO	PEKARUNGAN	10710	KAB. SIDOARJO			Normal	2024-03-28 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810622002	ABADIKURNIA CITRARASA							10710				Normal	2021-11-17 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
068403849619000	GOUW TJIOE HOEY	JL LEBAK JAYA BLOK III NO 28-B RT 003 RW 003	087812018581		OP	TAMBAKSARI	GADING	Z5000	KOTA SURABAYA	3,5781E+15	JAWA TIMUR	PL/DE	1995-08-11 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
019795103721001	WAHANA SENTRA NIAGA							46100				Non Efektif	2006-02-21 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
313942278618000	XADO INDONESIA AMIN	RAYA TANDES LOR NO 154	085692777171	PT	BADAN	TANDES	TANDES	46610	KOTA SURABAYA		JAWA TIMUR	Normal	2011-10-11 00:00:00	2011-11-15 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
857870984604000	ARENA BERMAIN CERIA	UNIT 2-5 PAKUWON MALL JL PUNCAK INDAH LONTAR NO.2 RT 002 RW 015	6281216175615	PT	BADAN	SAMBIKEREP	LONTAR	93293	KOTA SURABAYA		JAWA TIMUR	Normal	2018-09-04 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
024763161822001	MITRA BAHAGIA CITRA MEDIKA							47725				Non Efektif	2016-08-02 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
040900045607001	SHINTA DEWI RAHARDJO	JL.TRUNOJOYO 58 RT.001 RW.017, DR.SUTOMO			OP	TEGALSARI	DR. SOETOMO	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	PL/DE	2009-08-13 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
015103195721001	UNITED AUTOMOBIL SEMBILAN PULUH UTAMA							49221				Non Efektif	2019-05-31 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
019131945048001	TAGAYA FLORINDO INTERNATIONAL							52291				Normal	2020-11-06 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
028230332625002	FEVA INDONESIA							41019				Non Efektif	2019-04-15 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
015997810657001	ABADIKURNIA CITRARASA							47222				Normal	2010-08-06 00:00:00	\N	\N	user_2smagzuZma6eoLOdXEOAxgzjX7w
028175495613001	BANDUNG CENTRAL ARTERI SAMUDRA	SONGOYUDAN NO 63 RT 002 RW 009	0313522993	CV	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	47729	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2014-07-21 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
031255490404001	GARIS HARMONI							46593				Non Efektif	2017-10-18 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
031255011609000	DEXA ARFINDO PRATAMA	JL RAYA JEMURSARI BLOK - NO 329-331 B RT 000 RW 000	082131841718	PT	BADAN	WONOCOLO	SIDOSERMO	46691	KOTA SURABAYA		JAWA TIMUR	Normal	2010-12-13 00:00:00	2011-03-02 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
674858485619000	GWIE RATNA DJUWITA GUNAWAN	JL DHARMAHUSADA INDAH BLOK B NO 147 RT 002 RW 008	031674858485		OP	MULYOREJO	KALISARI	Z5000	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	2009-01-13 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
029690906613000	SRI DEWI SAMPOERNA	KUTAI NO 22 RT 001 RW 005	62313522429	PT	BADAN	WONOKROMO	DARMO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2009-11-02 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
021137500609002	VICTORY INTERNATIONAL FUTURES	JL DIPONEGORO 153 LT. 1 RT. 000 RW. 000	085733224428	PT	BADAN	WONOKROMO	DARMO	64999	KOTA SURABAYA		JAWA TIMUR	Normal	2013-09-02 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
311784755035001	MEGA PRIMA MULIA							68111				Normal	2010-08-04 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
012557484615000	INDOMAG MEGAH UTAMA	JL RUNGKUT INDUSTRI III NO 15	081330499157	PT	BADAN	RUNGKUT	KALIRUNGKUT	28221	KOTA SURABAYA		JAWA TIMUR	Normal	1985-09-20 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
313545535604000	ARTA LESTARI	JUGRUK REJOSARI 5 KAV 04 RT.00 RW.00, KANDANGAN	0811305827	CV	BADAN	BENOWO	KANDANGAN	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2011-07-12 00:00:00	2011-07-28 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
020493367606000	INTISHAR KARYA	GRAHA GUNUNGANYAR KAV 34 RT 002 RW 008	085232755838	CV	BADAN	GUNUNG ANYAR	GUNUNG ANYAR	71101	KOTA SURABAYA		JAWA TIMUR	Normal	2001-09-03 00:00:00	2003-03-24 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
024581548604000	PUNDI KENCANA MAKMUR	PERUMAHAN GRIYA CITRA ASRI JL NURI III BLOK RM 10/32 RT 002 RW 007	62811340840	PT	BADAN	BENOWO	SEMEMI	41012	KOTA SURABAYA		JAWA TIMUR	Normal	2006-03-21 00:00:00	2006-04-05 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
017227224645001	DUA SINAR DUTAJAYA							41019				Normal	2015-04-13 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
020493367625001	INTISHAR KARYA							71101				Non Efektif	2020-04-16 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
024581548953001	PUNDI KENCANA MAKMUR CAB TIMIKA							42918				PL/DE	2012-09-25 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
719151466611000	ARENA BAN INDONESIA	JL UNDAAN WETAN NO 28-H RT 000 RW 000	62315313141	CV	BADAN	GENTENG	KETABANG	45301	KOTA SURABAYA		JAWA TIMUR	Normal	2015-01-13 00:00:00	2015-02-13 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
020493367915001	INTISHAR KARYA							71101				Normal	2019-12-04 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
015447402614000	SURYA ABADI KONSULTAN	JL BANYU URIP NO 217	082229745974	PT	BADAN	SAWAHAN	BANYU URIP	71101	KOTA SURABAYA		JAWA TIMUR	Normal	1992-06-18 00:00:00	1992-06-22 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
026998070609000	SENTINEL CAKRA BUANA	KO GRAHA PENA LT 15 R-1503, JL A YANI NO 88 RT 003 RW 008	08123154871	PT	BADAN	GAYUNGAN	KETINTANG	80100	KOTA SURABAYA		JAWA TIMUR	Normal	2007-05-23 00:00:00	2008-05-21 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
248547606619000	ERWIN SOEWONO KUSUMADJAYA	PANTAI MENTARI BLOK V/21 RT 004 RW 004	08123566673		OP	BULAK	KENJERAN	Z5000	KOTA SURABAYA	3,57829E+15	JAWA TIMUR	Normal	2008-12-17 00:00:00	2020-12-15 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
031778707611002	MUTIARA BAKTI MANDIRI	JL.GUBENG POJOK NO.1,GRAND CITY MALL LT.LG NO.33,KETABANG		PT	BADAN	GENTENG	KETABANG	47112	KOTA SURABAYA		JAWA TIMUR	PL/DE	2013-11-19 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
804953271611000	SEJATI JAYA MANUNGGAL PRIMA	JL JAGALAN BLOK IV NO 2	082244321633	PT	BADAN	GENTENG	PENELEH	47513	KOTA SURABAYA		JAWA TIMUR	Normal	2016-11-10 00:00:00	2017-01-03 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
023555014611000	CORPUS PRIMA MANDIRI	JL EMBONG KENONGO NO 7-9 RT 002 RW 001	623199015353	PT	BADAN	GENTENG	EMBONG KALIASIN	70203	KOTA SURABAYA		JAWA TIMUR	Normal	2009-12-02 00:00:00	2010-01-22 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
832345672619000	KELOLA PRIMA BANGUNAN	JL DR. IR. H. SOEKARNO NO 30-32 RT 003 RW 003	0315668885	PT	BADAN	MULYOREJO	KALIJUDAN	82990	KOTA SURABAYA		JAWA TIMUR	Normal	2017-11-09 00:00:00	2018-11-07 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
318014990604000	TRISAKTI MAKMUR PERSADA	JL HR. MUHAMMAD NO 01	085646434432	PT	BADAN	SUKOMANUNGGAL	PUTAT GEDE	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2013-07-11 00:00:00	2013-07-26 00:00:00	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
314233750606000	DINAMIKA PRIMA SERVITAMA	JAPFA INDOLAND CENTER, JAPFA TOWER 1 LT. 9, JL BASUKI RAHMAT BLOK R-903 NO 129-137 RT 001 RW 009	085236737981	PT	BADAN	GENTENG	EMBONG KALIASIN	66221	KOTA SURABAYA		JAWA TIMUR	Normal	2011-11-25 00:00:00	2013-01-18 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
014251888609000	KOKI INDOCAN	KO RUKO JEMUR RAYA, JL JEMURSARI 203 BLOK C NO 17 RT 007 RW 005	62817581799	PT	BADAN	WONOCOLO	SIDOSERMO	10219	KOTA SURABAYA		JAWA TIMUR	Normal	1986-02-28 00:00:00	1987-05-01 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
314786633619000	VICMAR INTI CEMERLANG	RUKAN KENCANA NIAGA JALAN TAMAN ARIES BLOK D01 NO 1D RT 012 RW 008	0811957166	PT	BADAN	KEMBANGAN	MERUYA UTARA	46900	KOTA ADM. JAKARTA BARAT		DKI JAKARTA	Normal	2012-03-02 00:00:00	2012-03-16 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
023164429941001	PAPUA SEJAHTERA	JL. JENDERAL SUDIRMAN, WATDEK OHOIJANG, MALUKU TENGGARA				KEI KECIL	OHOIJANG WATDEK	46100	KAB. MALUKU TENGGARA			Normal	2008-06-03 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
015617665655001	PRASIDHA INTI JAYA							46100				PL/DE	2013-02-28 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
019293463913002	WANA INDAH ASRI							46900				Normal	2019-10-24 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
060317088624001	AMI SUTJAHYO L							Z5000				Normal	2004-06-16 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
316767318604000	KARYA SAKTI INTIMAS	PERUMAHAN BUKIT PALMA BLOK E9 NO 12 RT 008 RW 004	082248180150	PT	BADAN	PAKAL	BABAT JERAWAT	46319	KOTA SURABAYA		JAWA TIMUR	Normal	2013-01-29 00:00:00	2013-03-01 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
810150706453001	AMERICAN ORTHODONTICS INDONESIA							46691				PL/DE	2017-04-07 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
021137500113001	VICTORY INTERNATIONAL FUTURES							66142				PL/DE	2018-04-20 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
027770411619000	CIPTA JAYA LESTARI	JL KENJERAN 300 A-7	0313896920	CV	BADAN	TAMBAKSARI	GADING	28113	KOTA SURABAYA		JAWA TIMUR	Normal	2007-12-12 00:00:00	2008-01-07 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
724456090619000	LYANDI JAYA SENTOSA	JL KENJERAN NO 463-465	6282257826633	PT	BADAN	TAMBAKSARI	GADING	46491	KOTA SURABAYA		JAWA TIMUR	Normal	2015-03-17 00:00:00	2017-03-02 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
022566533609000	GATRA MEGA BERJANGKA	CENTRAL POINT BUILDING LT. 2, JL RAYA NGAGEL RT 005 RW 001	082257460819	PT	BADAN	WONOKROMO	NGAGEL	66142	KOTA SURABAYA		JAWA TIMUR	Normal	2012-02-03 00:00:00	2012-02-13 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
809935174619000	MUTIARA MANDIRI PERKASA	KERTAJAYA INDAH V BLOK F NO 331	62315951104	CV	BADAN	MULYOREJO	MANYAR SABRANGAN	47111	KOTA SURABAYA		JAWA TIMUR	Normal	2017-01-13 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
852761386604000	TEMBAGA PRIMA INDONESIA	GARDU INDUK PLN NO. 5 JL MARGOMULYO RT 006 RW 008	6283831397680	PT	BADAN	TANDES	TANDES	24202	KOTA SURABAYA		JAWA TIMUR	Normal	2018-07-10 00:00:00	2018-07-12 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
025248410606000	MUTIARA ANGGUN LESTARI	JALAN RUKO MEGAH GALAXY BLOK 16A NO 17	6281939285511	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2005-12-02 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
011443876615000	TRIJAYA ABADI	JL.PANJANG JIWO RAYA NO 58, PANJANGJIWO	081234567911	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	41012	KOTA SURABAYA		JAWA TIMUR	Non Efektif	1982-12-06 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
015591159507001	NIKI MAPAN							22299				Normal	2020-10-02 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
014800445614001	HASIL FASTINDO	JL SEMARANG 112	081219993506	PT	BADAN	BUBUTAN	BUBUTAN	46900	KOTA SURABAYA		JAWA TIMUR	Normal	1999-08-27 00:00:00	\N	2015-08-14 00:00:00	user_2smapMhjztr0ymBCpAvYMtdPvnK
014659064631000	PADMATIRTA WISESA	JL CENDRAWASIH NO 24	08385583003	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	46339	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
023551195603001	PRIMA KARYA CEMERLANG							17022				Normal	2016-10-06 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
021137500541001	VICTORY INTERNATIONAL FUTURES							66142				PL/DE	2008-07-25 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
916586621943001	MENTARI MAS MULTIMODA							50131				Normal	2021-03-25 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
761400092614001	AGROTERA INTEGRIA SOLUSINDO	KOMPLEK PERGUDANGAN MARGOMULYO PERMAI BLOK AD NO 20-21 RT 001 RW 001	081217800056	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	46530	KOTA SURABAYA		JAWA TIMUR	Normal	2017-08-02 00:00:00	\N	2019-02-06 00:00:00	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
019223973625001	BINTANG SATYA KENCANA							46491				Non Efektif	2017-02-17 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
020539722652001	DJABESDEPO FORTUNA RAYA							46639				PL/DE	2007-11-13 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
024431199601001	KARYAWAN SMART MEDIA PT TELKOM UNIT CORP CUSTOMER V JATIM							46900				PL/DE	2009-11-12 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
705384170609000	BANYUWANGI OCEAN STAR	MARGOREJO INDAH BLOK A NO 506/57 RT 001 RW 008	0318412999	PT	BADAN	WONOCOLO	MARGOREJO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2014-06-26 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
020539722445001	DJABESDEPO FORTUNA RAYA							46639				Normal	2022-07-18 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
707874723615000	SUMBER MATAHARI SAKTI	JL. KUTISARI SELATAN XI NO 11 RT 005 RW 003	0318412736	PT	BADAN	TENGGILIS MEJOYO	KUTISARI	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2014-08-18 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
764501904618001	ANGKASA SEMESTA RAYA	JL RAYA WIYUNG NO 43 RT 003 RW 006	6282332008555	PT	BADAN	WIYUNG	WIYUNG	47528	KOTA SURABAYA		JAWA TIMUR	Normal	2017-02-23 00:00:00	\N	2017-10-23 00:00:00	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014799381075001	PRAMITA							86903				Normal	2014-09-24 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014799381301001	PRAMITA							86104				Normal	2011-05-04 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
018744599656001	PRANA KELUARGA NUSANTARA							46443				PL/DE	2010-10-26 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
026072579601002	PERMATA ANUGERAH YALASAMUDRA							42918				Normal	2015-05-04 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
311784755034001	MEGA PRIMA MULIA							46610				Normal	2020-11-27 00:00:00	\N	\N	user_2smaLHzr3vUpPpNTrxs5e2FCGzq
060318268604000	KINDARTO KOHAR	JL PUNCAK PERMAI BLOK II/15-17	0816741188		OP	SUKOMANUNGGAL	TANJUNGSARI	66142	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	1984-07-17 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
022571509614000	ARTHALAUT BUMIJASA	JL MARGOMULYO NO 44 BLOK EE NO 18	085655986132	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	77393	KOTA SURABAYA		JAWA TIMUR	Normal	2006-12-12 00:00:00	2007-01-11 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
761400092606000	AGROTERA INTEGRIA SOLUSINDO	JL DR IR SOEKARNO (MERR 2 C) BLOK S NO 8 SD 9 RT 001 RW 004	082140639100	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46530	KOTA SURABAYA		JAWA TIMUR	Normal	2016-05-17 00:00:00	2016-06-29 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
017227224609000	DUA SINAR DUTAJAYA	JL NGINDEN INTAN TIMUR BLOK II NO 33 RT 000 RW 000	085748740909	PT	BADAN	SUKOLILO	NGINDEN JANGKUNGAN	41012	KOTA SURABAYA		JAWA TIMUR	Normal	1995-05-08 00:00:00	1995-05-22 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
017159179801001	TRIGUNA SAMUDRATRANS	JAMPEA NO 19 RT 000 RW 000, PATTUNUANG, KOTA MAKASSAR				WAJO	PATTUNUANG	69101	KOTA MAKASSAR			Normal	2022-09-27 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
720512763604000	LAMONG ENERGI INDONESIA	JL RAYA TAMBAK OSOWILANGUN KM 12 RT 001 RW 003	087756666690	PT	BADAN	BENOWO	TAMBAK OSO WILANGUN	35113	KOTA SURABAYA		JAWA TIMUR	Normal	2015-01-28 00:00:00	2017-03-06 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
019293463943001	WANA INDAH ASRI							46900				Normal	2019-10-30 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
014296891913001	CAHAYA CERAH							42101				Non Efektif	2019-06-28 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
016774135611001	SRIKANDIDIAMOND INDAH MOTORS	JL PANGLIMA SUDIRMAN NO 57	082132483515	PT	BADAN	GENTENG	EMBONG KALIASIN	45103	KOTA SURABAYA		JAWA TIMUR	Normal	2012-01-05 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
013328554631000	BAYU BERINGIN LESTARI	KOMPLEK PLAZA SURABAYA JL PEMUDA NO 33-37	6289668683149	PT	BADAN	GENTENG	EMBONG KALIASIN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
016105892611000	TRITUNGGAL SENTRA MEDIKA	JL AMBENGAN NO 1 RT 002 RW 001	0889417550	PT	BADAN	GENTENG	KETABANG	46523	KOTA SURABAYA		JAWA TIMUR	Normal	1993-12-07 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
014975338631000	FAJAR LESTARI ABADI	JL BIBIS NO 2	08123212367	PT	BADAN	TANDES	MANUKAN WETAN	46339	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
665980710609001	GADAI MAS JATIM	ROYAL PLAZA BLOK C2-35 JL A YANI BLOK - NO 16-18 RT 015 RW 004	0318271560	PT	BADAN	WONOKROMO	WONOKROMO	46494	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2016-01-08 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
015591159619000	NIKI MAPAN	JL KENJERAN NO 485	082245639098	PT	BADAN	TAMBAKSARI	GADING	22299	KOTA SURABAYA		JAWA TIMUR	Normal	1992-02-10 00:00:00	1992-02-10 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
829795236618000	DAYA GUNA NIAGA SUKSES	WISATA BUKIT MAS II BLOK I-5 NO 11 RT 002 RW 007	6281335010358	PT	BADAN	LAKARSANTRI	LIDAH WETAN	47749	KOTA SURABAYA		JAWA TIMUR	Normal	2017-10-09 00:00:00	2018-02-23 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
719151466614001	ARENA BAN INDONESIA	MARGOMULYO PERMAI BLOK AB NO 17-18	0315313141	CV	BADAN	ASEM ROWO	TAMBAK SARIOSO	45301	KOTA SURABAYA		JAWA TIMUR	Normal	2015-04-06 00:00:00	\N	2018-10-03 00:00:00	user_2smapMhjztr0ymBCpAvYMtdPvnK
769061441605000	AMBRA LOGISTIK MANDIRI	JL LAKSDA M. NASIR BLOK F3 NO 29 RT 000 RW 000	6285730092005	PT	BADAN	KREMBANGAN	PERAK BARAT	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2016-09-05 00:00:00	2017-05-19 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
018232033615000	JATIM GLOBAL AKSESINDO	JL. PANJANGJIWO 58, PANJANGJIWO	0812547679	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	46641	KOTA SURABAYA		JAWA TIMUR	Non Efektif	1998-03-17 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
027914944614001	WARNA WARNI INVESTAMA	JL. RAYA TIDAR NO 350 RT 00 RW 00	082335408612	PT	BADAN	BUBUTAN	TEMBOK DUKUH	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2015-10-28 00:00:00	\N	2021-05-24 00:00:00	user_2sman5MQQu57XoEHfjHe1ImowKn
242445880619000	JEMMY SANJAYA	JL KARANG ASEM 14 NO 52 RT 007 RW 008	082132228939		OP	TAMBAKSARI	PLOSO	47773	KOTA SURABAYA	3,5781E+15	JAWA TIMUR	Normal	2007-08-09 00:00:00	2019-07-24 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
017966938607000	GATRA MEGA UTAMA	JL EMBONG MALANG NO 85-89	081331809500	PT	BADAN	TEGALSARI	KEDUNGDORO	66142	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2005-04-27 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
801595166602001	ALFA FIBER INDONESIA							27310				Normal	2018-05-30 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
021137500623001	VICTORY INTERNATIONAL FUTURES - CABANG MATOS							66111				PL/DE	2013-07-30 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
042116962619000	HINDARTO	JL KALIKEPITING  NO.175	087851666006		OP	TAMBAKSARI	PACARKEMBANG	22220	KOTA SURABAYA	3,5781E+15	JAWA TIMUR	Normal	1984-04-11 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
011484409631000	PROSAM PLANO	KOMPLEK PASAR ATOM LAMA LT.6 JL BUNGURAN NO 45	083831217968	PT	BADAN	PABEAN CANTIAN	BONGKARAN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2003-06-04 00:00:00	2003-06-04 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
020539722518001	DJABESDEPO FORTUNA RAYA							46639				Normal	2022-07-18 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
313510851601001	WAHANA RIZKY GUMILANG							47725				Normal	2013-11-13 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
017929936606000	BAGONG HARTONO PUTRA	JL DHARMAHUSADA UTARA NO 8	62816500230	PT	BADAN	GUBENG	MOJO	46494	KOTA SURABAYA		JAWA TIMUR	Non Efektif	1998-06-04 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
024761033615000	CORONA MAS	JL RUNGKUT INDUSTRI BLOK IV NO 32	08132659874	PT	BADAN	GUNUNG ANYAR	RUNGKUT TENGAH	12019	KOTA SURABAYA		JAWA TIMUR	Normal	2005-08-29 00:00:00	2016-06-20 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
016774101631001	BENTENG ANUGERAH SEJAHTERA	TANJUNGSARI NO. 44, SIMOMULYO		PT	BADAN	SUKOMANUNGGAL	SIMOMULYO	46620	KOTA SURABAYA		JAWA TIMUR	PL/DE	2007-04-09 00:00:00	\N	2020-07-30 00:00:00	user_2smbEzk5YCUvPfdGMKapmH6g4aK
024767287615000	ARISU INDONESIA	JL RUNGKUT INDUSTRI VIII NO 20	08113322735	PT	BADAN	TENGGILIS MEJOYO	KUTISARI	22220	KOTA SURABAYA		JAWA TIMUR	Normal	2007-07-17 00:00:00	2007-08-20 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
803718923607000	UNTUK JALAN JALAN TERUS	JL IMAM BONJOL NO 27 RT 003 RW 009	081311659418	PT	BADAN	TEGALSARI	DR. SOETOMO	82302	KOTA SURABAYA		JAWA TIMUR	Normal	2016-11-01 00:00:00	2020-03-05 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014799381113001	PRAMITA							86104				Normal	2012-02-21 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
032015901613000	YIDING SUKSES BERSAMA	JL. BONGKARAN NO 66	6281231352100	PT	BADAN	PABEAN CANTIAN	BONGKARAN	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2012-06-14 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
024767287408001	ARISU INDONESIA							22220				Normal	2019-11-01 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
016106734631000	WARNA WARNI MEDIA	JL PANGLIMA SUDIRMAN NO 21	0315353319	PT	BADAN	GENTENG	EMBONG KALIASIN	73100	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
017395716607000	SUCOR INVESTAMA	JL MOJOPAHIT NO 31 RT 001 RW 007	085697267968	PT	BADAN	TEGALSARI	KEPUTRAN	70209	KOTA SURABAYA		JAWA TIMUR	Normal	2004-08-09 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
031255011216001	DEXA ARFINDO PRATAMA							46691				Normal	2020-06-26 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
016106734071001	WARNA WARNI MEDIA							73100				Normal	2007-08-29 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
031255011542001	DEXA ARFINDO PRATAMA							46691				Normal	2012-03-09 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
021137500618001	VICTORY INTERNATIONAL FUTURES	JL MAYJEND YONO SOEWOYO KAV 3 SPAZIO OFFICE SUITE LEVEL 2 RT 000 RW 000	081331612171	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2015-04-20 00:00:00	\N	2019-09-19 00:00:00	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
018799114606000	KHARISMA ABADI SURABAYA	JL MANYAR KARTIKA BLOK VII NO 9	0818113330088	PT	BADAN	SUKOLILO	MENUR PUMPUNGAN	20291	KOTA SURABAYA		JAWA TIMUR	Normal	2000-05-26 00:00:00	2000-06-05 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
313191041616000	SARANA TEHNIK	JL KENJERAN NO 98 N RT 002 RW 008	08993979758	CV	BADAN	SIMOKERTO	TAMBAKREJO	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2011-05-10 00:00:00	2011-05-19 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
022573679607000	TALI AGUNG	JL.KEDUNGDORO  NO.203, WONOREJO	6285736089049	PT	BADAN	TEGALSARI	WONOREJO	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2008-08-21 00:00:00	2009-02-11 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
028403723609000	SARANA LUBRITAMA SEMESTA	KO RUKO JL RAYA JEMURSARI 76 BLOK D NO 19 RT 001 RW 007	085963051600	PT	BADAN	WONOCOLO	JEMUR WONOSARI	47301	KOTA SURABAYA		JAWA TIMUR	Normal	2008-07-22 00:00:00	2008-08-05 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
022078208615000	TRISAKTI CIPTA NUSANTARA	JL TENGGILIS MEJOYO BLOK AA NO 02 RT 008 RW 004	08156850685	PT	BADAN	RUNGKUT	KALIRUNGKUT	42912	KOTA SURABAYA		JAWA TIMUR	Normal	2003-11-10 00:00:00	2003-11-18 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
454306150619000	TAN GIOK HOEN	JL KARANG ASEM 14 NO 52 RT 007 RW 008	082132228939		OP	TAMBAKSARI	PLOSO	47521	KOTA SURABAYA	3,57811E+15	JAWA TIMUR	Normal	2012-04-25 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
022095350616000	GLOBAL	JL PRADAH PERMAI VIII NO 22-24 RT 000 RW 000	08113599574	CV	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	47711	KOTA SURABAYA		JAWA TIMUR	Normal	2005-09-01 00:00:00	2005-09-16 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
027002013609000	PANCA INDAH JAYAMAHE	JL KETINTANG SELATAN NO 79	08155050994	PT	BADAN	JAMBANGAN	KARAH	43909	KOTA SURABAYA		JAWA TIMUR	Normal	2008-02-26 00:00:00	2008-08-22 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
030821482604000	SYSPEX MULTITECH	JL RAYA MARGOMULYO IX BLOK A-22	0317494098	PT	BADAN	TANDES	BALONGSARI	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2010-09-24 00:00:00	2010-12-17 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
064184666618000	NIO SUH DIH AL VERAWATI	JL DUKUH KUPANG XX NO 1 RT 001 RW 008	081357581303		OP	DUKUH PAKIS	DUKUH KUPANG	Z5000	KOTA SURABAYA	3,57822E+15	JAWA TIMUR	Normal	1988-09-27 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
316317106606000	BETON PRIMA INTI	JL RAYA KERTAJAYA INDAH TIMUR NO 153 BLOK P116	6282143486288	PT	BADAN	SUKOLILO	GEBANG PUTIH	23953	KOTA SURABAYA		JAWA TIMUR	Normal	2012-11-20 00:00:00	2013-09-12 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
315484758618000	GARUDA POWERINDO	JL RAYA DUKUH KUPANG BARAT NO 30 RT 005 RW 006	0315612935	PT	BADAN	DUKUH PAKIS	DUKUH KUPANG	43291	KOTA SURABAYA		JAWA TIMUR	Normal	2012-06-15 00:00:00	2012-08-02 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
021141734707001	JAYAPUTRA SEMESTA							46491				Normal	2022-06-30 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
012562922631000	KHARISMA SUMA JAYA SAKTI	JL RUNGKUT INDUSTRI III NO 20	8470727	PT	BADAN	TENGGILIS MEJOYO	KUTISARI	45405	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
717134100601001	RESTU ANAK JAYA ABADI BETON INDONESIA							23957				Normal	2019-07-24 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
916586621914001	MENTARI MAS MULTIMODA							50131				Normal	2023-08-22 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
050210152606000	WIWIEK HIDAJATI	JL RAYA GUBENG 61 RT 003 RW 006	08165409799		OP	GUBENG	GUBENG	Z5000	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	1983-12-30 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
020539722025001	DJABESDEPO FORTUNA RAYA							46639				Normal	2023-01-25 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
020541546642001	SUMBER ANUGERAH UTAMA							19213				Normal	2017-09-07 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
011085222436001	INDONESIA MULTI COLOUR PRINTING							25940				Normal	2008-06-05 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
014797740631000	PURI PARIWARA	GEDUNG WTC JL PEMUDA NO 27-31	082142080005	PT	BADAN	GENTENG	EMBONG KALIASIN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	1989-06-17 00:00:00	1989-11-30 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
015927494631000	GRANDE FAMILY VIEW	GEDUNG SPAZIO LT.8 GRAHA FESTIVAL KAV 3 JL MAYJEND YONO SOEWOYO GRAHA FAMILI	085850441000	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
066538869606996	AMANDA JANINNA NURHADI							Z5000				PL/DE	2009-06-23 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
745163147615000	SRK FOODS	JALAN RUNGKUT MADYA NO 41	08123040968	CV	BADAN	RUNGKUT	RUNGKUT KIDUL	10710	KOTA SURABAYA		JAWA TIMUR	Normal	2015-11-25 00:00:00	2016-01-14 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
312460058604000	SUMBER SARANA INDAH	JL LIDAH WISATA BUKIT MAS SELATAN III BLOK H2/11 RT 002 RW 007	082232438886	CV	BADAN	LAKARSANTRI	LIDAH WETAN	46610	KOTA SURABAYA		JAWA TIMUR	Normal	2010-11-09 00:00:00	2015-03-30 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
028252484604000	SARANA PANCA USAHA	JL SAMBIKEREP INDAH BLOK F-4/34 RT 003 RW 001	6282220666559	PT	BADAN	SAMBIKEREP	SAMBIKEREP	77321	KOTA SURABAYA		JAWA TIMUR	Normal	2009-05-29 00:00:00	2014-09-04 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
022070486011001	SENTRA SUPPORT SERVICE							78300				Non Efektif	2017-02-23 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
018229484614000	MIRANTI ADHI PERSADA	RUKO DARMO PARK I JL MAYJEND SUNGKONO BLOK 2 C NO 1 RT 003 RW 010	62811337619	PT	BADAN	SAWAHAN	PAKIS	41013	KOTA SURABAYA		JAWA TIMUR	Normal	2009-01-06 00:00:00	2009-01-12 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
022086813606000	ALAM MUTIARA TEDUH	JL KERTAJAYA INDAH TIMUR 14-B/09 RT 001 RW 010	0315950413	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	68111	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2009-06-01 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
022089403618000	SUMATRACO LANGGENG MAKMUR	PERUM GRAHA FAMILI BLOK M-62 RT.000 RW.000, PRADAH KALIKENDAL BLOK M NO 62	085704733319	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	10774	KOTA SURABAYA		JAWA TIMUR	Normal	2005-01-04 00:00:00	2005-01-05 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
011085016627001	PEGAWAI PELABUHAN INDONESIA III SURABAYA							64141				Non Efektif	2020-08-27 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
016815128542001	JAWA POS RADAR							73201				Non Efektif	2002-09-17 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
019293463902001	WANA INDAH ASRI							46900				Normal	2019-10-21 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
023164429941002	PAPUA SEJAHTERA							46100				Normal	2011-10-05 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
016774135631000	SRIKANDIDIAMOND INDAH MOTORS	JL PECINDILAN NO 46-48	081331535094	PT	BADAN	GENTENG	KAPASARI	45103	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
023551500619000	HUTOMO UNGGUL	JL KARANG ASEM XIV/52, PLOSO	08123364332	PT	BADAN	TAMBAKSARI	PLOSO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2004-03-30 00:00:00	\N	2017-02-20 00:00:00	user_2smapMhjztr0ymBCpAvYMtdPvnK
314233750015001	DINAMIKA PRIMA SERVITAMA							66221				Normal	2023-08-11 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
021141866618000	ENDO INDONESIA	JL RAYA MENGANTI NO 14 RT 2 RW 1	08119323636	PT	BADAN	KARANG PILANG	KEDURUS	47725	KOTA SURABAYA		JAWA TIMUR	Normal	2012-01-19 00:00:00	2012-04-26 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
315771261609000	MITRA SEJATI TRANSPORT	JL DIPONEGORO NO 63-65 RT 001 RW 005	6281515535699	PT	BADAN	WONOKROMO	DARMO	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2012-08-13 00:00:00	2013-04-16 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
808614341424000	KEVIN NURHADI	MAYJEND SUNGKONO BUNDARAN TOL NO 3 RT 001 RW 004	082140111811		OP	SUKOMANUNGGAL	PUTAT GEDE	47919	KOTA SURABAYA	3,57813E+15	JAWA TIMUR	Normal	2016-12-23 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
801595166614000	ALFA FIBER INDONESIA	JL. PAHLAWAN NO 70 RT 000 RW 000	081335113962	PT	BADAN	BUBUTAN	ALUN-ALUN CONTONG	27310	KOTA SURABAYA		JAWA TIMUR	Normal	2016-09-28 00:00:00	2017-05-04 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
024541906619000	MUTIARA CEMERLANG ABADI	JL KERTAJAYA INDAH BLOK V NO F-331 RT 001 RW 010	085784222961	PT	BADAN	MULYOREJO	MANYAR SABRANGAN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2008-12-09 00:00:00	2014-12-16 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
662583178614000	SABE INDONESIA	KOMPLEK PERGUDANGAN SURI MULIA PERMAI JL MARGOMULYO NO 44 BLOK DD NO 11 RT 001 RW 001	082139795999	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	25111	KOTA SURABAYA		JAWA TIMUR	Normal	2014-02-07 00:00:00	2014-04-14 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
016638884642001	RAJASA PUTRA JAYA PERKASA							26391				Normal	2010-05-31 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
021141734033001	JAYAPUTRA SEMESTA							46491				Normal	2022-04-14 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
022088835618000	NOSREDNA	RUKO SURYA INTI PERMATA I/B-18 JL HR MUHAMMAD	087876960082	CV	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	47724	KOTA SURABAYA		JAWA TIMUR	Normal	2004-09-07 00:00:00	2006-01-11 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
801951989604000	SANPO SUKSES MANDIRI	NORTHWEST HILL BLOK NH NO 15-53 RT 003 RW 002	6281333221562	PT	BADAN	PAKAL	PAKAL	46651	KOTA SURABAYA		JAWA TIMUR	Normal	2016-10-03 00:00:00	2016-11-21 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
028245751617001	MITRA MULIA BANGUN PUTERA							47525				Normal	2022-05-27 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
016732620631000	KENCANA ALAM PUTRA	JL KLAMPIS ANOM BLOK D-4 NO 17	62315939609	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	42204	KOTA SURABAYA		JAWA TIMUR	Normal	1995-02-02 00:00:00	1995-02-13 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
316344498614000	INDOBERKA INVESTAMA	KOMPLEK PERGUDANGAN MARGOMULYO PERMAI BLOK C NO 10 RT 001 RW 001	081227079724	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	25112	KOTA SURABAYA		JAWA TIMUR	Normal	2012-11-23 00:00:00	2014-06-13 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
011434321603001	PERUSAHAAN CAT, PERNIS DAN KALENG MATARAM							20221				Normal	2023-01-03 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
023380637604000	CENTRAL GLOBAL INDOCHEM	JL RAYA OSOWILANGON KAV E-3 NO 61	0317499076	PT	BADAN	BENOWO	TAMBAK OSO WILANGUN	47773	KOTA SURABAYA		JAWA TIMUR	Normal	2005-02-07 00:00:00	2006-01-19 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
020539722125001	DJABESDEPO FORTUNA RAYA							46639				Normal	2019-12-16 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
085702744604000	RAYMOND WIJAYA	JL SATELIT UTARA BLOK BLOK CN NO 4 RT 006 RW 003	0811379898		OP	SUKOMANUNGGAL	TANJUNGSARI	Z5000	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	2013-04-03 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
026072579609000	PERMATA ANUGERAH YALASAMUDRA	JL GAYUNGSARI BARAT 91 LANTAI 2	085748892391	PT	BADAN	GAYUNGAN	GAYUNGAN	41012	KOTA SURABAYA		JAWA TIMUR	Normal	2009-03-27 00:00:00	2009-04-03 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
703101428609000	SURABAYA INVESTINDO PRATAMA	MARGOREJO INDAH BLOK A 506 NO 57 RT 001 RW 008	0318412999	PT	BADAN	WONOCOLO	MARGOREJO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2014-06-03 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
861271674615000	NUSANTARA GUNUNG EMAS	WISMA MEDOKAN BLOK WMG NO 17 RT 005 RW 008	6281258451413	PT	BADAN	RUNGKUT	MEDOKAN AYU	46638	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2018-10-02 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
031201791605000	MULTI MEGA SENTOSA	JL KEBONROJO NO 6EE RT 006 RW 001	628123539337	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2012-02-20 00:00:00	2012-02-20 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014799381426001	PRAMITA							86903				Normal	2001-07-31 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
015927494618001	GRANDE FAMILY VIEW							68111				PL/DE	2003-01-10 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
019757715407001	SASMITO	JL MAYOR OKING, KOTA BEKASI				BEKASI TIMUR	MARGAHAYU	41019	KOTA BEKASI			Normal	2016-05-02 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
026092072803001	LYCON ASIA MANDIRI							71101				Normal	2020-06-22 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
016774101604001	BENTENG ANUGERAH SEJAHTERA	JL TANJUNGSARI NO 44-I RT 001 RW 007	5319590	PT	BADAN	SUKOMANUNGGAL	SIMOMULYO BARU	46620	KOTA SURABAYA		JAWA TIMUR	Normal	2015-10-19 00:00:00	\N	2020-07-30 00:00:00	user_2smbEzk5YCUvPfdGMKapmH6g4aK
713750800611000	BESTINDO KARYA PRATAMA	PASAR BESAR WETAN NO 28 D RT 001 RW 002	082257523849	PT	BADAN	BUBUTAN	ALUN-ALUN CONTONG	47796	KOTA SURABAYA		JAWA TIMUR	Normal	2014-11-03 00:00:00	2014-12-15 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
014815252604000	TAMANCITRA SURYAHIJAU	JL TAMAN PERKANTORAN CITRA RAYA KAV.1 CITRA RAYA UTAMA	628563308660	PT	BADAN	SAMBIKEREP	MADE	68111	KOTA SURABAYA		JAWA TIMUR	Normal	1989-05-20 00:00:00	2016-11-01 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
014297550509001	ALPHA UTAMA MANDIRI							46599				Normal	1990-01-31 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
826118473604000	RAJAWALI JAYA BERSAMA	TAMAN GAPURA CITRALAND BLOK JJ 2 RT 004 RW 013	08113456517	PT	BADAN	SAMBIKEREP	LONTAR	46610	KOTA SURABAYA		JAWA TIMUR	Normal	2017-08-16 00:00:00	2020-12-03 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
032015620902001	RAJAWALI BERLIAN							50131				Non Efektif	2020-09-23 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
020493367624001	INTISHAR KARYA							71101				Non Efektif	2014-10-07 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
060565298652001	SOEGENG HENDARTO							68111				Non Efektif	2009-11-26 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
943873000619000	LAUTAN JAYA INDO	JL KAPAS MADYA INDAH NO 10 LT.2	081258451413	CV	BADAN	TAMBAKSARI	KAPASMADYA BARU	46620	KOTA SURABAYA		JAWA TIMUR	Normal	2020-02-19 00:00:00	2021-09-30 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
014800445604001	HASIL FASTINDO	JL MARGOMULYO INDAH I NO 01 RT 002 RW 007	085856970476	PT	BADAN	TANDES	BALONGSARI	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2002-07-19 00:00:00	\N	2021-05-24 00:00:00	user_2smapMhjztr0ymBCpAvYMtdPvnK
011328580631000	MURNI BERLIAN MOTORS	JL DEMAK NO 172	08581781333333	PT	BADAN	BUBUTAN	GUNDIH	45103	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
750488785619000	PUNCAK PANGAN ABADI	JL NAMBANGAN NO 41	6282233009988	CV	BADAN	KENJERAN	TANAH KALI KEDINDING	46339	KOTA SURABAYA		JAWA TIMUR	Normal	2016-02-02 00:00:00	2018-02-14 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
187585757619000	LAUW GUNAWAN LESMONO	JL DHARMAHUSADA INDAH TMR 2/93 BLOK L NO 156 RT 005 RW 009	0811582555		OP	MULYOREJO	MULYOREJO	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2005-09-30 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
021137500424001	PLATINUM BERJANGKA							66142				PL/DE	2006-09-08 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
060553229611000	SALIK SOETEMO	JL JIMERTO NO 2 RT 003 RW 008	082233063100		OP	GENTENG	KETABANG	Z5000	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	2002-10-22 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
831662184604000	ROTOPLAS MITRA KREASINDO	JALAN KEPATIHAN INDUSTRI II BLOK 000 NO 46 RT 000 RW 000	081217803780	PT	BADAN	MENGANTI	KEPATIHAN	22299	KAB. GRESIK		JAWA TIMUR	Normal	2017-11-01 00:00:00	2017-12-29 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
805935582604001	AMARIS TIRTA PRATAMA	KOMPLEK BUMI MASPION SELATAN BLOK II NO 4	08165407814	PT	BADAN	BENOWO	ROMOKALISARI	46339	KOTA SURABAYA		JAWA TIMUR	Normal	2020-06-16 00:00:00	\N	2021-01-05 00:00:00	user_2smapMhjztr0ymBCpAvYMtdPvnK
014975338731001	FAJAR LESTARI ABADI							46339				Normal	1998-01-22 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
014975338941001	FAJAR LESTARI ABADI							46339				Normal	2003-09-15 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
021141734323001	JAYAPUTRA SEMESTA							46491				PL/DE	2010-05-26 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
022078208655001	TRISAKTI CIPTA NUSANTARA							41012				Normal	2022-04-11 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
705434306721001	INDOARTHA BUANA MAKMUR							47736				Normal	2021-05-07 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
021137500542001	VICTORY INTERNATIONAL FUTURES							64911				Normal	2011-12-19 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
021137500701001	VICTORY INTERNATIONAL FUTURES							66142				Normal	2011-08-08 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
313869224604000	MEKAR SEJAHTERA	OSOWILANGUN 61 BLOK A NO.17 RT.00 RW.00, TAMBAK OSOWILANGON	085732007505	CV	BADAN	BENOWO	TAMBAK OSO WILANGUN	47794	KOTA SURABAYA		JAWA TIMUR	Normal	2011-09-29 00:00:00	2017-10-02 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
021757786606000	SHELTER NUSANTARA	JL SEMAMPIR SELATAN 5 A NO 18	625925075	PT	BADAN	SUKOLILO	MEDOKAN SEMAMPIR	80100	KOTA SURABAYA		JAWA TIMUR	Normal	2002-09-16 00:00:00	2003-04-25 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
011085222401001	INDONESIA MULTI COLOUR PRINTING							25940				Normal	2016-11-09 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
017227760628001	INTI MUSTIKA KARYATAMA							46610				Normal	2023-08-11 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
027769256722001	SENTOSA LAJU ENERGY							46610				Normal	2022-10-25 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
026092072609000	LYCON ASIA MANDIRI	JEMURSARI UTARA BLOK 2 NO 30	628113414378	PT	BADAN	WONOCOLO	JEMUR WONOSARI	71101	KOTA SURABAYA		JAWA TIMUR	Normal	2006-12-13 00:00:00	2008-01-25 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
248538662619000	ARIE SUSANA	SUTOREJO PRIMA SELATAN 7/6 RT.006 RW.009, DUKUH SUTOREJO	6281331597444		OP	MULYOREJO	DUKUH SUTOREJO	96990	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2008-12-17 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
010022903631001	BONDI SYAD MULIA	JL RUNGKUT INDUSTRI BLOK II NO 35	0318436892	PT	BADAN	GUNUNG ANYAR	RUNGKUT TENGAH	25920	KOTA SURABAYA		JAWA TIMUR	Non Efektif	1988-09-02 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014799381121001	PRAMITA							86104				Normal	2005-07-20 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
019757715525001	SASMITO							41019				Normal	2021-04-19 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
026072579601001	PERMATA ANUGERAH YALASAMUDRA							41012				Non Efektif	2011-07-20 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
764689717615000	CITRA JAYA AURELIA	MARGOREJO INDAH III BLOK C NO 105 RT 003 RW 008	628121642100	PT	BADAN	WONOCOLO	MARGOREJO	47411	KOTA SURABAYA		JAWA TIMUR	Normal	2016-06-30 00:00:00	2016-08-09 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
800158073606000	OEI IE LING	JL MANYAR KERTOARJO 7 NO 12 RT 005 RW 011	081335373180		OP	GUBENG	MOJO	Z6000	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	2016-09-14 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
014815617604000	CATUR JAYA TAMA	JL DARMO INDAH TIMUR NO SS-11 RT 004 RW 003	081234727919	CV	BADAN	TANDES	TANDES	52211	KOTA SURABAYA		JAWA TIMUR	Normal	1991-10-29 00:00:00	1991-10-29 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
019793231631000	WIN WIN REALTY CENTRE	JL MAYJEND SUNGKONO NO 87	081234528459	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2007-11-01 00:00:00	2007-11-29 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
031572886804001	CIPUTRA NUSANTARA							68200				Normal	2017-10-25 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
066104613609000	ROBI WIRJADI	MARGOREJO INDAH IX BLOK B NO 511 RT 002 RW 008	08113046662		OP	WONOCOLO	MARGOREJO		KOTA SURABAYA	3,57802E+15	JAWA TIMUR	Normal	1990-08-09 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
022091102618000	LUHUR BAHAGIA	JL KERTAJAYA INDAH V BLOK F NO 331	03159625000	PT	BADAN	MULYOREJO	MANYAR SABRANGAN	47191	KOTA SURABAYA		JAWA TIMUR	Normal	2005-08-26 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
143952182619000	EDWIN PRATAMA HENDRIADI	JL SOKA NO 3 RT 003 RW 003	0815511088		OP	TAMBAKSARI	TAMBAKSARI	Z5000	KOTA SURABAYA	3,5781E+15	JAWA TIMUR	Normal	2008-03-31 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
041710021607000	KUSMAN WONGSODIHARDJO	JL RA. KARTINI NO 53 RT 006 RW 011	0315676287		OP	TEGALSARI	DR. SOETOMO	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Non Efektif	1984-03-12 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
736976309614000	UTAMA BALIWERTI SURABAYA	JL ALUN-ALUN CONTONG NO 1-B	08995510571	PT	BADAN	BUBUTAN	ALUN-ALUN CONTONG	47528	KOTA SURABAYA		JAWA TIMUR	Normal	2015-08-18 00:00:00	2017-04-03 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
018313064401001	TRICIPTA AGUNG SEJAHTERA							47773				Normal	2015-06-11 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
743173825614000	SINERGI SARANA GLOBAL	JL. RAYA ARJUNA NO 145 RT 007 RW 013	082215353636	PT	BADAN	SAWAHAN	SAWAHAN	45301	KOTA SURABAYA		JAWA TIMUR	Normal	2015-10-27 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
021137500044001	VICTORY INTERNATIONAL FUTURES							66142				Non Efektif	2018-08-29 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
028261485615000	SANDRA BUANA MEDIKA	JL RAYA KENDANGSARI NO 38 RT 003 RW 001	081259335422	PT	BADAN	TENGGILIS MEJOYO	KENDANGSARI	86103	KOTA SURABAYA		JAWA TIMUR	Normal	2009-05-25 00:00:00	2018-08-06 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
022111876641000	WAHANA MEGA PRIMA	JL MAYJEND SUNGKONO, KOMPLEK DARMO PARK I BLOK 4C NO 8 RT 003 RW 010	081331305009	CV	BADAN	SAWAHAN	PAKIS	46651	KOTA SURABAYA		JAWA TIMUR	Normal	2004-01-13 00:00:00	2004-01-13 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
744304692614000	POMPA NASIONAL INDONESIA	JL MARGOMULYO PERMAI BLOK AA NO 5 RT 003 RW 001	62317498118	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2015-11-11 00:00:00	2017-10-02 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
210853289604000	MULTIGUNA PANEL INDONESIA	JL KUPANG JAYA V NO 2B	082140988890	PT	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2009-04-06 00:00:00	2009-07-21 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
021137500424002	VICTORY INTERNATIONAL FUTURES							46100				PL/DE	2011-12-19 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
016774135604001	SRIKANDIDIAMOND INDAH MOTORS	JL RAYA MENGANTI LIDAH WETAN NO 30 A RT 001 RW 006	6282232722661	PT	BADAN	LAKARSANTRI	LIDAH WETAN	45103	KOTA SURABAYA		JAWA TIMUR	Normal	2019-01-10 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014975338801001	FAJAR LESTARI ABADI	JL KIMA RAYA 4 KAV M2, KOTA MAKASSAR				BIRINGKANAYA	DAYA	46900	KOTA MAKASSAR			Normal	2001-01-31 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
015447402624001	SURYA ABADI KONSULTAN							71101				PL/DE	2014-06-03 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
021136072901001	MODERN KERAMIK JAYA							47525				Normal	2013-01-28 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
021141734518001	JAYAPUTRA SEMESTA							46491				Normal	2010-05-24 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
022078208622001	TRISAKTI CIPTA NUSANTARA							41012				Normal	2017-08-14 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
852761386655001	TEMBAGA PRIMA INDONESIA							24202				PL/DE	2019-08-26 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
021137500626001	VICTORY INTERNATIONAL FUTURES							66111				Normal	2011-12-19 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
021137500831001	VICTORY INTERNATIONAL FUTURES							66142				PL/DE	2015-01-22 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
026703967444001	SHELTER NUSA INDAH	JALAN CIJAGRA NO 03 RT 001 RW 009, KAB. BANDUNG				BOJONGSOANG	BOJONGSOANG	78101	KAB. BANDUNG			Non Efektif	2017-11-30 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
014293047644001	ANGGAZA WIDYA RIDHA MULIA							41012				Non Efektif	2009-10-30 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
317909745821001	BERLIAN ANUGERAH TRANSPORTASI							52291				Normal	2019-11-19 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
018744599615001	PRANA KELUARGA NUSANTARA	RUKO PURI GUNUNG ANYAR REGENCY BLOK R NO 3 RT 002 RW 007	082139248239	PT	BADAN	GUNUNG ANYAR	GUNUNG ANYAR TAMBAK	47725	KOTA SURABAYA		JAWA TIMUR	Normal	2020-02-07 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
078659091619000	HANDOKO SUDIRO RAKSAN BASUKI	JL KERTAJAYA INDAH TIMUR BLOK O NO 109 RT 005 RW 010	6285100994423		OP	MULYOREJO	MANYAR SABRANGAN	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2003-03-13 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
026094557609000	SAMANDITA ADI MAKMUR	JL PRAPANCA NO 16 RT 004 RW 009	087851542966	PT	BADAN	WONOKROMO	DARMO	77392	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-25 00:00:00	2007-05-31 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
066538869606998	ANDREW SURYA NURHADI							Z5000				PL/DE	2009-06-23 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
029303807618000	SINAR CEMERLANG GEMILANG	JL MAYJEN YONO SOEWOYO KAV. 3, SPAZIO OFFICE BUILDING LT.8	6282226558552	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2010-01-12 00:00:00	2013-03-06 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014799381512001	PRAMITA							86104				Normal	2012-02-01 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
067516336607000	JENNY TANUJAYA	JL MAWAR NO 27-29 RT 003 RW 003	0818338280		OP	TEGALSARI	TEGALSARI	Z5000	KOTA SURABAYA	3,57806E+15	JAWA TIMUR	Normal	1996-12-03 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014976054618000	SARANA WARNAMEGAH	JL RAYA DUKUH KUPANG NO 108-110 RT 004 RW 003	62811340098	PT	BADAN	DUKUH PAKIS	DUKUH KUPANG	20299	KOTA SURABAYA		JAWA TIMUR	Normal	1990-08-16 00:00:00	1990-08-16 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
031572886618001	CIPUTRA NUSANTARA	JL MENGANTI KARANGAN NO 32	03133006555	PT	BADAN	WIYUNG	BABATAN	70203	KOTA SURABAYA		JAWA TIMUR	Normal	2019-12-11 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
031572886657001	CIPUTRA NUSANTARA							68200				Normal	2019-11-04 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
020539326618000	PANCARAN SUARA CITRA	JL MAYJEND SUNGKONO NO 87	081336149640	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	35111	KOTA SURABAYA		JAWA TIMUR	Normal	2010-10-13 00:00:00	2010-11-19 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
011332046052000	ARJUNA UTAMA KIMIA	JL RUNGKUT INDUSTRI I NO 18-22 RT 001 RW 005	62318431646	PT	BADAN	TENGGILIS MEJOYO	KENDANGSARI	20291	KOTA SURABAYA		JAWA TIMUR	Normal	1987-09-29 00:00:00	2004-12-14 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
022089403614001	SUMATRACO LANGGENG MAKMUR	JL TAMBAK LANGON NO 20 RT.000 RW.000, TAMBAK LANGON	082131007666	PT	BADAN	ASEM ROWO	ASEM ROWO	10773	KOTA SURABAYA		JAWA TIMUR	Normal	2012-03-15 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
014976054604001	SARANA WARNAMEGAH	JL.RACI NO.10, BENOWO	081938144171	PT	BADAN	PAKAL	BENOWO	20299	KOTA SURABAYA		JAWA TIMUR	Normal	1998-09-02 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
014693014625001	GORGA MARGA MANDIRI							41019				PL/DE	2015-06-26 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
021138698614000	TOYO MATSU	JL RADEN SALEH NO 4-6 BLOK A NO 5	089678512449	PT	BADAN	BUBUTAN	BUBUTAN	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2004-02-05 00:00:00	2005-04-18 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
061386736607000	M. JOS SOETOMO	JL MAWAR NO 16 RT 003 RW 003	0811554032		OP	TEGALSARI	TEGALSARI	Z5000	KOTA SURABAYA	6,47203E+15	JAWA TIMUR	Normal	1985-04-30 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
312408420642001	ALAM SEJAHTERA INDONESIA							46900				Normal	2020-12-28 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
702229105952001	SUKSES MAJU ABADI							46900				Normal	2017-05-29 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
022089403437001	SUMATRACO LANGGENG MAKMUR							10773				Normal	2012-03-30 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
011372463734001	DHARMA LAUTAN UTAMA BATULICIN							52221				PL/DE	2002-03-06 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
015617665631000	PRASIDHA INTI JAYA	JL HR. MUHAMMAD NO 181 RT 005 RW 001	0317326500	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	68111	KOTA SURABAYA		JAWA TIMUR	Normal	1992-11-25 00:00:00	1992-11-25 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
030824593618000	GLOBAL MITRA SURYA	GRIYA BABATAN MUKTI IV BLOK D NO 14 RT 001 RW 007	081335855666	PT	BADAN	WIYUNG	BABATAN	46651	KOTA SURABAYA		JAWA TIMUR	Normal	2011-03-23 00:00:00	2011-04-19 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
025407354605000	KARUNIA PRIMA ENGINEERING	JL SULUNG MAS BLOK BLOK C NO 8 RT 005 RW 001	0313541770	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	46491	KOTA SURABAYA		JAWA TIMUR	Normal	2006-04-20 00:00:00	2006-07-12 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
705434306618000	INDOARTHA BUANA MAKMUR	APARTEMEN WATERPLACE RESIDENCE TOWER TKB-05, PAKUWON INDAH LONTAR TIMUR NO 3-5, BABATAN	6287751027208	PT	BADAN	WIYUNG	BABATAN	47736	KOTA SURABAYA		JAWA TIMUR	Normal	2014-07-01 00:00:00	2014-09-18 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
016208894614000	SURYA BAJAPRIMA	JL DUPAK NO 110C	62313579000	PT	BADAN	BUBUTAN	GUNDIH	46639	KOTA SURABAYA		JAWA TIMUR	Normal	1993-08-06 00:00:00	1993-09-02 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
060553229611001	SIERAH LANDAYANI SOETEMO	JIMERTO 2, KETABANG	3533989		OP	GENTENG	KETABANG	97000	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	PL/DE	2009-01-19 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
728894627606000	ASIDO ESTA GETAMA	SUB CO SPAZIO TOWER LANTAI 10, JL MAYJEN YONO SOEWOYO NO 35 RT 005 RW 001	081333274509	CV	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46442	KOTA SURABAYA		JAWA TIMUR	Normal	2015-04-28 00:00:00	2015-06-01 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
014800445619000	HASIL FASTINDO	JL MARGOMULYO INDAH I NO 01	085856970476	PT	BADAN	TANDES	BALONGSARI	46900	KOTA SURABAYA		JAWA TIMUR	Normal	1989-04-25 00:00:00	2020-03-27 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
315222612619000	GUNAWANGSA KREASINDO	JL PANGLIMA SUDIRMAN NO 21	0817626724	PT	BADAN	GENTENG	EMBONG KALIASIN	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2012-05-02 00:00:00	2013-01-09 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
015591159801001	NIKI MAPAN							22299				Normal	2023-06-05 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
021141734331001	JAYAPUTRA SEMESTA							47412				Normal	2012-01-30 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
021137500517001	VICTORY INTERNATIONAL FUTURES							66114				Non Efektif	2011-12-19 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
210853289642001	MULTIGUNA PANEL INDONESIA							46639				Normal	2022-05-11 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
916586621815001	MENTARI MAS MULTIMODA							50131				Normal	2021-03-17 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
014294656615000	SINAR PERMATA HALIM SWADAYA	JL RUNGKUT INDUSTRI II NO 43A	08123508640	PT	BADAN	RUNGKUT	KALIRUNGKUT	20118	KOTA SURABAYA		JAWA TIMUR	Normal	1986-02-06 00:00:00	1989-04-20 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
066538869606999	YULAN SANTOSO	SUMATERA 52-54 RT.002 RW.005, GUBENG			OP	GUBENG	GUBENG	Z5000	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Non Efektif	2009-06-23 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
014293047545001	ANGGAZA WIDYA RIDHA MULIA							41012				Normal	2017-10-12 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
014293047815001	ANGGAZA WIDYA RIDHA MULIA							41012				Normal	2020-04-06 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
026703967013001	SHELTER NUSA INDAH							78101				PL/DE	2018-06-07 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
014799381609000	PRAMITA	JL ADITYAWARMAN BLOK - NO 73-75 RT 004 RW 004	62315051900	PT	BADAN	WONOKROMO	SAWUNGGALING	86104	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2021-05-24 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014799381606001	PRAMITA	JL NGAGEL JAYA NO 71	081231993928	PT	BADAN	GUBENG	PUCANG SEWU	86903	KOTA SURABAYA		JAWA TIMUR	Normal	2016-05-17 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
735666281734000	BUANA EKA PRIMA	JL PRAPEN INDAH BLOK E NO 1 RT 005 RW 007	62811307252	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	49431	KOTA SURABAYA		JAWA TIMUR	Normal	2015-08-04 00:00:00	2016-08-24 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014799381201001	PRAMITA							86104				Normal	2013-08-23 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014799381541001	PRAMITA							86104				Normal	2000-02-29 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
078684545607000	GUNAWAN SANTOSO	JL MH.THAMRIN NO 62 RT 001 RW 020	62811327172		OP	TEGALSARI	DR. SOETOMO	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	2001-12-12 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
019757715724001	SASMITO							41019				Normal	2020-01-16 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
013476460604000	CITRABAHAGIA ELOK	JL BUKIT GOLF TERRACE C BLOK 2/12-A	0811329129	PT	BADAN	SAMBIKEREP	MADE	68111	KOTA SURABAYA		JAWA TIMUR	Normal	1990-04-02 00:00:00	1990-04-02 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
702229105604000	SUKSES MAJU ABADI	PERGUDANGAN BUMI MASPION BLOK I NO 32 RT 000 RW 000	081358900519	PT	BADAN	BENOWO	ROMOKALISARI	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2014-05-20 00:00:00	2017-08-09 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
733042469605000	SUMBER BIMA TRANS	JL SULUNG BLOK D-16 NO 89 RT 005 RW 001	6285330282772	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	52292	KOTA SURABAYA		JAWA TIMUR	Normal	2015-06-19 00:00:00	2015-09-10 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
028248169604000	LAI SUHARTONO	JL  DR. IR. H. SOEKARNO NO 417 & 417A	08113593000	YAY	BADAN	RUNGKUT	KEDUNG BARUK	85440	KOTA SURABAYA		JAWA TIMUR	Normal	2008-05-30 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
028257178604000	CAHYA RICO SENTOSA	PERGUDANGAN MUTIARA MARGOMULYO INDAH BLOK E-01	6287852571686	PT	BADAN	TANDES	MANUKAN WETAN	46636	KOTA SURABAYA		JAWA TIMUR	Normal	2009-12-29 00:00:00	2010-01-04 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
787468123618000	REIVO ADITYA	JL PAKIS ARGOSARI 5 BLOK B NO 10 RT 003 RW 002	6289842602053		OP	DUKUH PAKIS	DUKUH PAKIS	Z5000	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	2008-07-31 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
032015620613000	RAJAWALI BERLIAN	JL KALIANGET NO 134 RT 002 RW 003	081230479300	PT	BADAN			50131				Normal	2012-04-04 00:00:00	2013-09-24 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
762244531619000	BUNARUS LAJU SEJAHTERA	JL PANGLIMA SUDIRMAN INTILAND TOWER SUIT BLOK LT 3 NO 101-103	08121611519	PT	BADAN	GENTENG	EMBONG KALIASIN	46610	KOTA SURABAYA		JAWA TIMUR	Normal	2016-05-31 00:00:00	2020-11-23 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
018562538611000	KARYA MULTI GUNA	KOMPLEK ANDHIKA PLAZA JL SIMPANG DUKUH BLOK DD NO 38-40 RT 002 RW 011	085655182827	PT	BADAN	GENTENG	KAPASARI	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2003-04-09 00:00:00	2003-05-08 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
014409262905001	SURYA SEGARA SAFETY MARINE							30113				Normal	2022-11-01 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
022089403614002	SUMATRACO LANGGENG MAKMUR	JL KALIANAK BARAT NO 60 RT 001 RW 001	089652279345	PT	BADAN	ASEM ROWO	GENTING KALIANAK	10773	KOTA SURABAYA		JAWA TIMUR	Normal	2012-03-20 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
028174761613000	BROMO TRANSINDO	JL TELUK KUMAI TIMUR NO 133 RT 004 RW 002	081554602212	PT	BADAN			52291				Normal	2010-07-07 00:00:00	2010-07-07 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014249122615000	SINAR JAYA ABADI	JL.PANJANG JIWO RAYA NO 58, PRAPEN	0812348779	CV	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	41020	KOTA SURABAYA		JAWA TIMUR	Non Efektif	1901-01-01 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
021137500124001	VICTORY INTERNATIONAL FUTURES							66111				PL/DE	2014-03-19 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
664789138613000	ALAM ANUGRAH ABADI	WR SUPRATMAN NO 19 RT 001 RW 011	088805816389	PT	BADAN	TEGALSARI	DR. SOETOMO	68200	KOTA SURABAYA		JAWA TIMUR	Normal	2014-02-26 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
016638884604000	RAJASA PUTRA JAYA PERKASA	JL ROMOKALISARI 82 H/J	081230962278	PT	BADAN	BENOWO	ROMOKALISARI	26490	KOTA SURABAYA		JAWA TIMUR	Normal	1994-10-20 00:00:00	1997-11-11 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
015617665618001	PRASIDHA INTI JAYA	JL H.R.MUCHAMMAD NO 181	081331442485	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2004-03-02 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
916586621613000	MENTARI MAS MULTIMODA	JL PERAK BARAT NO 93	081210886686	PT	BADAN	KREMBANGAN	PERAK BARAT	50131	KOTA SURABAYA		JAWA TIMUR	Normal	2019-05-29 00:00:00	2022-03-29 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
031778087606000	PODO JOYO RESOURCES	JL KERTAJAYA INDAH TIMUR KAV XIV BLOK 16 A NO 7	0315950413	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2011-08-19 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
014975338821001	FAJAR LESTARI ABADI PERWAKILAN MANADO							41019				Normal	1997-07-03 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
014293112615000	DUTACIPTA SURYA PERKASA	PANJANGJIWO 58, PANJANGJIWO	1321061925	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	41012	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2007-12-18 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
021137500512001	VICTORY INTERNATIONAL FUTURES							66142				Normal	2015-10-09 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
021141734801001	JAYAPUTRA SEMESTA							46491				PL/DE	2010-05-24 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
029936523615000	TRIJAYA SURYAABADI	JL PANJANGJIWO NO 58 RT.001 RW.004, PANJANGJIWO	081234567912	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	24101	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2009-12-10 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
767172786607000	HUTOMO MANDALA RAHARJO	JL RAYA JERUK NO 15 RT 001 RW 001	081238880159	PT	BADAN	LAKARSANTRI	JERUK	68200	KOTA SURABAYA		JAWA TIMUR	Normal	2016-08-08 00:00:00	2019-08-21 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
704101146614000	STEPHEN GOLDEN KURNIAWAN	JL RAYA KERTAJAYA INDAH 128 BLOK S NO 210 RT 003 RW 009	081357071377		OP	MULYOREJO	MANYAR SABRANGAN	Z5000	KOTA SURABAYA	3,57806E+15	JAWA TIMUR	Normal	2014-06-11 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
032940231609000	VICTORY JAYA INDONESIA	JL KETINTANG PERMAI BLOK BD NO 12	081238315699	CV	BADAN	JAMBANGAN	KARAH	46335	KOTA SURABAYA		JAWA TIMUR	Normal	2013-05-31 00:00:00	2013-06-24 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
040133605618999	INDRAWATI TJANDRA	BUKIT DARMO GOLF BLOK S-5, PRADAH KALIKENDAL			OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA		JAWA TIMUR	PL/DE	2009-04-24 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
020539722626001	DJABESDEPO FORTUNA RAYA							47529				PL/DE	2001-11-22 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
764501904606000	ANGKASA SEMESTA RAYA	JL KALIBOKOR SELATAN NO 148	6285101378378	PT	BADAN	GUBENG	BARATAJAYA	47528	KOTA SURABAYA		JAWA TIMUR	Normal	2016-06-28 00:00:00	2016-08-29 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
016774101631000	BENTENG ANUGERAH SEJAHTERA	JL TANJUNGSARI NO 44-B RT 001 RW 016	085747881762	PT	BADAN	SUKOMANUNGGAL	SIMOMULYO	46631	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
311575591619000	BUMI RAYA	JL RANGKAH 5 NO 22 RT 004 RW 004	0313714883	CV	BADAN	TAMBAKSARI	RANGKAH	47211	KOTA SURABAYA		JAWA TIMUR	Normal	2010-02-08 00:00:00	2011-12-30 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
313004319614000	MALEO JAYA	JL KEDUNGDORO NO 10 RT 001 RW 010	6285649176299	PT	BADAN	SAWAHAN	SAWAHAN	46209	KOTA SURABAYA		JAWA TIMUR	Normal	2011-03-29 00:00:00	2014-01-13 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
843454620618000	INTIM JAYA ABADI	JL DARMO PERMAI UTARA BLOK XI NO 63	087753423154	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2018-03-19 00:00:00	2018-09-06 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
026329557605000	INDOLINE INCOMEKITA	JL TANJUNG SADARI NO 117 RT 000 RW 000	0313541379	PT	BADAN	KREMBANGAN	PERAK BARAT	50131	KOTA SURABAYA		JAWA TIMUR	Normal	2007-05-08 00:00:00	2009-10-30 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014799381428001	PRAMITA							86104				Normal	2022-09-21 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014799381421001	PRAMITA	JL JEND H AMIR MACHMUD NO 460 RT 005 RW 012, KOTA CIMAHI				CIMAHI TENGAH	PADASUKA	86104	KOTA CIMAHI			Normal	2015-03-17 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
026072579647001	PERMATA ANUGERAH YALASAMUDRA							41012				Normal	2020-09-08 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
015314487615000	YUSTIKA	PERUMAHAN GUNUNG ANYAR  ASRI BLOK B NO 1 RT 001 RW 006	62811315803	CV	BADAN	GUNUNG ANYAR	GUNUNG ANYAR TAMBAK	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2007-02-19 00:00:00	2007-04-10 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
823572813604000	SURYA PRATAMA SENTOSA	JL RAYA MANUKAN KULON (PERGUDANGAN 60 BLOK D/19-20)	087854545854	PT	BADAN	TANDES	MANUKAN KULON	46421	KOTA SURABAYA		JAWA TIMUR	Normal	2017-07-17 00:00:00	2017-09-05 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
016104184609000	INDOTRANS LESTARI	PERUMAHAN PALMA GRANDIA I BLOK BLOK K-02 NO 08 RT 001 RW 003	082217678678	PT	BADAN	BENOWO	SEMEMI	52293	KOTA SURABAYA		JAWA TIMUR	Normal	1993-08-31 00:00:00	1993-10-01 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
016729113619000	DUMAR SURABAYAJAYA	JL KARANG EMPAT II NO.12, PLOSO	081332874515	PT	BADAN	TAMBAKSARI	PLOSO	49431	KOTA SURABAYA		JAWA TIMUR	Normal	1994-06-04 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
017395385614000	PT DWILINGGA MANUNGGAL	JL TUBAN RAYA NO 50	087854116719	PT	BADAN	BUBUTAN	JEPARA	82990	KOTA SURABAYA		JAWA TIMUR	Normal	1997-07-03 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
022573539607000	SINERGI MULIA SYMCO	JL UNTUNG SUROPATI NO 89 RT 003 RW 014	08113007872	CV	BADAN	TEGALSARI	DR. SOETOMO	46651	KOTA SURABAYA		JAWA TIMUR	Normal	2008-06-20 00:00:00	2008-08-05 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
701592016607001	ADHIDAHYA MEDIA INDONESIA	TUNJUNGAN PLAZA V LT-3 RUANG TERBUKA TG-03-02 JL EMBONG MALANG NO 1-3-5 RT 008 RW 010	0895403848664	PT	BADAN	TEGALSARI	KEDUNGDORO	82302	KOTA SURABAYA		JAWA TIMUR	Normal	2017-08-31 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
028253961609001	BIKER SHOP	MARGOREJO INDAH, GEDUNG PAPAYA LT 2 NO 60-68 RT 001 RW 08	0318470670	PT	BADAN	WONOCOLO	MARGOREJO	46610	KOTA SURABAYA		JAWA TIMUR	Normal	2011-12-19 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
011372463922001	DHARMA LAUTAN UTAMA							50111				PL/DE	2001-12-07 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
028173102613000	CIPTA MEDIA DAYA	KEBALEN WETAN 6 NO 5	6285100994807	CV	BADAN	PABEAN CANTIAN	KREMBANGAN UTARA	43212	KOTA SURABAYA		JAWA TIMUR	Normal	2009-02-20 00:00:00	2019-07-18 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
028245751614000	MITRA MULIA BANGUN PUTERA	RUKO MUTIARA BLOK D/23  JL DUPAK NO 63	0315469731	PT	BADAN	BUBUTAN	GUNDIH	46633	KOTA SURABAYA		JAWA TIMUR	Normal	2009-07-15 00:00:00	2009-08-12 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
805935582605000	AMARIS TIRTA PRATAMA	JL CENDRAWASIH NO 24 RT 002 RW 010	08113338950	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	46339	KOTA SURABAYA		JAWA TIMUR	Normal	2016-11-22 00:00:00	2017-01-11 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
015448194615000	NUSA TRIUTAMA	JL PANJANGJIWO NO.48 BLOK C NO 8 RT 001 RW 002	082132228939	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	46691	KOTA SURABAYA		JAWA TIMUR	Normal	2006-06-07 00:00:00	2006-06-21 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
021141734614001	JAYAPUTRA SEMESTA	RAYA DUPAK 63, RUKO MUTIARA D-1 , GUNDIH	03170988818	PT	BADAN	BUBUTAN	GUNDIH	46491	KOTA SURABAYA		JAWA TIMUR	PL/DE	2010-06-01 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
016775025607000	INTELINDO CITRAKARYA	JL CEMPAKA NO 26	0315340250	PT	BADAN	TEGALSARI	TEGALSARI	46491	KOTA SURABAYA		JAWA TIMUR	Normal	1994-11-08 00:00:00	\N	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
014800064606000	CAHAYACANDRA KENCANAPUTRA	JL NGAGEL JAYA SELATAN NO 141 II	085892046723	PT	BADAN	GUBENG	PUCANG SEWU	46900	KOTA SURABAYA		JAWA TIMUR	Normal	1989-03-17 00:00:00	1990-03-24 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
023164429951000	PAPUA SEJAHTERA	JL SIMO JAWAR NO 35 RT 004 RW 001	081267858889	CV	BADAN	SUKOMANUNGGAL	SIMOMULYO BARU	47111	KOTA SURABAYA		JAWA TIMUR	Normal	2005-08-24 00:00:00	2006-02-13 00:00:00	\N	user_2sman5MQQu57XoEHfjHe1ImowKn
021141734026001	JAYAPUTRA SEMESTA							46639				Non Efektif	2010-05-25 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
021141734323002	JAYAPUTRA SEMESTA							46491				Normal	2018-09-03 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
021141734901001	JAYAPUTRA SEMESTA							46491				Normal	2010-05-24 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
026329912042001	SARANA LINTAS LANGGENGLESTARI							52293				Normal	2008-07-17 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
660969205614000	TRIMANUNGGAL MANDIRI TAMA	JL MARGOMULYO 31 BLOK B NO 12 RT 001 RW 001	081270750080	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2014-01-15 00:00:00	2014-03-25 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
021137500652001	VICTORY INTERNATIONAL FUTURES							66311				Normal	2011-12-19 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
031259914609000	ANUGERAH ATLANTIK	JL PULO TEGALSARI V NO 28 RT 009 RW 007	082319191120	PT	BADAN	WONOKROMO	WONOKROMO	33151	KOTA SURABAYA		JAWA TIMUR	Normal	2011-09-16 00:00:00	2012-10-16 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
020539722809001	DJABESDEPO FORTUNA RAYA	PATTENE BUSINESS PARK BLOK C NO 19 RT 000 RW 000, PABENTENGANG, KAB. MAROS				MARUSU	PA"BENTENGANG	46639	KAB. MAROS			Normal	2022-07-01 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
020539722721001	DJABESDEPO FORTUNA RAYA							46639				Normal	2022-07-01 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
020539722314001	DJABESDEPO FORTUNA RAYA							46639				Normal	2022-07-01 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
804854875604000	GEMILANG JAYA ABADI	DARMO PERMAI TIMUR 1 NO 29	0811311224	CV	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	45405	KOTA SURABAYA		JAWA TIMUR	Normal	2016-11-15 00:00:00	2017-01-13 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014693014609000	GORGA MARGA MANDIRI	JLDARMOKALI NO 65-A RT 003 RW 004	085330078250	PT	BADAN	WONOKROMO	DARMO	41019	KOTA SURABAYA		JAWA TIMUR	Normal	1989-05-31 00:00:00	1989-11-03 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
028172906613000	SUMBER TEHNIK JAYA	JL KEMBANG JEPUN NO 28-30	081515880773	CV	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2009-01-15 00:00:00	2009-01-15 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
824411680614000	BINTANG JAYA	JL. TEMBOK DUKUH NO 86 RT 002 RW 001	082136787171	CV	BADAN	BUBUTAN	TEMBOK DUKUH	25993	KOTA SURABAYA		JAWA TIMUR	Normal	2017-07-27 00:00:00	2017-08-18 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
240492314604000	HENRY HIDAYAT	JL RAYA BIMA SAKTI BLOK AS NO 15 RT 010 RW 003	62816522678		OP	SUKOMANUNGGAL	SUKOMANUNGGAL	Z5000	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	2006-12-11 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
016774101642001	BENTENG ANUGERAH SEJAHTERA							46631				Normal	2021-01-12 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
041483363616001	LIAUW, LINDRATINI	KAPASARI 100 RT.006 RW.008, KAPASAN	031-3715431		OP	SIMOKERTO	KAPASAN	Z5000	KOTA SURABAYA	3,57812E+15	JAWA TIMUR	Normal	2009-01-23 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
097557318616000	MARLENE SIE	JL KAPASARI NO 100 RT 006 RW 008	03199442988		OP	SIMOKERTO	KAPASAN	Z5000	KOTA SURABAYA	3,37402E+15	JAWA TIMUR	Normal	2003-12-18 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
754047280603000	MAHALAYA AGRI CORP	JL KALIANAK BARAT BLOK F NO 108	03199025297	PT	BADAN	ASEM ROWO	GENTING KALIANAK	46319	KOTA SURABAYA		JAWA TIMUR	Normal	2016-03-04 00:00:00	2018-06-06 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
030714356628001	SINAR KENCANA ELEKTRIK							47592				Non Efektif	2017-09-13 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
033305467604000	SUKSES MAPAN ABADI	ROMOKALISARI INDUSTRI RAYA 1/20	081358900519	PT	BADAN	BENOWO	ROMOKALISARI	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2013-11-25 00:00:00	2014-01-17 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
015545031604000	APTACITRA SURYA	JL TAMAN PERK.CITRA RAYA KAV.1 CITRA RAYA UTAMA	6285733165477	PT	BADAN	SAMBIKEREP	MADE	42918	KOTA SURABAYA		JAWA TIMUR	Normal	1999-06-03 00:00:00	2016-10-24 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
826213274611000	VISI MAJU BERSAMA	PERGUDANGAN PT. MEIKO ABADI VI BLOK F-12 RT 009 RW 002	628113543888	PT	BADAN	DRIYOREJO	SUMPUT	46593	KAB. GRESIK		JAWA TIMUR	Normal	2017-08-21 00:00:00	2018-01-08 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
450382197604000	YESSICA SUSANTO SIDHARTA	MAYJEN HR. MOHAMAD 20-22 RT.001 RW.005, PUTAT GEDE	0818390260		OP	SUKOMANUNGGAL	PUTAT GEDE	Z5000	KOTA SURABAYA	3,57828E+15	JAWA TIMUR	Normal	2012-03-09 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
027767425618000	GRAND CITY PROPERTINDO	JL HR MUHAMMAD NO 373-383	0318666480	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	41011	KOTA SURABAYA		JAWA TIMUR	Normal	2008-07-11 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
028253961618001	BIKER SHOP	JL BUKIT DARMO GOLF BLOK G NO 2	6285648324362	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	45405	KOTA SURABAYA		JAWA TIMUR	Normal	2012-07-27 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
014409262901001	SURYA SEGARA SAFETY MARINE							30113				PL/DE	2020-06-25 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
018313064028001	TRICIPTA AGUNG SEJAHTERA							47773				Normal	2006-07-03 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
011080835631000	MOGA DJAJA	GEDUNG JEMBATAN MERAH PLAZA LT. DASAR G BLOK 022	081222222577	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	46443	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
032015869613000	JAYATIRTA ESA ABADI	JL KALIANGET NO 26-A RT 002 RW 003	0313297872	PT	BADAN			52291				Normal	2012-06-05 00:00:00	2012-06-06 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
031778707611001	MUTIARA BAKTI MANDIRI	JL.GUBENG POJOK NO.1,GRAND CITY MALL LT.LG NO.20,KETABANG		PT	BADAN	GENTENG	KETABANG	47249	KOTA SURABAYA		JAWA TIMUR	PL/DE	2013-11-19 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
021136072614000	MODERN KERAMIK JAYA	JL BALIWERTI BLOK KAV 10/21 NO 119-121 RT 003 RW 008	08385880880	PT	BADAN	BUBUTAN	ALUN-ALUN CONTONG	47525	KOTA SURABAYA		JAWA TIMUR	Normal	2002-06-13 00:00:00	2011-10-25 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
021137500426001	VICTORY INTERNATIONAL FUTURES							66142				Normal	2020-08-12 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
014975338811001	FAJAR LESTARI ABADI							46339				Normal	2002-08-12 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
021137500428001	VICTORY INTERNATIONAL FUTURES							66142				Normal	2020-07-21 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
018796250606000	ANUGRAH PRATAMA	JL KLAMPIS JAYA NO 29E	082132248189	CV	BADAN	SUKOLILO	KLAMPIS NGASEM	46511	KOTA SURABAYA		JAWA TIMUR	Normal	1999-12-11 00:00:00	2003-06-09 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
021141734731001	JAYAPUTRA SEMESTA							46491				Normal	2010-05-25 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
021137500526001	PLATINUM BERJANGKA							64999				PL/DE	2006-08-23 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
026998070643001	SENTINEL CAKRA BUANA							80100				Normal	2016-09-01 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
916586621822001	MENTARI MAS MULTIMODA							50131				Normal	2021-05-06 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
021137500821001	VICTORY INTERNATIONAL FUTURES							66111				Normal	2015-01-13 00:00:00	\N	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
863297867606000	PUSAKA MULYA MEDIKA	JL KLAMPIS JAYA RUKO KLAMPIS SQUARE BLOK B NO 6	62811357880	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	47725	KOTA SURABAYA		JAWA TIMUR	Normal	2018-10-23 00:00:00	2019-03-20 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
020539722622001	DJABESDEPO FORTUNA RAYA							46639				PL/DE	2009-01-08 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
020539722657001	DJABESDEPO FORTUNA RAYA							46639				Non Efektif	2003-06-12 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
016733008609000	GLORIA SCIENTIFIC ABADI	JL MARGOREJO INDAH I BLOK A NO 535-536 RT 001 RW 008	62811327171	PT	BADAN	WONOCOLO	MARGOREJO	46441	KOTA SURABAYA		JAWA TIMUR	Normal	1995-03-10 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
030714356606000	SINAR KENCANA ELEKTRIK	JALAN KERTAJAYA 135 A LT 2	6281217112869	PT	BADAN	GUBENG	AIRLANGGA	47592	KOTA SURABAYA		JAWA TIMUR	Normal	2011-02-24 00:00:00	2011-04-25 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
041672601607000	SAM SANTOSO, MBA	JL IMAM BONJOL NO 109 RT 004 RW 014	08821796170		OP	TEGALSARI	DR. SOETOMO	69101	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Non Efektif	1984-02-29 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
727297947618000	VISI FOKUSSINDOTAMA PERKASA	JL ARGOPURO BLOK ASH 06 NO 57-59	082221003370	PT	BADAN	SAWAHAN	SAWAHAN	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2015-04-10 00:00:00	2015-08-06 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
097421812613000	NIO NURIADI	JL KALIMAS BARU NO 36 RT 008 RW 001	085221975107		OP			Z5000		3,57827E+15		Normal	2008-12-24 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
024430092609000	CITA YASA PERDANA	GAYUNG KEBONSARI BLOK XI NO 1 RT 002 RW 005	081290961036	PT	BADAN	GAYUNGAN	KETINTANG	43211	KOTA SURABAYA		JAWA TIMUR	Normal	2005-06-29 00:00:00	2006-05-04 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014799381626001	PRAMITA							86903				PL/DE	1992-02-14 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
019757715631000	SASMITO	PERUMAHAN YKP BLOK PS I-B NO 8	082124367485	PT	BADAN	RUNGKUT	PENJARINGANSARI	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2000-04-24 00:00:00	2000-05-16 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014386940619000	BUMI SIDOARJO PERMAI	JL RAYA KERTAJAYA INDAH NO. 47 F-310 RT 001 RW 010	08819470774/031	PT	BADAN	MULYOREJO	MANYAR SABRANGAN	42918	KOTA SURABAYA		JAWA TIMUR	Normal	2008-12-15 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
028256436604000	SURABAYA STEEL	PERUMAHAN BUMI MASPION IV JL RAYA ROMOKALISARI BLOK BLOK I NO 18	6281232337238	CV	BADAN	BENOWO	ROMOKALISARI	47521	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2010-04-13 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
908765399609000	FAKHARI SENTOSA	JL GAYUNGSARI TIMUR BLOK III NO MGG 5 RT 002 RW 006	6285231035074	CV	BADAN	GAYUNGAN	MENANGGAL	47725	KOTA SURABAYA		JAWA TIMUR	Normal	2019-03-18 00:00:00	2019-06-17 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
012030466941001	ARIA JASA REKSATAMA							71101				PL/DE	2015-11-06 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
810636142618000	ALTHA DYANUSA CONSULTING	GEDUNG PRAXIS UNIT 2H-23 JL. SONO KEMBANG NO 4-6 RT 002 RW 005	085711123344	PT	BADAN	GENTENG	EMBONG KALIASIN	62090	KOTA SURABAYA		JAWA TIMUR	Normal	2017-01-23 00:00:00	2017-02-22 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
066104613607003	ROBI WIRJADI	TUNJUNGAN PLAZA LT VI BLOK AREA PARKIR	0315311098		OP	TEGALSARI	KEDUNGDORO	56101	KOTA SURABAYA	3,57802E+15	JAWA TIMUR	Normal	2015-03-26 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
014409262613000	SURYA SEGARA SAFETY MARINE	JL. PERAK TIMUR NO 358 RT 001 RW 003	085646374995	PT	BADAN			30113				Normal	1986-10-10 00:00:00	1989-03-04 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
028258762615000	MOGAJAYA CEMERLANG	JL PENJARINGANSARI PS.I BLOK J NO 35	089616063755	CV	BADAN	RUNGKUT	PENJARINGANSARI	47511	KOTA SURABAYA		JAWA TIMUR	Normal	2008-09-24 00:00:00	2008-12-10 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
066104613607001	ROBI WIRJADI	TP II LT.5 BLOK LC-0103 N0 PC-64-73 JL BASUKI RAHMAD NO 8 - 12	08113046662		OP	TEGALSARI	KEDUNGDORO	56101	KOTA SURABAYA	3,57802E+15	JAWA TIMUR	Normal	2014-02-25 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
017395385643001	PT DWILINGGA MANUNGGAL							68111				Normal	2013-08-02 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
018313064085001	TRICIPTA AGUNG SEJAHTERA							47773				Normal	2019-03-01 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
908765399822001	FAKHARI SENTOSA							47725				Non Efektif	2021-08-25 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
011372463613001	DHARMA LAUTAN UTAMA	PERAK TIMUR 512 B7-B8, PERAK UTARA	0313298777	PT	BADAN			50131				Normal	2011-03-09 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
018229484225001	MIRANTI ADHI PERSADA							41013				Normal	2023-12-08 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
067097816618000	AMIEN GONDOSABDONO	JL VILLA BUKIT REGENCY 3 BLOK BLOK PE-11 NO 27-29 RT 003 RW 016	081333336789		OP	SAMBIKEREP	LONTAR	47725	KOTA SURABAYA	3,5782E+15	JAWA TIMUR	Normal	2010-07-23 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
031572886642001	CIPUTRA NUSANTARA							70203				Normal	2019-09-03 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
014824874406001	WARINGIN MEGAH							41019				Normal	2019-10-08 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
317317220619000	MUTIARA MANDIRI PERKASA	JL DHARMAHUSADA INDAH UTARA VI BLOK U/252&265 RT. 000 RW. 000	08123567272	PT	BADAN	MULYOREJO	MULYOREJO	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2013-04-10 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
028175495613000	BANDUNG CENTRAL ARTERI SAMUDRA	JL  KEMBANG JEPUN NO 194-196	083854559576	CV	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	47630	KOTA SURABAYA		JAWA TIMUR	Normal	2011-01-07 00:00:00	2011-01-07 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
827395195618000	ANUGRAH MAJU JAYA	KAWASAN PERTOKOAN SURYA INTI PERMATA I JL HR MUHAMMAD BLOK C NO 17	081233298133	CV	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	52292	KOTA SURABAYA		JAWA TIMUR	Normal	2017-09-04 00:00:00	2020-06-10 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
031778707619000	MUTIARA BAKTI MANDIRI	JL KERTAJAYA INDAH 5 BLOK F-331	085704024802/03	PT	BADAN	MULYOREJO	MANYAR SABRANGAN	56103	KOTA SURABAYA		JAWA TIMUR	Normal	2011-10-05 00:00:00	\N	2016-05-09 00:00:00	user_2smbpCYyFH3ezSUODUOhhBFVGAj
015591159125001	NIKI MAPAN							22299				Normal	2017-02-13 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
015591159413001	NIKI MAPAN							22299				Normal	2020-10-06 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
021141734722001	JAYAPUTRA SEMESTA							46491				Normal	2010-05-25 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
022566533622001	GATRA MEGA BERJANGKA							66142				PL/DE	2006-08-23 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
705434306402001	INDOARTHA BUANA MAKMUR							47736				Normal	2021-05-07 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
022566095609000	ANDIRAGA PROPERTINDO	JL NGAGEL RAYA NO 137-141 RT 006 RW 001	6281232898810	PT	BADAN	WONOKROMO	NGAGEL	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2003-03-12 00:00:00	2015-10-16 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
022572705614001	AGUNG BUANA CEMERLANG	KALIANAK BARAT NO.73 RT.001 RW.001, KALIANAK	031-7494770	PT	BADAN	ASEM ROWO	GENTING KALIANAK	47920	KOTA SURABAYA		JAWA TIMUR	PL/DE	2010-02-12 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
021757786444001	SHELTER NUSANTARA	JL. CIJAGRA NO 03 RT 01 RW 09, BOJONGSOANG, KAB. BANDUNG				BOJONGSOANG	BOJONGSOANG	80100	KAB. BANDUNG			Non Efektif	2017-11-30 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
011085222433001	INDONESIA MULTICOLOUR PRINTINGLTD							25940				PL/DE	1997-04-16 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
910216076609000	ARUM DAUN NARA	JL MARGOREJO INDAH BLOK D NO 521 RT 004 RW 005	0811308035	PT	BADAN	WONOCOLO	SIDOSERMO	70203	KOTA SURABAYA		JAWA TIMUR	Normal	2019-03-28 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
078682911607000	SUGIARTO	DIAN ISTANA BLOK A-2 NO 42 RT 003 RW 008	6281246017226		OP	WIYUNG	WIYUNG		KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	2001-10-22 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
022070486631000	SENTRA SUPPORT SERVICE	JL JEMUR ANDAYANI XIX NO 2	081938709200	PT	BADAN	WONOCOLO	SIWALANKERTO	78300	KOTA SURABAYA		JAWA TIMUR	Normal	2008-01-23 00:00:00	2008-01-23 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
719853772606000	ANGELICA SALIM	JL RAYA DHARMAHUSADA AA NO 11	628113341088		OP	GUBENG	MOJO	Z5000	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	2015-01-21 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
828003467619000	DEKORINDO SUKSES	JL DR IR H SOEKARNO NO 28A RT 003 RW 003	62811477990	CV	BADAN	MULYOREJO	KALIJUDAN	47511	KOTA SURABAYA		JAWA TIMUR	Normal	2017-09-15 00:00:00	2018-03-06 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014799381216001	PRAMITA							86903				Non Efektif	2015-08-07 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
015927494631001	GRANDE FAMILY VIEW	JL RAYA GOLF GRAHA FAMILI BLOK B NO 5 RT 2 RW 2	081332044621	PT	BADAN	WIYUNG	BABATAN	93114	KOTA SURABAYA		JAWA TIMUR	Normal	2007-09-04 00:00:00	\N	2020-07-30 00:00:00	user_2smbEzk5YCUvPfdGMKapmH6g4aK
019757715502001	SASMITO							41019				Normal	2019-06-21 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
015446305604000	BUMI INDAH PERMAITERANG	KOMPLEK TAMAN PERKANTORAN CITRA RAYA KAV 1 JL CITRA RAYA UTAMA	082262000909	PT	BADAN	SAMBIKEREP	MADE	68111	KOTA SURABAYA		JAWA TIMUR	Normal	1992-01-24 00:00:00	2016-10-24 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
029938156822001	NUSANTARA BASKARA JAYA							62090				Non Efektif	2016-06-14 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
311575591602001	BUMI RAYA							47219				Normal	2015-03-24 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014297550026001	ALPHA UTAMA MANDIRI							46900				PL/DE	1987-06-19 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
787468123611001	REIVO ADITYA	PLAZA SURABAYA LANTAI 3 NO.16-17 JALAN PEMUDA NO 33-37 RT - RW -	081703775490		OP	GENTENG	EMBONG KALIASIN	47723	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	2014-09-25 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
010022903631000	BONDI SYAD MULIA	JL RUNGKUT INDUSTRI II NO 35	082141196465	PT	BADAN	RUNGKUT	KALIRUNGKUT	25920	KOTA SURABAYA		JAWA TIMUR	Normal	1997-05-02 00:00:00	1990-05-22 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
849237029611000	SUNFIL ANUGERAH SEJAHTERA	GEDUNG INTILAND TOWER LEVEL 3 JL PANGLIMA SUDIRMAN NO 101-103 RT 000 RW 000	6285103331989	PT	BADAN	GENTENG	EMBONG KALIASIN	70203	KOTA SURABAYA		JAWA TIMUR	Normal	2018-05-23 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
316139252607000	PUNDI ABADI PROPERINDO	JL BINTORO NO 27 RT 005 RW 014	081931889539	PT	BADAN	TEGALSARI	DR. SOETOMO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2012-10-22 00:00:00	2013-09-26 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
069844371607000	RAJESHLAL MOHANLAL VASWANI	JL DINOYO TANGSI BLOK VI NO 18 RT 004 RW 003	082210037380		OP	TEGALSARI	KEPUTRAN	Z5000	KOTA SURABAYA	3,57812E+15	JAWA TIMUR	Non Efektif	1997-09-11 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014409262924001	SURYA SEGARA SAFETY MARINE							30113				Normal	2023-09-13 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
022071310705001	ADI SETIA UTAMA JAYA							46530				Non Efektif	2020-11-19 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
702229105953001	SUKSES MAJU ABADI							47528				Non Efektif	2018-03-09 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
806045787643000	TRISAKTI PRIMA LESTARI	JL. RAYA KALIRUNGKUT 5 BLOK B - 29	085104930701	PT	BADAN	RUNGKUT	KALIRUNGKUT	46100	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2016-12-07 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
017821836611000	PENTATRUST	GEDUNG TRILLIUM OFFICE LT 1 JL PEMUDA NO 108-116	62315477225	PERSEKUTUAN	BADAN	GENTENG	EMBONG KALIASIN	69201	KOTA SURABAYA		JAWA TIMUR	Normal	2006-01-03 00:00:00	2006-01-05 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
031572886125001	CIPUTRA NUSANTARA							68200				Normal	2018-08-16 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
012194783618000	BATARA AGUNG MULIA	JL KEBRAON II NO 21	08123026964	PT	BADAN	KARANG PILANG	KEDURUS	10772	KOTA SURABAYA		JAWA TIMUR	Normal	1986-02-10 00:00:00	1984-12-31 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
028257178604001	CAHYA RICO SENTOSA							46100				PL/DE	2009-10-15 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
857374425606000	TIARA INDO PERKASA	JL KERTAJAYA NO 174	6285102275200	CV	BADAN	GUBENG	KERTAJAYA	47796	KOTA SURABAYA		JAWA TIMUR	Normal	2018-09-03 00:00:00	2019-05-28 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
022066872605000	PELAYARAN SURYA TIMUR LINE	JL LAKSDA M. NASIR BLOK E-3 NO 29 RT 001 RW 005	082140974250	PT	BADAN	KREMBANGAN	PERAK BARAT	50211	KOTA SURABAYA		JAWA TIMUR	Normal	2006-04-13 00:00:00	2022-12-23 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
012201588605000	PANCA WIRA DHARMA	JL GATOTAN NO 10	081357208359	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	42101	KOTA SURABAYA		JAWA TIMUR	Normal	1984-06-08 00:00:00	1984-06-22 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
832638746614000	ASAHAN METALINDO PERKASA	RUKO SEMUT SQUARE BLOK C NO 8 RT 000 RW 000	03199222689	CV	BADAN	PABEAN CANTIAN	BONGKARAN	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2017-11-14 00:00:00	2017-12-15 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
916586621924001	MENTARI MAS MULTIMODA	TERMINAL MULTIPURPOSE WAE KELAMBU, WAE KELAMBU, KAB. MANGGARAI BARAT				KOMODO	WAE KELAMBU	50131	KAB. MANGGARAI BARAT			Normal	2023-11-20 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
313974933619000	TRITUNGGAL CIPTA ANUGERAH	JL KENJERAN NO 336	087853156634	CV	BADAN	TAMBAKSARI	GADING	47725	KOTA SURABAYA		JAWA TIMUR	Normal	2011-10-17 00:00:00	2020-05-20 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
021141734113001	JAYAPUTRA SEMESTA							46491				Normal	2010-05-31 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
040238248616000	HADI SUSANTO SIDHARTA	JL MAYJEN HR MOHAMAD NO 20-22 RT 001 RW 005	62315353531		OP	SUKOMANUNGGAL	PUTAT GEDE	Z5000	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	1983-12-04 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
021141734811001	JAYAPUTRA SEMESTA							46491				Normal	2023-08-28 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
019295864615000	MULTI TEKNIK INDONESIA	PANJANGJIWO 58 RT.001 RW.004, PANJANGJIWO	0812524679	CV	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	46900	KOTA SURABAYA		JAWA TIMUR	Non Efektif	1999-11-22 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
021141734614000	JAYAPUTRA SEMESTA	JL DUPAK 63, RUKO MUTIARA BLOK F NO 22-23	082151305286	PT	BADAN	BUBUTAN	GUNDIH	46491	KOTA SURABAYA		JAWA TIMUR	Normal	2005-12-08 00:00:00	2006-01-13 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
824843627618000	KENTARO TEKNIK INDUSTRI	PERUMAHAN GRAHA FAMILI BLOK G NO 56 RT 004 RW 002	085733933807	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	47797	KOTA SURABAYA		JAWA TIMUR	Normal	2017-08-01 00:00:00	2017-09-27 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
014293047502001	ANGGAZA WIDYA RIDHA MULIA							41012				Normal	2019-07-10 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
021696299901001	SATYA BIAS MANDIRI							20119				Non Efektif	2006-09-05 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
086452679609000	STEVEN TONGREJO	JL MARGOREJO INDAH BLOK D NO 521 RT 004 RW 005	0811316380		OP	WONOCOLO	SIDOSERMO	Z5000	KOTA SURABAYA	3,57802E+15	JAWA TIMUR	Normal	2013-10-22 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
011085222624001	INDONESIA MULTI COLOUR PRINTING							25940				PL/DE	2011-10-20 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
078677036619000	JULIANTI	JL KERTAJAYA INDAH TIMUR BLOK O NO 109 RT 005 RW 010	623199442988		OP	MULYOREJO	MANYAR SABRANGAN	Z5000	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	2003-12-29 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
027769256736001	SENTOSA LAJU ENERGY							46610				Non Efektif	2018-11-28 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
316714252613000	ADIL SENTOSA ABADI	JL PERAK TIMUR 512 BLOK F NO 9-11 RT 002 RW 003	083849576261	PT	BADAN			52292				Normal	2013-01-22 00:00:00	2022-10-26 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014661359613000	LUMBUNG HASILTANINDO BAHAGIA	JL PERAK TIMUR NO 312 RT 001 RW 003	0313292449	PT	BADAN			46209				Normal	1989-12-13 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014799381423001	PRAMITA							86903				Normal	1991-07-30 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014799381721001	PRAMITA							86903				Normal	2014-08-08 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
041483363616000	SUPARSONO	JL KAPASARI NO 100 RT 006 RW 008	081331102452		OP	SIMOKERTO	KAPASAN	64931	KOTA SURABAYA	3,57811E+15	JAWA TIMUR	Normal	1984-01-24 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014799381602001	PRAMITA	JALAN JAYANEGARA 17 RUKO PERUM PURI MOJOPAHIT, BANJARAGUNG, KAB. MOJOKERTO				PURI	BANJARAGUNG	86104	KAB. MOJOKERTO			Normal	2024-07-23 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
701592016613000	ADHIDAHYA MEDIA INDONESIA	KOMPLEK PERTOKOAN BIBIS MEGAH JL STASIUN KOTA NO 58-58A RT 003 RW 004	0895403848664	PT	BADAN	PABEAN CANTIAN	BONGKARAN	82302	KOTA SURABAYA		JAWA TIMUR	Normal	2014-05-09 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
024582025604000	KARYA USAHA SAMUDRA	JL RAYA DARMO PERMAI III PLAZA SEGI 8 KAV D-820	082140106615	PT	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	50131	KOTA SURABAYA		JAWA TIMUR	Normal	2006-05-11 00:00:00	2006-06-21 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
022071310613000	ADI SETIA UTAMA JAYA	JL KALIMAS TIMUR NO 146 & 150 RT 002 RW 006	08123214653	CV	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	46530	KOTA SURABAYA		JAWA TIMUR	Normal	2007-03-06 00:00:00	2007-03-27 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
031572886831001	CIPUTRA NUSANTARA							68200				Normal	2014-12-05 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
033176157604000	INDODUBAI KONVERSI ENERGI	MUTIARA MARGOMULYO PERMAI BLOK C-3 NO.06	6285852467940	PT	BADAN	TANDES	TANDES	46610	KOTA SURABAYA		JAWA TIMUR	Normal	2013-09-10 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
011332046631001	ARJUNA UTAMA KIMIA	JL RUNGKUT INDUSTRI I NO 18-22 RT 01 RW 05	628155060444	PT	BADAN	TENGGILIS MEJOYO	KENDANGSARI	20291	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	\N	2020-07-30 00:00:00	user_2smaYyAtW4LUhz8zof5cqmquyuT
033305467822001	SUKSES MAPAN ABADI							47521				Normal	2017-07-20 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
014386940617001	BUMI SIDOARJO PERMAI							68111				Non Efektif	2013-10-23 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
022071310822001	ADI SETIA UTAMA JAYA							25931				Non Efektif	2015-12-22 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
022089403417001	SUMATRACO LANGGENG MAKMUR							10774				Normal	2018-10-11 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
829587369615000	AGRO TEK MANDIRI JAYA	JL KUTISARI SELATAN XI NO 6 RT 005 RW 003	0318433536	PT	BADAN	TENGGILIS MEJOYO	KUTISARI	46652	KOTA SURABAYA		JAWA TIMUR	Normal	2017-10-05 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
014824874631000	WARINGIN MEGAH	JL KALIANYAR NO 42	085730186168	PT	BADAN	GENTENG	KAPASARI	41019	KOTA SURABAYA		JAWA TIMUR	Normal	1990-01-02 00:00:00	1990-01-02 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
710872490619000	SURIA JAYA ABADI	JL RAYA MULYOSARI NO 187 RT 000 RW 000	081273851931	PT	BADAN	MULYOREJO	KALISARI	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2014-09-24 00:00:00	2017-05-26 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
012322756614000	PRATAMA SUMBER MILINDO	JL BALIWERTI NO 32 RT 003 RW 010	0315320175	PT	BADAN	BUBUTAN	ALUN-ALUN CONTONG	46652	KOTA SURABAYA		JAWA TIMUR	Normal	1993-04-19 00:00:00	1993-04-19 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
015269053619001	BANK AMAR INDONESIA Tbk	JL KUSUMA BANGSA NO 110	081255252516	PT	BADAN	TAMBAKSARI	TAMBAKSARI	64121	KOTA SURABAYA		JAWA TIMUR	Normal	2012-03-02 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
315576355619000	CIPTA BANGUN MUTIARA	JL KERTAJAYA INDAH TENGAH BLOK VI NO H-202	0895398420876	PT	BADAN	MULYOREJO	MANYAR SABRANGAN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2012-07-03 00:00:00	2012-11-23 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
014296891619000	CAHAYA CERAH	JL SUTOREJO UTARA 27	082140796201	PT	BADAN	MULYOREJO	DUKUH SUTOREJO	42101	KOTA SURABAYA		JAWA TIMUR	Normal	2000-08-16 00:00:00	2000-08-31 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
012562922631001	KHARISMA SUMA JAYA SAKTI	JL KUSUMA BANGSA NO 96	62318470727	PT	BADAN	TAMBAKSARI	TAMBAKSARI	45403	KOTA SURABAYA		JAWA TIMUR	Normal	2007-09-04 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
825601586604000	VPR METALINDO	MARGOMULYO INDAH BLOK F NO 5	628123502858	CV	BADAN	TANDES	MANUKAN WETAN	46638	KOTA SURABAYA		JAWA TIMUR	Normal	2017-08-11 00:00:00	2018-04-12 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
021141734307001	JAYAPUTRA SEMESTA							46491				Normal	2007-11-30 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
022097687619000	ARTOFINA BERJAYA ABADI	GEDUNG PAKUWON TOWN SQUARE AA02-22 RT 000 RW 000	628123040706	PT	BADAN	MULYOREJO	KEJAWAAN PUTIH TAMBAK	46651	KOTA SURABAYA		JAWA TIMUR	Normal	2011-03-01 00:00:00	2011-03-01 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
026998070225001	SENTINEL CAKRA BUANA							80100				Normal	2020-08-26 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
916586621811001	MENTARI MAS MULTIMODA							50131				Normal	2023-03-20 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
020098455631000	VERONA MULTIKIMIA ABADI	KOMPLEK WONOKITRI INDAH BLOK S NO 31	6285850351185	PT	BADAN	DUKUH PAKIS	GUNUNG SARI	46652	KOTA SURABAYA		JAWA TIMUR	Normal	2002-01-14 00:00:00	2002-02-14 00:00:00	\N	user_2smbkBWW6xuEZqKYkIJ7iR9lUVu
019223973614000	BINTANG SATYA KENCANA	JL SULUNG SEKOLAHAN 10  ALUN-ALUN CONTONG	082338829647	CV	BADAN	BUBUTAN	ALUN-ALUN CONTONG	46491	KOTA SURABAYA		JAWA TIMUR	Normal	1999-09-20 00:00:00	1999-10-27 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
014293047625001	ANGGAZA WIDYA RIDHA MULIA							41012				Non Efektif	2020-10-01 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
313510851911001	WAHANA RIZKY GUMILANG							46441				Normal	2020-09-25 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
011085222603001	INDONESIA MULTI COLOUR PRINTING							25940				Normal	2006-01-11 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
014297550631000	ALPHA UTAMA MANDIRI	JL KEBONROJO NO 2-AA	08113164362	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
018744599615000	PRANA KELUARGA NUSANTARA	JL RUNGKUT LOR RL II D NO 2 RT 003 RW 010	6282139248239	PT	BADAN	RUNGKUT	KALIRUNGKUT	47725	KOTA SURABAYA		JAWA TIMUR	Normal	1999-01-11 00:00:00	1999-01-11 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
921159687607000	RONA ANUGERAH ALAM	JL POLISI ISTIMEWA NO 28 RT 001 RW 006	62315676355	PT	BADAN	TEGALSARI	KEPUTRAN	46204	KOTA SURABAYA		JAWA TIMUR	Normal	2019-07-10 00:00:00	2019-07-24 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014799381035001	PRAMITA							86104				Normal	2006-02-20 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
719854002606000	MARISSA SALIM	JL RAYA DHARMAHUSADA AA NO 11	6281230000975		OP	GUBENG	MOJO	Z5000	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	2015-01-21 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
018744599601001	PRANA KELUARGA NUSANTARA							46900				Non Efektif	2011-12-13 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
026072579524001	PERMATA ANUGERAH YALASAMUDRA							41012				PL/DE	2021-02-05 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
450285192607000	HANDOYO SANTOSO	JL KEPUTRAN VI NO 1-A RT.006 RW.001, KEPUTRAN	031-5456515		OP	TEGALSARI	KEPUTRAN	96990	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Non Efektif	2012-03-08 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
312408420615000	ALAM SEJAHTERA INDONESIA	JL KYAI HAJI ABDUL KARIM VIP 7 RT 001 RW 003	081381615890	CV	BADAN	GUNUNG ANYAR	RUNGKUT MENANGGAL	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2010-10-25 00:00:00	2011-09-26 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
763837051613000	FELICIA ANGESTI	JL TRENGGANU NO 20 RT 003 RW 007	08113204483		OP			Z5000		3,57813E+15		Normal	2016-08-31 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
014297550402001	ALPHA UTAMA MANDIRI							46100				Normal	2003-10-16 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
928620772604000	BUMI MAPAN ABADI	JL ROMOKALISARI INDUSTRI BLOK BLOK I NO 32 RT 01 RW 02	0313991717	PT	BADAN	BENOWO	ROMOKALISARI	68200	KOTA SURABAYA		JAWA TIMUR	Normal	2019-09-16 00:00:00	2021-05-24 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
025249871606000	AGRO TANI SENTOSA	JL. MOJOARUM GG V NO 1	082141031098	PT	BADAN	GUBENG	MOJO	46209	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2006-02-09 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
022569669614000	ATLANTIC ANUGRAH METALINDO	JL DUMAR INDUSTRI BLOK A-5 RT 008 RW 008	623199146032	PT	BADAN	ASEM ROWO	ASEM ROWO	24101	KOTA SURABAYA		JAWA TIMUR	Normal	2005-08-12 00:00:00	2005-08-22 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
031572886604000	CIPUTRA NUSANTARA	TAMAN PERKANTORAN CITRARAYA KAV.01	0317402008	PT	BADAN	SAMBIKEREP	MADE	68200	KOTA SURABAYA		JAWA TIMUR	Normal	2011-07-19 00:00:00	2013-05-30 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
834890618618000	VAINAMI MAKMUR SEJAHTERA	RUKO PLAZA GRAHA FAMILI BLOK B NO 2PGF	081332866522	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	56101	KOTA SURABAYA		JAWA TIMUR	Normal	2017-12-11 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
029938156615000	NUSANTARA BASKARA JAYA	JL RAYA KUTISARI INDAH NO 135 RT 007 RW 006	082233341833	PT	BADAN	TENGGILIS MEJOYO	KUTISARI	62090	KOTA SURABAYA		JAWA TIMUR	Normal	2010-05-11 00:00:00	2014-10-02 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
769874249618000	ANDREW WIBISONO	JL GRAHA FAMILI UTARA VI BLOK D NO 143-A	081238167777		OP	DUKUH PAKIS	PRADAH KALIKENDAL		KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	2016-09-07 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
032016057611000	AGRI JAYA LESTARI	GEDUNG PUSKOPALARMATIM, BIMA 3 LT. 3 R.2.1 JL. IKAN DORANG NO. 1	081553589800	CV	BADAN	KREMBANGAN	PERAK BARAT	46209	KOTA SURABAYA		JAWA TIMUR	Normal	2012-07-10 00:00:00	2012-12-28 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
011372463611000	DHARMA LAUTAN UTAMA	JL KANGINAN BLOK 0 NO 3-5 RT 002 RW 001	082334275550	PT	BADAN	GENTENG	KETABANG	50111	KOTA SURABAYA		JAWA TIMUR	Normal	1982-11-29 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
907407951619000	LINORA HARMONI INDONESIA	JL DHARMAHUSADA INDAH TENGAH BLOK V NO 5-7 RT 001 RW 009	081233387776	PT	BADAN	MULYOREJO	MULYOREJO	70209	KOTA SURABAYA		JAWA TIMUR	Normal	2019-03-06 00:00:00	2019-11-01 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
016211914613000	MATRA NALURI MUDA	JL PERAK TIMUR NO 202-B RT 002 RW 003	0313292314	PT	BADAN			41019				Normal	2010-10-12 00:00:00	2015-06-30 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
713879740615000	SANTO	KOMPLEK PERGUDANGAN JJ PERMATA JABON 2 BLOK E3	081231106787	CV	BADAN	WARU	TAMBAKSAWAH	47754	KAB. SIDOARJO		JAWA TIMUR	Normal	2014-11-05 00:00:00	2017-01-30 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
011372463608001	DHARMA LAUTAN UTAMA							50111				PL/DE	2003-06-04 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
839126323606000	HERLANGGA PRAMADITYA,S.KED	MANYAR KERTOADI BLOK 10/W NO 420 RT 003 RW 007	628123016996		OP	SUKOLILO	GEBANG PUTIH	86202	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	2018-01-31 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
026094557713001	SAMANDITA ADI MAKMUR							77392				Normal	2017-01-20 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
768230179606000	WARINGIN CAHAYA SEMESTA	JL MANYAR REJO 4 NO 18	6281339007990	CV	BADAN	SUKOLILO	MENUR PUMPUNGAN	47219	KOTA SURABAYA		JAWA TIMUR	Normal	2016-08-25 00:00:00	2016-09-29 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
315403352609000	KUSUMA TEKNIK PERSADA	JL RAYA MARGOREJO NO 16-18 RT 005 RW 004	0895395126265	PT	BADAN	WONOCOLO	JEMUR WONOSARI	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2012-06-01 00:00:00	2012-06-04 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
040228348605000	TJITJIK WIDYANTI DJATMIKO	JL TAMAN KALONGAN NO 14 RT 000 RW 000	088217983024		OP	KREMBANGAN	KREMBANGAN SELATAN	11010	KOTA SURABAYA	3,57816E+15	JAWA TIMUR	Normal	1983-12-04 00:00:00	1985-04-01 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
915478911604000	JANE STAFANIE, PRAJOGO	PERUMAHAN DARMO HARAPAN REGENCY BLOK BLOK RY NO 1-2 RT 008 RW 004	081359977664		OP	SUKOMANUNGGAL	TANJUNGSARI	Z5000	KOTA SURABAYA	3,57828E+15	JAWA TIMUR	Normal	2019-05-17 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
031572886952001	CIPUTRA NUSANTARA							46100				Normal	2014-10-27 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
869055418619000	ANTAKA SATO WAHARI	JL RAYA KERTAJAYA INDAH NO 114	0811318975	PT	BADAN	MULYOREJO	MANYAR SABRANGAN	64200	KOTA SURABAYA		JAWA TIMUR	Normal	2018-12-19 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
014693014627001	GORGA MARGA MANDIRI							41019				Non Efektif	2018-10-29 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
312320625643001	KENCAR SUKSES INVESTAMA							22220				Normal	2022-09-23 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
018562538645001	KARYA MULTI GUNA							46100				Normal	2022-06-14 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
022089403324001	SUMATRACO LANGGENG MAKMUR							10773				PL/DE	2012-02-24 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
027768449618000	GRAHA NANDI SAMPOERNA	JL LIDAH HARAPAN TIMUR, PERUMAHAN LEMBAH HARAPAN NO 9	08113238702	PT	BADAN	LAKARSANTRI	LIDAH WETAN	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2009-01-14 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
028404499611001	WAHANA ANUGERAH PRATAMA	GEDUNG GRAHA TUNJUNGAN LT.3 R.301-305 JL TUNJUNGAN NO 41	081333026944	PT	BADAN	GENTENG	GENTENG	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2013-09-19 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
066536012616001	JUNUS KOESOEMO	JL GEMBONG 2-16 BLOK E NO 2 - 3	0313768021		OP	SIMOKERTO	KAPASAN	14111	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	2013-03-04 00:00:00	\N	2017-02-20 00:00:00	user_2smZXnsIsnyUD4vOnRkYKe67QSm
945027019604000	HASTA SEMESTA	PERUMAHAN DREAMING LAND BLOK D5 NO 08 RT 001 RW 010	081234414241	CV	BADAN	BENOWO	SEMEMI	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2020-02-27 00:00:00	2020-06-11 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
746265479619000	BERKAT JAYA ABADI	JL KAPAS KRAMPUNG NO 118-A	628113639982	CV	BADAN	TAMBAKSARI	PLOSO	46521	KOTA SURABAYA		JAWA TIMUR	Normal	2015-12-02 00:00:00	2016-08-05 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
011089844618000	SEPANJANG AGUNG INDUSTRI	MASTRIP NO 400 RT 01 RW 01	081330785081	PT	BADAN	KARANG PILANG	KEBRAON	23121	KOTA SURABAYA		JAWA TIMUR	Normal	1982-11-05 00:00:00	2012-05-05 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
014824874306001	WARINGIN MEGAH							46100				Non Efektif	2005-02-16 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
015269053072001	BANK AMAR INDONESIA Tbk							64121				Normal	2010-05-14 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
011372463325001	DHARMA LAUTAN UTAMA							50111				Non Efektif	2014-02-07 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
739301125609000	INTIE TEHNIK POMPA	JL KETINTANG MADYA VII BLOK G NO 1-E	081357708676	PT	BADAN	JAMBANGAN	KARAH	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2015-09-11 00:00:00	2015-10-27 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
015266307821002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN PINGKAN MATINDAS NO 57C RT 008 RW 003, DENDENGAN DALAM, KOTA MANADO				PAAL DUA	DENDENGAN DALAM	46335	KOTA MANADO			Normal	2024-11-13 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307117002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN MEDAN KM 6,5, SIMPANG KARANGSARI NO 234, PONDOK SAYUR, KOTA PEMATANG SIANTAR				SIANTAR MARTOBA	PONDOK SAYUR	46335	KOTA PEMATANG SIANTAR			Normal	2024-11-18 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307446001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN SEBELAS APRIL, RANCAMULYA, KAB. SUMEDANG				SUMEDANG UTARA	RANCAMULYA	46335	KAB. SUMEDANG			Normal	2024-11-13 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307524002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN SOEKARNO HATTA BLOK B NO 12 RT 004 RW 009, TIDAR SELATAN, KOTA MAGELANG				MAGELANG SELATAN	TIDAR SELATAN	46335	KOTA MAGELANG			Normal	2024-11-13 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
011123700621001	TUKAD MAS GC							42918				Non Efektif	1985-08-12 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
014660138721001	MITRA INTERTRANS FORWARDING							52291				Normal	2007-08-21 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
014660138811001	MITRA INTERTRANS FORWADING							49432				Normal	1991-11-22 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307201001	PANAMAS							96990				PL/DE	1991-01-18 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307405001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46335				PL/DE	2001-12-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307542001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46339				PL/DE	2007-05-11 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307425002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS							46335				Normal	2024-11-13 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307952001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS PAPUA							46335				PL/DE	2005-03-14 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
018745778645001	LINTECH DUTA PRATAMA							25120				Normal	2010-11-03 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
022573034903001	SURYA SINAR BERLIAN							47723				Normal	2012-03-13 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
028251189604000	BUANA RAYA DUTA	JL KUPANG INDAH IV NO 22 NO 22	0818515524	CV	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2009-02-19 00:00:00	2009-04-01 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
022070759613000	MAJU LESTARI ABADI	JL. SONGOYUDAN NO 27	089696378804	CV	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	47611	KOTA SURABAYA		JAWA TIMUR	Normal	2006-12-29 00:00:00	2007-02-12 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
015266307402001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46335				PL/DE	2001-07-25 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
805261997615000	SARANA ANUGERAHTAMA LESTARI	JL KUTISARI NO 40 RT 004 RW 001	085100606262	PT	BADAN	TENGGILIS MEJOYO	KUTISARI	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2016-11-14 00:00:00	2016-12-01 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
748613486604000	RICHARD WIJAYA	JL RAYA SATELIT UTARA BLOK BLOK CN/4 RT 006 RW 003	0857312957471		OP	SUKOMANUNGGAL	TANJUNGSARI	47711	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	2016-01-06 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
061385308607000	IR. HARJANTO TJOKROSETIO	JL DR.WAHIDIN NO 27 RT 002 RW 010	6281230303838		OP	TEGALSARI	DR. SOETOMO	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	1985-12-09 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
012030466655001	ARIA JASA REKSATAMA							71101				Non Efektif	2014-11-05 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
024582405604000	TIGA RASA INDONESIA	JL MARGOMULYO INDAH I/B-4	083833611181	PT	BADAN	TANDES	BALONGSARI	46201	KOTA SURABAYA		JAWA TIMUR	Normal	2006-06-12 00:00:00	2012-02-09 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
012030466609000	ARIA JASA REKSATAMA	JL GAYUNG KEBONSARI GRAHA INDAH WISESA BLOK B-7 NO 44B RT 009 RW 002	6282143717272	PT	BADAN	GAYUNGAN	GAYUNGAN	71101	KOTA SURABAYA		JAWA TIMUR	Normal	1983-06-10 00:00:00	1989-08-01 00:00:00	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
803327303615000	MAHAKAM NUSANTARA LESTARI	JL RAYA KALIRUNGKUT NO 5 KOMPLEK RUNGKUT MEGAH RAYA BLOK B NO 29 RT 000 RW 000	6285104930703	PT	BADAN	RUNGKUT	KALIRUNGKUT	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2016-10-18 00:00:00	\N	2018-03-28 00:00:00	user_2smaYyAtW4LUhz8zof5cqmquyuT
816420251604000	CITRA MENTARI PERSADA	JL MENGANTI KARANGAN NO 32	03133006555	PT	BADAN	WIYUNG	BABATAN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2017-04-03 00:00:00	2017-05-08 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
042114249606000	MARIA LINGGIARTI	JL BILITON NO 81	081241572708		OP	GUBENG	GUBENG	47725	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	1984-04-11 00:00:00	1991-08-19 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
014409262721001	SURYA SEGARA SAFETY MARINE							46100				Normal	2002-10-23 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
018562538612001	KARYA MULTI GUNA							46100				Normal	2006-07-26 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
021144480614000	GRAHA MITRA GILANG LARASINDO	JL DUPAK 65, KOMP. MUTIARA DUPAK BLOK A NO 1 RT 000 RW 000	6285231500609	PT	BADAN	BUBUTAN	GUNDIH	47529	KOTA SURABAYA		JAWA TIMUR	Normal	2007-06-26 00:00:00	2007-08-02 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
928620772823002	BUMI MAPAN ABADI							68200				PL/DE	2020-04-30 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
026329128605000	SURYA SARANA SEJATI ABADI	JL MLIWIS NO 37 RT 001 RW 010	0315320252	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2006-12-19 00:00:00	2009-12-04 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
847804598607000	LOKA SEGARA LOGISTIK	JL TEGALSARI NO 39 RT 001 RW 001	08563328488	PT	BADAN	TEGALSARI	TEGALSARI	52295	KOTA SURABAYA		JAWA TIMUR	Normal	2018-05-03 00:00:00	\N	2023-03-03 00:00:00	user_2smZXnsIsnyUD4vOnRkYKe67QSm
017162975631000	HARUM ALAM SEGAR	JL KALISOSOK LOR NO 15	085230346300	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
011372463627001	DHARMA LAUTAN UTAMA	JL.GATOT SUBROTO NO.181 A, BANYUWANGI				KALIPURO	KALIPURO	52221	KAB. BANYUWANGI			Non Efektif	2002-02-18 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
011372463721001	DHARMA LAUTAN UTAMA							50111				Non Efektif	2002-02-25 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
702464249606000	BERHASIL INDONESIA GEMILANG	JL DR IR H SOEKARNO NO 531 RT 002 RW 001	081332820957	PT	BADAN	RUNGKUT	PENJARINGANSARI	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2014-05-21 00:00:00	2014-07-24 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
014824874642001	WARINGIN MEGAH							41019				Normal	2016-01-12 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
011080835626001	MOGA DJAJA							46443				Normal	2012-02-02 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
011331576607000	JAYA BAYA RAYA	JL RAYA PAGESANGAN NO 12 RT 004 RW 001	089609633344	PT	BADAN	JAMBANGAN	PAGESANGAN	20231	KOTA SURABAYA		JAWA TIMUR	Normal	1982-11-25 00:00:00	1984-12-31 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
717134100604000	RESTU ANAK JAYA ABADI BETON INDONESIA	JL RAYA TAMBAK OSOWILANGUN RT 001 RW 004	081233657242	PT	BADAN	BENOWO	TAMBAK OSO WILANGUN	23957	KOTA SURABAYA		JAWA TIMUR	Normal	2014-12-15 00:00:00	2015-02-25 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
015266307822002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN PROFESOR DOKTOR JOHN ARIO KATILI NO 37, TANGGIKIKI, KOTA GORONTALO				SIPATANA	TANGGIKIKI	46335	KOTA GORONTALO			Normal	2024-11-20 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307911002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN TUAN GURU HAJI SALEH HAMBALI NO 234, DASAN CERMEN, KOTA MATARAM				SANDUBAYA	DASAN CERMEN	46335	KOTA MATARAM			Normal	2024-11-01 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307115001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN JENDERAL SUDIRMAN, BUNUT BARAT, KAB. ASAHAN				KOTA KISARAN BARAT	BUNUT BARAT	46335	KAB. ASAHAN			Normal	2024-11-05 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307101003	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN TEUNGKU IMUM LUENG BATA KM 2,5 NO 09, PANTERIEK, KOTA BANDA ACEH				LUENG BATA	PANTERIEK	46335	KOTA BANDA ACEH			Normal	2024-11-08 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307401002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN RAYA JAKARTA KM. 4 RT 002 RW 013, PANANCANGAN, KOTA SERANG				CIPOCOK JAYA	PANANCANGAN	46335	KOTA SERANG			Normal	2024-11-08 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
011123700912001	TUKAD MAS GC							42101				Normal	1996-04-30 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307017001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS							46335				Normal	2001-07-18 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307202002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS							46335				Normal	2001-07-05 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307048001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46335				PL/DE	1991-01-10 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307621001	PERSH DAGANG DAN INDUSTRIPANAMASPERWAKILAN MADIUN							46335				PL/DE	2001-04-25 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307652001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS							46335				Normal	2024-11-11 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015313596422001	UNTUNG BERSAMA SEJAHTERA							32112				Normal	2020-07-06 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
021702188915001	LINGGAR JATI PERKASA							41019				Non Efektif	2014-09-01 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
020918157605000	TRIPALINDO TRANS MIX	KOMERING NO 14 RT 012 RW 006	0315687690	PT	BADAN	WONOKROMO	DARMO	42101	KOTA SURABAYA		JAWA TIMUR	Normal	2002-04-16 00:00:00	2003-03-11 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
746656974026001	SURYA ARTHA KOMPUTAMA							47411				Normal	2022-06-03 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307724001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS							46335				Normal	2024-11-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
018348235525001	INDONESIA DWI SEMBILAN							46209				PL/DE	2001-02-22 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
018313064614000	TRICIPTA AGUNG SEJAHTERA	JL MARGOMULYO 44 BLOK II NO 09	081336635004	PT	BADAN	ASEM ROWO	ASEM ROWO	47773	KOTA SURABAYA		JAWA TIMUR	Normal	1998-07-09 00:00:00	1998-08-03 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
826705543614000	ABIMAYU NUSANTARA JAYA	JL DUKUH KUPANG TIMUR BLOK XIX NO 9A RT 007 RW 009	081216156007	PT	BADAN	SAWAHAN	PAKIS	46414	KOTA SURABAYA		JAWA TIMUR	Normal	2017-08-25 00:00:00	2018-05-17 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
033305467722001	SUKSES MAPAN ABADI							46631				Normal	2014-03-25 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
017226192631000	XENODIA MANDIRI	JL GAYUNGSARI TIMUR BLOK MGH NO 7	082143058409	PT	BADAN	GAYUNGAN	MENANGGAL	41019	KOTA SURABAYA		JAWA TIMUR	Normal	1995-02-02 00:00:00	1995-02-15 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
259199081613000	OWEN SIDHARTA	JL THE MANSION BLOK BLOK PF 4 NO 32	085649189920		OP	SAMBIKEREP	LONTAR	47711	KOTA SURABAYA	3,57812E+15	JAWA TIMUR	Normal	2009-07-15 00:00:00	2012-04-09 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
014976054801001	SARANA WARNAMEGAH							20221				Normal	2007-04-10 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
312320625615000	KENCAR SUKSES INVESTAMA	JL RAYA KALIRUNGKUT BLOK M-46 NO 1-3 RT 001 RW 004	081553144898	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	22220	KOTA SURABAYA		JAWA TIMUR	Normal	2010-09-28 00:00:00	2011-04-08 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
028404499609000	WAHANA ANUGERAH PRATAMA	JL RAYA SATELIT BARAT NO JN-21 RT 003 RW 012	081249992242	PT	BADAN	SUKOMANUNGGAL	TANJUNGSARI	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2008-09-04 00:00:00	2009-02-09 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
027912401611000	SURYA SAKTI PROPERTINDO	JL MENGANTI KARANGAN NO 32	081232822802	PT	BADAN	WIYUNG	BABATAN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2009-11-05 00:00:00	2017-03-27 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
041370768611000	EDDY SUSANTO SUMINTO	JL EMBONG MALANG NO 84	08975589069		OP	GENTENG	KAPASARI	Z5000	KOTA SURABAYA	3,17101E+15	JAWA TIMUR	Normal	1984-01-15 00:00:00	2013-01-28 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
315237586613000	PURWANTO INVESTAMA	JL KALIMATI KULON NO 22 RT 002 RW 11	6285646860393	PT	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	66142	KOTA SURABAYA		JAWA TIMUR	Normal	2012-05-04 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
021754643619000	PRIMA FARMASINDO LESTARI	JL KENJERAN NO 631 RT 004 RW 005	082131036417	PT	BADAN	MULYOREJO	KALIJUDAN	46441	KOTA SURABAYA		JAWA TIMUR	Normal	2002-03-20 00:00:00	2002-07-10 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
011372463712001	DHARMA LAUTAN UTAMA							50111				PL/DE	2002-02-18 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
011372463801001	DHARMA LAUTAN UTAMA							79111				PL/DE	2002-03-07 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
948156195619000	NUSANTARA SEJAHTERA JAYA	RUKO SAN ANTONIO PERUMAHAN PAKUWON CITY BLOK N1 NO 123 RT 010 RW 008	6281283336968	CV	BADAN	MULYOREJO	KALISARI	47511	KOTA SURABAYA		JAWA TIMUR	Normal	2020-04-23 00:00:00	2020-07-09 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
015269053606001	BANK AMAR INDONESIA							64121				PL/DE	2013-07-29 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
016211914325001	MATRA NALURI MUDA							41019				PL/DE	2018-04-19 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
011372463417001	DHARMA LAUTAN UTAMA							50111				Non Efektif	2016-11-22 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
015266307622002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JL SUPERSEMAR NO 100-104, KOTA KEDIRI				KEDIRI KOTA	NGRONGGO	46335	KOTA KEDIRI			Normal	2024-11-08 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307643001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN BERBEK INDUSTRI VII NO 16-18, BERBEK, KAB. SIDOARJO				WARU	BERBEK	46335	KAB. SIDOARJO			Normal	2024-11-08 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307412001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN INSINYUR HAJI JUANDA BLOK A NO 11 RT 012 RW 028, MEKARJAYA, KOTA DEPOK				SUKMAJAYA	MEKARJAYA	46335	KOTA DEPOK			Normal	2024-11-08 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307626002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN WOLTER MONGINSIDI, DUSUN LANGSEPAN NO 884 RT 002 RW 009, ROWOINDAH, KAB. JEMBER				AJUNG	ROWOINDAH	46335	KAB. JEMBER			Normal	2024-11-19 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
014660138731001	MITRA INTERTRANS FORWARDING							52291				Normal	2012-10-24 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307121001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS							46421				PL/DE	1990-09-28 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307027001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN GARUDA NO 48 RT 003 RW 004, KEMAYORAN, JAKARTA PUSAT				KEMAYORAN	KEMAYORAN	46335	JAKARTA PUSAT			Normal	2024-11-13 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307521001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46335				PL/DE	2002-03-20 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
014660138905001	MITRA INTERTRANS FORWARDING							52291				Normal	1996-02-29 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
014660138712001	MITRA INTERTRANS FORWARDING							52291				Normal	2012-11-29 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015313596509001	UNTUNG BERSAMA SEJAHTERA							32112				Normal	2006-09-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
014660138713001	MITRA INTERTRANS FORWARDING							52291				Non Efektif	2012-11-14 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307325001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS							46335				Normal	2024-11-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307518001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS							46335				Normal	2024-11-01 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015313596901001	UNTUNG BERSAMA SEJAHTERA							32112				Normal	2022-03-22 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
024578593604000	VALVE MANDIRI INDONESIA	RUKO SENTRA TAMAN INTERNASIONAL BLOK BLOK C NO 9 RT 002 RW 010	082234691704	PT	BADAN	SAMBIKEREP	SAMBIKEREP	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2005-04-25 00:00:00	2005-05-17 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
015266307805001	PERUSAHAAN DAGANG DANINDUSTRI PANAMAS							46319				PL/DE	1991-01-29 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
016934838604000	PRIMA DWI NUSA	JL SAMBIARUM BLOK 51-H/16 RT 002 RW 006	6281235079418	PT	BADAN	SAMBIKEREP	SAMBIKEREP	95110	KOTA SURABAYA		JAWA TIMUR	Normal	1997-04-28 00:00:00	1997-05-19 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
020918157625001	TRIPALINDO TRANS MIX							41019				PL/DE	2013-12-11 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
015266307831001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46335				PL/DE	2004-04-13 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
018344887032001	SUTINDO SURYA SEJAHTERA							47521				Normal	2017-10-10 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
743357253647001	MASTER MAT INDONESIA							47530				Non Efektif	2019-04-01 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
803106012642001	SUMBER MANDIRI SURABAYA							46599				Normal	2019-08-02 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
023548852615000	SENTRA VIDYA UTAMA	JL MEDOKAN ASRI TENGAH MA.2Q NO 16 RT 001 RW 007	0318722719	PT	BADAN	RUNGKUT	MEDOKAN AYU	62090	KOTA SURABAYA		JAWA TIMUR	Normal	2003-11-06 00:00:00	2006-07-21 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
033305467811001	SUKSES MAPAN ABADI							47521				Normal	2017-04-17 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
031572886801001	CIPUTRA NUSANTARA	TALLASA BOULEVARD, JALUR LINGKAR BARAT, KAPASA, KOTA MAKASSAR				TAMALANREA	KAPASA	70203	KOTA MAKASSAR			Normal	2018-02-22 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
014799381001001	PRAMITA							87100				Normal	2001-08-21 00:00:00	\N	\N	user_2smbEzk5YCUvPfdGMKapmH6g4aK
014976054831001	SARANA WARNAMEGAH							20299				Normal	2007-03-21 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
030823652604000	CATALITE INDONESIA	JL. RAYA SUKOMANUNGGAL JAYA, RUKO SATELIT TOWN SQUARE BLOK D NO 05 RT 005 RW 003	62317323924	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2011-02-02 00:00:00	2011-02-07 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
012194700606000	SURYA INDAH PUTRAPERKASA	JL NIAS NO 66	62816500679	PT	BADAN	GUBENG	GUBENG	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2008-09-25 00:00:00	2008-09-25 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
756833828604000	MENARA INTI JAYA GROUP	JL SEMEMI GG NO 50 RT 003 RW 004	6281615330008	PT	BADAN	BENOWO	SEMEMI	42918	KOTA SURABAYA		JAWA TIMUR	Normal	2016-03-31 00:00:00	2016-10-26 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
316993336606000	MUTIARA MANDIRI SEJAHTERA	JALAN RUKO MEGAH GALAXY BLOK 16A NO 07	6281554611839	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2013-02-25 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
024768863615000	SINAR JAYA ELEKTRINDO	JL RUNGKUT MEGAH BLOK B NO 16	623199012666	PT	BADAN	RUNGKUT	KALIRUNGKUT	47592	KOTA SURABAYA		JAWA TIMUR	Normal	2007-12-17 00:00:00	2008-02-19 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
060560414611000	WENAS PANWELL THE	JL EMBONG TANJUNG NO 30	0816505946		OP	GENTENG	EMBONG KALIASIN	Z5000	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	1984-12-18 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
011080835525001	MOGA DJAJA							46414				Normal	2012-02-03 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
015107865631000	GALAXY ALAM SEMESTA	JL CITRA RAYA UTAMA KAV.1	081952384985	PT	BADAN	SAMBIKEREP	MADE	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
011080835623001	MOGA DJAJA							46443				Normal	2012-02-14 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
032015620922001	RAJAWALI BERLIAN							50131				Normal	2016-03-15 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
808311427607000	GATRA CAHAYA INVESTAMA	JL DR SUTOMO NO 65-67 RT 002 RW 013	6285257827212	PT	BADAN	TEGALSARI	DR. SOETOMO	46638	KOTA SURABAYA		JAWA TIMUR	Normal	2017-01-09 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
839986627607000	CITRA USAHA SEJAHTERA	GEDUNG EKONOMI, JL EMBONG MALANG NO 61-65 RT 001 RW 008	623153530053	PT	BADAN	TEGALSARI	KEDUNGDORO	55110	KOTA SURABAYA		JAWA TIMUR	Normal	2018-02-07 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
015266307455001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN PILANG RAYA NO 90A RT 001 RW 001, PILANGSARI, KAB. CIREBON				KEDAWUNG	PILANGSARI	46335	KAB. CIREBON			Normal	2024-11-18 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307323002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN TEMBESU NO 7, CAMPANG RAYA, KOTA BANDAR LAMPUNG				SUKABUMI	CAMPANG RAYA	46335	KOTA BANDAR LAMPUNG			Normal	2024-11-13 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307429002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN SOEKARNO HATTA NO 795 RT 003 RW 004, BABAKAN PENGHULU, KOTA BANDUNG				CINAMBO	BABAKAN PENGHULU	46335	KOTA BANDUNG			Normal	2024-11-13 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307627001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN RAYA JAJANG SURAT RT 002 RW 001, KARANGBENDO, KAB. BANYUWANGI				ROGOJAMPI	KARANGBENDO	46335	KAB. BANYUWANGI			Normal	2024-11-09 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307451002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN RAYA SERANG RT 005 RW 016, BOJONG, KAB. TANGERANG				CIKUPA	BOJONG	46335	KAB. TANGERANG			Non Efektif	2024-11-13 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307802002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN JENDERAL AHMAD YANI KM 6 BLOK C, LAPADDE, KOTA PAREPARE				UJUNG	LAPADDE	46335	KOTA PAREPARE			Normal	2024-11-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
011123700416001	TUKAD MAS GC							22299				Non Efektif	1982-12-03 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307214001	PANAMAS							47112				PL/DE	2005-01-28 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307308001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46100				PL/DE	2002-06-26 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307651001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS CAB.MALANG							46335				PL/DE	2001-04-16 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307117001	PT.PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46335				PL/DE	2001-07-09 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307434001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS							46335				Normal	2022-01-10 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015313596526001	UNTUNG BERSAMA SEJAHTERA							32112				Normal	2010-07-01 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
814290862613000	IEKIMTIE JAYA AGUNG	JL GEMBONG TEBASAN NO 34A-36	087853524101	PT	BADAN	GENTENG	KAPASARI	46441	KOTA SURABAYA		JAWA TIMUR	Normal	2017-03-08 00:00:00	2017-11-09 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
060593852614000	FENDY HARSONO	JL DUKUH KUPANG TIMUR XII-A NO 64A RT 002 RW 006	082244776377		OP	SAWAHAN	PAKIS	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	2012-03-15 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
017395740614000	TRISILA SENTOSA ABADI	JL BALIWERTI BLOK KAV 2 NO 119-121	087856611515	PT	BADAN	BUBUTAN	ALUN-ALUN CONTONG	46633	KOTA SURABAYA		JAWA TIMUR	Normal	1997-09-10 00:00:00	1997-09-15 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
015677545614000	DIANSARANA BERLIAN MOTORS	JL RAYA TAMBAK LANGON 32-A NO 32-A RT 001 RW 001	62317483331	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	45103	KOTA SURABAYA		JAWA TIMUR	Normal	1901-01-01 00:00:00	1992-03-06 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
015266307821001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							47729				PL/DE	2001-03-16 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
019223759801001	BERKAH MULIA MANDIRI							46610				Normal	2023-03-14 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
803999051615000	SARANA ANUGERAHTAMA METAL	JL KUTISARI NO 40 B RT 000 RW 000	628113051013	PT	BADAN	TENGGILIS MEJOYO	KUTISARI	46631	KOTA SURABAYA		JAWA TIMUR	Normal	2016-10-26 00:00:00	2016-11-22 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
015266307903001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46335				PL/DE	1990-10-31 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
743357253612001	MASTER MAT INDONESIA							47530				Normal	2019-05-08 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
014410666613000	ALAM GEMACITRA PRIMA	JL KALIAGUNG NO 7 RT 002 RW 005	081333282629	PT	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	47793	KOTA SURABAYA		JAWA TIMUR	Normal	1987-06-11 00:00:00	1990-11-26 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
031901598077000	ZENNO TRADING INDONESIA	JAPFA INDOLAND CENTER JAPFA TOWER II LT. 6 RUANG 605 JL PANGLIMA SUDIRMAN NO 66-68 RT 002 RW 009	0895395026871	PT	BADAN	GENTENG	EMBONG KALIASIN	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2012-02-02 00:00:00	2012-02-02 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
810636142311001	ALTHA DYANUSA CONSULTING							62090				PL/DE	2023-09-01 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
928620772823001	BUMI MAPAN ABADI							68200				Normal	2020-04-15 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
015269053613001	BANK AMAR INDONESIA <BANK AMAR>	JL. SONGOYUDAN NO 55	62313525011	PT	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	64121	KOTA SURABAYA		JAWA TIMUR	PL/DE	2017-02-14 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
028253961402001	BIKER SHOP							46641				Normal	2011-12-20 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
313881443618000	DRAGON TRADE INDONESIA	JL DARMO PERMAI SELATAN BLOK 5 NO 57 RT 001 RW 006	081553222439	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	25910	KOTA SURABAYA		JAWA TIMUR	Normal	2011-10-03 00:00:00	2011-11-14 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
033467960604000	KARUNIA REJEKI UTAMA	KOMP. PERGUDANGAN MUTIARA MARGOMULYO INDAH BLOK DC-3, 3A	082231013116	PT	BADAN	TANDES	MANUKAN WETAN	47596	KOTA SURABAYA		JAWA TIMUR	Normal	2014-01-18 00:00:00	2016-04-01 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
011372463703001	DHARMA LAUTAN UTAMA							50111				Normal	2022-10-14 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
011372463712002	DHARMA LAUTAN UTAMA							50111				PL/DE	2017-11-08 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
315891622615000	DIMENSI CITRA SEMESTA	RUKO PANJI MAKMUR BLOK D-06, JL PANJANG JIWO NO 46-48 RT 007 RW 002	082139471118	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	46691	KOTA SURABAYA		JAWA TIMUR	Normal	2012-09-17 00:00:00	2012-09-26 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
015269053619000	BANK AMAR INDONESIA TBK	JL BASUKI RACHMAD NO 109 RT 002 RW 007	082132836466	PT	BADAN	GENTENG	EMBONG KALIASIN	64121	KOTA SURABAYA		JAWA TIMUR	Normal	2001-12-04 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
014409262627001	SURYA SEGARA SAFETY MARINE							30113				Non Efektif	2019-03-29 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
060316981619000	DJUWITA ABADI	JL DHARMAHUSADA INDAH BLOK I NO 61-63 RT 003 RW 008	0811319117		OP	MULYOREJO	MULYOREJO	Z5000	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	1984-06-11 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
809936446619000	MUTIARA SENTOSA ABADI	KERTAJAYA INDAH V BLOK F NO 331	0315955670	CV	BADAN	MULYOREJO	MANYAR SABRANGAN	47111	KOTA SURABAYA		JAWA TIMUR	Normal	2017-01-13 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
015266307103001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN SISINGMANGARAJA, GAMPA, KAB. ACEH BARAT				JOHAN PAHLAWAN	GAMPA	46335	KAB. ACEH BARAT			Normal	2024-11-05 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307435001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN SETIADARMA II RT 004 RW 003, SETIA DARMA, KAB. BEKASI				TAMBUN SELATAN	SETIA DARMA	46335	KAB. BEKASI			Normal	2024-11-11 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307437001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN RAMBATAN WETAN BLOK B RT 014 RW 004, RAMBATAN WETAN, KAB. INDRAMAYU				SINDANG	RAMBATAN WETAN	46335	KAB. INDRAMAYU			Non Efektif	2024-11-13 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307307001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN LETNAN JENDERAL HARUN SOHAR <TANJUNG API-API> KM 1,3 KOMPLEK PERGUDANGAN PALEMBANG STAR NO 9, KEBUNBUNGA, KOTA PALEMBANG				SUKARAMI	KEBUNBUNGA	46335	KOTA PALEMBANG			Normal	2024-11-12 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
011123700911001	TUKAD MAS GENERAL CONTRAKTORCABANG NUSA TENGGARA BARAT							41012				Normal	1991-05-30 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307004002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS							46335				Normal	2019-04-10 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307405002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	PEMBANGUNAN NO 9 RT 004 RW 001, BABAKAN, KOTA SUKABUMI				CIBEUREUM	BABAKAN	46335	KOTA SUKABUMI			Normal	2024-11-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307408001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS KARAWANG							46335				PL/DE	2003-12-29 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307608001	PERS. DAGANG DAN INDUSTRI PANAMAS CAB.PAMEKASAN							46319				PL/DE	2001-05-01 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307622001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							47112				PL/DE	2001-03-09 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015313596124001	UNTUNG BERSAMA SEJAHTERA							32112				Normal	2021-04-26 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307712001	PERUSAHAAN DAGANG & INDUSTRI PANAMAS							47729				PL/DE	2006-07-11 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307504001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS							46335				PL/DE	1990-11-23 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
824697437604000	INDUSTRIAL ROBOTIC AUTOMATION	RAYA BRINGIN NO 32 RT 008 RW 001	081330222111	PT	BADAN	SAMBIKEREP	BERINGIN	28199	KOTA SURABAYA		JAWA TIMUR	Normal	2017-07-28 00:00:00	2017-10-20 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
028243111614000	SURYAMAS MEGAH STEEL	JL. RAYA GREGES BARAT NO 59 RT 000 RW 000	6285707602194	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	24101	KOTA SURABAYA		JAWA TIMUR	Normal	2008-06-18 00:00:00	2009-01-08 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
062585054611000	ALIM PRAKASA	JL WIJAYA KUSUMA NO 9 RT 003 RW 005	083848903309		OP	GENTENG	KETABANG	Z5000	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	1985-03-29 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
743357253611000	MASTER MAT INDONESIA	JL KETUPA NO 33-37 RT 005 RW 009	082257171805	PT	BADAN	GENTENG	KETABANG	47530	KOTA SURABAYA		JAWA TIMUR	Normal	2015-11-03 00:00:00	2016-08-23 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
803106012619001	SUMBER MANDIRI SURABAYA	JL H. MOH. NOER NO 126 RT 001 RW 001	03151503151	PT	BADAN	TAMBAKSARI	DUKUH SETRO	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2018-07-25 00:00:00	\N	2019-06-11 00:00:00	user_2smb6FNp04ByIe9yV2L3sFaG7L7
020918157624001	TRIPALINDO TRANS MIX							23953				Normal	2007-01-10 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
017395286915001	ARDI TEKINDO PERKASA							41012				Non Efektif	2020-08-14 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
028252161922001	THAS POWER							46591				PL/DE	2016-12-05 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
743357253623001	MASTER MAT INDONESIA							47530				PL/DE	2017-12-05 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
803106012541001	SUMBER MANDIRI SURABAYA							46599				Normal	2019-01-08 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
078659216606000	TJOMO TJENGUNDORO,TJENG	JL KALIWARON 126 RT 003 RW 002	6281215317388		OP	GUBENG	MOJO	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	2003-03-14 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
746265479611001	BERKAT JAYA ABADI	GENTENG BESAR BLOK . NO 27-A RT 000 RW 000	08113639982	CV	BADAN	GENTENG	GENTENG	46521	KOTA SURABAYA		JAWA TIMUR	Normal	2020-11-23 00:00:00	\N	2021-02-05 00:00:00	user_2smZXnsIsnyUD4vOnRkYKe67QSm
069636710606000	ONGKO WARDJOJO	JL MANYAR KERTOARJO BLOK 3 NO 67 RT 003 RW 006	082131020091		OP	MULYOREJO	MANYAR SABRANGAN	Z5000	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	1997-06-04 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
022573927607000	WINGS PEDULI KASIH	JL EMBONG MALANG NO 61-65	081233912995	YAY	BADAN	TEGALSARI	KEDUNGDORO	88102	KOTA SURABAYA		JAWA TIMUR	Normal	2008-11-11 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
907343149604000	SAHABAT SAKINAH SENTER	GEDUNG ROYAL SQUARE LT. 3 JL. RAYA MENGANTI BABATAN NO 479	081216021775	PT	BADAN	WIYUNG	BABATAN	82200	KOTA SURABAYA		JAWA TIMUR	Normal	2019-03-06 00:00:00	2019-05-08 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
900913484614000	JAFA PETROCHEM TRANSINDO	GEDUNG SOHO SKYLOFT CIPUTRA WORLD UNIT 998 JL MAYJEND SUNGKONO NO 89 RT 000 RW 000	628123155277	PT	BADAN	DUKUH PAKIS	GUNUNG SARI	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2019-01-09 00:00:00	2019-01-31 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
031572886642003	CIPUTRA NUSANTARA							68200				Normal	2023-06-07 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
923270250613000	PRIMA MESTIKA AGRO SEJAHTERA	JALAN PANGGUNG NOMOR 63 RT 01 RW 11	6281330123006	PT	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	47213	KOTA SURABAYA		JAWA TIMUR	Normal	2019-07-25 00:00:00	2019-09-09 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
011372463915002	DHARMA LAUTAN UTAMA							50111				PL/DE	2002-02-20 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
014824874412001	WARINGIN MEGAH							42918				Non Efektif	2003-04-16 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
032015620914001	RAJAWALI BERLIAN							50131				Normal	2019-04-02 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
313881443002001	DRAGON TRADE INDONESIA							46641				Normal	2016-03-29 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
023551880606000	GATRA MUTIARA INDAH	JALAN KERTAJAYA INDAH TIMUR 14 BLOK B NO 09 RT 001 RW 010	6283831446597	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	68111	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2009-06-01 00:00:00	\N	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
028249969604000	TRI JAYA PROMOTION AND TRADING	JL DARMO PERMAI TIMUR VIII NO 4 RT 004 RW 001	08883786996	CV	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2008-11-11 00:00:00	2009-04-17 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
015266307443001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN TEGAL KURDI NO 99A RT 003 RW 022, KOTA WETAN, KAB. GARUT				GARUT KOTA	KOTA WETAN	46335	KAB. GARUT			Normal	2024-11-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307522001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN RAYA JERUKLEGI RT 005 RW 002, JERUKLEGI WETAN, KAB. CILACAP				JERUKLEGI	JERUKLEGI WETAN	46335	KAB. CILACAP			Normal	2024-11-18 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307608002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN RAYA SUMENEP NO 234, TAMBUNG, KAB. PAMEKASAN				PADEMAWU	TAMBUNG	46335	KAB. PAMEKASAN			Normal	2024-11-09 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307116001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN KARYA BHAKTI NO 06, AEK PAING, KAB. LABUHAN BATU				RANTAU UTARA	AEK PAING	46335	KAB. LABUHAN BATU			Normal	2024-11-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307624001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN RAYA SURABAYA-MALANG KM 51,4, NGADIMULYO, KAB. PASURUAN				SUKOREJO	NGADIMULYO	46335	KAB. PASURUAN			Normal	2024-11-12 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307521002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN GERILYA TIMUR NO 54, BERKOH, KAB. BANYUMAS				PURWOKERTO SELATAN	BERKOH	46335	KAB. BANYUMAS			Normal	2024-11-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307124001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS							46335				Normal	2024-11-08 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307217001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46335				Non Efektif	2001-01-25 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307524001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46335				PL/DE	2002-03-14 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307309001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							10761				PL/DE	2002-02-14 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307102001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46319				PL/DE	1998-05-26 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015313596426001	UNTUNG BERSAMA SEJAHTERA							32112				Normal	2020-02-04 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
019760420032001	SEDOSO INGGIL PESONA KREASI							90030				Normal	2022-07-15 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
020099073604000	SEMESTA JAYA ABADI	KOMP.PERGUDANGAN MARGOMULYO JAYA, JL.SENTONG ASRI NO  BLOK C-9 RT.000 RW.000	628118178999	PT	BADAN	TANDES	BALONGSARI	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2008-09-19 00:00:00	2008-09-26 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
030462493609000	SARANA PUTRA METAL	KO RUKO RAYA JEMURSARI 76 BLOK D NO 19 RT 001 RW 007	081252899142	PT	BADAN	WONOCOLO	JEMUR WONOSARI	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2010-06-22 00:00:00	2011-01-17 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
803106012615001	SUMBER MANDIRI SURABAYA	JL KUTISARI IX NO 2D RT 008 RW 005	0318439196	PT	BADAN	WONOCOLO	SIWALANKERTO	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2018-12-26 00:00:00	\N	2019-07-19 00:00:00	user_2smb6FNp04ByIe9yV2L3sFaG7L7
014680458609000	RIS PUTRA DELTA	BABATAN PRATAMA BLOK A NO 21-22 RT 001 RW 008	085755178687	PT	BADAN	WIYUNG	BABATAN	41012	KOTA SURABAYA		JAWA TIMUR	Normal	1992-02-10 00:00:00	2013-10-24 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
743357253611001	MASTER MAT INDONESIA	GEDUNG PLAZA SURABAYA LT. 3 NO. 33-36, JL PEMUDA NO 33-37	0315450530	PT	BADAN	GENTENG	EMBONG KALIASIN	47530	KOTA SURABAYA		JAWA TIMUR	Normal	2018-08-31 00:00:00	\N	2021-05-24 00:00:00	user_2smb6FNp04ByIe9yV2L3sFaG7L7
017395740614001	TRISILA SENTOSA ABADI	JL.MARGOMULYO 44 KAV C-7, GREGES	087856611515	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	47525	KOTA SURABAYA		JAWA TIMUR	Normal	2005-12-26 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
019223759324001	BERKAH MULIA MANDIRI							46610				Normal	2011-12-29 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
020918157642001	TRIPALINDO TRANS MIX							42101				Normal	2015-12-08 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
743357253307002	MASTER MAT INDONESIA							47530				Non Efektif	2018-09-10 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
015266174614000	PARFIMA MEKADAYA	JL MJ. SUNGKONO, DARMO PARK I BLOK 2-C NO 13 RT 000 RW 000	087856856840	PT	BADAN	SAWAHAN	PAKIS	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2006-02-16 00:00:00	2006-02-17 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
015266307922001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46335				PL/DE	2005-08-24 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
803106012503001	SUMBER MANDIRI SURABAYA							46599				Normal	2018-07-31 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
066536012611000	JUNUS KOESOEMO	JL GENTENG BANDAR BLOK II NO 33	089667799331		OP	GENTENG	GENTENG	14111	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	1991-11-18 00:00:00	2001-03-07 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
015928567604000	SIMO PANDU ARTISTIK	JL SIMO JAWAR NO 3-5	08113027373	PT	BADAN	SUKOMANUNGGAL	SIMOMULYO	18111	KOTA SURABAYA		JAWA TIMUR	Normal	1993-12-29 00:00:00	1994-01-12 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
028253961121001	BIKER SHOP							47736				Non Efektif	2012-02-17 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
028253961412001	BIKER SHOP							46641				PL/DE	2012-09-06 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
029694379609000	MAHAKAAM JAYA SEJAHTERA	JL MARGOREJO INDAH X BLOK B NO 405 RT 002 RW 008	081333182669	PT	BADAN	WONOCOLO	MARGOREJO	41012	KOTA SURABAYA		JAWA TIMUR	Normal	2010-01-05 00:00:00	2010-06-08 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
317770378606000	VELACOM INDONESIA	JALAN GUBENG KERTAJAYA BLOK 4-B NO 18-A RT 006 RW 013	6281231409700	PT	BADAN	GUBENG	KERTAJAYA	46523	KOTA SURABAYA		JAWA TIMUR	Normal	2013-06-07 00:00:00	2014-01-20 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
064593270607000	GUNADI OSMAN	JL PEJAJARAN NO 4	082233550778		OP	TEGALSARI	KEPUTRAN	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	1989-02-28 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
011372463731001	DHARMA LAUTAN UTAMA							50111				Non Efektif	2002-02-26 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
014824874042001	WARINGIN MEGAH							63990				Normal	2003-04-16 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
313881443642001	DRAGON TRADE INDONESIA							46641				Normal	2016-08-16 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
668325509618000	SAHABAT KARYA PRATAMA	JL KEBRAON PRAJA BARAT BLOK RC NO 23 RT 005 RW 012	6282234421752	PT	BADAN	KARANG PILANG	KEBRAON	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2014-04-01 00:00:00	2014-06-17 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
025865825614000	JAWA TRANS INDAH TRANSPORT	JL. TANJUNGSARI NO 42 RT 009 RW 007	628113544638	PT	BADAN	SUKOMANUNGGAL	SIMOMULYO BARU	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2007-01-30 00:00:00	2012-01-04 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
015266307439001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN OTTO ISKANDARDINATA NO 234 RT 049 RW 006, SUKAMELANG, KAB. SUBANG				SUBANG	SUKAMELANG	46335	KAB. SUBANG			Non Efektif	2024-11-08 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307903002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN BY PASS NGURAH RAI, SUWUNG KAUH NO 88X, PEMOGAN, KOTA DENPASAR				DENPASAR SELATAN	PEMOGAN	46335	KOTA DENPASAR			Normal	2024-11-01 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307102002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN MEDAN - BANDA ACEH KM 272, MNS. MESJID, KOTA LHOKSEUMAWE				MUARA DUA	MNS. MESJID	46335	KOTA LHOKSEUMAWE			Normal	2024-11-05 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307219001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN STADION NO 01 RT 004 RW 006, AIR JAMBAN, KAB. BENGKALIS				MANDAU	AIR JAMBAN	46335	KAB. BENGKALIS			Normal	2024-11-05 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
014409106649001	DHARMA ANUGERAH INDAH							17022				Normal	2021-02-24 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307123001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46335				PL/DE	2001-02-06 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307125001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS							46335				Normal	2008-02-04 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
014660138831001	MITRA INTERTRANS FORWARDING							52291				Normal	1998-11-05 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307425001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46335				PL/DE	2002-01-02 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307648001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS CABANG TUBAN							46339				PL/DE	2003-05-05 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
014974026602001	KING HALIM JEWELRY							32112				Normal	2000-05-22 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307323001	PANAMAS							46319				PL/DE	2001-05-25 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307721001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS							47729				PL/DE	2001-03-20 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307331001	PANAMAS							46335				PL/DE	1998-11-03 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015591480631001	HATSONSURYA ELECTRIC	KOMP.RUKO BUKIT DARMO BOULEVARD NO.12, PRADAH KALIKENDAL		PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	47412	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2007-09-04 00:00:00	\N	2019-08-14 00:00:00	user_2smb6FNp04ByIe9yV2L3sFaG7L7
765722012611000	CARLSON SOEMARSONO	JL PENELEH BLOK 5 NO 31 RT 005 RW 003	08113336235		OP	GENTENG	PENELEH	Z5000	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	2016-07-22 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
015591480631002	HATSONSURYA ELECTRIC	JL.RAYA BUKIT DARMO BOULEVARD NO.12, PUTAT GEDE		PT	BADAN	SUKOMANUNGGAL	PUTAT GEDE	47412	KOTA SURABAYA		JAWA TIMUR	PL/DE	2006-02-23 00:00:00	\N	2020-07-30 00:00:00	user_2smb6FNp04ByIe9yV2L3sFaG7L7
018348235915001	INDONESIA DWI SEMBILAN							46204				Normal	2007-03-07 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
840625818615000	SARANA KREASINDO MUDA	JL RAYA KENDANGSARI INDUSTRI NO 41 RT 004 RW 003	081375393955	PT	BADAN	TENGGILIS MEJOYO	KENDANGSARI	70203	KOTA SURABAYA		JAWA TIMUR	Normal	2018-02-15 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
028252161721001	THAS POWER							46591				Non Efektif	2015-04-01 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
018348235641000	INDONESIA DWI SEMBILAN	JL RAYA JEMURSARI NO 166 RT 005 RW 002	0318478129	PT	BADAN	TENGGILIS MEJOYO	KENDANGSARI	46204	KOTA SURABAYA		JAWA TIMUR	Normal	2004-11-30 00:00:00	2004-12-09 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
743357253623002	MASTER MAT INDONESIA							47530				Non Efektif	2018-07-30 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
020098752631000	INDOMULTI JAYA STEEL	JL TAMBAK LANGON INDAH BLOK I NO 12-14	082234599900	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	24102	KOTA SURABAYA		JAWA TIMUR	Normal	2002-03-05 00:00:00	2002-05-14 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
803106012606001	SUMBER MANDIRI SURABAYA	JALAN RAYA MANYAR NO 16A RT 000 RW 000	62315026005	PT	BADAN	GUBENG	BARATAJAYA	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2017-12-11 00:00:00	\N	2018-03-09 00:00:00	user_2smb6FNp04ByIe9yV2L3sFaG7L7
935827139618000	GLOBAL MAS COM	RUKO SURYA INTI PERMATA 2 C-16 JL HR MUHAMMAD RT 004 RW 001	6281333999835	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46201	KOTA SURABAYA		JAWA TIMUR	Normal	2019-11-27 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
813906609606000	KONSUMEN SURYA SAKTI CEMERLANG	GUBENG KERTAJAYA NO.5 RT 001 RW 001	628563004503	KOP	BADAN	GUBENG	GUBENG	64141	KOTA SURABAYA		JAWA TIMUR	Normal	2017-03-02 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
066108655618000	HENING LAKSMANA	JL MAYJEND SUNGKONO BUNDARAN TOL NO 3 RT 001 RW 004	085236174094		OP	SUKOMANUNGGAL	PUTAT GEDE	Z5000	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	2007-04-30 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
027772755619000	TRIJAYA MULIA	JL BRONGGALAN NO 12-J RT 000 RW 000	087701987228	CV	BADAN	TAMBAKSARI	PACARKEMBANG	14111	KOTA SURABAYA		JAWA TIMUR	Normal	2008-08-05 00:00:00	2009-01-28 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
025252610619000	BANGUN CITRA IRAWAN	JL KEDINDING TENGAH 2 NO 16	08155030770	PT	BADAN	KENJERAN	TANAH KALI KEDINDING	25112	KOTA SURABAYA		JAWA TIMUR	Normal	2006-07-05 00:00:00	2006-07-11 00:00:00	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
021140488614000	PRIMA MAKMUR UTAMA	JL MARGOMULYO 46 E NO 12 A	081295074094	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	46651	KOTA SURABAYA		JAWA TIMUR	Normal	2008-05-26 00:00:00	2008-06-12 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
028253961731001	BIKER SHOP							46100				Non Efektif	2012-07-24 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
028248342604000	MITRA JAYA	JL RAYA MANUKAN WETAN BLOK A-10/60	6287753965340	CV	BADAN	TANDES	MANUKAN WETAN	46694	KOTA SURABAYA		JAWA TIMUR	Normal	2008-06-18 00:00:00	2009-01-19 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
011372463713001	DHARMA LAUTAN UTAMA							50135				PL/DE	2014-08-14 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
014824874032001	WARINGIN MEGAH							41019				PL/DE	1991-07-05 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
014824874721001	WARINGIN MEGAH							42918				PL/DE	1991-07-18 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
027772755625001	TRIJAYA MULIA							14111				Non Efektif	2018-07-12 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
030824585604000	PERSADA WIJAYA SENTOSA	JL KUPANG JAYA BLOK BLOK A1 NO 28 RT 012 RW 003	6285100450391	PT	BADAN	SUKOMANUNGGAL	SIMOMULYO	46620	KOTA SURABAYA		JAWA TIMUR	Normal	2011-03-22 00:00:00	2011-06-07 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
022067359613000	NUSANTARA MULTI AGRO	JL PERAK TIMUR NO 228 RT 001 RW 003	0895328432277	PT	BADAN			47796				Normal	2004-09-23 00:00:00	2004-11-09 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
015266307321001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN ABDUL HARIS NASUTION, ADIREJO, KAB. LAMPUNG TIMUR				PEKALONGAN	ADIREJO	46335	KAB. LAMPUNG TIMUR			Normal	2024-11-08 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307625002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN BRANTAS NO 46 RT 003 RW 004, PILANG, KOTA PROBOLINGGO				KADEMANGAN	PILANG	46335	KOTA PROBOLINGGO			Normal	2024-11-20 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307119001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN JENDERAL SUDRIMAN LK II - KM 39,5 NO 90, PERDAMAIAN, KAB. LANGKAT				STABAT	PERDAMAIAN	46335	KAB. LANGKAT			Normal	2024-11-05 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307128001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN JAMIN GINTING NO 98A, KETAREN, KAB. KARO				KABANJAHE	KETAREN	46335	KAB. KARO			Normal	2024-11-08 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
011123700803001	TUKAD MAS GC							42201				PL/DE	1995-11-14 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307434002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN WARUNG BORONG NO 29 RT 003 RW 002, BOJONGRANGKAS, KAB. BOGOR				CIAMPEA	BOJONGRANGKAS	46335	KAB. BOGOR			Normal	2024-11-08 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
014660138215001	MITRA INTERTRANS FORWARDING							52240				Non Efektif	2007-12-13 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307408002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS							46335				Normal	2019-09-30 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
014660138509001	MITRA INTERTRANS FORWARDING							52291				Normal	2022-02-11 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307626001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46335				PL/DE	2001-04-18 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307942001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46339				PL/DE	2005-12-09 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015313596521001	UNTUNG BERSAMA SEJAHTERA							32112				Normal	2022-03-22 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307501001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46335				PL/DE	2001-11-14 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
028245595924001	PAGI PERKASA MOTOR							45401				Normal	2009-10-06 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
746656974623001	SURYA ARTHA KOMPUTAMA							47411				Normal	2022-06-03 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
024546046606000	LIEMAS JAYA	JL MANYAR INDAH XI/AA-2 RT 002 RW 006	62811315400	CV	BADAN	SUKOLILO	MENUR PUMPUNGAN	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2005-10-06 00:00:00	2006-03-17 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
803106012604000	SUMBER MANDIRI SURABAYA	JL RAYA BUNTARAN NO 14	62317400436	PT	BADAN	TANDES	MANUKAN WETAN	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2016-10-17 00:00:00	2017-01-16 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
018348235602001	INDONESIA DWI SEMBILAN							46339				Normal	2003-08-25 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
743357253604001	MASTER MAT INDONESIA	KOMPLEK PERGUDANGAN MARGOMULYO INDAH KAV 18 BLOK	0317492310	PT	BADAN	TANDES	MANUKAN WETAN	47530	KOTA SURABAYA		JAWA TIMUR	Normal	2017-04-10 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
246350557606000	GUNTUR HARLY	JL MANYAR KERTOARJO 6 NO 61 RT 006 RW 011	085670098567		OP	GUBENG	MOJO	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	2008-10-22 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
311768618618000	ADIMITRA GALERINDO	JL MAYJEND YONO SUWOYO NO 12	089525366131	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	52101	KOTA SURABAYA		JAWA TIMUR	Normal	2010-03-31 00:00:00	2010-04-22 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
028175990605000	SUN RISE LOGISTICS	RUKO SEMUT SQUARE JL SEMUT BARU BLOK B NO 6-7 RT 001 RW 008	6282131256988	PT	BADAN	PABEAN CANTIAN	BONGKARAN	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2011-04-05 00:00:00	2013-09-06 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
014680458611001	SINAR ANDHIKA SUBUR	KETUPA NO 28A, KETABANG		PT	BADAN	GENTENG	KETABANG	41011	KOTA SURABAYA		JAWA TIMUR	Non Efektif	1995-03-27 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
803106012643001	SUMBER MANDIRI SURABAYA							46599				Normal	2018-02-08 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
029679503606000	PERSADA ABADI INTERNUSA	JL ARIF RAHMAN HAKIM RUKO KLAMPIS SQUARE BLOK C 21	082347343434	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	43211	KOTA SURABAYA		JAWA TIMUR	Normal	2009-11-26 00:00:00	2009-11-26 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
015591480618001	HATSONSURYA ELECTRIC	KOMP.RUKO BUKIT DARMO BOULEVARD NO.12, PRADAH KALIKENDAL		PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	47412	KOTA SURABAYA		JAWA TIMUR	PL/DE	2007-02-16 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
014680458727001	RIS PUTRA DELTA	JL. DURIAN III RUKO NO 9-10 RT 006 RW 000, GUNUNG PANJANG, KAB. BERAU				TANJUNG REDEB	GUNUNG PANJANG	41012	KAB. BERAU			Normal	2023-06-07 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
852292358901001	PERFORMA OPTIMA KOMPUTINDO							47411				Normal	2024-02-13 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
014680458922001	RIS PUTRA DELTA							41012				Normal	2018-03-28 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
736549635619000	YEHFRI SAPUTRA	JL DHARMAHUSADA INDAH UTARA IV NO 32 RT 002 RW 008	08123045382		OP	MULYOREJO	MULYOREJO	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2015-08-11 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
017309964631000	SURYA BUMIMEGAH SEJAHTERA	JL MAYJEND SUNGKONO NO 127	082231856319	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	68111	KOTA SURABAYA		JAWA TIMUR	Normal	1997-02-18 00:00:00	1997-02-18 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
015269053618001	BANK AMAR INDONESIA Tbk	JL RAYA MENGANTI WIYUNG BLOK A NO 39 RT 002 RW 007	6281232380073	PT	BADAN	WIYUNG	WIYUNG	64121	KOTA SURABAYA		JAWA TIMUR	Normal	2019-04-22 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
031572886642002	CIPUTRA NUSANTARA							68200				Normal	2022-09-22 00:00:00	\N	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
031936891615000	KARUNIA DINAMIKA CEMERLANG	PERUMAHAN IKIP JL RAYA GUNUNGANYAR INDAH BLOK A-4 NO 8	08113186484	PT	BADAN	GUNUNG ANYAR	GUNUNG ANYAR	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2012-02-06 00:00:00	2012-04-30 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
028253961604000	BIKER SHOP	JL RAYA LONTAR RT 002 RW 002	6289664581663	PT	BADAN	SAMBIKEREP	LONTAR	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2009-10-19 00:00:00	\N	2023-10-05 00:00:00	user_2smaYyAtW4LUhz8zof5cqmquyuT
014824874077001	WARINGIN MEGAH							41019				Normal	2006-05-30 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
015928567642001	SIMO PANDU ARTISTIK							18111				Normal	2012-11-13 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
066104613032001	ROBI WIRJADI							56101				Non Efektif	2011-08-19 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
313971988604000	BAHTERA BARU	JL RAYA PAKAL INDAH 16 BLOK B NO 8 RT 001 RW 001	081553008668	CV	BADAN	PAKAL	PAKAL	32903	KOTA SURABAYA		JAWA TIMUR	Normal	2011-10-14 00:00:00	2011-11-28 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
015266307602001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN RAYA MOJOKERTO - MOJOAGUNG NO 122 RT 006 RW 001, WATESUMPAK, KAB. MOJOKERTO				TROWULAN	WATESUMPAK	46335	KAB. MOJOKERTO			Normal	2024-11-08 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307451001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN RAYA SERANG RT 015 RW 016, BOJONG, KAB. TANGERANG				CIKUPA	BOJONG	46335	KAB. TANGERANG			Non Efektif	2024-11-08 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307213001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN JENDRAL SUDIRMAN, LINGKUNGAN I RT 001 RW 001, TANJUNG GADING, KAB. INDRAGIRI HULU				PASIR PENYU	TANJUNG GADING	46335	KAB. INDRAGIRI HULU			Normal	2024-11-18 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307501002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	RAYA TEGAL - PEMALANG KM 5 NO 48 RT 001 RW 003, PADAHARJA, KAB. TEGAL				KRAMAT	PADAHARJA	46335	KAB. TEGAL			Normal	2024-11-01 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
011123700626001	TUKAD MAS							47192				PL/DE	1985-07-10 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307952002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN RAYA KELAPA DUA, ENTROP, KOTA JAYAPURA				JAYAPURA SELATAN	ENTROP	46335	KOTA JAYAPURA			Normal	2024-11-20 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307004001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46335				PL/DE	2006-04-06 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307216001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS							46335				Normal	2024-11-06 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307404001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46319				PL/DE	2002-02-05 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307625001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							82990				PL/DE	2001-01-23 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307941001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46339				PL/DE	2001-08-14 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015313596064001	UNTUNG BERSAMA SEJAHTERA							32112				Normal	2009-08-28 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
022573034602001	SURYA SINAR BERLIAN							47723				Normal	2013-11-08 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307507001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46335				PL/DE	2002-04-15 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307332001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46641				PL/DE	2001-11-16 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015324817651001	JAYANATA KOSMETIKA PRIMACAB.MALANG							46443				PL/DE	1996-07-18 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
803106012607001	SUMBER MANDIRI SURABAYA	JL KEDUNGDORO NO 179-D RT 001 RW 002	085101555512	PT	BADAN	TEGALSARI	WONOREJO	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2018-12-27 00:00:00	\N	2019-04-05 00:00:00	user_2smb6FNp04ByIe9yV2L3sFaG7L7
018348235627001	INDONESIA DWI SEMBILAN							46335				PL/DE	2014-02-10 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
020099073212001	SEMESTA JAYA ABADI							46591				PL/DE	2016-07-28 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
027774348027001	DHARMA TECH INFOMEDIA							46900				Normal	2022-07-14 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
743357253425001	MASTER MAT INDONESIA							47530				Non Efektif	2018-04-16 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
743357253626001	MASTER MAT INDONESIA							47530				Non Efektif	2017-11-21 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
803106012526001	SUMBER MANDIRI SURABAYA							46599				Normal	2019-01-02 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
070384599606000	HELEN WIJAYA,CHAN	JL MANYAR KERTOARJO GANG VI NO 61 RT 006 RW 011	6281332115040		OP	GUBENG	MOJO	45403	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	1998-04-16 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
312010366614000	ADITYA CAPITAL	JL PASAR BESAR WETAN 30	081331336000	PT	BADAN	BUBUTAN	ALUN-ALUN CONTONG	64200	KOTA SURABAYA		JAWA TIMUR	Normal	2010-06-09 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
023555303801001	PELAYARAN LESTARI ABADI SAKTI							50131				PL/DE	2013-05-31 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
754118875913002	SUBUR MEGA PERKASA							46201				PL/DE	2019-05-14 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
803106012821001	SUMBER MANDIRI SURABAYA							46599				Normal	2019-01-14 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
824843627604001	KENTARO TEKNIK INDUSTRI	KOMPLEK PERGUDANGAN BUMI MASPION I BLOK 1 NO 32 RT 000 RW 000	0313573436	PT	BADAN	BENOWO	ROMOKALISARI	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2018-02-23 00:00:00	\N	2018-05-03 00:00:00	user_2smbdxCsSLWERmHJVpnSGGScHDN
803106012903001	SUMBER MANDIRI SURABAYA							46599				Normal	2017-12-15 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
803106012905001	SUMBER MANDIRI SURABAYA							46599				Normal	2019-01-04 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
015591480617001	HATSONSURYA ELECTRIC							47412				Non Efektif	2008-12-05 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
210860086614001	GRAHA MAKMUR MITRA SEJAHTERA							47529				PL/DE	2021-03-01 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
723127148604000	INDRI MAHARANI GOZALI	KUPANG INDAH BLOK 2 NO 48	082141544542		OP	SUKOMANUNGGAL	SUKOMANUNGGAL	Z5000	KOTA SURABAYA	3,57828E+15	JAWA TIMUR	Normal	2015-02-25 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
011372463701001	DHARMA LAUTAN UTAMA							50111				Normal	2002-03-18 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
011372463915001	DHARMA LAUTAN UTAMA							50111				Normal	2002-03-05 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
014409262801001	SURYA SEGARA SAFETY MARINE	JL. IR. SUTAMI PERGUDANGAN TAMALANREA BLOK. A2 NO. 6, PARANG LOE, KOTA MAKASSAR				TAMALANREA	PARANG LOE	30113	KOTA MAKASSAR			Non Efektif	2017-06-09 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
810636142063001	ALTHA DYANUSA CONSULTING	GEDUNG TOKOPEDIA TOWER LT. 12 SUITE 1233-1237, JL PROF. DR. SATRIO KAV 11 RT 003 RW 003, KARET SEMANGGI, JAKARTA SELATAN				SETIABUDI	KARET SEMANGGI	62090	JAKARTA SELATAN			Normal	2023-09-06 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
028175818613000	BINA TOWER SEJAHTERA	JL WR. SUPRATMAN NO 19 RT 001 RW 011	088805816389	PT	BADAN	TEGALSARI	DR. SOETOMO	42206	KOTA SURABAYA		JAWA TIMUR	Normal	2011-03-02 00:00:00	2011-03-02 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
026329912605000	SARANA LINTAS LANGGENGLESTARI	JL TANJUNG BATU NO 15 E-F RT 000 RW 000	085331402139	PT	BADAN	KREMBANGAN	PERAK BARAT	52293	KOTA SURABAYA		JAWA TIMUR	Normal	2007-09-05 00:00:00	2007-09-11 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
011372463504001	DHARMA LAUTAN UTAMA							50111				Non Efektif	2002-03-04 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
015266307419001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN SOEKARNO HATTA NO 234 RT 002 RW 004, CIBADAK, KAB. LEBAK				CIBADAK	CIBADAK	46335	KAB. LEBAK			Normal	2024-11-08 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307617001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	LINGKAR TIMUR KAWASAN SAFE & LOCKA NO. 1238, 1239, 1250, 1251, 1252, 1253, DAN 1255, RANGKAHKIDUL, KAB. SIDOARJO				SIDOARJO	RANGKAHKIDUL	46335	KAB. SIDOARJO			Normal	2024-11-08 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307706001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN SINTANG - PONTIANAK KM 8 RT 003 RW 001, BALAI AGUNG, KAB. SINTANG				SUNGAI TEBELIAN	BALAI AGUNG	46335	KAB. SINTANG			Normal	2024-11-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307808001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN POROS BONE - MAKASSAR KM 7, PASSIPPO, KAB. BONE				PALAKKA	PASSIPPO	46335	KAB. BONE			Normal	2024-11-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
011123700913001	TUKAD MAS GC							42918				PL/DE	2012-07-17 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307013001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS							46335				Normal	2024-11-08 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
014660138823001	MITRA INTERTRANS FORWARDING							52291				Normal	2014-03-11 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307406001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN RAYA SUKABUMI KM 6, CIWALEN, KAB. CIANJUR				WARUNGKONDANG	CIWALEN	46335	KAB. CIANJUR			Normal	2024-11-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307526001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS											PL/DE	2002-02-27 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307101002	PANAMAS							46335				PL/DE	2001-07-09 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307701001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46339				PL/DE	2001-07-27 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307118001	PANAMAS							12011				PL/DE	2001-05-23 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
021702188439001	LINGGAR JATI PERKASA							41019				Non Efektif	2020-11-19 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015313596804001	UNTUNG BERSAMA SEJAHTERA							32112				Normal	2020-09-28 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
311539027614000	GENTAYU CAKRA WIBOWO	JL WISMA MENANGGAL IV NO 2	000	PT	BADAN	GAYUNGAN	MENANGGAL	41015	KOTA SURABAYA		JAWA TIMUR	Normal	2010-01-29 00:00:00	2010-02-02 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
015266307401001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46335				PL/DE	2001-07-23 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307731001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46335				PL/DE	2001-04-23 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
017395286545001	ARDI TEKINDO PERKASA							41012				Normal	2018-07-03 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
019223759301001	BERKAH MULIA MANDIRI							46610				Non Efektif	2011-12-06 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
017395286815001	ARDI TEKINDO PERKASA							41012				Normal	2018-11-14 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
028251189734001	BUANA RAYA DUTA							46100				Normal	2011-01-06 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
743357253446001	MASTER MAT INDONESIA							47530				Non Efektif	2018-04-04 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
019223759614001	BERKAH MULIA MANDIRI	JL.MARGOMULYO INDUSTRI I/C-10, GREGES		PT	BADAN	SUKOMANUNGGAL	SIMOMULYO BARU	46610	KOTA SURABAYA		JAWA TIMUR	PL/DE	2003-03-19 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
027774348619000	DHARMA TECH INFOMEDIA	JL KEDUNGTARUKAN NO 110-114	0811340373	PT	BADAN	TAMBAKSARI	PACARKEMBANG	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2009-01-29 00:00:00	2014-07-03 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
831589825606000	BTI INDO TEKNO	RUKO KLAMPIS MEGAH BLOK D NO 17	081230821870	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	33112	KOTA SURABAYA		JAWA TIMUR	Normal	2017-10-30 00:00:00	2018-07-27 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
028243111809001	SURYAMAS MEGAH STEEL	PATTENE BUSINESS PARK BLOK N NO 11, KAB. MAROS				MARUSU	PA"BENTENGANG	24101	KAB. MAROS			Normal	2022-08-16 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
023555303225001	PELAYARAN LESTARI ABADI SAKTI							50111				PL/DE	2016-06-02 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
027913714712001	INDO KARYA ELEKTRIK MANDIRI							43211				Normal	2021-09-22 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
317969574619000	BINTANG SATELIT INDONESIA	JL KENJERAN 577-579	087854257369	PT	BADAN	MULYOREJO	KALIJUDAN	22299	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2013-07-03 00:00:00	2013-08-26 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
016617466017001	CATUR ELANG PERKASA							46900				Non Efektif	2003-10-17 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
066108655618001	IKAWATI NURHADI	BUKIT DARMO GOLF BLOK S-7 RT.004 RW.002, PRADAH KALIKENDAL	000		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA	3,57822E+15	JAWA TIMUR	PL/DE	2009-02-04 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
017227760631000	INTI MUSTIKA KARYATAMA	JL JEMURSARI NO 128-130	0318473119	PT	BADAN	WONOCOLO	JEMUR WONOSARI	46610	KOTA SURABAYA		JAWA TIMUR	Normal	1995-06-20 00:00:00	1995-06-30 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
029937158623001	ALEA GRAFIKA							47413				Normal	2016-03-29 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
066536012307001	JUNUS KOESOEMO	JL ANGKATAN 45 KAMPUS POM IX KOMP PALEMBANG SQUARE, LOROKPAKJO, KOTA PALEMBANG				ILIR BARAT I	LOROKPAKJO	96990	KOTA PALEMBANG			Normal	2024-06-03 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
011080835542001	MOGA DJAJA							46443				Normal	2023-06-14 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
020676243615000	PERMATA CHANDRA SURYA	JL RAYA KEDUNG ASEM 9 BLOK BLOK C NO 2 RT 001 RW 001	0817330011	PT	BADAN	RUNGKUT	KEDUNG BARUK	26520	KOTA SURABAYA		JAWA TIMUR	Normal	2001-10-02 00:00:00	2001-10-22 00:00:00	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
017162975612001	HARUM ALAM SEGAR							46900				Normal	2011-11-14 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
028255453614000	BIZ FITTING INDONESIA	JL ROMOKALISARI NO 82 L	085853248429	PT	BADAN	BENOWO	ROMOKALISARI	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2010-02-08 00:00:00	2010-02-22 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
259199081517001	OWEN SIDHARTA							47711				Normal	2020-03-23 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
015266307831002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN SOEKARNO HATTA NO 88 RT 008 RW 003, LAYANA INDAH, KOTA PALU				MANTIKULORE	LAYANA INDAH	46335	KOTA PALU			Normal	2024-11-13 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307502001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN RAYA TIRTO NO 669 RT 025 RW 005, BENER, KAB. PEKALONGAN				WIRADESA	BENER	46335	KAB. PEKALONGAN			Normal	2024-11-01 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307942002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN RAYA JATI BESAR NO 9, TOBONA, KOTA TERNATE				KOTA TERNATE SELATAN	TOBONA	46335	KOTA TERNATE			Normal	2024-11-13 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307303001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN FATMAWATI NO 9 RT 007, TABA JEMEKEH, KOTA LUBUK LINGGAU				LUBUK LINGGAU TIMUR I	TABA JEMEKEH	46335	KOTA LUBUK LINGGAU			Normal	2024-11-12 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307326002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN LINTAS TIMUR NO 9 RT 003 RW 004, BANJAR AGUNG, KAB. TULANG BAWANG				BANJAR AGUNG	BANJAR AGUNG	46335	KAB. TULANG BAWANG			Normal	2024-11-13 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
014660138111001	MITRA INTERTRANS FORWARDING							42918				Normal	1998-04-16 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307039001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS							46335				Normal	2005-08-02 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
014660138503001	MITRA INTERTRANS FORWARDING							52293				PL/DE	2011-12-05 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307413001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS							46335				Normal	2023-07-31 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307621002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN RAYA NGLAMES NO 130, NGLAMES, KAB. MADIUN				MADIUN	NGLAMES	46335	KAB. MADIUN			Normal	2024-11-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307426001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46335				PL/DE	2001-10-17 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307941002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS							46335				Normal	2024-11-13 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
021702188517001	LINGGAR JATI PERKASA							41019				Non Efektif	2018-07-18 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
816065825607000	AGNES CALLISTA ANGGASAPUTRI	JL IR ANWARI NO 3 RT 005 RW 009	6281235177636		OP	TEGALSARI	DR. SOETOMO	47611	KOTA SURABAYA	3,57806E+15	JAWA TIMUR	Normal	2017-03-27 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
015925118615000	SARANA METAL INDAH	JL TENGGILIS TIMUR VII/27-DD 18	081234867574	PT	BADAN	TENGGILIS MEJOYO	TENGILIS MEJOYO	46639	KOTA SURABAYA		JAWA TIMUR	Normal	1992-12-08 00:00:00	1992-12-08 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
022081509615000	FILTRINDO	JL RAYA WONOREJO PERMAI RK.49	085850674651	PT	BADAN	RUNGKUT	WONOREJO	47793	KOTA SURABAYA		JAWA TIMUR	Normal	2004-12-10 00:00:00	2005-02-07 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
017395740901001	TRISILA SENTOSA ABADI							47525				Normal	2002-03-05 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
026093492609000	GUNUNG API MULIA	JL GAYUNGSARI TIMUR IV BLOK MGJ NO 09 RT 001 RW 006	082131717757	PT	BADAN	GAYUNGAN	MENANGGAL	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2007-02-27 00:00:00	2007-03-21 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
015266307822001	PANAMAS							46335				PL/DE	2005-02-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
311768618013002	ADIMITRA GALERINDO							46641				PL/DE	2010-08-23 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
743357253526001	MASTER MAT INDONESIA							47530				Non Efektif	2017-08-07 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
018344887418001	SUTINDO SURYA SEJAHTERA							47521				Normal	2021-11-04 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
027913714611000	INDO KARYA ELEKTRIK MANDIRI	SKYSUITES SOHO LT 9-10 UNIT 07 THE SAMATOR JL RAYA KEDUNG BARUK NO 25-28 RT 002 RW 004	085733733041	PT	BADAN	RUNGKUT	KEDUNG BARUK	43211	KOTA SURABAYA		JAWA TIMUR	Normal	2011-01-10 00:00:00	2013-06-12 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
017209040618000	ASMON KARYA UTAMA	JL WIYUNG INDAH XV NO 29 RT 005 RW 007	0317385638	PT	BADAN	WIYUNG	WIYUNG	46639	KOTA SURABAYA		JAWA TIMUR	Normal	1995-06-20 00:00:00	1996-05-14 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
021761077606000	GRAHA FARMA LESTARI	JL KALIWARON 126	081357040305	PT	BADAN	GUBENG	MOJO	46441	KOTA SURABAYA		JAWA TIMUR	Normal	2003-04-24 00:00:00	2003-08-05 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
754118875913001	SUBUR MEGA PERKASA							46201				Normal	2018-08-23 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
014680458438001	RIS PUTRA DELTA							41012				Normal	2019-08-08 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
078693363607000	ERICK SOEDJIONO	JL BINTORO NO 7 RT 005 RW 007	0315675372		OP	TEGALSARI	KEPUTRAN	Z5000	KOTA SURABAYA	3,37401E+15	JAWA TIMUR	Normal	2004-03-05 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
802072157604000	GRAHA MULTI KERAMIK INDONESIA	PERGUDANGAN PAKAL INDAH BLOK NO 18 RT 001 RW 001	6285731076506	PT	BADAN	PAKAL	PAKAL	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2016-10-05 00:00:00	2016-11-07 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
074836594606000	IRWANTONO SENTOSA	JL RAYA DHARMAHUSADA INDAH 18 (A-16) BLOK 18 NO A 16 RT 007 RW 004	085648954575		OP	GUBENG	MOJO	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	2009-05-12 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
028252161609000	THAS POWER	JL PERAK BARAT NO. 203 ROOM 206 RT 001 RW 003	081344869585	PT	BADAN			46591				Normal	2009-04-29 00:00:00	2009-05-11 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
015591480617002	HATSONSURYA ELECTRIC							46521				Normal	2015-06-25 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
315097477611000	SPECTRUM INDOWIBAWA	CIPUTRA WORLD OFFICE TOWER LT. 30 UNIT 3009 JL MAYJEND SUNGKONO NO 89 RT 008 RW 006	081217677693	PT	BADAN	DUKUH PAKIS	GUNUNG SARI	47411	KOTA SURABAYA		JAWA TIMUR	Normal	2012-04-17 00:00:00	2012-09-26 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
015447113631000	CIPUTRA SURABAYA PADANG GOLF	JL CITRA RAYA UTAMA, KOTA MANDIRI CITRA RAYA	085648655777	PT	BADAN	LAKARSANTRI	LAKARSANTRI	93114	KOTA SURABAYA		JAWA TIMUR	Normal	1992-05-12 00:00:00	1992-05-12 00:00:00	\N	user_2smbZ5PXEGvubrX47eEEhwhiaI5
027772755625002	TRIJAYA MULIA							47711				Non Efektif	2022-08-25 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
031779481606000	MUTIARA ANDALAN UTAMA	JL PUTAT GEDE INDAH BLOK 42	6281254983424	PT	BADAN	SUKOMANUNGGAL	PUTAT GEDE	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2011-11-29 00:00:00	2018-05-30 00:00:00	\N	user_2smbpCYyFH3ezSUODUOhhBFVGAj
066104613607002	ROBI WIRYADI							56101				PL/DE	2014-03-13 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
015266307302001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN GARUDA LINTAS SUMATERA, DUSUN VII RW 003, AIR PAOH, KAB. OGAN KOMERING ULU				BATURAJA TIMUR	AIR PAOH	46335	KAB. OGAN KOMERING ULU			Normal	2024-11-06 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307648002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN MASTRIP I NO 1 RT 002 RW 005, KARANG, KAB. TUBAN				SEMANDING	KARANG	46335	KAB. TUBAN			Normal	2024-11-18 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307105001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN JENDERAL AHMAD YANI NO 123, PB SEULEUMAK, KOTA LANGSA				LANGSA BARO	PB SEULEUMAK	46335	KOTA LANGSA			Normal	2024-11-05 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307801001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN PROFESOR DOKTOR INSINYUR SUTAMI NO 3, PARANG LOE, KOTA MAKASSAR				TAMALANREA	PARANG LOE	46335	KOTA MAKASSAR			Normal	2024-11-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307126001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN RAYA PADANG SIDEMPUAN-SIBOLGA NO 157, SIBULUAN NALAMBOK, KAB. TAPANULI TENGAH				SARUDIK	SIBULUAN NALAMBOK	46335	KAB. TAPANULI TENGAH			Normal	2024-11-05 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
014660138722001	MITRA INTERTRANS FORWARDING							70202				Normal	2014-01-30 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307542002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN MULUNGAN BARU, DUSUN GROJOGAN NO 234 RT 003 RW 002, PANDOWOHARJO, KAB. SLEMAN				SLEMAN	PANDOWOHARJO	46335	KAB. SLEMAN			Normal	2024-11-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307045001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS							46335				Normal	2024-11-11 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307532001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46100				PL/DE	2006-12-20 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307641001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							12011				PL/DE	2003-10-21 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307311001	PANAMAS											PL/DE	1998-11-21 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
020492393612001	MULTI JAYA SENTOSA							46339				Normal	2008-06-27 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
022573034626001	SURYA SINAR BERLIAN							47723				Normal	2009-05-25 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
065470114607000	JIMMY LITYO	JL PEJAJARAN DALAM NO 10 RT 003 RW 006	62816513775		OP	TEGALSARI	KEPUTRAN	47611	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	1990-02-26 00:00:00	2021-05-24 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
803106012609001	SUMBER MANDIRI SURABAYA	JL RAYA GUNUNGSARI 1 NO 98-A	6285103001822	PT	BADAN	WONOKROMO	SAWUNGGALING	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2018-07-25 00:00:00	\N	2018-11-26 00:00:00	user_2smb6FNp04ByIe9yV2L3sFaG7L7
018347740606000	MODERN IMPRATAMA	JL MANYAR ADI NO 2 RT 012 RW 010	0315931830	CV	BADAN	GUBENG	KERTAJAYA	18111	KOTA SURABAYA		JAWA TIMUR	Normal	1999-06-14 00:00:00	2000-07-22 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
015266307802001	PANAMAS							46335				PL/DE	2003-02-05 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015591480651001	HATSONSURYA ELECTRIC							46521				Normal	2004-09-24 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
018348235625001	INDONESIA DWI SEMBILAN							46204				Non Efektif	2007-03-28 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
019223759823001	BERKAH MULIA MANDIRI							46610				Normal	2023-03-14 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
025959966641000	CHENTA TRANSMISSION INDONESIA	JL RUNGKUT INDUSTRI BLOK III NO 55	082194249981	PT	BADAN	GUNUNG ANYAR	RUNGKUT MENANGGAL	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2007-01-29 00:00:00	2007-04-20 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
743357253307001	MASTER MAT INDONESIA							47530				Normal	2017-08-23 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
018344887032002	SUTINDO SURYA SEJAHTERA							47521				Normal	2017-10-10 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
803106012508001	SUMBER MANDIRI SURABAYA							46599				Normal	2017-12-19 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
803106012722001	SUMBER MANDIRI SURABAYA							46599				Normal	2019-01-09 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
314014085619000	HANLYN JAYA MANDIRI	JL MULYOSARI UTARA NO 51 RT 010 RW 001	081231273760	PT	BADAN	MULYOREJO	KALISARI	50131	KOTA SURABAYA		JAWA TIMUR	Normal	2011-10-21 00:00:00	2011-11-09 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
015103237611000	ORTHO TIMUR	JL NGEMPLAK BLOK B-8 NO 30 RT 006 RW 002	082141547678	PT	BADAN	GENTENG	KETABANG	46691	KOTA SURABAYA		JAWA TIMUR	Normal	1990-04-02 00:00:00	1990-04-02 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
803106012804001	SUMBER MANDIRI SURABAYA							46599				Normal	2017-12-18 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
018386805614002	SDA INDONESIA	JL RADEN SALEH NO 10-B	0317482190	PT	BADAN	BUBUTAN	BUBUTAN	47793	KOTA SURABAYA		JAWA TIMUR	Normal	2018-10-11 00:00:00	\N	2018-11-06 00:00:00	user_2smZoKKCH1wJ39OWYKrlIoxslVI
312142482611000	LAUTAN SUMBER REJEKI	GEDUNG INTILAND TOWER OFFICE SUITES LEVEL 3 JL PANGLIMA SUDIRMAN NO 101-103 RT 001 RW 007	081233774025	CV	BADAN	GENTENG	EMBONG KALIASIN	03254	KOTA SURABAYA		JAWA TIMUR	Normal	2010-07-21 00:00:00	2021-05-24 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
016212649613000	PRAKINDO INVESTAMA	JL KEMBANG JEPUN NO 38-40 RT 001 RW 005	083848904974	PT	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	64931	KOTA SURABAYA		JAWA TIMUR	Normal	1994-10-14 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
803106012903002	SUMBER MANDIRI SURABAYA							46599				Normal	2018-01-25 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
026071654609000	MITRA SINERGI	GAYUNGSARI BARAT III NO 40 RT 002 RW 004	081935003500	CV	BADAN	GAYUNGAN	GAYUNGAN	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2011-07-06 00:00:00	2011-07-07 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
064083835604000	WIDJIJONO NURHADI	JL MAYJEND SUNGKONO BUNDARAN TOL	6281232664782		OP	SUKOMANUNGGAL	PUTAT GEDE	Z5000	KOTA SURABAYA	3,57813E+15	JAWA TIMUR	Normal	2008-08-22 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
027772300619000	SYNERGY MULIATAMA	JL MANYAR TEGAL NO 77 RT 001 RW 012	6281330774897	CV	BADAN	MULYOREJO	MANYAR SABRANGAN	46631	KOTA SURABAYA		JAWA TIMUR	Normal	2008-06-13 00:00:00	2008-09-03 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
017209040612002	ASMON KARYA UTAMA							46639				Normal	2017-12-13 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
060323714619000	SOEWONDO BASOEKI	JL RAYA DHARMO PERMAI 2 NO 46 RT 004 RW 007	081331345388		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	1984-05-28 00:00:00	\N	\N	user_2smZXnsIsnyUD4vOnRkYKe67QSm
066104613047001	ROBI WIRYADI							56101				PL/DE	2014-08-14 00:00:00	\N	\N	user_2smaYyAtW4LUhz8zof5cqmquyuT
015266307507002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN RAYA PATI - TAYU KM 2 BLOK B NO 12 RT 004 RW 009, MULYOHARJO, KAB. PATI				PATI	MULYOHARJO	46335	KAB. PATI			Normal	2024-11-13 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307312001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN LINTAS TIMUR, MUARA BARU, KAB. OGAN KOMERING ILIR				KAYU AGUNG	MUARA BARU	46335	KAB. OGAN KOMERING ILIR			Normal	2024-11-18 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307118002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN MERDEKA NO 484, LOSUNG BATU, KOTA PADANG SIDEMPUAN				PADANGSIDIMPUAN UTARA	LOSUNG BATU	46335	KOTA PADANG SIDEMPUAN			Normal	2024-11-05 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307803001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN JENDERAL SUDIRMAN KM.3 RT 001 RW 003, BINTURU, KOTA PALOPO				WARA SELATAN	BINTURU	46335	KOTA PALOPO			Normal	2024-11-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
011123700517001	TUKADMAS GENERAL CONTRAKTORSCABANG JAWA TENGAH							41019				Non Efektif	1985-07-10 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
014660138042001	MITRA INTERTRANS FORWARDING							52291				Normal	2006-12-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307532002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN RAYA SONGGOLANGIT NO 28 RT 001 RW 006, GENTAN, KAB. SUKOHARJO				BAKI	GENTAN	46335	KAB. SUKOHARJO			Normal	2024-11-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307218001	PANAMAS							46100				PL/DE	2001-08-01 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307408003	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS							46335				Normal	2024-11-08 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307101001	PANAMAS							46335				PL/DE	1997-10-27 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
014660138922001	MITRA INTERTRANS FORWARDING							52291				Normal	2012-01-26 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307429001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46335				PL/DE	2004-01-23 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
021702188513001	LINGGARJATI PERKASA							42912				Non Efektif	2014-06-19 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307722001	PERUSAHAAN DAGANG DAN INDUSTRI PANAMAS							46900				PL/DE	1993-02-23 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
019223759631000	BERKAH MULIA MANDIRI	JL MARGOMULYO INDUSTRI I BLOK C NO 10 RT 001 RW 001	085233448048	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	46610	KOTA SURABAYA		JAWA TIMUR	Normal	2005-07-07 00:00:00	2005-07-21 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
017395286543001	ARDI TEKINDO PERKASA							41019				Non Efektif	2014-04-14 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
017395740732001	TRISILA SENTOSA ABADI							46633				Normal	2017-02-24 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
026073734606000	SARANA WISATA NUSANTARA	JL KLAMPIS JAYA A/A-2	0315920874	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	79121	KOTA SURABAYA		JAWA TIMUR	Normal	2007-02-15 00:00:00	2008-10-21 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
020099073435001	SEMESTA JAYA ABADI							46591				Non Efektif	2016-06-16 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
311768618013001	ADIMITRA GALERINDO							46100				Normal	2010-08-12 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
015266307911001	PERUSAHAAN DAGANG & INDUSTRIPANAMAS							46319				PL/DE	2001-02-09 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
743357253626002	MASTER MAT INDONESIA							47530				Normal	2017-11-21 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
803106012721001	SUMBER MANDIRI SURABAYA							46599				Normal	2018-08-20 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
743357253602001	MASTER MAT INDONESIA	GEDUNG SUNRISE MALL JL BENTENG PANCASILA BLOK FF12 NO 9 RT 000 RW 000, KOTA MOJOKERTO				MAGERSARI	BALONGSARI	47530	KOTA MOJOKERTO			Non Efektif	2018-10-10 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
902356450607000	INTI BANGUN PERSADA JAYA	JL MAWAR NO 32 RT 003 RW 003	262315345760	CV	BADAN	TEGALSARI	TEGALSARI	47521	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2019-01-23 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
863018065611000	GUNA TANGGUH SEJATI	GEDUNG BUMI MANDIRI TOWER 2 LEVEL 12 JL PANGLIMA SUDIRMAN NO 66-68	082244353028	PT	BADAN	GENTENG	EMBONG KALIASIN	70203	KOTA SURABAYA		JAWA TIMUR	Normal	2018-10-19 00:00:00	2018-10-31 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
021696299615000	SATYA BIAS MANDIRI	JL RAYA KEDUNG BARUK  SURABAYA NO 25-28 RT 2 RW 4	0318292727	PT	BADAN	RUNGKUT	KEDUNG BARUK	20112	KOTA SURABAYA		JAWA TIMUR	Normal	2002-06-24 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
015591480631000	HATSONSURYA ELECTRIC	JL MAYJEND YONO SUWOYO NO 12	089525366110	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46521	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
016212946607000	LUMBUNG ARTAKENCANA	JL EMBONG MALANG NO 61-65 RT 01 RW 08	62895339212223	PT	BADAN	TEGALSARI	KEDUNGDORO	62021	KOTA SURABAYA		JAWA TIMUR	Normal	1994-11-15 00:00:00	2008-12-11 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
028230886921001	LAM HONG							47211				Normal	2018-08-08 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
312776933618000	GAJAH MAS ANTARNIAGA	JL MASTRIP WARUGUNUNG GG.SURYA NO 31 RT 002 RW 001	088230484855	PT	BADAN	KARANG PILANG	WARU GUNUNG	49431	KOTA SURABAYA		JAWA TIMUR	Normal	2011-02-08 00:00:00	2011-04-11 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
014659148613000	RIA SENTOSA JAYA	JL SEMUT KALI NO 22-24	6285259431245	PT	BADAN	PABEAN CANTIAN	BONGKARAN	46610	KOTA SURABAYA		JAWA TIMUR	Normal	1989-04-14 00:00:00	1989-04-19 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
078764594618001	TAN PAULIN	BUKIT DARMO BOULEVARD BLOK.F-2, PRADAH KALIKENDAL	0317345504		OP	DUKUH PAKIS	PRADAH KALIKENDAL	47512	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	2010-07-14 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
018386805418001	SDA INDONESIA							47521				Non Efektif	2013-03-15 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
019761915615000	DUTA RAYA MAKMUR	JL WONOREJO PERMAI I BLOK AA NO 68 RT 001 RW 004	085648411717	CV	BADAN	RUNGKUT	WONOREJO	46491	KOTA SURABAYA		JAWA TIMUR	Normal	2000-12-19 00:00:00	2001-09-13 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
018133868605000	BINA BARU MALANTI	JL PERAK BARAT NO 23	082231384902	PT	BADAN	KREMBANGAN	PERAK BARAT	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2011-08-26 00:00:00	2011-08-26 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
026227439942001	NAGAMAS BAN	JL PASAR INPRES BASTIONG NO. 6, BASTIONG KARANCE, KOTA TERNATE				KOTA TERNATE SELATAN	BASTIONG KARANCE	45403	KOTA TERNATE			Normal	2019-01-09 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
024767220527001	HUTOMO MANDALA PERKASA							41019				Non Efektif	2013-07-29 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
928536879615000	SARANA METAL INDOTAMA	JL TENGGILIS TIMUR VII/27 BLOK BLOK DD-18 RT 000 RW 000	081234502847	PT	BADAN	TENGGILIS MEJOYO	TENGILIS MEJOYO	23990	KOTA SURABAYA		JAWA TIMUR	Normal	2019-09-13 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
017395740721001	TRISILA SENTOSA ABADI							46639				Normal	2012-03-01 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
017395286653001	ARDI TEKINDO PERKASA							41012				Non Efektif	2016-09-16 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
019414812614000	CAHAYA CITRA ALUMINDO	JL TAMBAK PRING (DUMAR INDUSTRI) NO 38	082245090462	PT	BADAN	ASEM ROWO	ASEM ROWO	46491	KOTA SURABAYA		JAWA TIMUR	Normal	1999-10-12 00:00:00	1999-10-29 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
743357253111001	MASTER MAT INDONESIA							47530				Non Efektif	2021-09-13 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
743357253622001	MASTER MAT INDONESIA							47530				Non Efektif	2019-08-05 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
920228525611000	CHEALSEA SOEMARSONO	PENELEH 5 NO 31 RT 005 RW 003	081338377162		OP	GENTENG	PENELEH	Z5000	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	2019-07-04 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
023379662604000	MATSUGI INDONESIA	JL MARGOMULYO PERMAI BLOK Q NO 12	082234915692	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	47592	KOTA SURABAYA		JAWA TIMUR	Normal	2004-09-27 00:00:00	2017-09-20 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
852292358606000	PERFORMA OPTIMA KOMPUTINDO	JL SIDOSERMO AIRDAS KAV. A9 RT 002 RW 008	081515278416	PT	BADAN	WONOCOLO	SIDOSERMO	47411	KOTA SURABAYA		JAWA TIMUR	Normal	2018-07-05 00:00:00	2018-07-23 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
023379662418001	MATSUGI INDONESIA							46491				PL/DE	2006-02-21 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
018386805614001	SDA INDONESIA	JL. RADEN SALEH NO. 45 BLOK KAV-19-20	081220888800	PT	BADAN	BUBUTAN	BUBUTAN	47793	KOTA SURABAYA		JAWA TIMUR	Normal	2015-12-18 00:00:00	\N	2018-11-06 00:00:00	user_2smZoKKCH1wJ39OWYKrlIoxslVI
026703967606000	SHELTER NUSA INDAH	JL SEMAMPIR SELATAN 5A NO 18	62315925075	PT	BADAN	SUKOLILO	MEDOKAN SEMAMPIR	78101	KOTA SURABAYA		JAWA TIMUR	Normal	2007-09-20 00:00:00	2009-03-03 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
015591480013001	HATSONSURYA ELECTRIC							46521				Normal	2012-10-04 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
024431199609000	KARYAWAN SMART MEDIA PT TELKOM REGIONAL V	JL KETINTANG NO 156	082228987777	KOP	BADAN	GAYUNGAN	KETINTANG	64141	KOTA SURABAYA		JAWA TIMUR	Normal	2005-09-07 00:00:00	2005-09-16 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
021136882614000	JATIM SENTRA UTAMA	JL KALIBUTUH NO. 73 RT.009 RW.07 , TEMBOK DUKUH	88764	PT	BADAN	BUBUTAN	TEMBOK DUKUH	16221	KOTA SURABAYA		JAWA TIMUR	Normal	2003-01-07 00:00:00	2016-11-14 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
313510851619000	WAHANA RIZKY GUMILANG	JL RESIDEN SUDIRMAN NO 56 RT 002 RW 005	08885010439	PT	BADAN	TAMBAKSARI	PACARKELING	46441	KOTA SURABAYA		JAWA TIMUR	Normal	2011-07-05 00:00:00	2011-11-02 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
027769256618000	SENTOSA LAJU ENERGY	JL BUKIT DARMO BOULEVARD NO 2F	081259686531	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46610	KOTA SURABAYA		JAWA TIMUR	Normal	2009-04-07 00:00:00	2010-05-26 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
742222078604000	VINCO MANDIRI SUKSES	KOMPLEK PERGUDANGAN ROMOKALISARI INDUSTRI II BLOK VIIC/16	08883008205	PT	BADAN	BENOWO	ROMOKALISARI	45301	KOTA SURABAYA		JAWA TIMUR	Normal	2015-10-19 00:00:00	2016-04-05 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
821610284611000	SRIKANDI SAMPOERNA SEJAHTERA	JL AMBENGAN NO 23	0315469234	PT	BADAN	GENTENG	KETABANG	47712	KOTA SURABAYA		JAWA TIMUR	Normal	2017-06-12 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
014691794606000	CATURSAMA ADHIKA	JL BILITON NO 38	085853100808	PT	BADAN	GUBENG	GUBENG	64190	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2007-04-03 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
016774093618000	BAMBE SINAR SURYA TIMUR	JL MAYJEND SUNGKONO NO 121	6285100992233	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	68111	KOTA SURABAYA		JAWA TIMUR	Normal	1994-06-23 00:00:00	1996-05-10 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
015726011414001	ANEKA KIMIA INTI							46651				PL/DE	2004-06-24 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
018312330626001	TRITUNGGAL SELARAS							46100				Normal	2001-09-03 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
928757079721001	SAHABAT MARITIM LOGISTIK							52296				Normal	2020-09-21 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
015587942606000	HABE TEC	JL KERTAJAYA 185F	085256272727	CV	BADAN	GUBENG	AIRLANGGA	47412	KOTA SURABAYA		JAWA TIMUR	Normal	1991-08-16 00:00:00	1995-01-26 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
023772072009001	BINA AREA PERSADA							78101				PL/DE	2017-12-28 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
011332137631001	VITAPHARM	JL WR SUPRATMAN NO 37	089621356522	PT	BADAN	TEGALSARI	DR. SOETOMO	96112	KOTA SURABAYA		JAWA TIMUR	Normal	2007-09-04 00:00:00	\N	2020-07-30 00:00:00	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
062910914606000	LILIANA SOETANTO	JL MANYAR KERTOARJO VI NO 59	081133388208		OP	GUBENG	AIRLANGGA	47212	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	1985-06-12 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
316203611613000	PURWANTO SUKSES MAKMUR	JL KALIMATI KULON NO 22 RT 002 RW 11	6289616371187	PT	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2012-11-01 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
454620196604000	MIEKI HANNA	JL RAYA MAYJEND YONO SOEWOYO NO 66 RT 002 RW 009	081552028000		OP	WIYUNG	BABATAN	Z5000	KOTA SURABAYA	3,57828E+15	JAWA TIMUR	PL/DE	2012-05-01 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
016639205631000	SURYA MANDALA	JL MANYAR KARTIKA BARAT NO 5-B	08123234782	CV	BADAN	SUKOLILO	MENUR PUMPUNGAN	49431	KOTA SURABAYA		JAWA TIMUR	Normal	2006-05-16 00:00:00	2023-03-01 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148451001	GAWIH JAYA							46335				Normal	2021-10-18 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
063187603607000	SOETJIPTO H.WANGSAWIDJAJA	JL MAWAR NO 27-29 RT 003 RW 003	0816917422		OP	TEGALSARI	TEGALSARI	Z5000	KOTA SURABAYA	3,17101E+15	JAWA TIMUR	Normal	1989-01-06 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
014249437631000	PUTRAPERKASA CIPTA ABADI	JL DHARMAHUSADA UTARA NO 37	087855114811	PT	BADAN	GUBENG	MOJO	41019	KOTA SURABAYA		JAWA TIMUR	Normal	1986-03-01 00:00:00	1987-08-01 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
027768050215001	DUTA SURYA MAKMUR							38220				Normal	2009-01-28 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
060563236527001	LUCIANA TANOYO							68111				Non Efektif	2017-11-22 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
842815342215001	DAMAI LAUTAN NUSANTARA							50214				Normal	2023-09-14 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
011083565604001	ANTIKA RAYA	MARGOMULYO INDAH I/3, BUNTARAN		PT	BADAN	TANDES	MANUKAN WETAN	29200	KOTA SURABAYA		JAWA TIMUR	PL/DE	2004-12-07 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
032085581606000	ARTA NIAGA SEJAHTERA	JALAN MANYAR KERTOADI 12 BLOK W NO 538 RT 004 RW 007	0315999338	PT	BADAN	SUKOLILO	GEBANG PUTIH	47411	KOTA SURABAYA		JAWA TIMUR	Normal	2012-02-14 00:00:00	2012-03-05 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
019223759426001	BERKAH MULIA MANDIRI							46610				Normal	2023-03-14 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
028243111603001	SURYAMAS MEGAH STEEL							24101				Normal	2016-09-13 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
743357253414001	MASTER MAT INDONESIA							47530				Non Efektif	2021-05-21 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
743357253517001	MASTER MAT INDONESIA							47530				Normal	2020-11-20 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
743357253911001	MASTER MAT INDONESIA							47530				Normal	2017-08-04 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
803106012623001	SUMBER MANDIRI SURABAYA							46599				Normal	2018-06-29 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
944599133618000	JENNIFER MERCEDES WIJAYA	JL BUKIT DARMO GOLF NO 49-51 RT 004 RW 002	08113187377		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA	3,57822E+15	JAWA TIMUR	Normal	2020-03-13 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
210860086614000	GRAHA MAKMUR MITRA SEJAHTERA	KOMPLEK MUTIARA DUPAK JL DUPAK NO 65/A-2	081233868875	PT	BADAN	BUBUTAN	GUNDIH	47529	KOTA SURABAYA		JAWA TIMUR	Normal	2009-04-08 00:00:00	2010-04-08 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
014680458645001	RIS PUTRA DELTA	DESA <KOLEKTOR SEKUNDER> RT 002 RW 001, SUNGELEBAK, KAB. LAMONGAN				KARANGGENENG	SUNGELEBAK	41012	KAB. LAMONGAN			Normal	2024-02-18 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
028230886624001	LAM HONG							47211				Normal	2009-09-30 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
065470114613001	JIMMY LITYO	JL SONGOYUDAN NO 29	083837507558		OP	PABEAN CANTIAN	NYAMPLUNGAN	47650	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	1995-10-24 00:00:00	\N	2021-05-24 00:00:00	user_2smb6FNp04ByIe9yV2L3sFaG7L7
317284255609000	GRACIA SEJAHTERA PERKASA	JL JEMUR ANDAYANI BLOK VI NO 23 RT 002 RW 001	082141080939	PT	BADAN	WONOCOLO	JEMUR WONOSARI	46638	KOTA SURABAYA		JAWA TIMUR	Normal	2013-04-08 00:00:00	2013-04-23 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
020917613631000	CONTINENTAL CARGO CARRIER INDOTRANS	JL PERAK BARAT NO 159 RT - RW -	62313527405	PT	BADAN	KREMBANGAN	PERAK BARAT	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2002-01-09 00:00:00	2002-07-18 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
769978297619000	SUNRISE SINAR ABADI	JL KALIKEPITING NO 175 RT 008 RW 005	085648040627	PT	BADAN	TAMBAKSARI	PACARKEMBANG	22220	KOTA SURABAYA		JAWA TIMUR	Normal	2016-09-07 00:00:00	2016-10-27 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
016639155822001	SADHANAGRAHA ADHIKA							68111				Normal	2007-07-31 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
674950886618000	MELYANA STEFANI	GRAHA FAMILI UTARA 6-D/143A NO.. RT.004 RW.002, PRADAH KALIKENDAL	62811311815		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA	3,57822E+15	JAWA TIMUR	Non Efektif	2009-01-05 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
312672199614000	SAMUDERA ANGKASA JAYA	KOMPLEK PERGUDANGAN MARGOMULYO PERMAI BLOK AH NO 3 RT 000 RW 000	628113168809	CV	BADAN	ASEM ROWO	ASEM ROWO	47611	KOTA SURABAYA		JAWA TIMUR	Normal	2011-01-13 00:00:00	2011-01-18 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
313470551619000	RHECO DWI MANUNGGAL	JL DHARMAHUSADA INDAH BLOK 3 NO 27 RT 004 RW 009	08982126733	PT	BADAN	MULYOREJO	MULYOREJO	46201	KOTA SURABAYA		JAWA TIMUR	Normal	2011-06-24 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
011331295619000	WINGON SEJATI MAKMUR	JL KARANG ASEM IV/1, PLOSO	085931381897	PT	BADAN	TAMBAKSARI	PLOSO	31001	KOTA SURABAYA		JAWA TIMUR	Normal	1901-01-01 00:00:00	\N	2016-05-09 00:00:00	user_2sma8tnJRwwZckhHrrGIF28DQek
012557385028001	JERINDO SARI UTAMA							46651				Normal	2023-12-06 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
060558954618000	INDAHTATI WIDJAJADI	JL PAKIS BUKIT ANGGREK BLOK U NO 32-33 RT 003 RW 005	62816507127		OP	DUKUH PAKIS	DUKUH PAKIS	Z5000	KOTA SURABAYA	3,57822E+15	JAWA TIMUR	Normal	1984-12-12 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
022074165418001	HIMPUNAN ABADI							46693				Normal	2013-04-25 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
022571475607000	NEXTBASE INDONESIA	GEDUNG BANK YUDHA BHAKTI LT.03 JL RAYA DARMO NO 54/56 RT 003 RW 010	5620966	PT	BADAN	TEGALSARI	DR. SOETOMO	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2006-12-07 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
858309230611000	SURYA BUANA INVESTINDO	JL BASUKI RACHMAD NO 45 - 47 RT 002 RW 003	0315312121	PT	BADAN	GENTENG	EMBONG KALIASIN	70209	KOTA SURABAYA		JAWA TIMUR	Normal	2018-09-07 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148631000	GAWIH JAYA	JL DR. SOETOMO NO 27 RT 001 RW 013	081330727272	PT	BADAN	TEGALSARI	DR. SOETOMO	46335	KOTA SURABAYA		JAWA TIMUR	Normal	1984-12-24 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
060562089619001	TJIO YULIANITA IMUKCAHYA	JL.KERTAJAYA INDAH TENGAH 14, MANYAR SABRANGAN			OP	MULYOREJO	MANYAR SABRANGAN	47412	KOTA SURABAYA	0	JAWA TIMUR	Normal	1990-10-19 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325783631000	SURYA TIMUR SAKTI JATIM	JL BASUKI RACHMAD NO 45-47	085746567887	PT	BADAN	GENTENG	EMBONG KALIASIN	45401	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
024767220615000	HUTOMO MANDALA PERKASA	JL KENDANGSARI YKP 2 NO 6 RT 001 RW 001	082211979031	PT	BADAN	TENGGILIS MEJOYO	KENDANGSARI	41012	KOTA SURABAYA		JAWA TIMUR	Normal	2007-07-12 00:00:00	2015-05-12 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148301001	GAWIH JAYA							46100				Normal	1998-01-15 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148422001	GAWIH JAYA							46335				Normal	1997-01-15 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
750624512609000	SEPAKAT PRATAMA INDONESIA	JL WISMA MENANGGAL BLOK III NO 3 RT 003 RW 004	081330009993	PT	BADAN	GAYUNGAN	MENANGGAL	41012	KOTA SURABAYA		JAWA TIMUR	Normal	2016-01-27 00:00:00	2016-03-28 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
812737781606000	BRANNAN PARTNER INVESTINDO	JL DHARMAHUSADA INDAH BARAT BLOK III NO 64 SD 66	62811341200	PT	BADAN	GUBENG	MOJO	68200	KOTA SURABAYA		JAWA TIMUR	Normal	2017-02-17 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
025151127908001	AGRO CITA MANDIRI							46319				Normal	2011-01-18 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
060562089619000	HENDRA SURJAPUTRA	JL KERTAJAYA INDAH TENGAH NO 14 RT 001 RW 010	0811315110		OP	MULYOREJO	MANYAR SABRANGAN	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	1984-11-02 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
750624512822001	SEPAKAT PRATAMA INDONESIA							41012				Normal	2020-09-28 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
078656667604000	WAYAN MERTASANA TANTRA DRS	JL VILLA BUKIT REGENCY I BLOK BLOK PC 4 NO 03 RT 001 RW 016	0811341334		OP	SAMBIKEREP	LONTAR	Z5000	KOTA SURABAYA	3,57831E+15	JAWA TIMUR	Normal	2009-09-07 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
024767220526001	HUTOMO MANDALA PERKASA							41012				PL/DE	2017-04-25 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
828741645607000	UNIVE ABADI RAYA	JL WONOREJO BLOK I NO 115	6285330469998	CV	BADAN	TEGALSARI	WONOREJO	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2017-10-09 00:00:00	2018-04-05 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
022075394631000	SURYA TERANG	JL RAYA PANJANGJIWO PERMAI I A NO 3	0816520688	CV	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	47650	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
028252161801001	THAS POWER	JL. KALIMANTAN NO 53 RW 005, MAMPU, KOTA MAKASSAR				WAJO	MAMPU	46591	KOTA MAKASSAR			Non Efektif	2018-01-23 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
804931301615000	GUSSE STRATEGIC INDONESIA	JL RUNGKUT MENANGGAL HARAPAN BLOK Q NO 11 RT 001 RW 004	082143430469	PT	BADAN	GUNUNG ANYAR	RUNGKUT MENANGGAL	42202	KOTA SURABAYA		JAWA TIMUR	Normal	2016-12-07 00:00:00	2016-12-20 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
211300397614000	SAMUDERA DINAMIK JAYA	KOMPLEK PERGUDANGAN MARGOMULYO PERMAI BLOK D NO 5-6	0317490690	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	46491	KOTA SURABAYA		JAWA TIMUR	Normal	2009-11-02 00:00:00	2010-06-18 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
801354606604000	ONG,HELEN WIJAYA	JL RAYA SATELIT UTARA BLOK BLOK CN/4 RT 006 RW 003	6281553002343		OP	SUKOMANUNGGAL	TANJUNGSARI	47611	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	2016-09-27 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
803106012805001	SUMBER MANDIRI SURABAYA							46599				Normal	2018-05-31 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
062915095607000	SURJANTORO SISWANTO	JL UNTUNG SUROPATI NO 36 RT 002 RW 012	6285107026013		OP	TEGALSARI	DR. SOETOMO	Z5000	KOTA SURABAYA	3,51608E+15	JAWA TIMUR	Normal	1985-06-17 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
028174183613000	ANUGERAH JELAJAH INDONESIA LOGISTIC	JL PERAK TIMUR NO 110 RT 001 RW 005	081994850044	PT	BADAN			52293				Normal	2010-01-21 00:00:00	2010-01-21 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
022572705614000	AGUNG BUANA CEMERLANG	JL KALIANAK BARAT NO 70-C	6287852933367	PT	BADAN	ASEM ROWO	GENTING KALIANAK	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2007-08-30 00:00:00	2008-01-22 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
020539722631000	DJABESDEPO FORTUNA RAYA	GEDUNG GRAHA PACIFIC LT. 9 JL BASUKI RAHMAT NO 87-91	087805812841	PT	BADAN	GENTENG	EMBONG KALIASIN	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
021763958619000	SUNRISE ENERGI PRATAMA	JL KALIKEPITING NO 175	085648040627	CV	BADAN	TAMBAKSARI	PACARKEMBANG	22291	KOTA SURABAYA		JAWA TIMUR	Normal	2003-09-08 00:00:00	2003-10-07 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
015591480642001	HATSONSURYA ELECTRIC							46521				Normal	2022-05-19 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
017209040604001	ASMON KARYA UTAMA	TANJUNGSARI NO 33	031749601	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2017-12-13 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
030710487606000	DARMI BERSAUDARA TBK	JALAN NGINDEN INTAN BARAT V BLOK C 4 NO 10	08113540182	PT	BADAN	SUKOLILO	NGINDEN JANGKUNGAN	47216	KOTA SURABAYA		JAWA TIMUR	Normal	2010-06-10 00:00:00	2017-01-11 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
015618432618000	SATIVA DWIMAKMUR	JL HR MOHAMMAD NO 161	0317342000	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	96200	KOTA SURABAYA		JAWA TIMUR	Normal	1993-02-24 00:00:00	1993-02-24 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
026227439426001	NAGAMAS BAN	JL. PRONGGOL BLOK K-L NO 33, PEGAMBIRAN, KOTA CIREBON				LEMAHWUNGKUK	PEGAMBIRAN	45301	KOTA CIREBON			Normal	2023-12-05 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
928757079605000	SAHABAT MARITIM LOGISTIK	JALAN INDRAPURA NO. 29-33 RT 002 RW 001	085256272727	PT	BADAN	KREMBANGAN	KEMAYORAN	52296	KOTA SURABAYA		JAWA TIMUR	Normal	2019-09-16 00:00:00	2020-01-13 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
017435900607001	SURYA INTRINDO MAKMUR	KOMP DARMO SQUARE BLOK B-16/17 LT 6, JL RAYA DARMO 54-56, DR SUTOMO	0315612818	PT	BADAN	TEGALSARI	DR. SOETOMO	32906	KOTA SURABAYA		JAWA TIMUR	Non Efektif	1996-08-14 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
928757079722001	SAHABAT MARITIM LOGISTIK							52296				Normal	2020-07-23 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
011332137631000	VITAPHARM	JL PANJANG JIWO NO 42 RT 001 RW 002	628123568742	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	21012	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
312127038614000	TRIJAYA SEGARAN MAKMUR	JL JEPARA VI NO 20 RT 006 RW 001	081703421415	PT	BADAN	BUBUTAN	JEPARA	50111	KOTA SURABAYA		JAWA TIMUR	Normal	2010-07-15 00:00:00	2018-05-31 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
027913151619000	DAMAI BERJAYA	JL KUSUMA BANGSA 116-118 HITECH MALL LT.2 BLOK C1 NO.05	031545925	CV	BADAN	TAMBAKSARI	TAMBAKSARI	46511	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2010-06-25 00:00:00	\N	2021-12-02 00:00:00	user_2sma8tnJRwwZckhHrrGIF28DQek
025151127604001	AGRO CITA MANDIRI	JL. TAMBAK OSOWILANGUN NO. 26 KAVLING 16 RT 001 RW 002	085102231900	CV	BADAN	BENOWO	TAMBAK OSO WILANGUN	46201	KOTA SURABAYA		JAWA TIMUR	Normal	2011-01-14 00:00:00	\N	2016-12-30 00:00:00	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325783631001	SURYA TIMUR SAKTI JATIM	JL. RAYA MULYOSARI 336, DUKUH SUTOREJO		PT	BADAN	MULYOREJO	DUKUH SUTOREJO	45401	KOTA SURABAYA		JAWA TIMUR	PL/DE	2007-09-04 00:00:00	\N	2020-07-30 00:00:00	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148118001	GAWIH JAYA							46335				Normal	2010-01-23 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
026226969604000	SAMA JAYA LESTARI	JL RAYA KENDUNG NO 08	081217956074	PT	BADAN	BENOWO	SEMEMI	47591	KOTA SURABAYA		JAWA TIMUR	Normal	2007-11-29 00:00:00	2008-09-08 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148501001	GAWIH JAYA							46335				Normal	2015-10-08 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148542001	GAWIH JAYA							46335				Normal	2007-05-03 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
024767220002001	HUTOMO MANDALA PERKASA							41012				PL/DE	2016-11-03 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
016208605631000	SENTRATEK METALINDO	JL DR. CIPTO NO 5	62315632100	PT	BADAN	TEGALSARI	DR. SOETOMO	47592	KOTA SURABAYA		JAWA TIMUR	Normal	1993-06-30 00:00:00	1993-06-30 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
014249437655001	PUTRAPERKASA CIPTA ABADI							41019				Non Efektif	2017-11-08 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
313587834722001	PUTRA LAUTAN SEJAHTERA							46900				Normal	2011-10-03 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
040127599607000	WINARTO KUNCORO	JL PEJAJARAN DALAM NO 7 RT 003 RW 006	0811347328		OP	TEGALSARI	KEPUTRAN	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	1983-11-29 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
012325783601001	SURYA TIMUR SAKTI JATIM							45401				PL/DE	2009-01-10 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325783721001	SURYA TIMUR SAKTI JATIM							45401				Normal	2007-02-23 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
024578858604000	PERMATA BUNDA BERSAMA	JL RAYA KANDANGAN NO 23-24 RT 005 RW 001 RT 005 RW 001	081235887272	PT	BADAN	BENOWO	KANDANGAN	86103	KOTA SURABAYA		JAWA TIMUR	Normal	2005-05-20 00:00:00	2019-02-21 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
012325783914001	SURYA TIMUR SAKTI JATIM							45403				PL/DE	2001-07-11 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
825400104619000	SINAR TERANG SEJAHTERA	JL KEDINDING TENGAH II NO 14-A	62817371557	CV	BADAN	KENJERAN	TANAH KALI KEDINDING	15201	KOTA SURABAYA		JAWA TIMUR	Normal	2017-08-08 00:00:00	2017-09-11 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
011372448631000	AIR MINUM SURYA SEMBADA KOTA SURABAYA	JL MAYJEN PROF DR MOESTOPO NO 2	085232684046	BUMN/BUMD	BADAN	TAMBAKSARI	PACARKEMBANG	36001	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
803106012736001	SUMBER MANDIRI SURABAYA							46599				Normal	2019-01-15 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
016811481609000	MULTI BAGASANTI MAHDY	JL SIDOSERMO INDAH BLOK V NO 5 RT 002 RW 006	8471172	PT	BADAN	WONOCOLO	SIDOSERMO	42206	KOTA SURABAYA		JAWA TIMUR	Normal	1996-04-05 00:00:00	1996-05-08 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
011085222631000	INDONESIA MULTI COLOUR PRINTING	JL RUNGKUT INDUSTRI I NO 10 RT 001 RW 005	62318438702	PT	BADAN	TENGGILIS MEJOYO	KENDANGSARI	25940	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
020541546604000	SUMBER ANUGERAH UTAMA	JL RAYA BUMI INDAH NO 21 RT 006 RW 005	085731426966	PT	BADAN	SAMBIKEREP	LONTAR	19213	KOTA SURABAYA		JAWA TIMUR	Normal	2002-09-05 00:00:00	2014-12-15 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
066538869607000	WIRANTO NURHADI	JL MAYJEND SUNGKONO BUNDARAN TOL NO 3 RT 001 RW 004	081232664786		OP	SUKOMANUNGGAL	PUTAT GEDE	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	2007-05-03 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
014293047604000	ANGGAZA WIDYA RIDHA MULIA	JL GAYUNGSARI BLOK VII NO 12 LT.2 RT 004 RW 004	082141673161	PT	BADAN	GAYUNGAN	KETINTANG	41012	KOTA SURABAYA		JAWA TIMUR	Normal	2010-05-20 00:00:00	2010-05-20 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
803106012922001	SUMBER MANDIRI SURABAYA							46599				Normal	2019-01-14 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
016617466631000	CATUR ELANG PERKASA	JL BARATAJAYA IV NO 74	082335119921	PT	BADAN	GUBENG	BARATAJAYA	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
060323730606000	IR. EDDY WILLIAM KATUARI	JALAN MANYAR KERTOARJO VII NO 31	081252776678		OP	GUBENG	GUBENG	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	1984-05-28 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
029937158615000	ALEA GRAFIKA	JL TENGGILIS MEJOYO BLOK E NO 7 RT 001 RW 002	081232066086	CV	BADAN	TENGGILIS MEJOYO	TENGILIS MEJOYO	47413	KOTA SURABAYA		JAWA TIMUR	Normal	2010-02-11 00:00:00	2011-03-08 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
030015994618000	MITRA MANDALA JAYA	PERGUDANGAN TRITAN BLOK D NO 05-06 RT 000 RW 000	085850397969	PT	BADAN	TAMAN	JEMUNDO	42919	KAB. SIDOARJO		JAWA TIMUR	Normal	2009-11-26 00:00:00	2010-02-18 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
747213783619000	SUKSES SARANA NIAGA	JL KALISARI PERMAI 1 MR NO 1-27 RT 000 RW 000	081230282878	PT	BADAN	MULYOREJO	KALISARI	47111	KOTA SURABAYA		JAWA TIMUR	Normal	2015-12-15 00:00:00	2016-04-06 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
928757079801001	SAHABAT MARITIM LOGISTIK	JL. IR.SUTAMI RT 002 RW 006, PARANG LOE, KOTA MAKASSAR				TAMALANREA	PARANG LOE	52296	KOTA MAKASSAR			Normal	2021-08-05 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
725373567607000	GOZCO LAND HOSPITALITY	KOMPLEK DARMO SQUARE B-16 LT 3, JL RAYA DARMO NO 54-56 RT 003 RW 010	5620967	PT	BADAN	TEGALSARI	DR. SOETOMO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2015-03-20 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
755724200607001	ANAK CERIA INDONESIA	TUNJUNGAN PLAZA 5 LT. 4 UNIT 001 GERAI CHIPMUNKS JL EMBONG MALANG NO 1, 3, 5 RT 008 RW 010	623151164730	PT	BADAN	TEGALSARI	KEDUNGDORO	93293	KOTA SURABAYA		JAWA TIMUR	Normal	2019-08-08 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
317310456606000	KREASI PERSADA INDAH	JL DHARMAHUSADA INDAH BARAT GG III NO 64	6289682906668	PT	BADAN	GUBENG	MOJO	41012	KOTA SURABAYA		JAWA TIMUR	Normal	2013-04-10 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
740726153615000	GEMILANG CIPTA SENTOSA	JL PRAPEN INDAH TIMUR BLOK AA NO 75 RT 001 RW 008	082299402354	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2015-09-30 00:00:00	2015-10-30 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
012331625631000	INDO ASIA TIRTA MANUNGGAL	19-09 PAKUWON TOWER - TP 6 JL EMBONG MALANG 21-31	62811322925	PT	BADAN	TEGALSARI	KEDUNGDORO	46651	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
842815342619000	DAMAI LAUTAN NUSANTARA	JL PERAK BARAT NO 201 RT 001 RW 003	085606681756	PT	BADAN			50214				Normal	2018-03-12 00:00:00	2022-12-01 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
919557967619000	NIAGA LINTAS PACIFIC	JL KAPAS MADYA INDAH NO 10	0822648174722	CV	BADAN	TAMBAKSARI	KAPASMADYA BARU	47593	KOTA SURABAYA		JAWA TIMUR	Normal	2019-06-28 00:00:00	2021-09-30 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
802574251614000	REFRIGERASI INDO TAMA	JL KEDUNGDORO NO 116	0811773009	PT	BADAN	SAWAHAN	SAWAHAN	47592	KOTA SURABAYA		JAWA TIMUR	Normal	2016-10-14 00:00:00	2016-11-02 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
025151127801001	AGRO CITA MANDIRI	JLIR SUTAMI NO 788 X, KOTA MAKASSAR				BIRINGKANAYA	BULUROKENG	46319	KOTA MAKASSAR			Normal	2011-01-14 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
011222031631001	AKTIF INDONESIA INDAH	RUNGKUT INDUSTRI III/64, RUNGKUT TENGAH		PT	BADAN	GUNUNG ANYAR	RUNGKUT TENGAH	20119	KOTA SURABAYA		JAWA TIMUR	PL/DE	2007-05-09 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
665673067604000	SATORIA AGRO INDUSTRI	SATORIA TOWER LANTAI 27-28 JL PRADAH JAYA I NO 01 RT 000 RW 000	085707077103	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	10629	KOTA SURABAYA		JAWA TIMUR	Normal	2014-03-06 00:00:00	2015-03-06 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148602001	GAWIH JAYA							46335				Normal	2014-07-07 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
023749781724002	UMAQ TUKUNG MANDIRI UTAMA							01262				Normal	2017-09-06 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
028175743437001	KARYA INDAH BUANA							52292				Normal	2023-08-02 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
313587834627001	PUTRA LAUTAN SEJAHTERA							46639				Normal	2017-11-27 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
027768050606000	DUTA SURYA MAKMUR	RUKO DARMO PARK 2 JL MAYJEND SUNGKONO BLOK 5 NO 10 RT 004 RW 002	6282139922562	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	38220	KOTA SURABAYA		JAWA TIMUR	Normal	2011-09-09 00:00:00	2011-09-09 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148821001	GAWIH JAYA							46339				PL/DE	1999-09-17 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
313587834732001	PUTRA LAUTAN SEJAHTERA							46639				Normal	2011-10-05 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
018389007604000	HEXA THERMOGRAPHINDO	JL RAYA SEGI DELAPAN NO.94 BLOK A-801	081330488678	PT	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2000-05-29 00:00:00	2000-06-09 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
022571954607000	DWI TUNGGAL BERJAYA	JL IMAM BONJOL NO 124 RT 004 RW 014	0315677144	PT	BADAN	TEGALSARI	DR. SOETOMO	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-02 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
067114694606000	NGE EDI PRASADJA	JL KERTAJAYA NO 180 RT 004 RW 003	081615327777		OP	GUBENG	KERTAJAYA	96990	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	1992-12-18 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
754118875606000	SUBUR MEGA PERKASA	JL RUKO MEGAH GALAXY KERTAJAYA INDAH TIMUR BLOK 16C NO 5	081233342568	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46201	KOTA SURABAYA		JAWA TIMUR	Normal	2016-03-04 00:00:00	2022-02-16 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
023555303803001	PELAYARAN LESTARI ABADI SAKTI							52293				Non Efektif	2013-03-18 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
040133605618000	RIANTO NURHADI	PERUMAHAN BUKIT DARMO GOLF BLOK S-5	6282233889330		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	2007-04-30 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
041615006619000	AGUS WIESENO	JL DHARMAHUSADA INDAH UTARA 5 NO 7 RT 007 RW 008	628123027265		OP	MULYOREJO	MULYOREJO	47791	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2007-08-09 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
803106012901001	SUMBER MANDIRI SURABAYA							46599				Normal	2017-12-11 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
015591480423001	HATSONSURYA ELECTRIC							46521				Normal	2023-06-05 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
940078165604000	TUNAS MAJU CEMERLANG	PERGUDANGAN BUMI MASPION BMT NO 11	081285912763	PT	BADAN	BENOWO	ROMOKALISARI	47212	KOTA SURABAYA		JAWA TIMUR	Normal	2020-01-14 00:00:00	2021-02-02 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
317959534607000	MITRA USAHA LANCAR JAYA	JL TEGALSARI NO 37 RT 001 RW 001	081252081253	PT	BADAN	TEGALSARI	TEGALSARI	47591	KOTA SURABAYA		JAWA TIMUR	Normal	2013-07-02 00:00:00	2013-10-22 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
210860086652001	GRAHA MAKMUR MITRA SEJAHTERA							47529				Normal	2021-04-23 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
018386805604000	SDA INDONESIA	JL MARGOMULYO INDAH I BLOK A NO 7-8	081233215400	PT	BADAN	TANDES	BALONGSARI	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2001-10-10 00:00:00	2003-04-08 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
026226761604000	ABADI GEMILANG PERKASA	KOMPLEK SATELITE TOWN SQUARE BLOK B-15	0317326851	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2007-11-01 00:00:00	2008-04-16 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
314835588604000	GAF INDONESIA	JL LIDAH HARAPAN III / B-21 RT 007 RW 005	627526750	PT	BADAN	LAKARSANTRI	LIDAH WETAN	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2012-03-09 00:00:00	2012-06-20 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
031133036615000	RISAN JAYA MULYA	JL RUNGKUT INDUSTRI BLOK XIV NO 4	08982126733	PT	BADAN	TENGGILIS MEJOYO	KUTISARI	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2011-06-24 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
712141407609000	JAYA ETIKA BETON	JL KETINTANG BARU SELATAN VII NO 6 RT 000 RW 000	0318296145	PT	BADAN	GAYUNGAN	KETINTANG	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2014-10-14 00:00:00	2018-08-07 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
012557385024001	JERINDO SARI UTAMA							47773				Non Efektif	2004-03-31 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
017435900643001	SURYA INTRINDO MAKMUR TBK							68111				Normal	2021-09-08 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
028230639903001	FERTILINDO VITRO SAINS							47725				PL/DE	2021-03-25 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
022085963609000	QUANTUM HRM INTERNASIONAL	SIDOSERMO I NO 10 RT 001 RW 008	082233290419	PT	BADAN	WONOCOLO	BENDUL MERISI	70203	KOTA SURABAYA		JAWA TIMUR	Normal	2006-04-21 00:00:00	2006-04-21 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
022070445613000	PERMATA MITRA SEJAHTERA	JL PERAK TIMUR BLOK B-1 NO 564 RT 002 RW 003	0313294552	CV	BADAN			46339				Normal	2006-10-04 00:00:00	2007-07-12 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
060563236619001	LUCIANA TANOYO	JL RAYA DHARMAHUSADA INDAH NO - RT - RW -	-		OP	MULYOREJO	MULYOREJO	Z5000	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Non Efektif	2014-05-09 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
019228196611000	BUMI DEWATA PROPERINDO	JL BASUKI RACHMAT NO 45-47 RT 002 RW 003	0895339419352	PT	BADAN	GENTENG	EMBONG KALIASIN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2001-08-30 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
808937346607000	PUNDI ABADI HOTELINDO	JL BINTORO NO 27 RT 005 RW 014	6282141120829	PT	BADAN	TEGALSARI	DR. SOETOMO	55110	KOTA SURABAYA		JAWA TIMUR	PL/DE	2016-12-28 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
026227439922001	NAGAMAS BAN							45403				Normal	2019-01-10 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
012325148117001	GAWIH JAYA							46335				Normal	2013-03-20 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148331001	GAWIH JAYA							46339				PL/DE	1998-01-19 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148507001	GAWIH JAYA							46335				Normal	2003-01-09 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148622001	GAWIH JAYA							46335				Normal	2017-07-07 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012331625528001	INDO ASIA TIRTA MANUNGGAL							46651				PL/DE	2009-01-30 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
028175743027001	KARYA INDAH BUANA							52292				Normal	2018-06-28 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
316203637613000	MECHTA MAKMUR INDONESIA	JL KALIMATI KULON NO 22 RT 002 RW 11	6289682980715	PT	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2012-11-01 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012331609631000	ASIA	JL RUNGKUT INDUSTRI III NO 27-A	0817320075	CV	BADAN	GUNUNG ANYAR	RUNGKUT MENANGGAL	22220	KOTA SURABAYA		JAWA TIMUR	Normal	1985-04-25 00:00:00	1985-05-29 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
017929910606000	BETON PRIMA INDONESIA	JALAN RAYA KERTAJAYA INDAH NO.153/P-116	0315956290	PT	BADAN	SUKOLILO	GEBANG PUTIH	23953	KOTA SURABAYA		JAWA TIMUR	Normal	1998-06-04 00:00:00	1998-06-10 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
315780767618000	ERA TIARA PROPERTINDO	PERUMAHAN BUKIT DARMO GOLF B BLOK I NO 6 RT 000 RW 000	031-7315017	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	68200	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2012-08-15 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
762085637604000	ETERNAL SUKSES BERSAMA	JL SIMO KALANGAN BARU RT 006 RW 007	0318672227	PT	BADAN	SUKOMANUNGGAL	SIMOMULYO	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2016-05-27 00:00:00	2016-06-16 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
018344887631000	SUTINDO SURYA SEJAHTERA	JL NGAGEL TAMA SELATAN IV NO 27	08994149750	PT	BADAN	GUBENG	PUCANG SEWU	47521	KOTA SURABAYA		JAWA TIMUR	Normal	1998-10-06 00:00:00	1998-10-12 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
022573232609000	MULTI PERMATA INDAH	JL BOGOWONTO NO 15 RT 006 RW 014	03199533690	PT	BADAN	TEGALSARI	DR. SOETOMO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2008-03-10 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
921409892607000	GOA REMIX MELIA	JL MH. THAMRIN NO 71 RT 000 RW 000	081335552850	PT	BADAN	TEGALSARI	DR. SOETOMO	56102	KOTA SURABAYA		JAWA TIMUR	Normal	2019-07-12 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
032063893617001	EDMAR MANDIRI JAYA							46206				Normal	2021-01-22 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
016639155607000	SADHANAGRAHA ADHIKA	GEDUNG EKONOMI LT. 6, JL EMBONG MALANG NO 61-65 RT 008 RW 010	62895339212239	PT	BADAN	TEGALSARI	KEDUNGDORO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	1994-11-10 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
016933996604000	INDUSTRI LIFTINDO NUSANTARA	JL RAYA MANUKAN KULON LX BLOK E/3 RT 004 RW 010	081233366989	PT	BADAN	TANDES	MANUKAN KULON	46599	KOTA SURABAYA		JAWA TIMUR	Normal	1996-08-28 00:00:00	1996-12-18 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
311834410614000	SURYA MULTI PERKASA	PERGUDANGAN BUMI MASPION ROMOKALISARI BLOK 15 NO D7 RT 004 RW 001	089696592137	PT	BADAN	BENOWO	ROMOKALISARI	46651	KOTA SURABAYA		JAWA TIMUR	Normal	2010-04-16 00:00:00	2010-06-21 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
021136882604001	JATIM SENTRA UTAMA	KOMP.PERGUDANGAN MARGOMULYO INDAH F-36, BUNTARAN	083831688448	PT	BADAN	TANDES	MANUKAN WETAN	16221	KOTA SURABAYA		JAWA TIMUR	Normal	2006-11-21 00:00:00	\N	2021-05-24 00:00:00	user_2smbdxCsSLWERmHJVpnSGGScHDN
835845314607000	ROMORA TRANSINDO	JL DINOYO BARU NO 31-C RT 005 RW 003	6281252222238	CV	BADAN	TEGALSARI	KEPUTRAN	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2017-12-21 00:00:00	2018-02-20 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
023555303619000	PELAYARAN LESTARI ABADI SAKTI	JL PERUM MENTARI BLOK N-24, BULAK	087753724541	PT	BADAN	BULAK	BULAK	50111	KOTA SURABAYA		JAWA TIMUR	Normal	2004-12-09 00:00:00	2008-02-19 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
016617466721001	CATUR ELANG PERKASA							41012				PL/DE	2008-09-18 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
060323730721001	EDDY WILLIAM KATUARI							Z5000				Non Efektif	2005-04-07 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
017209040612001	ASMON KARYA UTAMA							46633				Normal	2007-12-11 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
018386805604001	SDA INDONESIA							47521				PL/DE	2011-10-13 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
018746016606000	DARMAWANGSA MEDICAL SUPPLIES	JL COMAL NO 8 RT 006 RW 006	085850748053	PT	BADAN	TEGALSARI	KEPUTRAN	46441	KOTA SURABAYA		JAWA TIMUR	Normal	2001-07-04 00:00:00	2001-07-17 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
026227439704001	NAGAMAS BAN	PERGUDANGAN EQUATOR 2, GUDANG NO 7B. JL. MAJOR ALIANYANG NO 07, KAPUR, KAB. KUBU RAYA				SUNGAI RAYA	KAPUR	45301	KAB. KUBU RAYA			Normal	2023-12-28 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
313148975618000	JARI ABADI	JL.HR MUHAMMAD 140 KAV.A-33 RT.000 RW.000, PRADAH KALIKENDAL	6288217942650	CV	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2011-05-02 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
031203995444001	CITRA CIPTA CAHAYA							78200				Non Efektif	2016-08-09 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
928757079922001	SAHABAT MARITIM LOGISTIK							52299				Normal	2022-03-23 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
022074165615000	HIMPUNAN ABADI	JL RAYA KEDUNG ASEM BLOK B-5 NO 9	085100476255	CV	BADAN	RUNGKUT	KEDUNG BARUK	46693	KOTA SURABAYA		JAWA TIMUR	Normal	2002-07-12 00:00:00	2002-10-22 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
683444574604000	ELLEN CRYSTALIA TANSIL	JL PUNCAK PERMAI I NO 9 RT 006 RW 001	0811307900		OP	SUKOMANUNGGAL	TANJUNGSARI	Z5000	KOTA SURABAYA	3,57828E+15	JAWA TIMUR	Normal	2009-02-05 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
768850992604000	ERWIN DHARMONO TANSIL	JL PUNCAK PERMAI BLOK BLOK I NO 9 RT 006 RW 001	0816535677		OP	SUKOMANUNGGAL	TANJUNGSARI	Z5000	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	2016-08-29 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
026227439831001	NAGAMAS BAN							45301				Normal	2023-12-04 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
026330704605000	BERLIAN GAMA MITRA	JL LAKSDA M NASIR BLOK A-8 NO 29 RT 000 RW 000	08116192409	PT	BADAN	KREMBANGAN	PERAK BARAT	52293	KOTA SURABAYA		JAWA TIMUR	Normal	2008-05-14 00:00:00	2008-06-02 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
030017495618000	RIZAL PUTRA JAYA	PERUMAHAN GUNUNGSARI INDAH BLOK AB NO 9 RT 008 RW 006	085648357757	PT	BADAN	KARANG PILANG	KEDURUS	47725	KOTA SURABAYA		JAWA TIMUR	Normal	2013-06-14 00:00:00	2014-03-04 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
715378899606000	PRATIWI KARYA HUTAMA	NGINDEN INTAN TIMUR XIX/4 BLOK A3 NO 34 RT 001 RW 010	081217283252	PT	BADAN	SUKOLILO	KEPUTIH	41011	KOTA SURABAYA		JAWA TIMUR	PL/DE	2014-11-24 00:00:00	2015-01-15 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
738328848604000	HASIL PRIMA DAMAI MAKMUR	JL RAYA SUKOMANUNGGAL NO 30	6281334505596	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2015-09-03 00:00:00	2015-11-17 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
011332137512001	VITAPHARM							96112				Normal	2003-01-29 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
023749781724001	UMAQ TUKUNG MANDIRI UTAMA							01262				Normal	2016-10-19 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
030461180619000	KARTIKA JAYA MAKMUR	JL KEDUNG COWEK NO 174 RT 002 RW 005	623151501810	PT	BADAN	BULAK	BULAK	77393	KOTA SURABAYA		JAWA TIMUR	Normal	2010-04-09 00:00:00	2011-09-23 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
313587834608001	PUTRA LAUTAN SEJAHTERA							46639				Normal	2020-10-23 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
014249437724001	PUTRAPERKASA CIPTA ABADI							41019				PL/DE	2016-05-31 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148804001	GAWIH JAYA							46319				PL/DE	1997-01-20 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
017714502609000	LANA ACHIDA SEJAHTERA	JL WISMA MENANGGAL III NO 8 RT 003 RW 004	081288115621	PT	BADAN	GAYUNGAN	MENANGGAL	46100	KOTA SURABAYA		JAWA TIMUR	Normal	1996-05-10 00:00:00	1996-05-24 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
019225911521001	MASA SINAR MULIA							41019				Non Efektif	2020-10-26 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
028227163606000	MEDEX PRIMA	JL RUKO GALAXY BUMI PERMAI BLOK I 1 NO 12	0811310258	PT	BADAN	SUKOLILO	SEMOLOWARU	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2008-02-27 00:00:00	2008-06-16 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
024767220625001	HUTOMO MANDALA PERKASA							41012				PL/DE	2016-11-10 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012331625086001	INDO ASIA TIRTA MANUNGGAL							46651				Normal	2009-02-02 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
020542130654001	BAHAGIA INTRA NIAGA							46447				Normal	2014-05-12 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
070843545604000	OEI, EDWARD WIJAYA	JL YUPITER BLOK BS/14 RT 010 RW 003	089676687555		OP	SUKOMANUNGGAL	TANJUNGSARI	96990	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	1999-02-10 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
066927682604000	TJINDROPURNOMO	JL MAYJEND SUNGKONO NO 239 RT 005 RW 002	0811312722		OP	SUKOMANUNGGAL	PUTAT GEDE	Z5000	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	1993-06-10 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
029939329615000	TRIKARYA BANGUN SARANA	JL WONOREJO SARI BLOK 1 NO 7 RT 003 RW 001	0881036730168	PT	BADAN	RUNGKUT	WONOREJO	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2010-08-23 00:00:00	2010-08-23 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
667441505721002	TALIMAS BAJA MANDIRI							46599				PL/DE	2022-11-30 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
248540536606000	CATHRINE SUSILOWATI PRAJITNO	JL DHARMAHUSADA SELATAN NO 4 RT 001 RW 004	087718180080		OP	GUBENG	MOJO	Z5000	KOTA SURABAYA	3,17205E+15	JAWA TIMUR	Normal	2008-12-17 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
028248391604000	TUNAS JAYA SANTOSA	JL RAYA MASPION ROMOKALISARI I/3-5(B.2-3)	081553375569	PT	BADAN	BENOWO	ROMOKALISARI	25931	KOTA SURABAYA		JAWA TIMUR	Normal	2008-06-20 00:00:00	2018-05-18 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
065267429611000	HADI SOEMARSONO	JL PENELEH V NO 31 RT 000 RW 000	081230854785		OP	GENTENG	PENELEH	47521	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	Normal	1992-12-07 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
015591480453001	HATSONSURYA ELECTRIC							46521				Normal	2022-05-19 00:00:00	\N	\N	user_2smb6FNp04ByIe9yV2L3sFaG7L7
813136678609000	SISWANTO GROUP INDONESIA	JL. BENGAWAN NO 56 RT 004 RW 002	08563437471	PT	BADAN	WONOKROMO	DARMO	66311	KOTA SURABAYA		JAWA TIMUR	Normal	2017-02-21 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
011434321631000	PERUSAHAAN CAT, PERNIS DAN KALENG MATARAM	JL DINOYO NO 11-19 RT 001 RW 008	082244227680	PT	BADAN	TEGALSARI	KEPUTRAN	20221	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
315097477026001	SPECTRUM INDOWIBAWA							47411				Normal	2018-10-02 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
028230886619000	LAM HONG	JL RANGKAH V/22	03137304012	CV	BADAN	TAMBAKSARI	RANGKAH	47211	KOTA SURABAYA		JAWA TIMUR	Normal	2011-01-12 00:00:00	2011-02-24 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
021699707618000	INTAN BUANA PERSADA	RUKO NORTH AVANUE BLOK CB-17, CITRALAND THE GREEN LAKE	08958648718	PT	BADAN	LAKARSANTRI	LIDAH KULON	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2003-03-21 00:00:00	2003-04-01 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
748582889611000	TOBA	JL JAGALAN NO 93	082230866800	CV	BADAN	GENTENG	PENELEH	47592	KOTA SURABAYA		JAWA TIMUR	Normal	2016-01-05 00:00:00	2017-10-20 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
011228996732001	SUMBER URIP SEJATI							45301				PL/DE	2018-12-11 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
018312330061001	TRITUNGGAL SELARAS							46900				Non Efektif	2003-06-19 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
022095145611000	SEMESTA KREASI INDAH	JL NGEMPLAK NO 18-22 RT 000 RW 000	0315342912	PT	BADAN	GENTENG	KETABANG	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2005-05-12 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
026074732619000	INDICA MULTI KARYA	JL KALISARI INDAH BLOK 8/J NO 8-5	085335444721	CV	BADAN	MULYOREJO	KALISARI	47112	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-04 00:00:00	2007-05-24 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
066107616611000	ALI SUGIHARTO WIBISONO	JL GADING NO 15	62811311515		OP	GENTENG	KETABANG	Z5000	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	1990-12-21 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
800855066611000	MENTARI PERSADA	JL BASUKI RACHMAD NO 45-47 RT 002 RW 003	08993757558	CV	BADAN	GENTENG	EMBONG KALIASIN	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2016-09-22 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
026227439823001	NAGAMAS BAN							45301				Normal	2019-02-21 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
000000000632632	-	JALAN TEBET RAYA NO.9, TEBET, JAKARTA SELATAN			PEMUNGUT	TEBET	TEBET BARAT	Unass	KOTA ADM. JAKARTA SELATAN		DKI JAKARTA	PL/DE	2004-05-12 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
097482061615000	SOEGIARTO	JL WONOREJO PERMAI SELATAN VIII NO 34 RT 004 RW 004	08123123234		OP	RUNGKUT	WONOREJO	Z5000	KOTA SURABAYA	3,57803E+15	JAWA TIMUR	Normal	2005-12-06 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
313587834604000	PUTRA LAUTAN SEJAHTERA	JL KOMP PERGUDANGAN OSOWILANGUN PERMAI B-20 NO 61 RT 02 RW 04 TAMBAK OSOWILANGON NO 61 RT 02 RW 04	08113018595	PT	BADAN	BENOWO	TAMBAK OSO WILANGUN	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2011-07-21 00:00:00	2011-07-22 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148426001	GAWIH JAYA							46335				Normal	1996-12-10 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012320867611000	KIWI WIRA NIAGA	JL RAYA KALIJATEN NO 101-102 RT 002 RW 001	0895631215510	PT	BADAN	TAMAN	KALIJATEN	20291	KAB. SIDOARJO		JAWA TIMUR	Normal	1985-05-22 00:00:00	1989-04-01 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012331625503001	INDO ASIA TIRTA MANUNGGAL							46651				Normal	2017-09-26 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
025151127902001	AGRO CITA MANDIRI							46319				Normal	2011-01-18 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
014249437644002	PUTRAPERKASA CIPTA ABADI							41019				Non Efektif	2017-11-13 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
060563236624001	LUCIANA TANOYO							68111				Normal	2017-09-06 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
842815342914001	DAMAI LAUTAN NUSANTARA							50214				Normal	2022-08-26 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148061001	GAWIH JAYA							46900				Normal	1998-03-04 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
727920175611000	INFINITY LOGISTICS INDONESIA	GEDUNG PLAZA BRI LANTAI 12 RUANG 1206 JL BASUKI RAHMAT BLOK - NO 122 RT 006 RW 011	081803882266	PT	BADAN	GENTENG	EMBONG KALIASIN	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2015-04-21 00:00:00	2015-07-15 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
078759073609000	KUNCORO TANUDIRJO	MARGOREJO INDAH BLOK C NO 203 RT 003 RW 008	0816512736		OP	WONOCOLO	MARGOREJO	03225	KOTA SURABAYA	3,57802E+15	JAWA TIMUR	Normal	2003-04-11 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
850676719609000	PATRICIA JANE RUSLI	MARGOREJO INDAH BLOK B NO 825 RT 002 RW 008	628195565566		OP	WONOCOLO	MARGOREJO	Z5000	KOTA SURABAYA	3,57803E+15	JAWA TIMUR	Normal	2018-06-08 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
017929910602001	BETON PRIMA INDONESIA							23953				Normal	2011-02-09 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
018346262713002	PAPA SAMSU							46339				Normal	2011-01-25 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
746656974611000	SURYA ARTHA KOMPUTAMA	RUKO GRAND ACHMAD JAIS R.C-9	089616800754	PT	BADAN	GENTENG	PENELEH	47411	KOTA SURABAYA		JAWA TIMUR	Normal	2015-12-08 00:00:00	2015-12-22 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
721710424619000	KINARA GILANG SEMESTA	JL LEBAK JAYA TENGAH NO 24 RT 000 RW 000	6281232839878	PT	BADAN	TAMBAKSARI	GADING	32113	KOTA SURABAYA		JAWA TIMUR	Normal	2015-02-10 00:00:00	2016-01-13 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
021137872631000	CENTURY BEARINDO INTERNATIONAL	RUKO MUTIARA DUPAK A-26 JL RAYA DUPAK NO 65	6281330425544	PT	BADAN	BUBUTAN	GUNDIH	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2003-07-24 00:00:00	2003-07-29 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
011123700907001	TUKAD MAS GC	JL BATUYANG BR TEGEHE KM 7, KAB. GIANYAR				SUKAWATI	BATUBULAN	41012	KAB. GIANYAR			Normal	1982-11-05 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307328001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN KALIMANTAN RT 012 RW 004, RAWA MAKMUR PERMAI, KOTA BENGKULU				MUARA BANGKAHULU	RAWA MAKMUR PERMAI	46335	KOTA BENGKULU			Normal	2024-11-06 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
066538869606997	IVANA SABELA NURHADI	SUMATERA 52-54 RT.002 RW.005, GUBENG			OP	GUBENG	GUBENG	Z5000	KOTA SURABAYA	1,25613E+15	JAWA TIMUR	PL/DE	2009-06-23 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
078764594606000	TAN PAULIN	JL RAYA DHARMAHUSADA INDAH 18 BLOK A NO 16 RT 007 RW 004	081370767315		OP	GUBENG	MOJO	47512	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	2010-06-18 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
015105158631000	CITRA INDAH ABADI	KOMPLEK MANYAR MEGAH PLAZA BLOK D-16 LT. 3 JL NGAGEL JAYA SELATAN	081290428818	CV	BADAN	GUBENG	BARATAJAYA	41019	KOTA SURABAYA		JAWA TIMUR	Normal	1998-12-22 00:00:00	1999-02-08 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
078764594616001	TAN PAULIN	JL GEMBONG 20 - 30 ITC MEGA GROSIR BLOK F7 NO 9	0317382825		OP	SIMOKERTO	KAPASAN	47512	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Non Efektif	2013-02-12 00:00:00	\N	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
317909745613000	BERLIAN ANUGERAH TRANSPORTASI	JL PERAK TIMUR NO 110 RT 001 RW 005	081335518851	PT	BADAN			52291				Normal	2013-06-25 00:00:00	2014-03-12 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
312142482627001	LAUTAN SUMBER REJEKI							46100				Normal	2016-02-05 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
015996747619000	WIJAYA MAPANABADI	JL JEMURSARI NO 109	081703393961	PT	BADAN	WONOCOLO	JEMUR WONOSARI	46591	KOTA SURABAYA		JAWA TIMUR	Normal	1992-12-17 00:00:00	1992-12-16 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
211063128613000	SURYA KASIH	JL INDRAPURA BARU NO 351-A RT 003 RW 008	081331609619	PT	BADAN			46100				Normal	2009-07-10 00:00:00	2012-10-05 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
028176923613000	JAVANA ANTAR BENUA	JL TELUK KUMAI BARAT NO 122 RT 003 RW 002	08170151604	PT	BADAN			52293				Normal	2011-11-03 00:00:00	2011-11-03 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
031203995605000	CITRA CIPTA CAHAYA	JL IKAN MUNGSING VIII NO 96 RT 000 RW 000	081935065306	PT	BADAN	KREMBANGAN	PERAK BARAT	78200	KOTA SURABAYA		JAWA TIMUR	Normal	2013-06-11 00:00:00	2013-08-21 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
015618432643001	SATIVA DWIMAKMUR							96200				Normal	2012-03-07 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
027913151503001	DAMAI BERJAYA							47411				Non Efektif	2018-03-20 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
020917886631000	DAKAI IMPEX	JL TELUK KUMAI TIMUR NO 64	082131198778	PT	BADAN			46319				Normal	2002-02-11 00:00:00	2002-04-18 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
061713038607000	KARYONO RAHARDJO	JL IMAM BONJOL NO 74	0315624212		OP	TEGALSARI	DR. SOETOMO	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	1984-08-16 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
064587793605000	ASEPH TANU HANDOKO	JL RAJAWALI NO 52	081233912995		OP	KREMBANGAN	KREMBANGAN SELATAN	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	1989-02-02 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
019225911606000	MASA SINAR MULIA	RUKO KLAMPIS 21 BLOK H11 RT 001 RW 009	6285102293888	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2011-08-15 00:00:00	2011-08-15 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
018312603618000	BASOEKI INVESTINDO JAYA	JL DARMO PERMAI SELATAN V NO 47	0315483565	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46319	KOTA SURABAYA		JAWA TIMUR	PL/DE	1998-03-26 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
067772509607000	SOELISTIJO HIDAJAT W	JL MAWAR NO 27-29 RT 003 RW 003	6285104595559		OP	TEGALSARI	TEGALSARI	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	1995-04-27 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
316326982614000	OPTIMA PRIMA METAL SINERGI TBK	JL MARGOMULYO PERMAI BLOK BLOK AC NO 10 RT 003 RW 001	085102123698	PT	BADAN	ASEM ROWO	ASEM ROWO	24102	KOTA SURABAYA		JAWA TIMUR	Normal	2012-11-21 00:00:00	2013-01-23 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
313587834615001	PUTRA LAUTAN SEJAHTERA	JL. RAYA KALIRUNGKUT NO. 1-3 BLOK M-35 (KOMPLEK PERTOKOAN RUKO RUNGKUT MEGAH RAYA BLOK M-35) PANJANGJIWO	0318710969	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2013-05-28 00:00:00	\N	2018-03-21 00:00:00	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148323001	GAWIH JAYA							46100				PL/DE	1999-07-05 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148526001	GAWIH JAYA							46325				PL/DE	1996-11-28 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
315672907604000	BUILDING MATERIAL CONSTRUCTION	JL SATELITE TOWN SQUARE BLOK B/9	085854103800	CV	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	23953	KOTA SURABAYA		JAWA TIMUR	Normal	2012-07-24 00:00:00	2012-08-07 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
023749781632003	PT UMAQ TUKUNG MANDIRI UTAMA							01262				PL/DE	2023-12-31 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148628001	GAWIH JAYA							46335				Normal	1998-01-14 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
030461180008001	KARTIKA JAYA MAKMUR							77393				Normal	2016-09-14 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012320867416001	KIWI WIRA NIAGA							46651				Normal	2019-10-22 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
024767220525001	HUTOMO MANDALA PERKASA							41012				Non Efektif	2016-06-17 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148006001	GAWIH JAYA							46335				Normal	1997-02-05 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
590716825607000	ERWIN HENDARTO	JL TRUNOJOYO NO 30 RT 001 RW 012	081231000777		OP	TEGALSARI	DR. SOETOMO	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	2008-12-10 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
665673067624001	SATORIA AGRO INDUSTRI							10629				Normal	2015-07-07 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
750624512532001	SEPAKAT PRATAMA INDONESIA							41012				Non Efektif	2020-07-30 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
022077341615000	TREETOP PYRAMID	JL WISMA SIER LT 4 RUNGKUT INDUSTRI RAYA NO 10	081359813803	PT	BADAN	GUNUNG ANYAR	RUNGKUT TENGAH	47793	KOTA SURABAYA		JAWA TIMUR	Normal	2003-08-11 00:00:00	2003-10-14 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
028175065613000	GLOBAL KARYA UTAMA TRANS	JL TELUK KUMAI BARAT NO 145 RT 003 RW 002	62313295551	PT	BADAN			77321				Normal	2010-10-25 00:00:00	2010-10-25 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
017395286606001	ARDI TEKINDO PERKASA	MAYJEN PROF DR.MOESTOPO 6-8, AIRLANGGA		PT	BADAN	GUBENG	AIRLANGGA	47112	KOTA SURABAYA		JAWA TIMUR	PL/DE	2010-12-09 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
021702188609000	LINGGAR JATI PERKASA	JL NGAGELREJO BLOK III NO 16 RT 007 RW 002	6281216038118	PT	BADAN	WONOKROMO	NGAGEL REJO	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2003-08-27 00:00:00	2004-05-27 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
014660138801001	MITRA INTERTRANS FORWARDING	JL NUSANTARA NO 26-28, KOTA MAKASSAR				WAJO	PATTUNUANG	52291	KOTA MAKASSAR			Normal	2001-02-05 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
030254098606001	RODECO INDONESIA	JL RAYA GUBENG NO 102-106 RT 003 RW 006	08993900525	PT	BADAN	GUBENG	GUBENG	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2015-12-21 00:00:00	\N	2021-05-24 00:00:00	user_2smZjxXbKtwSh3BEEUzt58Nggn2
027145150612001	TRISAKTI JAYA PERKASA							23953				PL/DE	2019-01-09 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
823323696604000	ANAK JAYA SENTOSA	MUTIARA MARGOMULYO PERMAI B-21 RT 001 RW 009	03157485084	PT	BADAN	TANDES	TANDES	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2017-07-14 00:00:00	2017-08-23 00:00:00	\N	user_2smbdxCsSLWERmHJVpnSGGScHDN
312776933734001	GAJAH MAS ANTARNIAGA							46641				Normal	2018-07-20 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
011217932606000	MADUSARI MAS	JL NGINDEN 91	628121620565	PT	BADAN	SUKOLILO	NGINDEN JANGKUNGAN	81210	KOTA SURABAYA		JAWA TIMUR	Normal	2006-02-16 00:00:00	2006-04-17 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
064592843609000	HALIM RUSLI	JL MARGOREJO INDAH BLOK C NO 433 RT 003 RW 008	081555300200		OP	WONOCOLO	MARGOREJO	Z5000	KOTA SURABAYA	3,57804E+15	JAWA TIMUR	Normal	1989-02-15 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
026227439518001	NAGAMAS BAN	JL WOLTER MONGINSIDI NO 99 RT 012 RW 001, KOTA SEMARANG				GENUK	BANGETAYU KULON	45301	KOTA SEMARANG			Normal	2023-12-05 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
023772072631000	BINA AREA PERSADA	JL GAYUNGSARI BARAT XI BLOK GD NO 13 RT 002 RW 005	08118051343	PT	BADAN	GAYUNGAN	GAYUNGAN	78200	KOTA SURABAYA		JAWA TIMUR	Normal	2004-03-29 00:00:00	2004-11-04 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
018312330607000	TRITUNGGAL SELARAS	JL RONGGOLAWE NO 6	62817373565	PT	BADAN	TEGALSARI	DR. SOETOMO	46442	KOTA SURABAYA		JAWA TIMUR	Normal	1998-02-10 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
712141407657001	JAYA ETIKA BETON							46639				Normal	2020-07-08 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
029939642615000	TESLA DAYA ENERGI	RUKO RUNGKUT MEGAH RAYA Q/26, RAYA KALIRUNGKUT NO 1-5 RT 004 RW 004	62318706872	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	41012	KOTA SURABAYA		JAWA TIMUR	Normal	2010-11-12 00:00:00	2015-02-23 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325783619001	SURYA TIMUR SAKTI JATIM	JL. RAYA MULYOSARI 336, KALISARI		PT	BADAN	MULYOREJO	KALISARI	45401	KOTA SURABAYA		JAWA TIMUR	PL/DE	2005-11-11 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
026227439732001	NAGAMAS BAN							45403				Normal	2019-01-11 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
314981812619000	INDOPRENEUR	PAKUWON TOWN SQUARE AA 01-18-19 RT.000 RW.000, KEJAWAN PUTIH TAMBAK	628123014384	CV	BADAN	MULYOREJO	KEJAWAAN PUTIH TAMBAK	62090	KOTA SURABAYA		JAWA TIMUR	PL/DE	2012-04-02 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
025151127609000	AGRO CITA MANDIRI	GEDUNG SPAZIO UNIT 621 B JL LINGKAR DALAM BARAT NO 33 RT 000 RW 000	03199001077	CV	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46319	KOTA SURABAYA		JAWA TIMUR	Normal	2006-06-09 00:00:00	2006-06-14 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
844260224607000	NACHINDO RETAILINDO INDONESIA	JL BINTORO NO 27-A RT 005 RW 014	6289695218078	PT	BADAN	TEGALSARI	DR. SOETOMO	47729	KOTA SURABAYA		JAWA TIMUR	PL/DE	2018-03-29 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
024767220222001	HUTOMO MANDALA PERKASA	JL PAMONG PRAJA RT 000 RW 000, PANGKALAN KERINCI BARAT, KAB. PELALAWAN				PANGKALAN KERINCI	PANGKALAN KERINCI BARAT	41012	KAB. PELALAWAN			Normal	2020-09-24 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
900822685606000	BERKAT JAYA INDO	DHARMAHUSADA INDAH BLOK AA 11 NO 92	62811503188	CV	BADAN	GUBENG	MOJO	46413	KOTA SURABAYA		JAWA TIMUR	PL/DE	2019-01-09 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148528001	GAWIH JAYA							46335				Normal	2016-01-29 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
011332137805001	VITAPHARM							46441				Normal	2011-07-27 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
025151127921001	AGRO CITA MANDIRI							46319				Normal	2016-04-21 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148731001	GAWIH JAYA							46335				Normal	2006-04-24 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
313587834626001	PUTRA LAUTAN SEJAHTERA							46639				Normal	2017-10-24 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
011407558631000	BERNOFARM	DARMOKALI NO 76 RT 013 RW 004	6287859530200	PT	BADAN	WONOKROMO	DARMO	21012	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
021697636609000	MITRA BENTALA BUANA	PUNCAK MARINA 1 LT.2 JL. MARGOREJO INDAH BLOK XVII NO 2-4 RT 007 RW 005	085652011225	PT	BADAN	WONOCOLO	SIDOSERMO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2002-10-17 00:00:00	2003-02-05 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
027766617618000	PERTIWI INTERTRADE	PATTIMURA (RUKO PLAZA SEGI DELAPAN INDAH III BLOK D-825)	62317322099	PT	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	46652	KOTA SURABAYA		JAWA TIMUR	Normal	2008-04-21 00:00:00	2021-08-16 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
019228196903001	BUMI DEWATA PROPERINDO							41011				PL/DE	2006-05-11 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
041368747607000	KURNIA LUKMAN GOUTAMA	JL KAHURIPAN NO 30 RT 003 RW 006	0811378868		OP	TEGALSARI	KEPUTRAN	46208	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	1984-01-15 00:00:00	\N	2022-11-18 00:00:00	user_2smZjxXbKtwSh3BEEUzt58Nggn2
015353972605000	NIAGATAMA INTIMULIA	JL KALISOSOK KIDUL NO 2 RT 000 RW 000	081330740768	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	46447	KOTA SURABAYA		JAWA TIMUR	Normal	1994-12-22 00:00:00	2004-05-26 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
019419001657001	SURYA MOMENTUM SEJATI							46900				Normal	2021-11-12 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
733286140604000	SENTHAVE PURNAMA ABADI	JL MAYJEND SUNGKONO NO 239	082139959582	PT	BADAN	SUKOMANUNGGAL	PUTAT GEDE	41011	KOTA SURABAYA		JAWA TIMUR	Normal	2015-06-24 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
018344887614002	SUTINDO SURYA SEJAHTERA	JL RADEN SALEH NO 63-63A	0315041820	PT	BADAN	BUBUTAN	BUBUTAN	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2017-01-13 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
315462200618000	TRILLIUN DEPO INTERNUSA	JL MAYJEN YONO SOEWOYO BLOK KAV 3	081333148889	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2012-06-12 00:00:00	2012-06-12 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
015266307202001	PANAMAS	JL.BY PASS NO.234 RT.003 RW.005, TAROK DIPO, BUKITTINGGI				GUGUK PANJANG	TAROK DIPO	46339	KOTA BUKITTINGGI			Non Efektif	1995-09-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
848773826604000	AGRINDO JAYA MANDIRI	RUKO PRAMBANAN RESIDENCE NO. 19 LT 2 RT 001 RW 008	081246677654	CV	BADAN	LAKARSANTRI	LIDAH KULON	46202	KOTA SURABAYA		JAWA TIMUR	Normal	2018-05-17 00:00:00	2018-06-07 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
015266307721002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN MAS TIRTODARMO HARYONO NO 199 RT 026, SUNGAI NANGKA, KOTA BALIKPAPAN				BALIKPAPAN SELATAN	SUNGAI NANGKA	46335	KOTA BALIKPAPAN			Normal	2024-11-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
024426900609000	SETYAWAN MAHAKARYA PRIMA	JL GAYUNGSARI BLOK I NO 36 RT 001 RW 004	081331410978	PT	BADAN	GAYUNGAN	GAYUNGAN	46610	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2004-12-07 00:00:00	\N	2022-12-13 00:00:00	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015353972812001	NIAGATAMA INTIMULIA							46339				Normal	2003-08-05 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
667828487655001	RUMAH AIR MAKMUR ABADI							46334				Normal	2021-12-16 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
019225366631000	JAWA METALINDO PRIMA INDUSTRI	JL EMBONG KENONGO NO 60	089503610906	PT	BADAN	GENTENG	EMBONG KALIASIN	25952	KOTA SURABAYA		JAWA TIMUR	Normal	2000-04-26 00:00:00	2000-06-13 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
030584809624000	TRILLIUN INVESTAMA INDONESIA	JL. RAYA GEMPOL-BANGIL	081252554412	PT	BADAN	BEJI	CANGKRINGMALANG	46900	KAB. PASURUAN		JAWA TIMUR	Normal	2011-08-11 00:00:00	2011-08-11 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
768422073614000	PANCA ANUGRAH GEMILANG	JL. MARGOMULYO PERMAI BLOK J NO 14 RT 001 RW 001	6281938083888	CV	BADAN	ASEM ROWO	TAMBAK SARIOSO	47591	KOTA SURABAYA		JAWA TIMUR	Normal	2016-08-24 00:00:00	2016-09-28 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
802475715614000	ANUGERAH TIMOR JAYA SENTOSA	JL. GREGES NO 1-E	085808332880	PT	BADAN	SAWAHAN	SAWAHAN	45301	KOTA SURABAYA		JAWA TIMUR	Normal	2016-10-10 00:00:00	2016-11-18 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
011228996042001	SUMBER URIP SEJATI							45301				Non Efektif	2017-03-17 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
811550599615000	NATALIA HALIM	JL D HUSADA INDAH BLOK 1 NO 25 RT 002 RW 008	085745406937		OP	MULYOREJO	MULYOREJO	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2017-02-02 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
315107623503001	MITRAFOOD ANDALAN SEMESTA							46641				Normal	2015-12-23 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
928757079807001	SAHABAT MARITIM LOGISTIK							52296				PL/DE	2021-06-24 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
752216226606000	MENTARI BUMI PERSADA TRANSPORT	JL MANYAR KARTIKA BARAT NO 5-B	628123234782	PT	BADAN	SUKOLILO	MENUR PUMPUNGAN	49431	KOTA SURABAYA		JAWA TIMUR	Normal	2016-02-15 00:00:00	2023-03-01 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
663763316611000	OCEAN SUMBER REJEKI	GEDUNG BUMI MANDIRI TOWER 2 LEVEL 12 JL PANGLIMA SUDIRMAN NO 66-68 RT 001 RW 007	089677569716	CV	BADAN	GENTENG	EMBONG KALIASIN	46206	KOTA SURABAYA		JAWA TIMUR	PL/DE	2014-02-18 00:00:00	2018-06-05 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
313587834606001	PUTRA LAUTAN SEJAHTERA	JL DHARMAHUSADA INDAH BARAT 2 NO 27 RT 007 RW 004	081234055956	PT	BADAN	GUBENG	MOJO	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2018-08-16 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
032086548606000	LILY MANGO	MANYAR KERTOARJO 6/59, MOJO	6281233369329	PT	BADAN	GUBENG	MOJO	47212	KOTA SURABAYA		JAWA TIMUR	Normal	2012-04-05 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
315107623604000	MITRAFOOD ANDALAN SEMESTA	JL KUPANG BARU I NO 5 RT 005 RW 005	62811338976	CV	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2012-04-17 00:00:00	2012-05-10 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
060563236606000	LUCIANA TANOYO	JL MANYAR KERTOARJO 6 NO 21	081131196294		OP	GUBENG	MOJO		KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	1984-11-29 00:00:00	2015-10-01 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148125001	GAWIH JAYA							46335				Normal	1996-12-17 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148604001	GAWIH JAYA	JL TANJUNGSARI 3 BLOK D1-D2	088804900134	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	46339	KOTA SURABAYA		JAWA TIMUR	Normal	1997-01-29 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148521001	GAWIH JAYA							46335				Normal	2015-01-12 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148608001	GAWIH JAYA							46335				Normal	1999-01-08 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
024767220203001	HUTOMO MANDALA PERKASA							46100				Normal	2019-08-07 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
028175743504001	KARYA INDAH BUANA							52292				Normal	2019-11-04 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
024767220426001	HUTOMO MANDALA PERKASA							41012				Non Efektif	2016-10-31 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
011222031631000	AKTIF INDONESIA INDAH	JL RUNGKUT INDUSTRI III NO 64 RT 003 RW 005	0896257116788	PT	BADAN	GUNUNG ANYAR	RUNGKUT TENGAH	20119	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-01 00:00:00	1985-04-01 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
041368747613001	KURNIA LUKMAN GOUTAMA	JL BONGKARAN NO 89	0811378868		OP	PABEAN CANTIAN	BONGKARAN	46208	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	1995-10-24 00:00:00	\N	2021-05-24 00:00:00	user_2smZjxXbKtwSh3BEEUzt58Nggn2
315672907528001	BUILDING MATERIAL CONSTRUCTION							23953				Normal	2021-07-02 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
097412266616000	FAISAL ABOED BAWAZIR	JL KETAPANG ARDIGUNO NO 11 RT 003 RW 001	0811343114		OP	SEMAMPIR	AMPEL	Z5000	KOTA SURABAYA	3,57816E+15	JAWA TIMUR	Normal	2005-04-19 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
020542130648001	BAHAGIA INTRA NIAGA							46447				Normal	2022-08-04 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012331625422001	INDO ASIA TIRTA MANUNGGAL							46651				PL/DE	2018-01-16 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
015324817604001	JAYANATA KOSMETIKA PRIMA	PUNCAK INDAH LONTAR 2/KOMP. (SPI) LG;63-67, LONTAR	082142414021	PT	BADAN	SAMBIKEREP	LONTAR	47724	KOTA SURABAYA		JAWA TIMUR	Normal	2005-12-21 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
022573034607000	SURYA SINAR BERLIAN	JL. RAYA MANUKAN KULON 60 BLOK D NO 5	0317405731	PT	BADAN	TANDES	MANUKAN KULON	47723	KOTA SURABAYA		JAWA TIMUR	Normal	2007-12-18 00:00:00	2008-04-07 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
140917618619000	JEMMY LINAKSITA	JL LEBAK ARUM BLOK 2 NO 33 RT 003 RW 014	082181499953		OP	TAMBAKSARI	GADING		KOTA SURABAYA	3,5781E+15	JAWA TIMUR	Normal	2005-11-29 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
751005869606000	PERSEKUTUAN PERDATA KANTOR KONSULTAN PAJAK DAN KUASA HUKUM FA FA FA	JL MANYAR INDAH BLOK 7 NO 18 RT 002 RW 006	081232099998	LEMBAGA & BADAN LAIN	BADAN	SUKOLILO	SEMOLOWARU	69201	KOTA SURABAYA		JAWA TIMUR	Normal	2016-02-04 00:00:00	2019-07-31 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
028175206611000	KARTIKA INDO TURIS ABADI	JL BASUKI RACHMAD NO 7-9A RT 000 RW 000	628883508873	PT	BADAN	GENTENG	EMBONG KALIASIN	41011	KOTA SURABAYA		JAWA TIMUR	Normal	2010-11-25 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
018344887604001	SUTINDO SURYA SEJAHTERA	JL TANJUNGSARI 44-A	0315451378	PT	BADAN	SUKOMANUNGGAL	SIMOMULYO BARU	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2017-01-26 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
066106378008001	LIE ALI GUNAWAN / PD. KARUNIA							52101				Non Efektif	2005-07-26 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
015353972803001	NIAGATAMA INTIMULIA							46447				Normal	2015-02-02 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
015353972802001	NIAGATAMA INTIMULIA							46900				Normal	2009-06-24 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
749970836604001	PERMATA INDAH CEMERLANG	JL HR MUHAMMAD NO 59	6281249994408	PT	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	46447	KOTA SURABAYA		JAWA TIMUR	Normal	2016-09-19 00:00:00	\N	2017-11-20 00:00:00	user_2smaTpzecsrBC8bCeslF7ApFR6j
011358389951003	SALAM PACIFIC INDONESIA LINES							50131				Non Efektif	2020-02-04 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
028173359613000	TIRTA SARANA INDO LINES	JL INDRAPURA BARU NO 351-C RT 003 RW 008	08563149025	PT	BADAN			50131				Normal	2009-04-27 00:00:00	2012-01-30 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
313359200619000	ARMADA MIX	PERUMAHAN PAKUWON CITY CLUSTER SAN DIEGO BLOK M5-11	623152601770	PT	BADAN	MULYOREJO	KALISARI	23957	KOTA SURABAYA		JAWA TIMUR	Normal	2011-06-09 00:00:00	2012-01-16 00:00:00	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
067834481619000	RONALD WALLA	JL DHARMAHUSADA INDAH 1 BLOK L NO 8-9 RT 004 RW 009	08123035091		OP	MULYOREJO	MULYOREJO	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	1995-02-10 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
078741774607000	JOHANES SETIAWAN SANTOSO, SE, MM	PERMATA GOLF FAMILI BLOK II NO 10 RT 003 RW 011	0811370848		OP	WIYUNG	BABATAN	Z5000	KOTA SURABAYA	3,57804E+15	JAWA TIMUR	Normal	2012-01-24 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
011228996322001	SUMBER URIP SEJATI							45301				PL/DE	2019-01-16 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
016774093642001	BAMBE SINAR SURYA TIMUR							68111				Normal	2008-11-14 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
314835588411001	GAF INDONESIA							46641				Normal	2021-06-23 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
028230639606000	FERTILINDO VITRO SAINS	JL RAYA GUBENG NO 68D	081331902829	PT	BADAN	GUBENG	GUBENG	47725	KOTA SURABAYA		JAWA TIMUR	Normal	2008-11-18 00:00:00	2010-09-22 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
015589492606000	LABTECH CITRA PERSADA	JL MAWAR NO 35-37 RT 002 RW 003	085100154888	PT	BADAN	TEGALSARI	TEGALSARI	46691	KOTA SURABAYA		JAWA TIMUR	Normal	1991-10-25 00:00:00	1991-10-30 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
028175743613000	KARYA INDAH BUANA	GUDANG STASIUN KOTA PINTU 9 JL SEMUT KALI	0313537668	PT	BADAN	PABEAN CANTIAN	BONGKARAN	52292	KOTA SURABAYA		JAWA TIMUR	Normal	2011-02-24 00:00:00	2016-03-16 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
665673216604000	SATORIA ANEKA INDUSTRI	SATORIA TOWER LANTAI 27-28 JL PRADAH JAYA I NO 01 RT 000 RW 000	085707077103	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	21012	KOTA SURABAYA		JAWA TIMUR	Normal	2014-03-06 00:00:00	2015-03-06 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
040899825613001	KOENTORO LITYO	JL. SONGOYUDAN 27                                 , NYAMPLUNGAN			OP	PABEAN CANTIAN	NYAMPLUNGAN	47711	KOTA SURABAYA	0	JAWA TIMUR	Normal	1995-10-24 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
905182838619000	LAUTAN ANUGERAH TRITUNGGAL	JL MANYAR KERTOADI BLOK 7 NO 1	6281229606408	PT	BADAN	MULYOREJO	MANYAR SABRANGAN	46651	KOTA SURABAYA		JAWA TIMUR	Normal	2019-02-14 00:00:00	2019-02-22 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
820125565609000	MARCAPADA SUKSES INDONESIA	JL. GAYUNG KEBONSARI 152 A BLOK A NO 8	6281267911676	PT	BADAN	GAYUNGAN	KETINTANG	52221	KOTA SURABAYA		JAWA TIMUR	PL/DE	2017-05-22 00:00:00	2017-09-20 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148035001	GAWIH JAYA	JALAN KELAPA DUA RAYA NO 01 RT 003 RW 006, KELAPA DUA, JAKARTA BARAT				KEBON JERUK	KELAPA DUA	46335	JAKARTA BARAT			Normal	2024-06-05 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
011332137427001	VITAPHARM							21012				Normal	2015-10-16 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
761681105611000	MANUNGGAL INDOWOOD INVESTINDO	GEDUNG BUMI MANDIRI TOWER 2 LT. 12 JL PANGLIMA SUDIRMAN BLOK KAV 66-68	628155001294	PT	BADAN	GENTENG	EMBONG KALIASIN	16211	KOTA SURABAYA		JAWA TIMUR	Normal	2016-05-19 00:00:00	2016-11-17 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
022085963517001	QUANTUM HRM INTERNASIONAL							70100				Normal	2020-04-14 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
014249437644001	ANGGREK MERAH							41019				Non Efektif	2009-08-27 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
021698535609000	USAHA BAKTI PERKASA	JL. JEMURSARI III/73 RT 002 RW 010	08973830379	PT	BADAN	WONOCOLO	JEMUR WONOSARI	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2003-01-15 00:00:00	2003-08-14 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
750624512601001	SEPAKAT PRATAMA INDONESIA							41012				Normal	2021-04-19 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
032063893609000	EDMAR MANDIRI JAYA	JL KERTOMENANGGAL BLOK III NO 07 RT 002 RW 009	0811370931	PT	BADAN	GAYUNGAN	DUKUH MENANGGAL	46206	KOTA SURABAYA		JAWA TIMUR	Normal	2012-04-02 00:00:00	2012-12-26 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
011370269615000	SURYO	JL RAYA KALIRUNGKUT BLOK N NO 11	08158077504	CV	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	46319	KOTA SURABAYA		JAWA TIMUR	Normal	1982-11-29 00:00:00	1992-03-13 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
012325783722001	SURYA TIMUR SAKTI JATIM							45403				Non Efektif	2002-11-18 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
022069710605000	TERU TRI TUNGGAL	JL TANJUNG SADARI NO 69	081330000304	PT	BADAN	KREMBANGAN	PERAK BARAT	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2011-06-21 00:00:00	2011-06-21 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
828474353606000	KARYA CITRA ANUGRAH	JL MANYAR KERTOARJO BLOK VIII NO 48 RT 004 RW 011	08123212240	PT	BADAN	GUBENG	GUBENG	46319	KOTA SURABAYA		JAWA TIMUR	Normal	2017-09-25 00:00:00	2020-10-01 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
018346262712002	PAPA SAMSU							46339				Normal	1999-12-07 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
017396490611000	ZANGRANDI PRIMA	JL YOS SUDARSO NO 15 RT 002 RW 007	0316345820	PT	BADAN	GENTENG	EMBONG KALIASIN	10531	KOTA SURABAYA		JAWA TIMUR	Normal	1998-03-02 00:00:00	1998-03-05 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
020099198607000	ANUGERAH ALAM	JL. BOGOWONTO NO 15	6281332875061	PT	BADAN	TEGALSARI	DR. SOETOMO	46620	KOTA SURABAYA		JAWA TIMUR	PL/DE	2002-06-19 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
022069710822001	TERU TRI TUNGGAL							52291				Normal	2018-08-07 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
015266307923001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN FLORES, NANGANESA, KAB. ENDE				NDONA	NANGANESA	46335	KAB. ENDE			Normal	2024-11-06 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307741001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN KADRIE OENING NO 169 RT 018, AIR HITAM, KOTA SAMARINDA				SAMARINDA ULU	AIR HITAM	46335	KOTA SAMARINDA			Normal	2024-11-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
028245595614000	PAGI PERKASA MOTOR	JL BUBUTAN 16-22 BLOK C-05	6282337335892	PT	BADAN	BUBUTAN	ALUN-ALUN CONTONG	45401	KOTA SURABAYA		JAWA TIMUR	Normal	2009-05-26 00:00:00	2009-06-03 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
667828487608001	RUMAH AIR MAKMUR ABADI							46334				Normal	2022-11-06 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
040226680613000	ONG ANDY WIRYANTO	JL WASPADA NO 86 RT 005 RW 003	08817001086		OP	PABEAN CANTIAN	BONGKARAN	46202	KOTA SURABAYA	3,57812E+15	JAWA TIMUR	Normal	1983-12-04 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
031791791602001	MANDAGUNA METALINDO							46639				Normal	2019-08-06 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
011358389952001	SALAM PACIFIC INDONESIA LINES							50131				Normal	2006-02-17 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
727892812607000	ANUGERAH BUMI SEJAHTERA	JL. BOGOWONTO NO 15 RT 006 RW 014	628123260139	PT	BADAN	TEGALSARI	DR. SOETOMO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2015-04-20 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
022066294613000	SAHAKON TRACIMEX INDONESIA	JL. PERAK TIMUR NO 56 RT 002 RW 005	081217049898	PT	BADAN			46419				Normal	2004-01-13 00:00:00	2008-05-07 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
019225366603001	JAWA METALINDO PRIMA INDUSTRI							25952				Normal	2002-11-12 00:00:00	\N	\N	user_2smZoKKCH1wJ39OWYKrlIoxslVI
015726011631000	ANEKA KIMIA INTI	GEDUNG GRAHA SA LANTAI 9  JL RAYA GUBENG NO 19-21	62315032234	PT	BADAN	GUBENG	GUBENG	46651	KOTA SURABAYA		JAWA TIMUR	Normal	1997-04-29 00:00:00	1997-05-01 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
015107139611001	RIA CENDANA	GEDUNG GRAND CITY MALL LT.4 R.110 JLGUBENG POJOK NO 1 RT 000 RW 000	081319349351	PT	BADAN	GENTENG	KETABANG	56101	KOTA SURABAYA		JAWA TIMUR	Normal	2013-12-30 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
015726011063001	ANEKA KIMIA INTI							46651				PL/DE	1997-07-09 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
026227439951001	NAGAMAS BAN							45301				Normal	2023-12-06 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
016407264606000	WELL RACOM NUSANTARA	JL BRATANG BINANGUN NO 85	089530378598	CV	BADAN	GUBENG	BARATAJAYA	47412	KOTA SURABAYA		JAWA TIMUR	Normal	1994-03-09 00:00:00	1994-10-11 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
928757079924001	SAHABAT MARITIM LOGISTIK							52296				Normal	2021-04-30 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
063624530606000	IR. ARIEF HARSONO,MM	JL BALI 34 36 RT 002 RW 010	082281346463		OP	GUBENG	GUBENG	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	1986-08-23 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
015615131611000	MULTI CIPTA BETON PERKASA	JL PANGLIMA SUDIRMAN NO 73-75	08155021248	PT	BADAN	GENTENG	EMBONG KALIASIN	46639	KOTA SURABAYA		JAWA TIMUR	Normal	1992-06-26 00:00:00	1992-06-26 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
060560133614000	SUWIRO WIDJOJO	JL RAYA ARJUNO NO 51-53	6281232814777		OP	SAWAHAN	SAWAHAN	Z5000	KOTA SURABAYA	3,57806E+15	JAWA TIMUR	PL/DE	1984-12-18 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
026227439832001	NAGAMAS BAN							45403				Normal	2010-12-20 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
020542130631000	BAHAGIA INTRA NIAGA	JL SIMO POMAHAN NO 45-P	082131989799	PT	BADAN	SUKOMANUNGGAL	SIMOMULYO	46447	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148311001	GAWIH JAYA							46335				Normal	2022-02-25 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
014409908604000	ROTARIMAS SURYA	JL.TANJUNGSARI NO.30	0816506122	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	22220	KOTA SURABAYA		JAWA TIMUR	Normal	1987-07-02 00:00:00	1987-07-02 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
806430229611000	WIRIYA JAYA INTERNASIONAL GLOBALINDO	JL UNDAAN KULON NO 53 RT 000 RW 000	081330066066	PT	BADAN	GENTENG	PENELEH	46511	KOTA SURABAYA		JAWA TIMUR	Normal	2016-11-29 00:00:00	2017-09-20 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148612001	GAWIH JAYA							46339				Normal	2001-09-06 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
040899825607000	KOENTORO LITYO	JL PEJAJARAN DALAM NO 10	081554111963		OP	TEGALSARI	KEPUTRAN	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	1983-12-30 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
313587834657001	PUTRA LAUTAN SEJAHTERA							46639				Normal	2017-09-12 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012320867603001	KIWI WIRA NIAGA							46651				Normal	2012-08-03 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
313587834729001	PUTRA LAUTAN SEJAHTERA							46639				Normal	2019-01-02 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
731096368614000	MADANI ABADI JAYA	JL. ASEM BLOK II NO 11 RT 012 RW 002	081235000525	PT	BADAN	ASEM ROWO	ASEM ROWO	46638	KOTA SURABAYA		JAWA TIMUR	Normal	2015-05-25 00:00:00	2018-09-05 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
042215061606000	HARJO SUTANTO	JL BALI NO 18 RT 002 RW 010	081252776678		OP	GUBENG	GUBENG	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	1984-06-06 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
017396490619001	ZANGRANDI PRIMA	JL DHARMAHUSADA INDAH TIMUR (GALAXY MALL LD 38-39) NO 35-37	0315345820	PT	BADAN	MULYOREJO	MULYOREJO	10531	KOTA SURABAYA		JAWA TIMUR	Normal	2015-11-13 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
665673216624001	SATORIA ANEKA INDUSTRI							21012				Normal	2015-07-07 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
066106378606000	LIE ALI GUNAWAN	JL MANYAR REJO I NO 11 SD 15 RT 001 RW 005	082240697019		OP	SUKOLILO	MENUR PUMPUNGAN		KOTA SURABAYA	3,57809E+15	JAWA TIMUR	Normal	1901-01-01 00:00:00	2021-05-24 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
019419001543001	SURYA MOMENTUM SEJATI							46900				Normal	2017-08-24 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
050442755607000	JOS SUGIANTO MARDANUS	JL PREGOLAN NO 21-23 RT 001 RW 002	0816507737		OP	TEGALSARI	TEGALSARI	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	1984-04-11 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
062393970615000	PURNAWAN HARTAJA	PERUMAHAN KENDANGSARI YKP BLOK Q NO 3 RT 007 RW 002	628213248887		OP	TENGGILIS MEJOYO	KENDANGSARI	47920	KOTA SURABAYA	3,57824E+15	JAWA TIMUR	Normal	1985-02-06 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
316665298615000	SEVEN SEAS MARINE PRODUCT	JL RUNGKUT INDUSTRI BLOK VIII NO 8	082140623342	PT	BADAN	TENGGILIS MEJOYO	KUTISARI	10211	KOTA SURABAYA		JAWA TIMUR	Normal	2013-01-16 00:00:00	2013-04-23 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
667828487604000	RUMAH AIR MAKMUR ABADI	JL RAYA SUKOMANUNGGAL JAYA 3 RUKO CHOFA NO 1	082139830604	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	46334	KOTA SURABAYA		JAWA TIMUR	Normal	2014-03-26 00:00:00	2016-12-20 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
015266307642001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN BETA KAVLING 3, 5 & 6, KAWASAN INDUSTRI MASPION, MANYARSIDOMUKTI, KAB. GRESIK				MANYAR	MANYARSIDOMUKTI	46335	KAB. GRESIK			Normal	2024-11-08 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
312406028615000	DWIPARI SELARAS	JL MEDOKAN AYU MA.III BLOK B NO 18 RT 008 RW 008	083831859090	PT	BADAN	RUNGKUT	MEDOKAN AYU	42206	KOTA SURABAYA		JAWA TIMUR	Normal	2010-10-25 00:00:00	2010-11-25 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
848773826712001	AGRINDO JAYA MANDIRI							46202				Non Efektif	2018-08-15 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
014660138631000	MITRA INTERTRANS FORWARDING	JL ALOON ALOON PRIOK NO 27	085933076657	PT	BADAN	KREMBANGAN	PERAK BARAT	52291	KOTA SURABAYA		JAWA TIMUR	Normal	1989-08-09 00:00:00	1989-08-09 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
022089205618000	BUANA CAHAYATAMA	JL.A.W.SIAMIN,RUKO VILLA BUKIT MAS BLOK RC NO 12 RT 004 RW 006	6285732189736	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2004-11-08 00:00:00	2004-11-09 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
020921433605000	CRANE INDO PERDANA	JL INDRAPURA GEDUNG TANTO LT. 04 NO 29-33	087855077655	PT	BADAN	KREMBANGAN	KEMAYORAN	52240	KOTA SURABAYA		JAWA TIMUR	Normal	2005-02-15 00:00:00	2017-02-21 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
015267941614000	PRIMAMAS SEGARA UNGGUL	JL KALIANAK BARAT NO 55-A	081357129065	PT	BADAN	ASEM ROWO	ASEM ROWO	52109	KOTA SURABAYA		JAWA TIMUR	Normal	2006-05-08 00:00:00	2006-05-08 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
749970836307001	PERMATA INDAH CEMERLANG							46447				Normal	2017-08-16 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
027910512611000	PODO MEKAR JAYA SENTOSA	JL KALISARI 3 BLOK 0 NO 14 RT 005 RW 012	089688199703	PT	BADAN	GENTENG	KAPASARI	46441	KOTA SURABAYA		JAWA TIMUR	Normal	2008-05-07 00:00:00	2009-10-01 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
017435900706001	SURYA INTRINDO MAKMUR TBK							32909				Normal	2013-06-27 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
028256501642001	LNS INDONESIA							46591				Normal	2020-01-23 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
012557385631000	JERINDO SARI UTAMA	JL MANYAR KERTOARJO V NO 18	082139027446	PT	BADAN	GUBENG	MOJO	46651	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
023749781722000	UMAQ TUKUNG MANDIRI UTAMA	JL RAYA AHMAD YANI GEDUNG AVIAN BRANDS LANTAI 6 NO 317 RT 003 RW 009	6281231938345	PT	BADAN	GAYUNGAN	DUKUH MENANGGAL	01262	KOTA SURABAYA		JAWA TIMUR	Normal	2004-09-15 00:00:00	2017-11-29 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
023772072445001	BINA AREA PERSADA							78101				PL/DE	2017-03-03 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
761812932604000	SUPRO INDONESIA AMIN	RAYA TANDES NO 154	628155152154	PT	BADAN	TANDES	TANDES	47413	KOTA SURABAYA		JAWA TIMUR	PL/DE	2016-05-24 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
028402089609000	BUMI MINERAL LESTARI	JL PRAPANCA NO 16 RT 004 RW 009	081803010981	PT	BADAN	WONOKROMO	DARMO	46900	KOTA SURABAYA		JAWA TIMUR	PL/DE	2008-04-24 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
015926561604000	OSOWILANGON INDAH	JL TAMBAK OSOWILANGUN	0318034451	PT	BADAN	BENOWO	TAMBAK OSO WILANGUN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	1993-08-06 00:00:00	1995-06-07 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
021140439614000	KARYA INDAH DELAPAN EXPRES	JL. RAYA ARJUNA 83, SAWAHAN	081999663939	CV	BADAN	SAWAHAN	SAWAHAN	52292	KOTA SURABAYA		JAWA TIMUR	Normal	2005-02-02 00:00:00	2013-09-27 00:00:00	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148404001	GAWIH JAYA							46335				Normal	2020-09-16 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148517001	GAWIH JAYA							46335				Normal	1996-12-20 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012331625451001	INDO ASIA TIRTA MANUNGGAL							46651				Normal	2020-01-28 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
012325148626001	GAWIH JAYA							46335				Normal	1997-02-03 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
024767220421001	HUTOMO MANDALA PERKASA							41012				Non Efektif	2018-02-02 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
313587834712001	PUTRA LAUTAN SEJAHTERA							46639				Normal	2013-01-07 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
761681105625001	MANUNGGAL INDOWOOD INVESTINDO							16211				Non Efektif	2016-11-25 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
015589492031001	LABTECH CITRA PERSADA							46691				Normal	2023-03-09 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
733520134604000	DE VASA INDONESIA	JL HR. MOHAMMAD NO 209	6282139201832	PT	BADAN	SUKOMANUNGGAL	PUTAT GEDE	55194	KOTA SURABAYA		JAWA TIMUR	Normal	2015-06-29 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
315839514609000	EL-KOKAR TIMUR	ROYAL KETINTANG REGENCY BLOK B NO 12 RT 000 RW 000	085101154669	PT	BADAN	GAYUNGAN	KETINTANG	43212	KOTA SURABAYA		JAWA TIMUR	Normal	2012-09-05 00:00:00	2012-10-02 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
027145150612000	TRISAKTI JAYA PERKASA	JL PASAR BESAR WETAN BLOK 30/I RT 001 RW 002	082232071837	PT	BADAN	BUBUTAN	ALUN-ALUN CONTONG	25119	KOTA SURABAYA		JAWA TIMUR	Normal	2010-06-10 00:00:00	2010-06-10 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
723634226604000	IVY GOZALI	KUPANG INDAH 2 NO 48 RT 002 RW 005	6282299333149		OP	SUKOMANUNGGAL	SONOKWIJENAN	Z5000	KOTA SURABAYA	3,57828E+15	JAWA TIMUR	Normal	2015-03-04 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
015587827624001	ASIA PRAMULIA							22220				Normal	2024-04-15 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
019419001721001	SURYA MOMENTUM SEJATI							46900				Normal	2019-07-04 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
021697636603001	MITRA BENTALA BUANA							68111				Normal	2006-10-09 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
023549934605000	CITRA MANDIRI SEJATI	JL KEMAYORAN BARU NO 28 RT 002 RW 002	081313987676	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2004-01-13 00:00:00	2013-05-01 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
030018394618000	LAUTAN EMAS OENTOENG	JL DARMO PARK 2 BLOK 3 NO 14	628175787878	CV	BADAN	DUKUH PAKIS	DUKUH PAKIS	47529	KOTA SURABAYA		JAWA TIMUR	Normal	2013-11-11 00:00:00	2013-12-23 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
017396490613001	ZANGRANDI PRIMA	PASAR ATOM MALL LT. 1 NO A-84	082334164646	PT	BADAN	PABEAN CANTIAN	BONGKARAN	10531	KOTA SURABAYA		JAWA TIMUR	Normal	2015-11-30 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
015266307902001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN NGURAH RAI NO 9, BANJAR TEGAL, KAB. BULELENG				BULELENG	BANJAR TEGAL	46335	KAB. BULELENG			Normal	2024-11-06 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307203001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN BY PASS RT 001 RW 003, KAMPAI TABU KERAMBIL, KOTA SOLOK				LUBUK SIKARAH	KAMPAI TABU KERAMBIL	46335	KOTA SOLOK			Normal	2024-11-06 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
020492393619000	MULTI JAYA SENTOSA	JL KENJERAN NO 617	0313897015	PT	BADAN	MULYOREJO	KALIJUDAN	46339	KOTA SURABAYA		JAWA TIMUR	Normal	2001-07-09 00:00:00	2001-07-24 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
667828487642001	RUMAH AIR MAKMUR ABADI							46334				Normal	2022-06-20 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
738003839611000	KAYAN SUKSES LESTARI	JL BASUKI RACHMAD NO 63-65 RT 002 RW 003	087853737166	PT	BADAN	GENTENG	EMBONG KALIASIN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2015-09-04 00:00:00	2015-10-30 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
028403731611001	BUMI CENTRAL HARAPAN	JL GENTENG BESAR NO F-65	0811342204	PT	BADAN	GENTENG	KAPASARI	46100	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2012-06-26 00:00:00	\N	2021-05-24 00:00:00	user_2smaTpzecsrBC8bCeslF7ApFR6j
026702134607000	TANAYA HOSPITALITY GROUP	JL PREGOLAN NO 02 RT 001 RW 002	081253667787	PT	BADAN	TEGALSARI	TEGALSARI	56101	KOTA SURABAYA		JAWA TIMUR	Normal	2011-06-24 00:00:00	2011-08-01 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
826598484615000	WIJAYA DUTA SEJAHTERA	JL RAYA KALIRUNGKUT 5 BLOK I NO 2 RT 000 RW 000	628111085668	PT	BADAN	RUNGKUT	KALIRUNGKUT	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2017-08-23 00:00:00	2017-10-11 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
752020602604000	ERIC FERDINAND JACOB	PERUMAHAN VILLA BUKIT REGENCY I BLOK BLOK PC 8 NO 22 RT 001 RW 016	0811343553		OP	SAMBIKEREP	LONTAR	Z5000	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	2016-02-15 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
019133347631000	KARYAINDAH ALAM SEJAHTERA	JL KALISOSOK KIDUL NO 2	62313930881	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	10437	KOTA SURABAYA		JAWA TIMUR	Normal	2000-04-14 00:00:00	2008-12-02 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
026330936605000	SUNAN INTI TRANS	JL PERAK BARAT NO 205 RT 001 RW 003	082232115959	PT	BADAN			52291				Normal	2008-07-15 00:00:00	2010-01-25 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
028245728614000	TRILLIUN PRIMA SUKSES	JL MARGOMULYO 44 BLOK KK NO 5-7	62317483302	PT	BADAN	ASEM ROWO	ASEM ROWO	23923	KOTA SURABAYA		JAWA TIMUR	Normal	2009-07-02 00:00:00	2009-12-29 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
024767220545001	HUTOMO MANDALA PERKASA							41012				Non Efektif	2017-07-21 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
015587827631000	ASIA PRAMULIA	JL RAYA KEDUNG ASEM NO 9	62318708077	PT	BADAN	RUNGKUT	KEDUNG BARUK	22220	KOTA SURABAYA		JAWA TIMUR	Normal	1991-08-06 00:00:00	1991-08-06 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
018346262711001	PAPA SAMSU							46319				Normal	1999-12-15 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
018745778631000	LINTECH DUTA PRATAMA	KAWASAN INDUSTRI WIRA JATIM JL MASTRIP NO 70	085755224879	PT	BADAN	KARANG PILANG	KARANG PILANG	28240	KOTA SURABAYA		JAWA TIMUR	Normal	1999-04-07 00:00:00	1999-04-07 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
705556967605000	AVAIRRA INDO KARYA	JL PARANG KUSUMA NO 9I RT 002 RW 009	081938808158	PT	BADAN	KREMBANGAN	KEMAYORAN	26512	KOTA SURABAYA		JAWA TIMUR	Normal	2014-07-01 00:00:00	2014-12-12 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
763728508606000	BERKAT ANUGERAH MURNI	JL PUCANG ANOM V NO 38	0811341985	PT	BADAN	GUBENG	PUCANG SEWU	42918	KOTA SURABAYA		JAWA TIMUR	Normal	2016-06-16 00:00:00	2016-09-05 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015313596631000	UNTUNG BERSAMA SEJAHTERA	JL KENJERAN NO 395-399	62313894636	PT	BADAN	TAMBAKSARI	GADING	32112	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
021702188907001	LINGGAR JATI PERKASA	DSN KALER, TUSAN, KAB. KLUNGKUNG				BANJARANGKAN	TUSAN	41019	KAB. KLUNGKUNG			Normal	2020-01-08 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
022069710823001	TERU TRI TUNGGAL							52291				Normal	2017-05-23 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
015266307733001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN BRIGADIR JENDERAL H. HASAN BASRI RT 007 RW 003, BUKAT, KAB. HULU SUNGAI TENGAH				BARABAI	BUKAT	46335	KAB. HULU SUNGAI TENGAH			Normal	2024-11-06 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
211235114619000	BUKAKA INTI AIRCON	JL WISMA PERMAI BLOK II NO 29 RT 000 RW 000	082244417500	PT	BADAN	MULYOREJO	MULYOREJO	43224	KOTA SURABAYA		JAWA TIMUR	Normal	2009-10-07 00:00:00	2009-12-10 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
011083565006001	ANTIKA RAYA							30990				Non Efektif	1992-11-11 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
916097132607000	GOA WISATA BALI	JL MH. THAMRIN NO 71 RT 000 RW 000	62317348000	PT	BADAN	TEGALSARI	DR. SOETOMO	90011	KOTA SURABAYA		JAWA TIMUR	Normal	2019-05-23 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
850195538618000	MITRA JATI PRASADA	GEDUNG SPAZIO LT. 5, JL MAYJEND. YONO SOEWOYO KAV. 3 NO 525-A RT 008 RW 001	08155127700	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	70203	KOTA SURABAYA		JAWA TIMUR	Normal	2018-05-30 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
315049700614000	OPMC INDONESIA	JL. KALIBUTUH NO 152-A RT 006 RW 003	0811371199	PT	BADAN	BUBUTAN	TEMBOK DUKUH	61100	KOTA SURABAYA		JAWA TIMUR	Normal	2012-04-11 00:00:00	2012-11-06 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
015925266618000	SANTOSO JAWI ABADI	JL RAYA DARMO PERMAI BLOK I NO 14	087855988095	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	17022	KOTA SURABAYA		JAWA TIMUR	Normal	1992-12-29 00:00:00	1992-12-29 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
031536824604000	RODA JAYA MAKMUR	SIMO TAMBAAN 2 NO.64 RT 002 RW 009 SIMOMULYO	6281331991234	UNKNOWN	BADAN	SUKOMANUNGGAL	SIMOMULYO	46593	KOTA SURABAYA		JAWA TIMUR	Normal	2013-03-26 00:00:00	2013-05-06 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
011408887009001	ANIMO SARANA							41020				PL/DE	2015-09-07 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
011358389956002	SALAM PACIFIC INDONESIA LINES							50131				Normal	2006-03-15 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
749970836411001	PERMATA INDAH CEMERLANG							46447				Normal	2017-05-03 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
762475127811001	ARMADA TRANS SURABAYA							52292				Normal	2019-02-27 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
016406209606000	LESTARINDO	JL PUCANG ARJO TIMUR 3 - A	6281235159927	CV	BADAN	GUBENG	PUCANG SEWU	41019	KOTA SURABAYA		JAWA TIMUR	Normal	1993-12-29 00:00:00	2002-01-21 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
066537465609001	PRASETYA LESMANA	RAYA MARGOREJO INDAH 60-68, MARGOREJO	0318499240		OP	WONOCOLO	MARGOREJO	47192	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Non Efektif	2007-02-20 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
025251109042001	SINAR INDO PRATAMA							52291				Normal	2021-09-10 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
830044103613000	SINAR JAYA MAKMUR BERSAUDARA SEJAHTERA	JL RAYA KRIKILAN KM. 26	6281282989898	PT	BADAN	DRIYOREJO	TANJUNGAN	25920	KAB. GRESIK		JAWA TIMUR	Normal	2017-10-18 00:00:00	2017-12-19 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
827417585614000	SUMBER BARU CEMERLANG	JL TAMBAK LANGON 25-27 KAV. B NO 20 RT 001 RW 005	6281330222707	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	47797	KOTA SURABAYA		JAWA TIMUR	Normal	2017-09-06 00:00:00	2018-01-17 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
713720407081001	PELINDO ENERGI LOGISTIK							46610				Normal	2020-07-02 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
028176162613000	SURABAYA SHIPPING LINES	JL KALIMAS BARU NO 62 D RT 007 RW 001	082136905265	PT	BADAN			52293				Normal	2011-05-18 00:00:00	2013-04-26 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
014976864615000	KARTIKA SARI	JL BARUK UTARA IV NO 02 RT 002 RW 006	085234349140	CV	BADAN	RUNGKUT	KEDUNG BARUK	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2004-03-31 00:00:00	2005-01-26 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
021760905606000	MEGAH BANGUN ANUGRAH	JL BARATAJAYA XIII NO 21	62818595951	PT	BADAN	GUBENG	BARATAJAYA	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2003-04-14 00:00:00	2003-05-29 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
086333705609000	HELEN LAROSSA	JL JUWONO NO 6 RT 003 RW 003	089532362225		OP	WONOKROMO	DARMO	46209	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	2009-02-23 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
744401993428001	DORAN SUKSES INDONESIA							46523				Normal	2023-09-11 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
027914449611000	REYCOM INTEGRATED SOLUSI	JL PANGLIMA SUDIRMAN NO 60 RT 001 RW 007	081314865576	PT	BADAN	GENTENG	EMBONG KALIASIN	46511	KOTA SURABAYA		JAWA TIMUR	Normal	2011-06-06 00:00:00	2014-11-24 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
017564097643001	ALPEN AGUNGRAYA							86103				Normal	2009-10-06 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
024430563623001	CHALIDANA INTI PERMATA							68111				Normal	2010-01-29 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
140828005618000	TONY HIDAYAT	ROMOKALISARI INDUSTRI BLOK I NO 32 RT 001 RW 002	081358900519		OP	BENOWO	ROMOKALISARI	Z5000	KOTA SURABAYA	3,5782E+15	JAWA TIMUR	Normal	2005-02-01 00:00:00	\N	2019-10-10 00:00:00	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
025866815618000	TRI MANUNGGAL SENTOSA	JL HR MUHAMMAD 373-383 BLOK D NO 6 RT 001 RW 001	620317328085	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2007-06-08 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
012325783732001	SURYA TIMUR SAKTI JATIM							45401				Normal	2007-05-10 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
019953298606000	MITRA MUDA INTI BERLIAN	JL MANYAR BLOK 5 NO 34 RT 000 RW 000	081298595906	PT	BADAN	SUKOLILO	MENUR PUMPUNGAN	93121	KOTA SURABAYA		JAWA TIMUR	Normal	2000-09-29 00:00:00	2001-02-14 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
025147968606000	MEGA JAYA	JL SUKOSEMOLO 124 RUKO GALAXI BUMI PERMAI BLOK J-1 NO 15 RT 004 RW 012	0882009131591	CV	BADAN	SUKOLILO	SEMOLOWARU	47712	KOTA SURABAYA		JAWA TIMUR	Normal	2007-01-03 00:00:00	2007-01-05 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
033176702604000	RAJAWALI JAYA MAKMUR PERKASA	JL MARGOMULYO INDAH BLOK G/14	081232723327	PT	BADAN	TANDES	MANUKAN WETAN	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2013-10-10 00:00:00	2014-11-19 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
022069710044001	TERU TRI TUNGGAL							52291				Normal	2007-08-16 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
015324817607001	JAYANATA KOSMETIKA PRIMA	TUNJUNGAN PLAZA IV LT. 04 UNIT 49-51, JL EMBONG MALANG NO 7-11 RT 008 RW 010	082142414021	PT	BADAN	TEGALSARI	KEDUNGDORO	47724	KOTA SURABAYA		JAWA TIMUR	Normal	2007-11-16 00:00:00	\N	2017-10-09 00:00:00	user_2smadYpFEUXhnCGjoYGcaGAkg7S
014978977613000	BERKAT BATU ALAM	BUNGURAN 23-25A RT.000 RW.000, BONGKARAN	8885166947	PT	BADAN	PABEAN CANTIAN	BONGKARAN	47524	KOTA SURABAYA		JAWA TIMUR	Normal	1989-10-11 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307924001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN GLODIAL, PAU, KAB. MANGGARAI				LANGKE REMBONG	PAU	46335	KAB. MANGGARAI			Normal	2024-11-06 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307335001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	KOMPLEK PERGUDANGAN PT KLM, JALAN LINGKAR SELATAN I RT 030, PAAL MERAH, KOTA JAMBI				PAAL MERAH	PAAL MERAH	46335	KOTA JAMBI			Normal	2024-11-06 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307631000	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JL RUNGKUT INDUSTRI RAYA NO 18	0318431699	PT	BADAN	GUNUNG ANYAR	RUNGKUT TENGAH	46335	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2018-08-21 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015353972808001	NIAGATAMA INTIMULIA							46447				Normal	2014-11-07 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
011407558641001	BERNOFARM							21012				Normal	1987-03-20 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
029691557734001	BANGUN ARTA HUTAMA							10219				Normal	2011-03-28 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
749970836606000	PERMATA INDAH CEMERLANG	JL KERTAJAYA 163	6283831409745	PT	BADAN	GUBENG	AIRLANGGA	47711	KOTA SURABAYA		JAWA TIMUR	Normal	2016-01-21 00:00:00	2016-08-29 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
024542615606000	BHISMA SAKTIJAYA	RUKO MEGA GALAXY JL DR. IR. H. SOEKARNO BLOK 16C NO 22	62315915585	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2005-03-26 00:00:00	2006-02-02 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
745529719626001	MERAK BINTANG PERKASA							46638				Normal	2018-05-23 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
016406209655001	LESTARINDO							46100				PL/DE	2011-11-02 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
749970836086001	PERMATA INDAH CEMERLANG							46447				Normal	2017-04-26 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
019133347612001	KARYAINDAH ALAM SEJAHTERA							10437				Normal	2011-01-18 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
014412415613000	DWI PRAKARSA	JL.WASPADA NO.86                                  , BONGKARAN	08885751551	CV	BADAN	PABEAN CANTIAN	BONGKARAN	46491	KOTA SURABAYA		JAWA TIMUR	Normal	1988-02-23 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
020542197604000	TRIJAYA INDO PRATAMA	JL RAYA MANUKAN KULON BLOK D-6/60	081232724775	PT	BADAN	TANDES	MANUKAN KULON	46312	KOTA SURABAYA		JAWA TIMUR	Normal	2003-01-08 00:00:00	2003-02-18 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
017308065607000	CEMAKO LESTARI INDONESIA	JL DINOYO NO 63	0811333722	PT	BADAN	TEGALSARI	KEPUTRAN	47773	KOTA SURABAYA		JAWA TIMUR	Normal	1996-02-12 00:00:00	1996-05-23 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
020674941609000	KAWAN SEJATI	RAYA MARGOREJO INDAH NO. 60-68 (BLOK A-138-146) RT.001 RW.008, MARGOREJO	082320008244	CV	BADAN	WONOCOLO	MARGOREJO	56101	KOTA SURABAYA		JAWA TIMUR	Normal	2001-07-24 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
352250898607000	ALVIN RYAN HARSONO	JL IMAM BONJOL NO 97-99 RT 003 RW 017	628155216888		OP	TEGALSARI	DR. SOETOMO	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	2010-09-15 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
731696696606000	GATRAJAYA PUTERA TEKNIK	JALAN KERTAJAYA INDAH TIMUR BLOK 16 A NO 15	081553771199	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46638	KOTA SURABAYA		JAWA TIMUR	Normal	2015-06-04 00:00:00	2015-06-19 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
713720407504001	PELINDO ENERGI LOGISTIK							46610				Normal	2019-12-20 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
027767375618000	SAPTA FORTUNA UPAYATAMA	PERUMAHAN PONDOK WIYUNG INDAH SELATAN II BLOK LX-4 NO 28 RT 001 RW 009	628165413530	PT	BADAN	WIYUNG	WIYUNG	47920	KOTA SURABAYA		JAWA TIMUR	Normal	2008-07-09 00:00:00	2008-08-06 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
020673935609000	LUBRINDO SUWARDHANA	KOMPLEK MANGGA DUA BLOK B1 NO 07 RT 014 RW 003	082264470352	PT	BADAN	WONOKROMO	JAGIR	46610	KOTA SURABAYA		JAWA TIMUR	Normal	2001-05-29 00:00:00	2002-01-09 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
028245827614000	INDONESIA BELTING SOLUTION	JL MARGOMULYO NO 46 KOMP PERGUDANGAN ANGTROPOLIS BLOK F NO 16 RT 001 RW 001	085730237935	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2009-08-31 00:00:00	2009-09-04 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
017308065901001	CEMAKO LESTARI INDONESIA							47773				Normal	2010-10-04 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
767116924616000	JESELIN PUTRI ANDONO	JL GEMBONG SAWAH BLOK 1 NO 11 RT 007 RW 004	0817530770		OP	SIMOKERTO	KAPASAN	47711	KOTA SURABAYA	3,57811E+15	JAWA TIMUR	Normal	2016-08-16 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
744401993077001	DORAN SUKSES INDONESIA							46523				Normal	2024-12-06 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
060561115619000	SIE YOHANES HARTADI	JL MANYAR KERTOARJO BLOK 3 NO 57 RT 003 RW 006	08996748074		OP	MULYOREJO	MANYAR SABRANGAN	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	1984-08-28 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
078692589607000	DERMAWAN SUPARSONO	PERUMAHAN GRAHA FAMILY BLOK E NO 3 RT 004 RW 002	568644673		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	2003-11-19 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
710904343607000	PUTRAJAYA GRAHA MITRA	RUKAN DARMO SQUARE LT.3, JL RAYA DARMO BLOK B-17 NO 54-56 RT 003 RW 010	088228494450	PT	BADAN	TEGALSARI	DR. SOETOMO	41011	KOTA SURABAYA		JAWA TIMUR	Normal	2014-09-25 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
024762890652001	PARAMITA BANINDO MAKMUR							45301				Normal	2021-11-26 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
031200652603001	ALUVINDO EXTRUSION							24202				Non Efektif	2014-06-09 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
030254098643000	RODECO INDONESIA	JL RAYA GUBENG RT 003 RW 006	081907812920	PT	BADAN	GUBENG	GUBENG	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2010-08-10 00:00:00	2011-09-30 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
024767220655001	HUTOMO MANDALA PERKASA							42918				Non Efektif	2009-09-15 00:00:00	\N	\N	user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T
011123700631000	TUKADMAS GENERAL CONTRACTORS	JL RAYA JEMURSARI NO 76 BLOK BLOK C-9 RT 001 RW 007	081235752936	PT	BADAN	WONOCOLO	JEMUR WONOSARI	42101	KOTA SURABAYA		JAWA TIMUR	Normal	1982-11-29 00:00:00	1984-12-31 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
060552528613000	HENDRO ANGESTI	JL TRENGGANU NO 20 RT 003 RW 007	0818188372		OP			Z5000		3,17308E+15		Normal	1984-11-30 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
816378772606000	SINAR INDAH SUKSES	JALAN RUKO MEGA GALAXY BLOK 14B NO 9	62315999730	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46638	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2017-03-29 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
315106815613000	MANUNGGAL TEKNIK UTAMA	SEMUT SQUARE BLOK A NO 10 RT 002 RW 008	081231345770	PT	BADAN	PABEAN CANTIAN	BONGKARAN	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2012-04-17 00:00:00	2012-07-18 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
017310103614000	TANJUNGSARI PRIMA SENTOSA	JL DUMAR INDUSTRI BLOK F NO.1, ASEMROWO	081213911458	PT	BADAN	ASEM ROWO	ASEM ROWO	77393	KOTA SURABAYA		JAWA TIMUR	Normal	1997-03-07 00:00:00	1997-03-19 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307704001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	KOMPLEK PERGUDANGAN PRIMA LESTARI, JALAN TRANS KALIMANTAN BLOK E RT 001 RW 001, DURIAN, KAB. KUBU RAYA				SUNGAI AMBAWANG	DURIAN	46335	KAB. KUBU RAYA			Normal	2024-11-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
017395286609000	ARDI TEKINDO PERKASA	JL GAYUNGSARI BLOK VII NO 12 RT 007 RW 004	082245456885	PT	BADAN	GAYUNGAN	GAYUNGAN	41012	KOTA SURABAYA		JAWA TIMUR	Normal	2009-05-22 00:00:00	2009-06-03 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
066106378603001	LIE ALI GUNAWAN							15201				Non Efektif	1997-07-29 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
015324817607000	JAYANATA KOSMETIKA PRIMA	JL MAWAR NO 4	082232949779	PT	BADAN	TEGALSARI	TEGALSARI	47724	KOTA SURABAYA		JAWA TIMUR	Normal	1991-02-01 00:00:00	1995-04-05 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
064086838613000	SOENARYO ANGESTI	JL TRENGGANU NO 20 RT 003 RW 007	082143199839		OP			Z5000		3,57812E+15		Normal	1989-07-07 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
315318634625001	PUTRA RAJAWALI KENCANA, TBK							49431				Non Efektif	2020-03-10 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
019417856604000	PENDIDIKAN KRISTEN BUAH HATI	JL BUKIT BALI LAKARSANTRI NO 6	08125912466	YAY	BADAN	LAKARSANTRI	LAKARSANTRI	85220	KOTA SURABAYA		JAWA TIMUR	Normal	2008-08-08 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
011358389954001	SALAM PACIFIC INDONESIA LINES							55193				Normal	2006-03-22 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
015925266603001	SANTOSO JAWI ABADI							17022				Normal	2016-02-02 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
857547558913001	BAHARI SENTOSA RAYA							46206				Normal	2022-06-24 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
313870750614000	SAMUDRA RAYA STEVEDORE	JL DUPAK 61 BLOK B NO 20 LANTAI 2 RT.000 RW.000 , GUNDIH	085730010864	PT	BADAN	BUBUTAN	GUNDIH	52240	KOTA SURABAYA		JAWA TIMUR	Normal	2011-09-29 00:00:00	2012-03-20 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
011358389801001	SALAM PACIFIC INDONESIA LINES	JL NUSANTARA NO 406, KOTA MAKASSAR				WAJO	BUTUNG	50131	KOTA MAKASSAR			Normal	2008-05-30 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
023378995604000	SARANA LOGISTIK INDONESIA	JL WR. SUPRATMAN NO 2 RT 001 RW 011	0895378056399	PT	BADAN	TEGALSARI	DR. SOETOMO	46634	KOTA SURABAYA		JAWA TIMUR	Normal	2004-06-24 00:00:00	2004-07-30 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
040226524613000	PAULUS WELLY AFANDY	JL KUPANG JAYA NO 3 C RT 002 RW 006	081231576800		OP	SUKOMANUNGGAL	SONOKWIJENAN	96990	KOTA SURABAYA	3,57812E+15	JAWA TIMUR	Normal	1983-12-04 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
017717554444001	GRAHA PENA JAWA POS	JL RAYA CIGANITRI NO 8 RT 008 RW 005, KAB. BANDUNG				BOJONGSOANG	CIPAGALO	68111	KAB. BANDUNG			Normal	2018-08-08 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
060317005607000	AGUS WIJAYA	JL RA. KARTINI NO 93 RT 004 RW 009	628123019790		OP	TEGALSARI	DR. SOETOMO	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	1984-06-11 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
818939209619000	PRIMA BERSATU SEJAHTERA	DR. IR. H. SOEKARNO 65	08123038288	CV	BADAN	MULYOREJO	MULYOREJO	56101	KOTA SURABAYA		JAWA TIMUR	Normal	2017-05-03 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
022094924611000	BANK PEREKONOMIAN RAKYAT SURYA ARTHA UTAMA PERSERODA	JL WALIKOTA MUSTAJAB NO 84 RT 000 RW 000	0315480250	PT	BADAN	GENTENG	KETABANG	64131	KOTA SURABAYA		JAWA TIMUR	Normal	2005-01-27 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
016716748603001	DUTA BUDI TULUS REJO							22299				Normal	2010-11-16 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
033213646613000	SINAR JAYA ABADI BERSAMA	JL RAYA KRIKILAN KM 26 BLOK 0 NO 0 RT 000 RW 000	62313295215	PT	BADAN	DRIYOREJO	TANJUNGAN	46491	KAB. GRESIK		JAWA TIMUR	Normal	2014-01-17 00:00:00	2014-05-30 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
017564097619001	ALPEN AGUNGRAYA	JL KENJERAN NO 506 RT 003 RW 008	082144100200	PT	BADAN	MULYOREJO	KALIJUDAN	86103	KOTA SURABAYA		JAWA TIMUR	Normal	2014-07-25 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
017564097631000	ALPEN AGUNGRAYA	JL SATELIT INDAH NO 2	0317345111	PT	BADAN	SUKOMANUNGGAL	TANJUNGSARI	86103	KOTA SURABAYA		JAWA TIMUR	Normal	1998-12-24 00:00:00	1999-03-04 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
011222932605000	PURNAMA INDONESIA	JL GRESIK GADUKAN NO 254 RT 008 RW 005	087854442825	PT	BADAN	KREMBANGAN	MOROKREMBANGAN	43211	KOTA SURABAYA		JAWA TIMUR	Normal	2004-05-25 00:00:00	2004-09-30 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
031536972618000	KHARISMA SENTRA MANDIRI	JL DUKUH KUPANG UTARA GANG 1 BLOK GX NO 03 RT 006 RW 001	081217459436	PT	BADAN	DUKUH PAKIS	DUKUH KUPANG	46447	KOTA SURABAYA		JAWA TIMUR	Normal	2013-04-03 00:00:00	2014-09-02 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
664634946611000	ARTAMA SENTOSA INDONESIA	GEDUNG WISMA BII LANTAI 12-A JL PEMUDA NO 60-70 RT 003 RW 001	089603811000	PT	BADAN	GENTENG	EMBONG KALIASIN	49432	KOTA SURABAYA		JAWA TIMUR	Normal	2014-02-26 00:00:00	2014-03-21 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
014976864911001	KARTIKA SARI							46900				Normal	2020-11-23 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
024430563617001	CHALIDANA INTI PERMATA							68111				Normal	2007-09-04 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
028248979655001	MATAHARI ARTHA ABADI							46641				PL/DE	2014-01-22 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
068756469614000	PAULTANUDJAJA	JL BUKIT GOLF BLOK BLOK H3 NO 17 RT 001 RW 010	087752955861		OP	SAMBIKEREP	SAMBIKEREP	Z5000	KOTA SURABAYA	3,57813E+15	JAWA TIMUR	Normal	1995-11-17 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
011358389205001	SALAM PACIFIC INDONESIA LINES							50131				Normal	2019-06-24 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
018346262619000	PAPA SAMSU	JL MANYAR KERTA ADI BLOK IV NO 8	085257036157	PT	BADAN	MULYOREJO	MANYAR SABRANGAN	46339	KOTA SURABAYA		JAWA TIMUR	Normal	1999-02-27 00:00:00	1999-03-04 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
019419001614000	SURYA MOMENTUM SEJATI	JL MARGOMULYO NO 46 BLOK G NO 20	6283856915517	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2000-12-05 00:00:00	2000-12-08 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
015324817611001	JAYANATA KOSMETIKA PRIMA	PEMUDA 33-37, PLAZA SURABAYA LT 1 NO.26-30,32-33 RT.003 RW.001, EMBONG KALIASIN	031-5316664	PT	BADAN	GENTENG	EMBONG KALIASIN	46651	KOTA SURABAYA		JAWA TIMUR	PL/DE	2007-11-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
014409106631000	DHARMA ANUGERAH INDAH	RUKO NORTH JUNCTION TAMAN PUSPA RAYA BLOK RC NO 10 RT 006 RW 008	082298700577	PT	BADAN	SAMBIKEREP	SAMBIKEREP	17022	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
019760420609000	SEDOSO INGGIL PESONA KREASI	MARGOREJO INDAH IX BLOK B NO 511 RT 002 RW 008	085226579880	PT	BADAN	WONOCOLO	MARGOREJO	90030	KOTA SURABAYA		JAWA TIMUR	Normal	2000-09-15 00:00:00	2022-05-12 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015313596701001	UNTUNG BERSAMA SEJAHTERA	JL SULTAN ABDURRAHMAN NO 27, KOTA PONTIANAK				PONTIANAK KOTA	SUNGAI BANGKONG	32112	KOTA PONTIANAK			Normal	2022-03-21 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015266307309002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN BARU LINTAS SUMATERA NO 01 RT 004 RW 006, MANGGUL, KAB. LAHAT				LAHAT	MANGGUL	46335	KAB. LAHAT			Normal	2024-11-06 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
809332976614000	PRIMA SUKSES MANDIRI	JL. KALIANAK BARAT NO 70-72 RT 000 RW 000	62317482100	CV	BADAN	ASEM ROWO	GENTING KALIANAK	45301	KOTA SURABAYA		JAWA TIMUR	Normal	2017-01-05 00:00:00	2017-03-23 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
011407558029001	BERNOFARM							21012				Normal	2003-08-26 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
733520134063001	DE VASA INDONESIA	GEDUNG PLAZA MUTIARA LT. 8, JL DR. IDE ANAK AGUNG GDE AGUNG BLOK KAV E1.2 NO 1 RT 005 RW 002, KUNINGAN TIMUR, JAKARTA SELATAN				SETIABUDI	KUNINGAN TIMUR	55194	JAKARTA SELATAN			Normal	2023-05-31 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
029691557103001	BANGUN ARTA HUTAMA							32909				Non Efektif	2013-01-31 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
033467994643001	HENGFA MACHINE INDONESIA TRADE							46100				Non Efektif	2015-08-12 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
850536145611000	SINAR INVESTAMA INDONESIA	JL. FLORES NO 27-29 RT 003 RW 004	081332800754	PT	BADAN	WONOKROMO	NGAGEL	70203	KOTA SURABAYA		JAWA TIMUR	Normal	2018-06-06 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
019417856619001	PENDIDIKAN KRISTEN BUAH HATI	JL MANYAR KERTOARJO 3 NO 66	08125912466	YAY	BADAN	MULYOREJO	MANYAR SABRANGAN	85220	KOTA SURABAYA		JAWA TIMUR	Normal	2005-03-07 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
015925266643001	SANTOSO JAWI ABADI							17022				PL/DE	2009-06-05 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
749970836043001	PERMATA INDAH CEMERLANG							46419				Normal	2017-02-24 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
017717554643001	GRAHA PENA JAWA POS							68111				Normal	2016-04-19 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
026702134618001	TANAYA HOSPITALITY GROUP	JL RAYA KUPANG INDAH NO 1	085256272727	PT	BADAN	DUKUH PAKIS	DUKUH KUPANG	56101	KOTA SURABAYA		JAWA TIMUR	Normal	2011-07-04 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
015446271604001	MASUYA SEJATI	GRAHA RESIDEN PARK, JL.DARMO HARAPAN I RT.000 RW.000, TANJUNGSARI	0317310990	PT	BADAN	SUKOMANUNGGAL	TANJUNGSARI	47111	KOTA SURABAYA		JAWA TIMUR	Normal	2008-04-23 00:00:00	\N	2017-11-23 00:00:00	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
869703223607000	TUNAS AGUNG SEJATI ABADI	GEDUNG EKONOMI LT.4 JL EMBONG MALANG NO 61-65 RT 001 RW 008	62895326885041	PT	BADAN	TEGALSARI	KEDUNGDORO	46209	KOTA SURABAYA		JAWA TIMUR	Normal	2018-12-27 00:00:00	2019-04-05 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
016716748631000	DUTA BUDI TULUS REJO	JL. PRAPEN INDAH BLOK J NO.6-7	082232882322	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	46693	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
745259747619000	MUTIARA SURYA SEJAHTERA	JL KERTAJAYA INDAH V/F-330	0315999744	PT	BADAN	MULYOREJO	MANYAR SABRANGAN	41011	KOTA SURABAYA		JAWA TIMUR	Normal	2015-11-20 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
733611453607000	PEGASUS LANGGENG MAKMUR	JL IMAM BONJOL NO 74 RT 003 RW 012	0315624212	PT	BADAN	TEGALSARI	DR. SOETOMO	46610	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2015-06-26 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
017308065503001	CEMAKO LESTARI INDONESIA							47773				Normal	2005-02-02 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
843853201618000	AGRAPANA HITA	JL RAYA DARMO PERMAI BLOK I NO 29 RT 000 RW 000	085815189036	CV	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46414	KOTA SURABAYA		JAWA TIMUR	Normal	2018-03-22 00:00:00	2018-05-16 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
011089869615000	ALMICOS PRATAMA	JL RUNGKUT INDUSTRI BLOK III NO 33	081331932662	PT	BADAN	GUNUNG ANYAR	RUNGKUT MENANGGAL	25999	KOTA SURABAYA		JAWA TIMUR	Normal	1987-02-02 00:00:00	1987-04-01 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
667070759619000	CIPTA MAKMUR SENTAUSA	JL MARGOMULYO INDAH I BLOK D NO 15-16	6285101273666	PT	BADAN	TANDES	BALONGSARI	47219	KOTA SURABAYA		JAWA TIMUR	Normal	2014-03-20 00:00:00	2014-04-04 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
738765627618000	SURYA TRANS MANDIRI	JL DARMO PERMAI UTARA XI NO 19 RT 001 RW 007	62082221771100	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	52219	KOTA SURABAYA		JAWA TIMUR	Normal	2015-09-07 00:00:00	2016-01-11 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
819832452606000	ITS TEKNO SAINS	GEDUNG RISET CENTER LT 2 JL T. KIMIA KAMPUS ITS	62811372068	PT	BADAN	SUKOLILO	KEPUTIH	71101	KOTA SURABAYA		JAWA TIMUR	Normal	2017-05-16 00:00:00	2017-08-01 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
744401993731001	DORAN SUKSES INDONESIA							46523				Normal	2023-05-16 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
744401993901002	DORAN SUKSES INDONESIA							46523				Normal	2023-05-15 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
024430563643001	CHALIDANA INTI PERMATA							68111				PL/DE	2011-03-21 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
024762890626001	PARAMITA BANINDO MAKMUR							45302				Normal	2011-03-04 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
025867789714001	CIPTA SURYA MANUNGGAL UTAMA							77100				Normal	2018-01-16 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
064806326643001	IWAN LOEKANTORO LAKSMONO							25940				Normal	2012-02-29 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
028256501604000	LNS INDONESIA	MARGOMULYO JAYA B-22 RT.001 RW.001 JL.SENTONG ASRI, BIBIS	081290432333	PT	BADAN	TANDES	MANUKAN WETAN	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2010-04-15 00:00:00	2011-02-21 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
066107616611001	MELYANA STEFANI	GADING 15 RT. 000 RW. 000	031-7347988		OP	GENTENG	KETABANG	32112	KOTA SURABAYA		JAWA TIMUR	PL/DE	2012-09-10 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
456709658604000	SENDY IRAWAN	MAYJEND SUNGKONO NO.239 RT. 001 RW. 002	081233120124		OP	SUKOMANUNGGAL	PUTAT GEDE	96990	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	2012-06-06 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
716455118609000	SOLUSI EXPERTINDO	GEDUNG GRAHA PENA LT. 15 R 1503 JL A YANI NO 88 RT 001 RW 007	08175026010	CV	BADAN	GAYUNGAN	KETINTANG	74902	KOTA SURABAYA		JAWA TIMUR	Normal	2014-12-08 00:00:00	2019-02-22 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
019757434631000	PACIFIC EQUINOX	JL RUNGKUT INDUSTRI IV NO 3	08563043805	PT	BADAN	TENGGILIS MEJOYO	KUTISARI	22291	KOTA SURABAYA		JAWA TIMUR	Normal	2000-04-07 00:00:00	2000-05-17 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
014974026631000	KING HALIM JEWELRY	JL TIDAR NO 48 RT 003 RW 007	62315450761	PT	BADAN	SAWAHAN	SAWAHAN	32112	KOTA SURABAYA		JAWA TIMUR	Normal	1989-11-14 00:00:00	1994-05-16 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
011328598604000	BARINDO ANGGUN INDUSTRI	JL SIMOPOMAHAN NO 148P-150P	6285730554454	PT	BADAN	SUKOMANUNGGAL	SIMOMULYO	24202	KOTA SURABAYA		JAWA TIMUR	Normal	1982-11-25 00:00:00	1985-03-01 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
314223843619000	FAB ENTERPRISES	JL RESIDEN SUDIRMAN 17 RT.003 RW.005, PACAR KELING	081249495838	CV	BADAN	TAMBAKSARI	PACARKELING	70203	KOTA SURABAYA		JAWA TIMUR	Normal	2011-11-23 00:00:00	2015-11-09 00:00:00	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
731096368642001	MADANI ABADI JAYA							46638				Normal	2016-12-23 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
024770018615000	DWI PARI ABADI	JL MEDOKAN AYU MA.III NO M-44 RT 003 RW 008	081216250343	PT	BADAN	RUNGKUT	MEDOKAN AYU	42206	KOTA SURABAYA		JAWA TIMUR	Normal	2008-03-13 00:00:00	2009-04-01 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
062562558906001	LIE WILLY LISSAN							47249				Non Efektif	2018-10-26 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
014518237611000	TUNASMULIA ENTERPRINDO	JL GENTENG BESAR NO 72-74 RT 002 RW 010	62318492317	PT	BADAN	GENTENG	GENTENG	47222	KOTA SURABAYA		JAWA TIMUR	Normal	1987-07-25 00:00:00	1989-04-01 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
211438734607000	ANUGERAH MINING SEJAHTERA	JL. BOGOWONTO NO 15 RT 006 RW 004	628563064868	PT	BADAN	TEGALSARI	DR. SOETOMO	09100	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2009-12-30 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
028175651613000	OETOMO AGRINDO ABADI	JL SONGOYUDAN NO 77 RT 006 RW 012	62313520321	PT	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	47112	KOTA SURABAYA		JAWA TIMUR	Normal	2011-01-31 00:00:00	2011-02-02 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
814377289604000	PERDANA ANUGRAH PERSADA	PERGUDANGAN ROMOKALISARI INDUSTRI RAYA III BUMI MASPION SURABAYA	08113428818	PT	BADAN	BENOWO	ROMOKALISARI	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2017-03-09 00:00:00	2022-06-20 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
749970836423001	PERMATA INDAH CEMERLANG							46447				Normal	2019-02-19 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
011358389941002	SALAM PACIFIC INDONESIA LINES	JL. YOS SUDARSO NO 2, KOTA AMBON				SIRIMAU	HONIPOPU	50131	KOTA AMBON			Normal	2017-09-29 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
744401993611001	DORAN SUKSES INDONESIA	WTC LT 4 NO.428-430, JALAN PEMUDA BLOK - NO 27-31 RT 000 RW 000	0819873000	PT	BADAN	GENTENG	EMBONG KALIASIN	46523	KOTA SURABAYA		JAWA TIMUR	Normal	2021-04-09 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
022066328613000	AGUNG SUKSES ABADI	JL BONGKARAN NO 16	3532680	PT	BADAN	PABEAN CANTIAN	BONGKARAN	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2004-01-19 00:00:00	2004-01-30 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
029694734609000	INDO DUTA TRANSPORT	CENTRAL PARK A. YANI BLOK C NO 17 RT 002 RW 009	08115010051	PT	BADAN	GAYUNGAN	KETINTANG	49431	KOTA SURABAYA		JAWA TIMUR	Normal	2010-01-25 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
744401993607001	DORAN SUKSES INDONESIA	TUNJUNGAN PLAZA 4 LT. 3 NO. 33 JL EMBONG MALANG BLOK - NO 7-21 RT 008 RW 010	081703515938	PT	BADAN	TEGALSARI	KEDUNGDORO	46523	KOTA SURABAYA		JAWA TIMUR	Normal	2021-04-09 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
025996125642001	AKBAR MAULANA ABADI							46900				Normal	2022-05-20 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
744401993215001	DORAN SUKSES INDONESIA	GRAND BATAM MALL LANTAI LG - ISLAND 02JL. PEMBANGUNAN, BATU SELICIN, KOTA BATAM				LUBUK BAJA	BATU SELICIN	46523	KOTA BATAM			Normal	2024-07-01 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
744401993013001	DORAN SUKSES INDONESIA							46523				Normal	2022-05-23 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
033183955606000	ALKONUSA TEKNIK INTERKON	JL KALIBOKOR NO 75	0818387491	PT	BADAN	GUBENG	PUCANG SEWU	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2013-10-31 00:00:00	2014-03-21 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
753330109604000	SURYAMAS BUMI SEMESTA	SPAZIO BUILDING JL MAYJEN YONO SUWOYO KAV 3 UNIT 616 RT 005 RW 001	08815004347	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2016-02-25 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
028252799604000	SURYA PUTRA JAYA SEMPURNA	JL ROMOKALISARI INDUSTRI RAYA III NO 3	085331365379	PT	BADAN	BENOWO	ROMOKALISARI	52293	KOTA SURABAYA		JAWA TIMUR	Normal	2009-06-23 00:00:00	2010-09-03 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
027914449028001	REYCOM INTEGRATED SOLUSI							46511				Non Efektif	2021-11-04 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
744401993509002	DORAN SUKSES INDONESIA							46523				Normal	2022-05-24 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
017564097643003	ALPEN AGUNGRAYA	JL KH. ALI MAS'UT RT 000 RW 000, KAB. SIDOARJO				BUDURAN	PAGERWOJO	86103	KAB. SIDOARJO			Normal	2024-02-15 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
744401993901003	DORAN SUKSES INDONESIA							46523				Normal	2023-05-15 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
024762890901001	PARAMITA BANINDO MAKMUR							45302				Normal	2015-06-16 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
016776007606000	ORIENTAL KHARISMA TAMA	RUKO MEGAH GALAXY 16A 07 JL KERTAJAYA INDAH TIMUR	0315950413	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	68111	KOTA SURABAYA		JAWA TIMUR	Non Efektif	1995-04-03 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
011358389113001	SALAM PACIFIC INDONESIA LINES							50131				Normal	2006-06-20 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
723484556618000	ALIM ARDI SETIAWAN	JL GRAHA FAMILI BLOK I NO 52 RT 004 RW 002	628123033818		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA	3,51511E+15	JAWA TIMUR	Normal	2015-03-04 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
011358389301001	SALAM PACIFIC INDONESIA LINES							50131				Normal	2017-01-18 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
811539311607000	SARANA PACKAGING AGRAPANA	JL RAYA KUPANG BARU NO 27 RT 004 RW 005	085731035007	PT	BADAN	DUKUH PAKIS	DUKUH KUPANG	17022	KOTA SURABAYA		JAWA TIMUR	Normal	2017-02-01 00:00:00	2017-07-07 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
315044149618000	INTI SURYA ABADI	JL BUKIT DARMO BOULEVARD BLOK J NO 2 RT 000 RW 000	031-7345294	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	47725	KOTA SURABAYA		JAWA TIMUR	Normal	2012-04-11 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
015266307922002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	PERGUDANGAN TENAU INDAH, JALAN YOS SUDARSO KM 5 NO A14, ALAK, KOTA KUPANG				ALAK	ALAK	46335	KOTA KUPANG			Normal	2024-11-06 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
011083565631000	ANTIKA RAYA	JL DEMAK NO 153	62315454745	PT	BADAN	BUBUTAN	TEMBOK DUKUH	29200	KOTA SURABAYA		JAWA TIMUR	Normal	1982-11-05 00:00:00	1985-02-01 00:00:00	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
015266307326001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN SUKARNO HATTA NO 179A RT 003 RW 006, TANJUNG HARAPAN, KAB. LAMPUNG UTARA				KOTABUMI SELATAN	TANJUNG HARAPAN	46335	KAB. LAMPUNG UTARA			Normal	2024-11-11 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
911679959609000	SUMBER TUNAS SEJATI	GRAHA PENA LT. 15 RUANG 1503 JL. AHMAD YANI NO 88	081230331593	CV	BADAN	GAYUNGAN	KETINTANG	46201	KOTA SURABAYA		JAWA TIMUR	Normal	2019-04-10 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
015353972908001	NIAGATAMA INTIMULIA							46441				PL/DE	2002-01-15 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
020494092619000	KENT POWER DINAMIKA INDONESIA	JL PLOSO TIMUR V/48	6285851506694	PT	BADAN	TAMBAKSARI	PLOSO	47411	KOTA SURABAYA		JAWA TIMUR	Normal	2001-10-12 00:00:00	2003-02-21 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
768591497609000	INSINDO INTI ABADI	JL. SETAIL NO 28 RT 010 RW 005	08123264782	PT	BADAN	WONOKROMO	DARMO	27900	KOTA SURABAYA		JAWA TIMUR	Normal	2016-08-24 00:00:00	2016-09-19 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
820051654604000	KARANA PANORAMA LOGISTIK	OSOWILANGUN NO 125	628113382075	PT	BADAN	BENOWO	TAMBAK OSO WILANGUN	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2017-05-19 00:00:00	2017-08-11 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
808712483604000	FIRMA MEGA MANAGEMENT MANDIRI	SIMO TAMBAAN II NO.69 BLOK B-1 RT 002 RW 009	082131654651	FA	BADAN	SUKOMANUNGGAL	SIMOMULYO BARU	70203	KOTA SURABAYA		JAWA TIMUR	Normal	2016-12-27 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
745529719627001	MERAK BINTANG PERKASA							46638				Normal	2018-05-23 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
020494092026001	KENT POWER DINAMIKA INDONESIA							47411				Normal	2019-06-26 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
749970836121001	PERMATA INDAH CEMERLANG							46447				Normal	2016-10-03 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
667441505721001	TALIMAS BAJA MANDIRI							46599				Normal	2022-11-29 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
028248979604000	MATAHARI ARTHA ABADI	JL MARGOMULYO PERMAI BLOK Q/8	628981521213	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2008-08-14 00:00:00	2008-11-06 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
762475127619000	ARMADA TRANS SURABAYA	PAKUWON BOULEVARD BLOK AA2 NOMOR 039 PAKUWON CITY RT 00 RW 00	628113557534	PT	BADAN	MULYOREJO	KEJAWAAN PUTIH TAMBAK	52292	KOTA SURABAYA		JAWA TIMUR	Normal	2016-05-30 00:00:00	2016-06-24 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
060324688615000	HENG HOK SOEISHINDO SUMIDOMO	JL ZAMHURI NO 25-29 RT 001 RW 001	08155005150		OP	GUNUNG ANYAR	RUNGKUT TENGAH	Z5000	KOTA SURABAYA	3,57825E+15	JAWA TIMUR	Normal	1984-07-11 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
097516314614000	MINTARJA PRANOTO	JL ARGOPURO NO 24 RT 001 RW 007	082228864439		OP	SAWAHAN	SAWAHAN	Z5000	KOTA SURABAYA	3,57806E+15	JAWA TIMUR	Normal	2004-02-20 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
061383451609001	SANJAYA WUSMAN	DTC WONOKROMO LT 1B / 61 BLOK B NO 61 RT 000 RW 000	0811311059		OP	WONOKROMO	JAGIR	47711	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	2016-11-29 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
015446271609001	MASUYA SEJATI	JL. RAYA MARGOREJO INDAH NO. 60-68 BLOK A 138-146 RT 001 RW 008	088226055980	PT	BADAN	WONOCOLO	MARGOREJO	47111	KOTA SURABAYA		JAWA TIMUR	Normal	2001-09-28 00:00:00	\N	2017-11-23 00:00:00	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
313752883955002	SUKSES MEKAR ABADI							46631				Normal	2017-10-13 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
812877108606000	RUKUN BERSAMA ABADI	KEPUTIH TEGAL NO 9A RT 001 RW 003	628123034619	CV	BADAN	SUKOLILO	KEPUTIH	55900	KOTA SURABAYA		JAWA TIMUR	Normal	2017-02-22 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
027765429618000	SURABAYA JASA MEDIKA	JL BOULEVARD FAMILI SELATAN KAV.1	085331763800	PT	BADAN	WIYUNG	BABATAN	86109	KOTA SURABAYA		JAWA TIMUR	Normal	2007-12-18 00:00:00	2011-12-06 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
028175297613000	BAKTI JAYA ABADI	JL TELUK KUMAI BARAT 113 NO 9 RT 003 RW 002	6281333821137	PT	BADAN			47592				Normal	2010-12-08 00:00:00	2011-09-19 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
024762890615000	PARAMITA BANINDO MAKMUR	JL RAYA JEMURSARI NO 150 RT 005 RW 002	085939612006	PT	BADAN	TENGGILIS MEJOYO	KENDANGSARI	45301	KOTA SURABAYA		JAWA TIMUR	Normal	2006-03-17 00:00:00	2006-06-27 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
020677464525001	SANTOSO SHAFANARA GRAHA							41019				Normal	2020-12-08 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
725751671604000	MAKMUR LINTAS BENUA	PERUMAHAN BUKIT PAKAL BLOK J/7 RT 006 RW 003	081938638528	PT	BADAN	PAKAL	PAKAL	47112	KOTA SURABAYA		JAWA TIMUR	Normal	2015-03-25 00:00:00	2015-07-08 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
014825327606000	BILKA	JL NGAGEL JAYA SELATAN NO 103	082231340351	PT	BADAN	GUBENG	PUCANG SEWU	47111	KOTA SURABAYA		JAWA TIMUR	Normal	1990-03-02 00:00:00	1992-02-29 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
829342559619000	ANG STEVEN WIJAYA	JL.RAYA KERTAJAYA INDAH NO 114 RT 003 RW 009	6281235459848		OP	MULYOREJO	MANYAR SABRANGAN	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2017-10-03 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
744401993905001	DORAN SUKSES INDONESIA							46523				Normal	2022-05-24 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
210632063609000	PERGURUAN TINGGI KRISTEN PETRA	JL. SIWALANKERTO NO 121-131 RT 007 RW 001	082233531566	YAY	BADAN	WONOCOLO	SIWALANKERTO	85321	KOTA SURABAYA		JAWA TIMUR	Normal	2008-12-15 00:00:00	2018-11-15 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
064806326603001	IWAN LOEKANTORO LAKSMONO							25940				Normal	2016-02-16 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
732681465626001	INDONESIA TOBACCO INTERNATIONAL							46204				Normal	2015-11-02 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
011358389215001	SALAM PACIFIC INDONESIA LINES							50131				Normal	2011-01-28 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
800945958642001	WIJAYA SENTOSA PRIMA							68111				Normal	2020-02-21 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
028248979657001	MATAHARI ARTHA ABADI							46641				Non Efektif	2013-12-17 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
313597197607000	TEBING MAS ESTATE	JL MH. THAMRIN NO 71	08977400395	PT	BADAN	TEGALSARI	DR. SOETOMO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2011-07-22 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
314707514611000	PRIMA AGUNG SELARAS	JL MAS SOENJOTO NO 2	087852256868	PT	BADAN	GENTENG	PENELEH	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2012-02-20 00:00:00	2012-09-05 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
012562922623001	KHARISMA SUMA JAYA SAKTI							46599				Normal	2010-08-05 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
015266307732001	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN AHMAD YANI KM 10,4, SIMPANG EMPAT, KAB. BANJAR				KERTAK HANYAR	SIMPANG EMPAT	46335	KAB. BANJAR			Normal	2024-11-06 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
018344887614001	SUTINDO SURYA SEJAHTERA	JL RADEN SALEH NO 16-K	03150407771	PT	BADAN	BUBUTAN	BUBUTAN	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2017-01-13 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
964225718615000	PERKASA JAYA INTI PERSADA SAMUDRA ANUGRAH INDAH PERMAI	RAYA RUNGKUT NO. 5. RUKO RUNGKUT MEGAH RAYA BLOK D NO 9	081368886658	UNKNOWN	BADAN	RUNGKUT	KALIRUNGKUT	42912	KOTA SURABAYA		JAWA TIMUR	PL/DE	2020-11-04 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
727651283618000	TRI SURYA ABADI	JL PAKIS BUKIT ASOKA BLOK J NO 12	6281330686508	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	46638	KOTA SURABAYA		JAWA TIMUR	Normal	2015-04-15 00:00:00	2015-07-09 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
014519276613001	DIANTRIJAYA UTAMA MUKTI	JL KALIMAS UDIK 1/34, NYAMPLUNGAN	031-3545036	PT	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	41019	KOTA SURABAYA		JAWA TIMUR	PL/DE	2007-08-09 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
022573240609000	MULTI PERSADA INDAH	JL BOGOWONTO NO 15 RT 006 RW 014	6282232021257	PT	BADAN	TEGALSARI	DR. SOETOMO	68111	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2008-03-10 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
032928301614000	RAMASURYA PERKASA DISTRINDO	JL TIDAR NO 312-314	081913366693	PT	BADAN	BUBUTAN	TEMBOK DUKUH	47112	KOTA SURABAYA		JAWA TIMUR	Normal	2013-06-18 00:00:00	2013-07-15 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
019227636614000	ASIAN BELTINDO JAYA	JL SEMARANG NO 94-124 BLOK A NO 31	082229147600	PT	BADAN	BUBUTAN	BUBUTAN	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2001-05-22 00:00:00	2001-10-02 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
724888458604000	SACHIO INDONESIA	KOMPLEK PERGUDANGAN MARGOMULYO INDAH 1A NO 7-8	081216403886	PT	BADAN	TANDES	BALONGSARI	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2015-03-16 00:00:00	2015-08-31 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
029935533615000	MITRA SEJATI MEDIKA	PERUMAHAN PURIMAS KUTA PARADISE BLOK G7 NO 38	082140684672	PT	BADAN	GUNUNG ANYAR	GUNUNG ANYAR	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2009-08-28 00:00:00	2009-12-14 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
028403731604000	BUMI CENTRAL HARAPAN	JL TANJUNGSARI NO 16	7498038	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2012-02-22 00:00:00	2012-02-23 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
020677464615000	SANTOSO SHAFANARA GRAHA	JL MEDOKAN SAWAH NO 188 RT 004 RW 001	08998290835	PT	BADAN	RUNGKUT	MEDOKAN AYU	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2001-12-05 00:00:00	2001-12-07 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
020919783527001	SARANA JAYA SENTOSA							41012				Normal	2016-05-10 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
070963228615001	COSTARISTO TEE	JL SENTRA GUNUNG ANYAR BARU BLOK I NO 48 RT 000 RW 000	03159625000		OP	GUNUNG ANYAR	GUNUNG ANYAR	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2019-09-24 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
025251109072001	SINAR INDO PRATAMA							52291				PL/DE	2013-05-15 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
713720407632002	FSRU LUMBUNG DEWATA							46610				PL/DE	2023-12-31 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
744401993804001	DORAN SUKSES INDONESIA	TRANS STUDIO MALL JL METRO TANJUNG BUNGA, KOTA MAKASSAR				TAMALATE	MACCINI SOMBALA	46523	KOTA MAKASSAR			Normal	2024-07-25 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
017308065047001	CEMAKO LESTARI INDONESIA							47773				Normal	1997-08-19 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
017308065617001	CEMAKO LESTARI INDONESIA							47773				Normal	2016-10-18 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
744401993036001	DORAN SUKSES INDONESIA							46523				Normal	2024-10-03 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
017308065722001	CEMAKO LESTARI INDONESIA							47773				PL/DE	2017-11-09 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
025865676604000	BANGUN KARYA PERKASA JAYA TBK	JL PATTIMURA PLAZA SEGI DELAPAN BLOK C/851-852	082230570908	PT	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	41011	KOTA SURABAYA		JAWA TIMUR	Normal	2007-01-08 00:00:00	2008-04-04 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
744401993043001	DORAN SUKSES INDONESIA							46523				Normal	2024-06-20 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
028176162612001	SURABAYA SHIPPING LINES							52293				Normal	2016-01-29 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
028175446613000	SINAR JAYA PRATAMA SEJATI	JL RAYA KRIKILAN KM. 26	085330597893	PT	BADAN	DRIYOREJO	TANJUNGAN	47526	KAB. GRESIK		JAWA TIMUR	Normal	2010-12-29 00:00:00	2011-01-11 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
014976864628001	KARTIKA SARI							42101				PL/DE	2011-11-10 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
017564097643002	ALPEN AGUNGRAYA							86103				Normal	2020-03-11 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
024762890805001	PARAMITA BANINDO MAKMUR							45302				Normal	2015-09-03 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
040236242906001	SANTOSO WIJAYA							55193				PL/DE	2006-10-11 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
063137384609000	GUNAWAN TONGREJO	JL MARGOREJO INDAH BLOK D NO 521 RT 004 RW 005	085156613299		OP	WONOCOLO	SIDOSERMO	Z5000	KOTA SURABAYA	3,57802E+15	JAWA TIMUR	Normal	1986-09-24 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
755724200606000	ANAK CERIA INDONESIA	JL KLAMPIS JAYA NO 110	0315967077	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	93293	KOTA SURABAYA		JAWA TIMUR	Normal	2016-03-21 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
011228996631000	SUMBER URIP SEJATI	JL MARGOMULYO NO 63	081235030028	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	46900	KOTA SURABAYA		JAWA TIMUR	Normal	1982-11-14 00:00:00	2000-02-09 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
313752883823001	SUKSES MEKAR ABADI							41019				Normal	2011-10-17 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
740114368609000	ARUMANIS	JL. TAMAN JEMURSARI SELATAN I NO 3 RT 002 RW 008	08113001163	CV	BADAN	WONOCOLO	JEMUR WONOSARI	47219	KOTA SURABAYA		JAWA TIMUR	Normal	2015-09-25 00:00:00	2015-11-10 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
909223539605000	GUNAGRAHA SOEGIH SEJAHTERA	JALAN KEBON ROJO 8 LANTAI 2 RT 006 RW 011	085855162638	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	46206	KOTA SURABAYA		JAWA TIMUR	Normal	2019-03-21 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
011358389816001	SALAM PACIFIC INDONESIA LINES							50131				Normal	2007-11-12 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
011358389731001	SALAM PACIFIC INDONESIA LINES							50131				Normal	1996-08-30 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
060323813606000	ALEX IVAN TANOYO	JL.MANYAR KERTOARJO VI NO.59 RT 006 RW 011	081233912995		OP	GUBENG	MOJO	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	1984-05-28 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
315547778614000	HUTOMORAHARJO PRASOJO	JL RADEN SALEH NO 15 LT 2 , BUBUTAN	081216564242	PT	BADAN	BUBUTAN	BUBUTAN	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2012-06-27 00:00:00	2012-07-04 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
015266307332002	PERUSAHAAN DAGANG DAN INDUSTRIPANAMAS	JALAN SOEKARNO HATTA, SUNGAI MENGKUANG, KAB. BUNGO				RIMBO TENGAH	SUNGAI MENGKUANG	46335	KAB. BUNGO			Normal	2024-11-07 00:00:00	\N	\N	user_2smadYpFEUXhnCGjoYGcaGAkg7S
032063893942001	EDMAR MANDIRI JAYA	KOMPLEK PERIKANAN JL KEPITING RT 003 RW 002, DUFA-DUFA, KOTA TERNATE				KOTA TERNATE UTARA	DUFA-DUFA	46206	KOTA TERNATE			Normal	2022-03-01 00:00:00	\N	\N	user_2smZjxXbKtwSh3BEEUzt58Nggn2
011358389951002	SALAM PACIFIK INDONESIA LINES							52221				Normal	2011-02-10 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
810942920614000	SABANG MERAUKE TRADING	JL. DUPAK RUKUN NO 207 RT 008 RW 002	6287768065552	PT	BADAN	ASEM ROWO	ASEM ROWO	46339	KOTA SURABAYA		JAWA TIMUR	Normal	2017-01-25 00:00:00	2018-12-31 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
014972616631000	SAPTA PUSAKA GRAHANUSANTARA	JL GUBENG POJOK NO 5	085785057668	PT	BADAN	GENTENG	KETABANG	42204	KOTA SURABAYA		JAWA TIMUR	Normal	1991-02-20 00:00:00	2001-07-02 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
905181020618000	JAMES SAMUEL WIJAYA	JL BUKIT DARMO GOLF NO 49-51 RT 004 RW 002	08123005882		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	2019-02-14 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
011358389955001	SALAM PACIFIC INDONESIA LINES							50131				Normal	2008-12-25 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
738087121503001	MANDIRI ANUGERAH BERSAMA							46421				Normal	2018-01-10 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
738087121604000	MANDIRI ANUGERAH BERSAMA	JL MARGOMULYO JAYA BLOK H/17	081330542285	PT	BADAN	TANDES	MANUKAN WETAN	46421	KOTA SURABAYA		JAWA TIMUR	Normal	2015-09-04 00:00:00	2015-12-18 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
033183674606000	MUTIARA ABADI KARYA	JALAN KERTAJAYA INDAH TIMUR RUKO MEGAH GALAXY BLOK 16A NO 07	6283849710027	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2013-10-10 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
867799124607000	MOCHAMAD NANDRADI TOYIB	JL DINOYO LOR BLOK V NO 21 RT 001 RW 003	6281216212122		OP	TEGALSARI	KEPUTRAN	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	2018-12-07 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
022073019613000	PEGASUS SAMUDERA TANKER	PERAK BARAT 157 RT.001 RW.003, PERAK UTARA	0816507920	PT	BADAN			50133				Non Efektif	2008-04-25 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
011408887611000	ANIMO SARANA	JL KALIKEPITING NO 95 B RT 004 RW 005	6282136639973	PT	BADAN	TAMBAKSARI	PACARKEMBANG	41020	KOTA SURABAYA		JAWA TIMUR	Normal	1982-11-30 00:00:00	1985-04-01 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
017717554418001	GRAHA PENA JAWA POS	KP. SUKABAKTI RT 008 RW 004, LEMBANG SARI, KAB. TANGERANG				RAJEG	LEMBANG SARI	68111	KAB. TANGERANG			Normal	2023-11-09 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
025251109926001	SINAR INDO PRATAMA							52291				Normal	2021-09-14 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
317784585452001	INKASA JAYA ALUMINIUM							24203				Normal	2019-11-19 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
744401993015001	DORAN SUKSES INDONESIA							46523				Normal	2022-05-23 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
023551914606000	CAHAYA MUTIARA INDAH	JL KERTAJAYA INDAH TIMUR 14-B/09 RT 001 RW 010	0315950413	PT	BADAN	GUBENG	KERTAJAYA	68111	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2009-06-01 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
064806326607000	IWAN LOEKANTORO LAKSMONO	JL PANDEGILING NO 107 RT 004 RW 008	6289696180501		OP	TEGALSARI	DR. SOETOMO	25940	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	1989-04-03 00:00:00	2000-04-18 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
019294909618000	KARUNIA CIPTASEMESTA KIMIA	BUKIT DARMO BOULEVARD 8 K RT.000 RW.000, PRADAH KALIKENDAL	0816530718	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46441	KOTA SURABAYA		JAWA TIMUR	Normal	2008-04-17 00:00:00	2008-04-22 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
020677464601001	SANTOSO SHAFANARA GRAHA							41019				Normal	2020-04-22 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
018389098604000	GELORA CIPTA SEJAHTERA	JL MARGOMULYO IV BLOK E	623174910000	PT	BADAN	TANDES	MANUKAN WETAN	64931	KOTA SURABAYA		JAWA TIMUR	Normal	2000-06-02 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
014976864601001	KARTIKA SARI							46599				Non Efektif	2013-08-01 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
028176162712001	SURABAYA SHIPPING LINES							52293				Non Efektif	2018-05-11 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
066537465607001	PRASETYA LESMANA	JL TEGALSARI NO 35 RT 001 RW 001	081331723377		OP	TEGALSARI	TEGALSARI	70100	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Non Efektif	2003-11-17 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
025867789727001	CIPTA SURYA MANUNGGAL UTAMA							77100				Normal	2018-09-21 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
060561115619001	CHUA LILY HARTADI	MANYAR KERTOARJO 3/57 RT.003 RW.006, MANYAR SABRANGAN			OP	MULYOREJO	MANYAR SABRANGAN	Z5000	KOTA SURABAYA	1,12562E+16	JAWA TIMUR	PL/DE	2009-01-23 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
315736488606000	MUTIARA DEVELOPMENT SEJAHTERA	JL RUKO MEGAH GALAXY 16 A NO 07	085784222961	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2012-08-06 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
029938537615000	KURNIA ABADI	JL TENGGILIS TIMUR II NO 44 RT 001 RW 001	085100274555	CV	BADAN	TENGGILIS MEJOYO	TENGILIS MEJOYO	42918	KOTA SURABAYA		JAWA TIMUR	Normal	2010-06-10 00:00:00	2011-03-31 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
259764975609000	OLIVIA TONGREJO	MARGOREJO INDAH BLOK D NO 521 RT 004 RW 005	0811308035		OP	WONOCOLO	MARGOREJO	Z5000	KOTA SURABAYA	3,57803E+15	JAWA TIMUR	Normal	2009-07-30 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
062562558619000	LIE WILLY LISSAN	JL KERTAJAYA INDAH BLOK 3 NO 19-F-609 RT 002 RW 010	081333999835		OP	MULYOREJO	MANYAR SABRANGAN	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	1985-03-23 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
316083112604000	ARENA CYCLE	MARGOMULYO PERMAI Q NO.24 RT. 00 RW. 00	0317481636	CV	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	47794	KOTA SURABAYA		JAWA TIMUR	Normal	2012-10-15 00:00:00	2016-11-10 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
011358389721001	SALAM PACIFIC INDONESIA LINES							50131				Normal	1991-03-15 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
766150171606000	ANDHIKA JAYA LOGISTIK	JL PUCANG ANOM TIMUR BLOK 2 NO 52 RT 007 RW 001	08112402395	PT	BADAN	GUBENG	KERTAJAYA	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2016-07-28 00:00:00	2016-09-02 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
011358389823001	SALAM PACIFIC INDONESIA LINES							50131				Normal	2015-06-25 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
027767128614000	ANDALAN BANGUN BHUANA BARU	JL TEMBAAN NO 17-A	085645685419	PT	BADAN	BUBUTAN	ALUN-ALUN CONTONG	46491	KOTA SURABAYA		JAWA TIMUR	Normal	2011-10-12 00:00:00	2011-10-12 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
028174498907001	SINAR PADANG SEJAHTERA	JL. MERAK NO 1A RT 000 RW 000, SEMARAPURA TENGAH, KAB. KLUNGKUNG				KLUNGKUNG	SEMARAPURA TENGAH	46209	KAB. KLUNGKUNG			Normal	2024-05-29 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
031507270606000	MAHAKARYA PRATAMA MEDIKA	JL NGINDEN KOTA III NO 30 A	085162626500	PT	BADAN	GUBENG	BARATAJAYA	47725	KOTA SURABAYA		JAWA TIMUR	Normal	2011-07-05 00:00:00	2012-09-06 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
014519276613000	DIANTRIJAYA UTAMA MUKTI	JL MAYJEN SUNGKONO AKSES KEBOMAS MAKMUR BLOK 38 NO E 63-67 RT 005 RW 002	62313545036	PT	BADAN	KEBOMAS	SEKARKURUNG	82920	KAB. GRESIK		JAWA TIMUR	Normal	1987-08-19 00:00:00	1996-05-01 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
011358389953001	SALAM PACIFIC INDONESIA LINES							50111				Normal	2008-05-21 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
011358389954002	SALAM PACIFIC INDONESIA LINES							50131				Normal	2009-06-23 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
016406209601001	LESTARINDO							46100				Normal	2009-09-30 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
032928301454001	RAMASURYA PERKASA DISTRINDO							47112				Normal	2019-11-18 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
346386626619000	GANITRA TEE	JL.RAYA KERTAJAYA INDAH 47 ( F-310) RT.001 RW.010	0811345388		OP	MULYOREJO	MANYAR SABRANGAN	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2010-05-05 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
020673935521001	LUBRINDO SUWARDHANA											Normal	2010-06-04 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
026070227619000	GLOBAL MAS PERKASA	JL KERTAJAYA INDAH 3/19 NO F-609	0811321265	PT	BADAN	MULYOREJO	MANYAR SABRANGAN	47219	KOTA SURABAYA		JAWA TIMUR	Normal	2006-08-11 00:00:00	2013-04-02 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
707568176615000	SAPTAJAYA GUNUNG MAS	JL KUTISARI SELATAN NO 11 RT 005 RW 003	6281331777989	CV	BADAN	TENGGILIS MEJOYO	KUTISARI	47754	KOTA SURABAYA		JAWA TIMUR	Normal	2014-08-12 00:00:00	2016-05-17 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
317576759618000	VININDO INTI PRATAMA	PERUMAHAN VILLA BUKIT MAS BLOK RA NO 18 RT 001 RW 007	081246684228	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2013-05-14 00:00:00	2015-08-27 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
809553381604000	BANGUN SEJAHTERA BERSAMA GEMILANG	G-WALK M-10 CITRALAND RT 004 RW 013	0317401787	CV	BADAN	SAMBIKEREP	LONTAR	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2017-01-11 00:00:00	2018-04-24 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
063555148607000	WONG, HENDRA WIJAYA	JL WR.SUPRATMAN NO 116 RT 002 RW 011	08123004333		OP	TEGALSARI	DR. SOETOMO		KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	2004-07-30 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
718985658657001	GRAHA BUKIT UTAMA							68111				Normal	2016-08-16 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
040236242606001	SANTOSO WIJAYA	JL KLAMPIS JAYA NO 1	08123186287		OP	SUKOLILO	KLAMPIS NGASEM	68200	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	2014-05-20 00:00:00	\N	2021-05-24 00:00:00	user_2smb9tL93JGktnVu0BveFwzJ36p
014518559607001	PEGAWAI TELKOM CAB.	JL.BASUKI RAKHMAT 8-12A TUNJUNGAN PLAZA III/05-032, TEGALSARI		KOP	BADAN	TEGALSARI	TEGALSARI	64141	KOTA SURABAYA		JAWA TIMUR	PL/DE	1999-08-30 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
020542197608001	TRIJAYA INDO PRATAMA							46319				Normal	2010-01-12 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
022569461631000	CITRA SENTOSA	JL MARGOMULYO 44 BLOK OO NO 31	0317499243	CV	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	46319	KOTA SURABAYA		JAWA TIMUR	Normal	2005-07-07 00:00:00	2005-07-12 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
018075077631000	CITRA MARGATAMA SURABAYA	JL WISATA MENANGGAL NO 21	0318484658	PT	BADAN	GAYUNGAN	DUKUH MENANGGAL	52213	KOTA SURABAYA		JAWA TIMUR	Normal	2003-04-25 00:00:00	2010-01-25 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
018311480618000	SENTRAL KONEKSI INTERNASIONAL	RUKO DARMO GALERIA CENTER 142-143 D-18, JL MAYJEND SUNGKONO	081332274476	PT	BADAN	DUKUH PAKIS	GUNUNG SARI	47779	KOTA SURABAYA		JAWA TIMUR	Normal	2004-02-26 00:00:00	2004-02-27 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
063132229618000	HASAN HALIM	JL KUPANG INDAH BLOK XXI NO 44 RT 006 RW 005	0811323663		OP	DUKUH PAKIS	DUKUH KUPANG	Z5000	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	1986-11-18 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
750539330604000	MULTI PUTRA EKA SEJAHTERA	BUNTARAN 3-5	085294277220	PT	BADAN	TANDES	MANUKAN WETAN	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2016-01-28 00:00:00	2018-01-16 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
024762890721001	PARAMITA BANINDO MAKMUR							45302				Normal	2017-08-01 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
070963228619000	COSTARISTO TEE	JL RAYA KERTAJAYA INDAH NO.47 NO F-310 RT 001 RW 010	08155159191		OP	MULYOREJO	MANYAR SABRANGAN	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2000-01-20 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
063069447615001	TEGUH KINARTO	JL SENTRA GUNUNG ANYAR BARU BLOK I NO 48 RT 000 RW 000	08123032500		OP	GUNUNG ANYAR	GUNUNG ANYAR	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Non Efektif	2019-09-24 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
752851006606000	SEGA BERKAT SEJAHTERA	JL GALAXI BUMI PERMAI BLOK N-3 NO 12 RT 001 RW 009	62811310191	PT	BADAN	SUKOLILO	MEDOKAN SEMAMPIR	46651	KOTA SURABAYA		JAWA TIMUR	Normal	2016-02-25 00:00:00	2016-03-30 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
317860203613000	KARTA GEBANG LOGISTIK	TELUK KUMAI BARAT NO 122 RT 003 RW 002	081231410579	PT	BADAN			52293				Normal	2013-06-18 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
025867789618000	CIPTA SURYA MANUNGGAL UTAMA	JL SIMPANG DARMO PERMAI SELATAN RUKO DARMO VILLA C-6, PRADAH KALIKENDAL	085334660096	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	77100	KOTA SURABAYA		JAWA TIMUR	Normal	2007-09-28 00:00:00	2008-03-13 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
014815146614000	SURYA SARITAMA	JL MARGOMULYO KAV. 11-15 NO 68	085102563109	PT	BADAN	ASEM ROWO	ASEM ROWO	16221	KOTA SURABAYA		JAWA TIMUR	Normal	1989-11-11 00:00:00	1989-11-11 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
078701059604000	HARTONO ZAINAL	JL VILLA BUKIT REGENCY II BLOK BLOK PD-5 NO 16 RT 002 RW 016	081232648100		OP	SAMBIKEREP	LONTAR	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	2008-12-11 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
744401993604001	DORAN SUKSES INDONESIA	PAKUWON MALL LT 1 NO. 41-42 JALAN PUNCAK INDAH LONTAR BLOK - NO 2 RT 002 RW 015	081703515938	PT	BADAN	SAMBIKEREP	LONTAR	46523	KOTA SURABAYA		JAWA TIMUR	Normal	2021-04-09 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
814696332604000	SDA ENGINEERING	PERGUDANGAN MARGOMULYO INDAH NO 7-8	081233215400	CV	BADAN	TANDES	BALONGSARI	46599	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2017-03-15 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
011358389951001	SALAM PACIFIC INDONESIA LINES							50131				Non Efektif	2000-10-06 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
097533962618000	TONY KUNTJORO	PERUMAHAN GRAHA FAMILI BLOK H NO 31 RT 004 RW 008	0317385651		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	2006-11-14 00:00:00	2012-12-26 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
805935582602001	AMARIS TIRTA PRATAMA	JL. RAYA WATESUMPAK NO 122, WATESUMPAK, KAB. MOJOKERTO				TROWULAN	WATESUMPAK	46339	KAB. MOJOKERTO			Normal	2021-05-06 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
012562922626001	KHARISMA SUMA JAYASAKTI							45406				Normal	2011-05-12 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
065923831615000	HARIJANTO TANUDJAJA, DRS.	JL RUNGKUT MAPAN BARAT 6 BLOK AE NO 29 RT 006 RW 008	0811345507		OP	GUNUNG ANYAR	RUNGKUT TENGAH	Z5000	KOTA SURABAYA	3,57825E+15	JAWA TIMUR	Normal	1991-08-28 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
011358389954003	SALAM PACIFIC INDONESIA LINES							50131				Normal	2009-08-13 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
011358389942001	SALAM PACIFIC INDONESIA LINES	JL MONONUTU RT.008 RW.004, TANAH RAJA, KOTA TERNATE				KOTA TERNATE TENGAH	TANAH RAJA	50131	KOTA TERNATE			Normal	2012-09-20 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
017717554216001	GRAHA PENA JAWA POS							68111				Normal	2020-03-09 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
314096108604000	KARYA ABADI REPTIL KURNIA	FULLERTON PLACE TF-3 NO 33	082162626161	CV	BADAN	LAKARSANTRI	JERUK	47214	KOTA SURABAYA		JAWA TIMUR	Normal	2011-11-03 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
020673935503001	LUBRINDO SUWARDHANA							46610				Normal	2006-12-08 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
211289533619000	PURI AYU ABADI	JL MANYAR KERTOARJO 72 RT 001 RW 006	6285730213030	PT	BADAN	MULYOREJO	MANYAR SABRANGAN	86903	KOTA SURABAYA		JAWA TIMUR	Normal	2009-10-28 00:00:00	2017-11-06 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
824120398605000	GADING ASIA	JL RAJAWALI NO 40-42 RT 006 RW 001	62817311111	CV	BADAN	KREMBANGAN	KREMBANGAN SELATAN	47599	KOTA SURABAYA		JAWA TIMUR	Normal	2017-07-21 00:00:00	2017-08-11 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
314698093614000	KUBAH EMAS	RUKO MUTIARA DUPAK JL RAYA DUPAK 63 BLOK E-6 RT.000 RW.000, ALUN-ALUN CONTONG	0895339419352	PT	BADAN	BUBUTAN	GUNDIH	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2012-02-17 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
025251109922001	SINAR INDO PRATAMA							52291				Normal	2011-03-08 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
838403657619000	USAHA JAYA ADIPERKASA	JL KEDINDING INDAH NO 3-5	623151500278	PT	BADAN	KENJERAN	TANAH KALI KEDINDING	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2018-01-24 00:00:00	2018-03-20 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
313752883955001	SUKSES MEKAR ABADI							46631				Normal	2016-04-19 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
713720407613000	PELINDO ENERGI LOGISTIK	JL. PERAK TIMUR NO.610 GEDUNG B PELINDO REGIONAL III LT.2 DAN LT.3 RT 002 RW 003	0313284275	PT	BADAN			46610				Normal	2014-10-31 00:00:00	2015-03-30 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
015446271618000	MASUYA SEJATI	JL RAYA DARMO PERMAI SELATAN NO 3-5 RT 005 RW 008	081216664958	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	47111	KOTA SURABAYA		JAWA TIMUR	Normal	1992-01-22 00:00:00	1992-11-28 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
823723515604000	ARTHA SENTRA NUSANTARA	JL RAYA BANGKINGAN NO 184	085230078766	PT	BADAN	LAKARSANTRI	BANGKINGAN	31001	KOTA SURABAYA		JAWA TIMUR	Normal	2017-07-17 00:00:00	2017-10-30 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
017308065722002	CEMAKO LESTARI INDONESIA							47773				Normal	2022-05-12 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
750539330609001	MULTI PUTRA EKA SEJAHTERA	JL DIPONEGORO NO 137 RT 001 RW 009	081230331593	PT	BADAN	WONOKROMO	DARMO	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2018-02-08 00:00:00	\N	2018-04-16 00:00:00	user_2smb9tL93JGktnVu0BveFwzJ36p
744401993526001	DORAN SUKSES INDONESIA							46523				Normal	2022-05-24 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
014976864404001	KARTIKA SARI							46900				Non Efektif	2019-05-17 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
024430563642001	CHALIDANA INTI PERMATA							68111				Normal	2008-10-20 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
028248979652001	MATAHARI ARTHA ABADI							46641				PL/DE	2012-08-01 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
068656313618000	ROY TANUDJAJA	JL BUKIT GOLF BLOK BLOK H3 NO 17 RT 001 RW 010	082331606960		OP	SAMBIKEREP	SAMBIKEREP	Z5000	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	1995-11-21 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
743542128618000	MENARA BUMI MANDIRI	JL MAYJEND SUNGKONO NO 89	085335057980	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	47528	KOTA SURABAYA		JAWA TIMUR	Normal	2015-11-02 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
029691482606000	CITRA GAIA	JL MANYAR JAYA 5A 1C RT 001 RW 008	081232505029	PT	BADAN	SUKOLILO	MENUR PUMPUNGAN	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2011-09-19 00:00:00	2011-09-19 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
732681465618000	INDONESIA TOBACCO INTERNATIONAL	GEDUNG MAYAPADA COMPLEX, JALAN MAYJEND SUNGKONO NO 178	089530519814	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	46335	KOTA SURABAYA		JAWA TIMUR	Normal	2015-06-15 00:00:00	2015-09-28 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
313752883951001	SUKSES MEKAR ABADI							47521				Non Efektif	2012-08-09 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
060563699615000	GUNAWAN TANUWIDJAJA	JL KENDANG SARI BLOK J NO 6	62811332028		OP	RUNGKUT	RUNGKUT KIDUL	Z5000	KOTA SURABAYA	3,57824E+15	JAWA TIMUR	Normal	1984-12-03 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
011358389722001	SALAM PACIFIC INDONESIA LINES							50131				Normal	1986-03-27 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
025253030618000	SINAR GLOBAL MAS	KOMPLEK RUKO SURYA INTI PERMATA 2 JL HR MUHAMMAD BLOK C NO 16-17 RT 000 RW 000	081333999836	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	68200	KOTA SURABAYA		JAWA TIMUR	Normal	2006-07-31 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
011358389811001	SALAM PACIFIC INDONESIA LINES							50131				Normal	2019-08-05 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
312818867614000	KARYA USAHA ANEKA TEHKNIK <KUAT>	JL RADEN SALEH 15 RT.003 RW.005 , BUBUTAN	082331788994	CV	BADAN	BUBUTAN	BUBUTAN	47793	KOTA SURABAYA		JAWA TIMUR	Normal	2011-02-17 00:00:00	2011-04-29 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
012201588648001	PANCA WIRA DHARMA CABANG TUBAN							42918				Non Efektif	1990-09-08 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
012562922653001	KHARISMA SUMA JAYA SAKTI							45405				Normal	2018-09-25 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014800445032001	HASIL FASTINDO							46631				Normal	2000-10-04 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014800445805001	HASIL FASTINDO							46900				Normal	2017-02-09 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
021141866806001	ENDO INDONESIA							47725				Normal	2021-03-17 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
028174498623001	SINAR PADANG SEJAHTERA							46209				Normal	2023-10-13 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
028174498627001	SINAR PADANG SEJAHTERA							46319				Normal	2017-04-17 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
805935582652001	AMARIS TIRTA PRATAMA							46339				Normal	2020-12-30 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
019227735614000	GRAHA MITRA GITA LESTARINDO	KOMPLEK PERTOKOAN MUTIARA DUPAK JL DUPAK NO 65 BLOK A NO 1	085231500609	PT	BADAN	BUBUTAN	BUBUTAN	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2001-06-07 00:00:00	2001-06-08 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
014659064644001	PADMATIRTA WISESA							46339				Normal	2021-03-03 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
667441505604000	TALIMAS BAJA MANDIRI	KOMPLEK PERGUDANGAN OSOWILANGUN PERMAI BLOK C-11 RT 002 RW 004	081331434593	PT	BADAN	BENOWO	TAMBAK OSO WILANGUN	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2014-03-24 00:00:00	2014-07-21 00:00:00	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
028175651643001	OETOMO AGRINDO ABADI							47112				Normal	2021-06-02 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
032928301416001	RAMASURYA PERKASA DISTRINDO							47112				Normal	2019-11-13 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
017717554013001	GRAHA PENA JAWA POS	GRAHA PENA, JL. RAYA KEBAYORAN LAMA NO. 12, JAKARTA SELATAN				KEBAYORAN LAMA	GROGOL UTARA	68111	JAKARTA SELATAN			Normal	2010-07-06 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
315000307604000	SANMAS	JL BABAT JERAWAT NO 43 RT 002 RW 006	085648114978	PT	BADAN	PAKAL	BABAT JERAWAT	10611	KOTA SURABAYA		JAWA TIMUR	Normal	2012-04-04 00:00:00	2022-06-21 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
028172492613000	WIRA SANTOSA JAYA	JL SONGOYUDAN 53	08123004333	PT	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2008-09-10 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
824803670614000	SINAR JAYA	JL. MARGOMULYO 44, PERG. SURI MULIA PERMAI BLOK FF NO 3-A RT 000 RW 000	08113479678	CV	BADAN	ASEM ROWO	TAMBAK SARIOSO	47797	KOTA SURABAYA		JAWA TIMUR	Normal	2017-08-02 00:00:00	2017-09-19 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
065923831615001	HARIJANTO TANUDJAJA	KOMPLEKS RUKO RUNGKUT MAKMUR C/63, KALIRUNGKUT			OP	RUNGKUT	KALIRUNGKUT	96990	KOTA SURABAYA	1,12561E+16	JAWA TIMUR	Non Efektif	2009-06-04 00:00:00	\N	\N	user_2smaTpzecsrBC8bCeslF7ApFR6j
744401993611000	DORAN SUKSES INDONESIA	JL LEBAK JAYA 2 TENGAH NO 2 RT 006 RW 003	081336443924	PT	BADAN	TAMBAKSARI	GADING	46523	KOTA SURABAYA		JAWA TIMUR	Normal	2015-11-12 00:00:00	2016-03-08 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
744401993741001	DORAN SUKSES INDONESIA	BIGMALL SAMARINDA UNIT GF/A-022, GF/A-023 JL. UNTUNG SUROPATI NO.08, KARANG ASAM ULU, KOTA SAMARINDA				SUNGAI KUNJANG	KARANG ASAM ULU	46523	KOTA SAMARINDA			Normal	2024-05-02 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
317317410619000	MUTIARA ANDALAN SEJAHTERA	JL DHARMAHUSADA INDAH UTARA VI BLOK U/252&265 RT. 000 RW. 000	082232249404	PT	BADAN	MULYOREJO	MULYOREJO	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2013-04-10 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
017308065526001	CEMAKO LESTARI INDONESIA							47773				Normal	2015-12-01 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
014518559631000	KAR CITRA BEKISAR	JL KETINTANG NO 156	081230000277	KOP	BADAN	GAYUNGAN	KETINTANG	47414	KOTA SURABAYA		JAWA TIMUR	Normal	1987-04-20 00:00:00	1989-10-01 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
024430563618000	CHALIDANA INTI PERMATA	JL MENGANTI BLOK C NO 9 RT 003 RW 003	6281703227503	PT	BADAN	WIYUNG	JAJAR TUNGGAL	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2005-08-01 00:00:00	2005-08-01 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
011358389614001	SALAM PACIFIC INDONESIA LINES	JL KALIANAK BARAT NO 51-F	081332613578	PT	BADAN	ASEM ROWO	GENTING KALIANAK	50131	KOTA SURABAYA		JAWA TIMUR	Normal	2003-03-19 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
020677464629001	SANTOSO SHAFANARA GRAHA							41019				Normal	2020-09-01 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
744401993509001	DORAN SUKSES INDONESIA							46523				Normal	2021-12-02 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
744401993821001	DORAN SUKSES INDONESIA							46523				Normal	2023-02-10 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
017209792606000	ABADI HUTAN TROPIS	JL DHARMAHUSADA UTARA I NO 50	081232093591	PT	BADAN	GUBENG	MOJO	47920	KOTA SURABAYA		JAWA TIMUR	Normal	1998-02-10 00:00:00	1998-02-17 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
028248979626001	MATAHARI ARTHA ABADI							46641				PL/DE	2013-11-28 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
015446271619001	MASUYA SEJATI	JL LAGUNA KEJAWAN PUTIH BARAT NO 4 RT 001 RW 003	081338251220	PT	BADAN	MULYOREJO	KEJAWAAN PUTIH TAMBAK	47111	KOTA SURABAYA		JAWA TIMUR	Normal	2016-12-09 00:00:00	\N	2021-05-24 00:00:00	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
060565561619000	LAUW MUJIANTO	JL KERTAJAYA INDAH TIMUR BLOK VIII NO 27	0315939682		OP	MULYOREJO	MANYAR SABRANGAN	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	1984-12-14 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
811539311645001	SARANA PACKAGING AGRAPANA							47650				Normal	2018-07-20 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
022085120619000	MUTIARA KARTIKA SEJAHTERA	JL KERTAJAYA INDAH 5-F NO 331 RT 000 RW 000	085784222961	PT	BADAN	MULYOREJO	MANYAR SABRANGAN	71101	KOTA SURABAYA		JAWA TIMUR	Normal	2003-01-28 00:00:00	2015-03-17 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
017435900607000	SURYA INTRINDO MAKMUR TBK	KOMPLEK DARMO SQUARE BLOK B-16/17 LT 06  JL  RAYA DARMO NO 54-56	0816527290	PT	BADAN	TEGALSARI	DR. SOETOMO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	1996-08-14 00:00:00	2004-12-01 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
313752883943001	SUKSES MEKAR ABADI							47521				Normal	2017-06-05 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
061383451605001	NG KHANG SENG	JEMBATAN MERAH PLASA IA 96,97-98, 100-101, KREMBANGAN SELATAN			OP	KREMBANGAN	KREMBANGAN SELATAN	47711	KOTA SURABAYA	10	JAWA TIMUR	PL/DE	2003-08-21 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
061383451607000	SANJAYA WUSMAN	SATINWOOD 63C THE PAKUBUWONO SIGNATURE JL PAKUBUWONO VI NO 7 RT 003 RW 001	62811310058		OP	KEBAYORAN BARU	GUNUNG	Z5000	KOTA ADM. JAKARTA SELATAN	3,57805E+15	DKI JAKARTA	Normal	1985-03-07 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
021141338611000	KARYA AGUNG PRATAMA MEGAH LESTARI	JL BASUKI RACHMAD NO 63 RT 002 RW 003	031112	PT	BADAN	GENTENG	EMBONG KALIASIN	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2005-08-23 00:00:00	2013-07-11 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
011358389727001	SALAM PACIFIC INDONESIA LINES							50131				Normal	2015-08-26 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
028242816614000	SWADAYA GEMILANG ENGINEERING	JL DHARMAHUSADA INDAH BARAT 1 NO 3 N RT 007 RW 004	081357482240	CV	BADAN	GUBENG	MOJO	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2008-05-13 00:00:00	2008-06-23 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
011328580713001	MURNI BERLIAN MOTORS							45103				Non Efektif	2009-01-21 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014659064653001	PADMATIRTA WISESA							46339				Normal	2012-07-18 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014800445424001	HASIL FASTINDO							46100				Normal	2007-06-26 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
015448194307001	NUSA TRIUTAMA							46900				Non Efektif	2018-03-14 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
028174498408001	SINAR PADANG SEJAHTERA							46319				Normal	2017-03-20 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
668740251101001	JAYA SEMANGGI ENJINIRING							41019				PL/DE	2017-06-02 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
668740251304001	JAYA SEMANGGI ENJINIRING							41019				Non Efektif	2018-06-04 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
805935582647001	AMARIS TIRTA PRATAMA							46339				Normal	2022-01-18 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
020673935085001	LUBRINDO SUWARDHANA							46610				PL/DE	2019-07-04 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
317317121619000	MUTIARA ANDALAN KARYA	JL DHARMAHUSADA INDAH UTARA VI BLOK U/252-265 RT. 000 RW. 000	03159628001	PT	BADAN	MULYOREJO	MULYOREJO	46100	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2013-04-10 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
026709899605000	PORTINDO MARWA JAYA	JL IKAN DORANG GEDUNG PUSKOPAL ARMATIM NO 1 RT 000 RW 000	081230886417	PT	BADAN	KREMBANGAN	PERAK BARAT	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2008-01-08 00:00:00	\N	2022-12-26 00:00:00	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
021141338728001	KARYA AGUNG PRATAMA MEGAH LESTARI							05100				PL/DE	2014-07-15 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
316251933619000	ABEY ABADI SUKSES	JL KENJERAN 475-481 RUKO FIRA 51 BLOK D-22	082131391087	PT	BADAN	TAMBAKSARI	GADING	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2012-11-07 00:00:00	2015-01-13 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
025251109924001	SINAR INDO PRATAMA							52291				Normal	2023-07-14 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
718985658606000	GRAHA BUKIT UTAMA	JL KERTAJAYA INDAH TIMUR RUKO MEGAH GALAXY BLOK 14 B NO 9	0315682700	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2015-01-09 00:00:00	2021-05-24 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
317784585624001	INKASA JAYA ALUMINIUM							24203				Normal	2014-03-25 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
025864539614000	SURABAYA GRAIN	JL PACUAN KUDA 76	081331188939	PT	BADAN	SAWAHAN	PETEMON	47753	KOTA SURABAYA		JAWA TIMUR	Normal	2006-07-18 00:00:00	2007-01-31 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
020919783605000	SARANA JAYA SENTOSA	JL KALISOSOK KIDUL NO 4	081233912995	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	41012	KOTA SURABAYA		JAWA TIMUR	Normal	2003-09-16 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
938854809604000	WANGSA PRATAMA LOGISTIK	JL RAYA BOULEVARD GRAND PAKUWON BLOK RA NO 36	6285230688900	PT	BADAN	TANDES	MANUKAN WETAN	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2019-12-31 00:00:00	2020-02-19 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
710644048618000	DEVINA STEFANI SUGIALAM	JL GRAHA FAMILY SELATAN I BLOK AA NO 6 RT 004 RW 002	081802349543		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA	3,57814E+15	JAWA TIMUR	Normal	2014-09-23 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
031200652605000	ALUVINDO EXTRUSION	JL RAJAWALI NO 53-A RT 000 RW 000	082142544294	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	24204	KOTA SURABAYA		JAWA TIMUR	Normal	2011-06-07 00:00:00	2011-07-26 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
086310356609000	HENRY SUTARSO	JL MARGOREJO INDAH BLOK D NO 324 RT 003 RW 008	08121610083		OP	WONOCOLO	SIDOSERMO	Z5000	KOTA SURABAYA	3,57802E+15	JAWA TIMUR	Normal	2007-09-26 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
014973879604000	SOYO APIK	JL SIMOGUNUNG NO 104	08155177026	PT	BADAN	SUKOMANUNGGAL	SIMOMULYO	41012	KOTA SURABAYA		JAWA TIMUR	Normal	1989-10-23 00:00:00	1989-10-23 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
024430563401001	CHALIDANA INTI PERMATA							68111				Normal	2009-01-29 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
024430563643002	CHALIDANA INTI PERMATA							68111				Normal	2017-01-25 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
024762890901002	PARAMITA BANINDO MAKMUR							45302				Normal	2022-07-30 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
060561115613001	YOHANES HARTADI							47529				PL/DE	1995-07-27 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
664634946731001	ARTAMA SENTOSA INDONESIA							49432				Non Efektif	2022-09-27 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
011358389211001	SALAM PACIFIC INDONESIA LINES							50131				Normal	2010-11-04 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
024430563652001	CHALIDANA INTI PERMATA							41011				Non Efektif	2008-10-17 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
070963228652001	TEE COSTARISTO							70100				Non Efektif	2009-01-20 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
017717554631000	GRAHA PENA JAWA POS	JL A. YANI NO 88	085648284567	PT	BADAN	GAYUNGAN	KETINTANG	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
744401993532001	DORAN SUKSES INDONESIA	IR SOEKARNO HARTONO MALL SOLO LT 1 BLOK L1 NO K03 RT 000 RW 000, MADEGONDO, KAB. SUKOHARJO				GROGOL	MADEGONDO	46523	KAB. SUKOHARJO			Non Efektif	2022-05-24 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
825259179619000	AFOS	JL KEDUNG COWEK NO 79-A RT 001 RW 003	62818311698	CV	BADAN	TAMBAKSARI	KAPASMADYA BARU	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2017-08-15 00:00:00	2018-08-31 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
011358389831001	SALAM PACIFIC INDONESIA LINES							50131				Normal	2018-06-08 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
031132962615000	GRAHA AGUNG PERKASA	JL WONOREJO TIMUR RT 004 RW 007	087843936211	PT	BADAN	RUNGKUT	WONOREJO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2011-06-21 00:00:00	2013-01-23 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
742167224604000	SINAR WIJAYA MANDIRI	NORTH WEST LAKE BLOK NG 16 NO 23 RT 007 RW 004	081358616170	PT	BADAN	PAKAL	BABAT JERAWAT	46631	KOTA SURABAYA		JAWA TIMUR	Normal	2015-10-26 00:00:00	2016-06-01 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
012201588656001	PANCA WIRA DHARMA							41019				PL/DE	1990-11-08 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
012562922654001	KHARISMA SUMA JAYA SAKTI							45405				Normal	2019-05-14 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
012562922617001	KHARISMA SUMA JAYA SAKTI							45405				Normal	2006-05-18 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
016774135612001	SRIKANDIDIAMOND INDAH MOTORS							45101				Normal	1997-12-27 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
016774135712001	SRIKANDIDIAMOND INDAH MOTORS							45103				Normal	2011-01-20 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
668740251203001	JAYA SEMANGGI ENJINIRING							41015				Normal	2022-11-15 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
668740251833001	JAYA SEMANGGI ENJINIRING							41019				PL/DE	2016-03-08 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
027769173618000	KEMASAN LESTARI	JL MASTRIP IX KM.1,3	082245191919	PT	BADAN	KARANG PILANG	WARU GUNUNG	17022	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2009-03-31 00:00:00	\N	2022-12-14 00:00:00	user_2smZa1llq8GziSzCfdYk1FmMidd
742167224642001	SINAR WIJAYA MANDIRI							46631				Normal	2019-02-04 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
060553559605000	SINGGIH PURWANTO	JL HR. MUHAMMAD NO 125 RT 003 RW 001	0811320441		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	1984-12-17 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
801885963611000	ENAM ENAM DELAPAN	JL BASUKI RACHMAT NO 33-37 RT 001 RW 003	6282232766467	CV	BADAN	GENTENG	EMBONG KALIASIN	82990	KOTA SURABAYA		JAWA TIMUR	Normal	2016-09-30 00:00:00	2017-06-06 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
011122926602001	KEDAWUNG SUBUR							23129				Normal	2004-09-30 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
066537465607000	PRASETYA LESMANA	JL TEGALSARI NO 35 RT 001 RW 001	08991524656		OP	TEGALSARI	TEGALSARI	70100	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	1992-05-27 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
063069447619000	TEGUH KINARTO	JL RAYA KERTAJAYA INDAH 47 BLOK F NO 310 RT 001 RW 010	628123032500		OP	MULYOREJO	MANYAR SABRANGAN	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2005-02-01 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
317557445606000	HANATA AUTO	JL ARIF RAHMAN HAKIM NO 173	082233081496	PT	BADAN	SUKOLILO	KEPUTIH	45101	KOTA SURABAYA		JAWA TIMUR	Normal	2013-05-13 00:00:00	2013-07-30 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
027771377619000	KIREI	DHARMAHUSDA INDAH M-168, MULYOREJO	081252612222	CV	BADAN	MULYOREJO	MULYOREJO	96112	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2008-03-05 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
025251109925001	SINAR INDO PRATAMA							52291				Normal	2017-02-22 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
744401993801001	DORAN SUKSES INDONESIA	JEND. M. JUSUF NO 2A, GADDONG, KOTA MAKASSAR				BONTOALA	GADDONG	46523	KOTA MAKASSAR			Normal	2024-02-29 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
713720407903001	PELINDO ENERGI LOGISTIK							46610				Normal	2016-03-30 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
744401993028001	DORAN SUKSES INDONESIA							46523				Normal	2021-04-09 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
706520228619000	YULIANA HENGKY	JL KALIJUDAN MADYA BLOK 1 NO 2 RT 004 RW 008	0818302448		OP	MULYOREJO	KALIJUDAN	47513	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2014-07-16 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
744401993036002	DORAN SUKSES INDONESIA							46523				PL/DE	2024-10-17 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
020542197643001	TRIJAYA INDO PRATAMA							46339				Normal	2013-01-08 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
744401993071001	DORAN SUKSES INDONESIA							46523				Normal	2023-02-10 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
025249137606000	PRIMA UNTUNG BERSAMA	JL KERTAJAYA INDAH TIMUR BLOK 16 NO B-10	628123045288	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2006-01-06 00:00:00	2006-02-06 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
744401993901001	DORAN SUKSES INDONESIA							46523				Normal	2023-05-15 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
024430563603001	CHALIDANA INTI PERMATA							68111				Normal	2009-11-09 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
040236242618000	SANTOSO WIJAYA	PERUMAHAN GRAHA FAMILY TIMUR 2 BLOK E NO 2 RT 006 RW 002	08123186287		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	2007-06-19 00:00:00	2021-05-24 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
718540917615000	ANUGERAH SANTOSA ABADI	JL KUTISARI SELATAN II NO 80C-80D RT 000 RW 000	08113567454	PT	BADAN	TENGGILIS MEJOYO	KUTISARI	46691	KOTA SURABAYA		JAWA TIMUR	Normal	2015-01-05 00:00:00	2015-04-06 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
011358389042001	SALAM PACIFIC INDONESIA LINES							50131				Normal	2003-11-19 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
026227439619000	NAGAMAS BAN	JL MULYOSARI NO 131 RT 010 RW 002	081334856108	PT	BADAN	MULYOREJO	KALISARI	45301	KOTA SURABAYA		JAWA TIMUR	Normal	2008-01-14 00:00:00	2008-07-02 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
756498010618000	THIRTHA INTI PRATAMA	SUKOMANUNGGAL JAYA II NO 07 RT 003 RW 002	085785213564	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2016-03-29 00:00:00	2016-08-11 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
824685978619000	MAJU MAKMUR	JL LEBAK SARI KAV 16 RT 002 RW 011	62816530213	CV	BADAN	TAMBAKSARI	GADING	47592	KOTA SURABAYA		JAWA TIMUR	Normal	2017-07-28 00:00:00	2017-12-14 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
745259481619000	MUTIARA SURYA SENTOSA	JL KERTAJAYA INDAH V/F-331	0315962700	PT	BADAN	MULYOREJO	MANYAR SABRANGAN	41011	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2015-11-20 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
317784585606000	INKASA JAYA ALUMINIUM	JL KERTAJAYA NO 150 RT 009 RW 012	082245521784	PT	BADAN	GUBENG	KERTAJAYA	25112	KOTA SURABAYA		JAWA TIMUR	Normal	2013-06-10 00:00:00	2014-02-24 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
315318634615000	PUTRA RAJAWALI KENCANA, Tbk	JL RUNGKUT INDUSTRI I BLOK F NO 10 RT 001 RW 005	082131944789	PT	BADAN	TENGGILIS MEJOYO	KENDANGSARI	49431	KOTA SURABAYA		JAWA TIMUR	Normal	2012-05-21 00:00:00	2013-07-11 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
931196083619000	KARYA SAKARI ABADI	JL DHARMAHUSADA INDAH III BLOK B NO 176 RT 001 RW 008	0315997447	PT	BADAN	MULYOREJO	MULYOREJO	46491	KOTA SURABAYA		JAWA TIMUR	Normal	2019-10-10 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
011358389723001	SALAM PACIFIC INDONESIA LINES							50211				Normal	1989-02-11 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
015448194528001	NUSA TRIUTAMA	JL RAYA SUKOWATI NO 534, NGLOROG, KAB. SRAGEN				SRAGEN	NGLOROG	46900	KAB. SRAGEN			Normal	2019-02-28 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
665980710029000	GADAI MAS JATIM	JALAN BLAURAN NO 50 RT 001 RW 050	08568137835	PT	BADAN	SAWAHAN	SAWAHAN	64921	KOTA SURABAYA		JAWA TIMUR	Normal	2014-03-10 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
028174498444001	SINAR PADANG SEJAHTERA	RUKO PASAR INDUK CARINGIN B2-14, JL. SOEKARNO HATTA, BABAKAN, KAB. BANDUNG				CIPARAY	BABAKAN	46209	KAB. BANDUNG			Normal	2024-08-02 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014659064654002	PADMATIRTA WISESA							46334				Normal	2011-01-25 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
012562922628001	KHARISMA SUMA JAYA SAKTI PC BATU							45405				Normal	2013-03-18 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
015448194925001	NUSA TRIUTAMA							46900				Normal	2017-07-18 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
316767318952001	KARYA SAKTI INTIMAS							46319				Normal	2017-07-10 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
668740251646001	JAYA SEMANGGI ENJINIRING							41019				Normal	2021-02-10 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
805935582625001	AMARIS TIRTA PRATAMA							46339				Non Efektif	2021-01-15 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
741661128614001	SUMBER JAYA FASTINDO	JL. RADEN SALEH NO 16C-D	081216271952	PT	BADAN	BUBUTAN	BUBUTAN	46631	KOTA SURABAYA		JAWA TIMUR	Normal	2016-01-05 00:00:00	\N	2021-05-24 00:00:00	user_2smZa1llq8GziSzCfdYk1FmMidd
016824062615000	KASTILMAS PERSADA	JL BRATANG BINANGUN BLOK VII NO 15 RT 009 RW 008	0315040563	PT	BADAN	GUBENG	BARATAJAYA	78300	KOTA SURABAYA		JAWA TIMUR	Normal	1994-10-18 00:00:00	1994-11-15 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
311840599607000	KARUNIA UNGGUL ABADI	JL EMBONG MALANG NO 61-65 LT.6	082298108908	PT	BADAN	TEGALSARI	KEDUNGDORO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2010-04-20 00:00:00	2010-08-27 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
750426652614000	PADMA JAYA	JL  KALIANAK 55 SL RT 000 RW 000	081222259597	CV	BADAN	ASEM ROWO	ASEM ROWO	45406	KOTA SURABAYA		JAWA TIMUR	Normal	2016-01-26 00:00:00	2016-04-06 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
664634946503001	ARTAMA SENTOSA INDONESIA							49432				Normal	2019-01-18 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
015268832614000	ADITYASEJAHTERA GRAHA	JL MARGOMULYO NO.44 BLOK F-7	087855909007	PT	BADAN	ASEM ROWO	ASEM ROWO	46491	KOTA SURABAYA		JAWA TIMUR	Normal	1991-02-11 00:00:00	1991-02-11 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
020921649605000	ALVA KARYA PERKASA	JL MERAK NO 22 RT 002 RW 010	081235074340	PT	BADAN	KREMBANGAN	KREMBANGAN SELATAN	78300	KOTA SURABAYA		JAWA TIMUR	Normal	2005-04-18 00:00:00	2005-08-10 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
313752883922001	SUKSES MEKAR ABADI							46631				Normal	2017-04-07 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
033183658606000	MUTIARA ABADI GEMILANG	JALAN KERTAJAYA INDAH TIMUR RUKO MEGAH GALAXY BLOK 16A NO 07	6283849710028	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	68111	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2013-10-10 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
313752883604000	SUKSES MEKAR ABADI	JL ROMOKALISARI INDUSTRI RAYA I NO 32 RT 00 RW 00 ROMOKALISARI	081358900519	PT	BADAN	BENOWO	ROMOKALISARI	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2011-09-07 00:00:00	2013-03-27 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
247406085607000	TJANDRA MARIANA	JL DR. SUTOMO NO 31 RT 001 RW 013	0315675639		OP	TEGALSARI	DR. SOETOMO	Z5000	KOTA SURABAYA	3,57806E+15	JAWA TIMUR	Normal	2008-11-26 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
669743551618000	ASIATERRA FORTUNA BOGA	JL RAYA MAYJEND YONO SOEWOYO NO 66 LT.03 RT 002 RW 009	087854150228	PT	BADAN	WIYUNG	BABATAN	56101	KOTA SURABAYA		JAWA TIMUR	Normal	2014-04-21 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
022070627613000	JATIM PETROLEUM TRANSPORT	JL TELUK KUMAI TIMUR NO 133 RT 004 RW 002	082229093686	PT	BADAN			49431				Normal	2006-11-27 00:00:00	2008-06-03 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
011328580711001	MURNI BERLIAN MOTORS							45101				Non Efektif	2001-01-26 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
012562922629001	KHARISMA SUMA JAYA SAKTI							45405				Normal	2020-06-18 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
012562922602001	KHARISMA SUMA JAYA SAKTI							45406				Normal	2013-09-09 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014659064608002	PADMATIRTA WISESA							46339				Normal	2021-04-14 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
012562922622001	KHARISMA SUMA JAYA SAKTI							45403				Normal	2009-08-10 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
028174498404001	SINAR PADANG SEJAHTERA							46209				Normal	2024-07-09 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
022093678416001	ATLANTIC INTRACO							46651				Normal	2017-05-19 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
668740251601001	JAYA SEMANGGI ENJINIRING							41019				Non Efektif	2015-06-22 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
027767128643001	ANDALAN BANGUN BHUANA BARU							46491				Normal	2016-05-20 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014659064627001	PADMATIRTA WISESA							46339				Normal	2022-03-04 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
018134692613000	ESA ZONA EKSPRES	JL. PERAK TIMUR NO 296	082131000923	PT	BADAN			52291				Normal	1998-05-28 00:00:00	1998-07-08 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
859786410606000	ANUGERAH BETON INDONESIA MANUNGGAL	JL ROMOKALISARI INDUSTRI RAYA II NO 1B	6282132261645	PT	BADAN	BENOWO	ROMOKALISARI	23951	KOTA SURABAYA		JAWA TIMUR	Normal	2018-09-24 00:00:00	2018-10-16 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
021702105609000	SANDY PARASAM PUTRA	JL. FLORES NO 12 RT 003 RW 004	089628152081	PT	BADAN	WONOKROMO	NGAGEL	86103	KOTA SURABAYA		JAWA TIMUR	Normal	2003-08-22 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
015998891606000	SOEDALI SEJAHTERA	JL. ARIF RAHMAN HAKIM 51 RUKO KLAMPIS 21 BLOK F-11	083878554221	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	14111	KOTA SURABAYA		JAWA TIMUR	Normal	1993-06-15 00:00:00	1993-08-11 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
014541502627001	VARIA INDOWIN PERKASA							77321				Normal	2021-03-16 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414425001	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Normal	2010-10-20 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414523001	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Normal	2017-11-07 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
022071096418001	ULTRA KARYA BERSAMA							46900				Normal	2015-04-02 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
018744839631000	PRIMA JAYA PERSADA NUSANTARA	GEDUNG GRAHA BUMIPUTERA JL RAYA DARMO NO 155-159 RT 005 RW 004	6281235329999	PT	BADAN	WONOKROMO	DARMO	77321	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
063129514607000	ATMADJA TJIPTOBIANTORO	JL TRUNOJOYO NO 7 RT 006 RW 004	08159431889		OP	TEGALSARI	DR. SOETOMO		KOTA SURABAYA	3,17403E+15	JAWA TIMUR	Normal	1985-12-18 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
041943028607000	WELLY	JL MH.THAMRIN NO 64 RT 003 RW 013	08123015658		OP	TEGALSARI	DR. SOETOMO	96990	KOTA SURABAYA	3,57804E+15	JAWA TIMUR	Normal	1984-03-22 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
062759733604005	SUDARSONO	ROMOKALISARI 40 KAV 16	087852999099		OP	BENOWO	TAMBAK OSO WILANGUN	68111	KOTA SURABAYA	3,5102E+15	JAWA TIMUR	Non Efektif	2016-05-02 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
017394461614000	GUNTUR JAYAMAKMUR	JL MENUR NO 38-A RT 007 RW 008	0315034715	PT	BADAN	GUBENG	AIRLANGGA	47592	KOTA SURABAYA		JAWA TIMUR	Normal	1996-12-23 00:00:00	2005-07-04 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
026704551013001	LVIORS JAYA SENTOSA	JL TEUKU NYAK ARIEF RT 003 RW 002, JAKARTA SELATAN				KEBAYORAN LAMA	GROGOL SELATAN	96112	JAKARTA SELATAN			Normal	2021-04-15 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
258036672618000	PHE CAROLINE YULIA	JL BUKIT DARMO GOLF BLOK G NO 49-51	628123005882		OP	DUKUH PAKIS	PRADAH KALIKENDAL	Z5000	KOTA SURABAYA	3,57822E+15	JAWA TIMUR	Normal	2009-06-16 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
801794181619000	TERMINAL PUTERA NUSANTARA	JL LEBAK TIMUR VIII NO 11 RT 002 RW 010	0317484265	PT	BADAN	TAMBAKSARI	GADING	13929	KOTA SURABAYA		JAWA TIMUR	Normal	2016-10-04 00:00:00	2017-01-04 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
016639429656001	RODA SAKTI SURYA MEGAH							45403				Normal	2008-05-30 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
313983645607000	SKV SEJAHTERA	JL TEGALSARI NO 34	082231328189	PT	BADAN	TEGALSARI	KEDUNGDORO	46491	KOTA SURABAYA		JAWA TIMUR	Normal	2011-10-17 00:00:00	2012-01-25 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
030461461609000	BUANA SEJAHTERA	JL TENGGILIS TIMUR II NO 61 RT 003 RW 001	082142833996	CV	BADAN	TENGGILIS MEJOYO	TENGILIS MEJOYO	43291	KOTA SURABAYA		JAWA TIMUR	Normal	2010-04-21 00:00:00	2010-06-03 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018132753619000	SURABAYA TAKSI UTAMA	JL PLATUK DONOMULYO XV NO 2	0816403823	PT	BADAN	KENJERAN	SIDOTOPO WETAN	49421	KOTA SURABAYA		JAWA TIMUR	Normal	2000-03-27 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
011122926901002	KEDAWUNG SUBUR							23129				Normal	2003-08-19 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
664634946642001	ARTAMA SENTOSA INDONESIA							38120				Non Efektif	2015-05-26 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
807821137609000	IBOE MITRA SAMPURNO	JL JEMURSARI SELATAN VII NO 5 RT 001 RW 008	082132027499	PT	BADAN	WONOCOLO	JEMUR WONOSARI	46442	KOTA SURABAYA		JAWA TIMUR	Normal	2016-12-19 00:00:00	2017-02-23 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
015107139611000	RIA CENDANA	JL KOMBESPOL M.DURYAT NO 7 RT 000 RW 000	081330752040	PT	BADAN	GENTENG	EMBONG KALIASIN	56101	KOTA SURABAYA		JAWA TIMUR	Normal	1990-11-20 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
313752883941001	SUKSES MEKAR ABADI							46631				Normal	2017-04-07 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
211487467614000	KARUNIA ABADI INDONESIA	JL DUKUH KUPANG TIMUR VII NO 36 RT 003 RW 008	081289887014	PT	BADAN	SAWAHAN	PAKIS	47725	KOTA SURABAYA		JAWA TIMUR	Normal	2010-01-15 00:00:00	2010-11-22 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
023381080604000	SURYA PRATAMA MAKMUR	JL RAYA SUKOMANUNGGAL JAYA BLOK F-8	6281222575881	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	52296	KOTA SURABAYA		JAWA TIMUR	Normal	2005-03-24 00:00:00	2010-12-30 00:00:00	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
935918847618000	GLOBAL MAS SUKSES	RUKO SURYA INTI PERMATA 2 C-16 JL HR MUHAMMAD RT 004 RW 001	0816529816	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46201	KOTA SURABAYA		JAWA TIMUR	Normal	2019-11-27 00:00:00	2020-01-30 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
011358389941001	SALAM PACIFIC INDONESIA LINES	YOS SUDARSO, MASRUM, KOTA TUAL				PULAU DULLAH SELATAN	MASRUM	52293	KOTA TUAL			Normal	2011-06-14 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
022093678631000	ATLANTIC INTRACO	JL JAKSA AGUNG SUPRAPTO KAV 58 NO 39-41	0811372556	PT	BADAN	GENTENG	KETABANG	46651	KOTA SURABAYA		JAWA TIMUR	Normal	2003-04-28 00:00:00	2003-08-20 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
011328580644001	MURNI BERLIAN MOTORS							45103				Normal	1997-10-08 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
012562922625001	KHARISMA SUMA JAYA SAKTI							45405				Non Efektif	2014-05-21 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
012562922601001	KHARISMA SUMA JAYA SAKTI							45403				Normal	2006-05-03 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014800445622001	HASIL FASTINDO							47521				Normal	2002-05-06 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
015448194906001	NUSA TRIUTAMA							46691				Normal	2010-07-20 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
031132962657001	GRAHA AGUNG PERKASA							68111				Normal	2017-10-06 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
668740251403001	JAYA SEMANGGI ENJINIRING							41019				Normal	2021-11-24 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
031132962617001	GRAHA AGUNG PERKASA							68111				Normal	2018-10-10 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
805935582653001	AMARIS TIRTA PRATAMA							46339				PL/DE	2022-06-03 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
805935582621001	AMARIS TIRTA PRATAMA							46339				Normal	2021-04-14 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
703541003614000	SERBADA	KOMPLEK PERGUDANGAN SURI MULIA JL MARGOMULYO BLOK NN-01 NO 44 RT 000 RW 000	08999611963	CV	BADAN	ASEM ROWO	ASEM ROWO	10217	KOTA SURABAYA		JAWA TIMUR	Normal	2014-06-12 00:00:00	2018-10-10 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
908894835604000	ARTHA WANA INDONESIA	RUKO G WALK SHOP HOUSE BLOK BLOK W2 NO 15	6282231043299	PT	BADAN	SAMBIKEREP	LONTAR	46636	KOTA SURABAYA		JAWA TIMUR	Normal	2019-03-19 00:00:00	2019-04-30 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
016106940615000	EFOREL CITRA UTAMA	RUKO MEGAH RAYA JL RAYA KALIRUNGKUT 5 BLOK H NO 30	6281332407722	PT	BADAN	RUNGKUT	KALIRUNGKUT	47791	KOTA SURABAYA		JAWA TIMUR	Normal	2002-10-10 00:00:00	2003-09-29 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
010816072631001	REXAM PACKAGING INDONESIA							22220				PL/DE	1994-03-02 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414403002	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Normal	2017-12-27 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414543001	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Normal	2010-10-26 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
210658753655001	ABADIMITRA BERSAMA PERDANA							46638				Normal	2017-09-19 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
704326149712000	BORNEO LANCAR ABADI	RUKO DARMO OFFICE PARK II, JL. BUKIT DARMO BOULEVARD BLOK B2 NO 17-18 BLOK B2 NO 17-18	081331012713	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	46202	KOTA SURABAYA		JAWA TIMUR	Normal	2014-06-13 00:00:00	2014-09-01 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
016102360618000	DYNAMI PERKASA INDONESIA	JL HR MOHAMAD KAV.360 (KOMPLEK PERTOKOAN PERMATA B-9)	62317342189	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	41019	KOTA SURABAYA		JAWA TIMUR	Normal	1993-04-14 00:00:00	1993-04-14 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
257391888603000	ALIM ANDI PRASETIO	PERUMAHAN VILLA REGENCY BUKIT INDAH BLOK AT-2 NO 16 RT 002 RW 009	62818359359		OP	WIYUNG	BABATAN	Z5000	KOTA SURABAYA	3,51511E+15	JAWA TIMUR	Normal	2009-06-02 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
062759733609001	SUDARSONO	CITO BLOK GS6/17 JL A YANI NO 288	03170573839		OP	GAYUNGAN	DUKUH MENANGGAL	68111	KOTA SURABAYA	3,5102E+15	JAWA TIMUR	Normal	2011-07-11 00:00:00	\N	2015-08-24 00:00:00	user_2smaBk7vSR3r7bawHbmoBp7pxRO
314107350614000	ANEKA FILTER	JL BUBUTAN NO 130	0811356677	PT	BADAN	BUBUTAN	ALUN-ALUN CONTONG	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2011-11-04 00:00:00	2012-02-29 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
028173599613000	TIMUR JAYA SENTOSA	JL SONGOYUDAN NO 26 RT 002 RW 05	08123534278	PT	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	47593	KOTA SURABAYA		JAWA TIMUR	Normal	2009-06-26 00:00:00	2009-06-26 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
026704551013002	LVIORS JAYA SENTOSA	RUKO SIMPRUNG GALLERY NO.10-K, JL. TEUKU NYAK ARIEF, GROGOL SELATAN, JAKARTA SELATAN				KEBAYORAN LAMA	GROGOL SELATAN	96112	JAKARTA SELATAN			Normal	2021-06-23 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
016639429625001	RODA SAKTI SURYA MEGAH							45403				Non Efektif	2007-09-12 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
028176261613000	PERUSAHAAN NASIONAL PENUANGAN DJAJA	JL KALIMATI WETAN NO 14	08165433342	CV	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	24202	KOTA SURABAYA		JAWA TIMUR	Normal	2011-06-06 00:00:00	2011-06-10 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
031779788606000	FRUTAROMA INDONESIA	JL MANYAR JAYA XII B 143	6282137470008	CV	BADAN	SUKOLILO	MENUR PUMPUNGAN	47729	KOTA SURABAYA		JAWA TIMUR	Normal	2011-12-19 00:00:00	2012-01-04 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
011122926631000	KEDAWUNG SUBUR	JL RAYA RUNGKUT NO 15-17	0318700006	PT	BADAN	RUNGKUT	KALIRUNGKUT	23121	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
011082963613000	NAJATIM	JL. NILAM BARAT BARU NO 43	087787145585	PT	BADAN			33151				Normal	1982-11-05 00:00:00	1985-02-20 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
717124192618000	TITAN MAS BUANA	JL RAYA DARMO PERMAI BLOK I NO 53 RT 004 RW 003	62811326763	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	47773	KOTA SURABAYA		JAWA TIMUR	Normal	2014-12-15 00:00:00	2015-01-14 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
015587942631001	HABE TEC	JL JAGALAN NO 75 RT 000 RW 000	085256272727	CV	BADAN	GENTENG	PENELEH	47412	KOTA SURABAYA		JAWA TIMUR	Normal	2022-01-10 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
476785506619000	STEPHEN WALLA	JL DHARMA HUSADA INDAH NO 3 RT 001 RW 008	08123035091		OP	MULYOREJO	MULYOREJO	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2007-08-10 00:00:00	\N	\N	user_2sma8tnJRwwZckhHrrGIF28DQek
313752883951002	SUKSES MEKAR ABADI							41019				Normal	2015-04-24 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
031506876606000	MUTIARA DHARMA SEJAHTERA	JALAN RUKO MEGAH GALAXY BLOK 14B NO 9	6283831445599	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	68200	KOTA SURABAYA		JAWA TIMUR	Normal	2011-06-07 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
011358389712001	SALAM PACIFIC INDONESIA LINES							50131				Normal	2011-02-04 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
025251109606000	SINAR INDO PRATAMA	JL KLAMPIS MEGA BLOK A NO 33	081291551758	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2006-04-17 00:00:00	2011-01-10 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
011358389832001	SALAM PACIFIC INDONESIA LINES							50131				Normal	2022-05-17 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
028174498613000	SINAR PADANG SEJAHTERA	JL GILI 6 NO 5 RT 004 RW 012	089516218807	CV	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	46209	KOTA SURABAYA		JAWA TIMUR	Normal	2010-04-16 00:00:00	2012-12-20 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
012201588623001	PANCA WIRA DHARMA CAB.MALANG							42918				PL/DE	1992-05-25 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014659064623001	PADMATIRTA WISESA							46339				Normal	2020-01-23 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
012562922612001	KHARISMA SUMA JAYA SAKTI							45403				Normal	2006-05-09 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014659064624001	PADMATIRTA WISESA							46339				Normal	2020-01-23 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
015448194911001	NUSA TRIUTAMA							46691				Normal	2019-04-23 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
016774135602001	SRIKANDIDIAMOND INDAH MOTORS							45101				Normal	1995-05-05 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
665980710526001	MAS AGUNG SEJAHTERA							46494				PL/DE	2015-12-14 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
805935582627001	AMARIS TIRTA PRATAMA							46339				Normal	2022-03-04 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014250203609000	PRIMER KOPERASI ANGKATAN LAUT RUMAH SAKIT PUSAT ANGKATAN LAUT DR RAMELAN <PRIMKOPAL RSPAL DR. RAMELAN>	JL GADUNG NO 1 RT 000 RW 000	082165131159	KOP	BADAN	WONOKROMO	JAGIR	70203	KOTA SURABAYA		JAWA TIMUR	Normal	1986-04-02 00:00:00	1988-10-01 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
014659064647001	PADMATIRTA WISESA							46339				Normal	2022-01-18 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
078689361607000	BAMBANG BUDI HENDARTO, IR	JL TRUNOJOYO NO 30 RT 001 RW 012	0811378222		OP	TEGALSARI	DR. SOETOMO	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	2002-12-19 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
755571593606000	ORNELLA BASTIAAN ONGKO	JL MANYAR KERTOARJO BLOK 3 NO 67 RT 003 RW 006	0811341010		OP	MULYOREJO	MANYAR SABRANGAN	Z5000	KOTA SURABAYA	3,5781E+15	JAWA TIMUR	Normal	2016-03-23 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
026091769915001	SELOSARI	DESA PRAYA, KAB. LOMBOK TENGAH				PRAYA	PRAYA	41019	KAB. LOMBOK TENGAH			Non Efektif	2018-08-08 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414403001	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Non Efektif	2017-12-08 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
759900947615000	BERIN INFORMATIKA	JL PANDUGO BARU IX BLOK T NO 2 RT 006 RW 004	6285231608975	CV	BADAN	RUNGKUT	PENJARINGANSARI	62090	KOTA SURABAYA		JAWA TIMUR	Normal	2016-04-28 00:00:00	2016-11-23 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414644001	CAMPINA ICE CREAM INDUSTRY							10531				Non Efektif	2010-10-14 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
062759733604004	SUDARSONO	RAYA ROMOKALISARI INDUSTRI BLOK I NO 7	03170573839		OP	BENOWO	ROMOKALISARI	68111	KOTA SURABAYA	3,5102E+15	JAWA TIMUR	Non Efektif	2011-07-14 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
032085235625001	ANUGERAH GELORA PERKASA JAYA							47725				PL/DE	2012-12-14 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
827310889212001	INDIS TATA PERSADA							47111				Normal	2018-01-17 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
062759733604002	SUDARSONO	BUMI MASPION UTARA 2 BLOK RBM NO 8-9	6287852999099		OP	BENOWO	ROMOKALISARI	68111	KOTA SURABAYA	3,5102E+15	JAWA TIMUR	Non Efektif	2011-02-09 00:00:00	\N	2020-05-04 00:00:00	user_2smaBk7vSR3r7bawHbmoBp7pxRO
015354012613000	KITASUBUR UTAMA	JL PANGGUNG GG 3 NO 7	081230095967	PT	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	64931	KOTA SURABAYA		JAWA TIMUR	Normal	1994-12-28 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
032015356613000	CEMARA FARMA	PERAK TIMUR NO.160 RT.001 RW.005, PERAK TIMUR	62313537834	PT	BADAN			47721				Normal	2012-02-23 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
011331618601001	GELORA DJAJA							12011				Normal	2001-04-09 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
016639429624001	RODA SAKTI SURYA MEGAH							45401				Normal	2008-06-13 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
017159385613000	TAMBANGANRAYA PERMAI	JL NILAM BARAT BARU NO 14 RT 003 RW 010	08121762510	PT	BADAN			33151				Normal	1995-06-08 00:00:00	1995-07-18 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159631000	PERUSAHAAN PERSEROAN DAERAH BANK PERKREDITAN RAKYAT JAWA TIMUR	JL CILIWUNG NO 11	082234820802	PT	BADAN	TEGALSARI	DR. SOETOMO	64131	KOTA SURABAYA		JAWA TIMUR	Normal	2000-12-22 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
315227611614000	HARI BARU INDONESIA	JL BUBUTAN 16-22 BLOK C NO 5 RT 000 RW 000	089513403465	PT	BADAN	BUBUTAN	ALUN-ALUN CONTONG	50131	KOTA SURABAYA		JAWA TIMUR	Normal	2012-05-03 00:00:00	2016-07-28 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
011087434631000	GADING MURNI	JL TUNJUNGAN NO 27	0811333863	PT	BADAN	GENTENG	GENTENG	47650	KOTA SURABAYA		JAWA TIMUR	Normal	1982-11-05 00:00:00	1985-04-01 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
011087434914001	GADING MURNI CABANG NTB.							47650				Normal	2006-10-02 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251112001	PANCA PILAR TANGGUH							46339				Normal	2018-09-20 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251101001	PANCA PILAR TANGGUH							46319				Normal	2007-04-19 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159602002	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64131				Normal	2002-01-02 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159612001	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64121				Normal	2002-01-24 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159647004	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64121				Normal	2001-12-24 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
033286998609000	HANDAYANI INVESTINDO	JL MARGOREJO INDAH BLOK A-506 NO 57 RT 001 RW 008	0318412999	PT	BADAN	WONOCOLO	MARGOREJO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2013-11-20 00:00:00	2017-10-04 00:00:00	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
750786808618000	LAGONDA RAYA PRIMA	RUKO DARMO PARK II JL MAYJEN SUNGKONO BLOK 2 NO 19-20	6283849710020	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	68200	KOTA SURABAYA		JAWA TIMUR	Normal	2016-01-27 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
011358389701001	SALAM PACIFIC INDONESIA LINES							50131				Normal	2016-09-20 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
011358389723002	SALAM PACIFIC INDONESIA LINES							50131				Normal	2015-06-11 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
011358389734001	SALAM PACIFIC INDONESIA LINES							50131				Normal	2008-07-11 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
668740251609000	JAYA SEMANGGI ENJINIRING	MANUNGGAL KEBONSARI KENCANA - RUKO KEBONSARI REGENCY BLOK A-2 NO LANTAI 2 RT 009 RW 003	08166874025	PT	BADAN	JAMBANGAN	KEBONSARI	41015	KOTA SURABAYA		JAWA TIMUR	Normal	2014-04-03 00:00:00	2015-09-17 00:00:00	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
013328554018001	BAYU BERINGIN LESTARI	GEDUNG WISMA INDOCEMENT LT.9 JL.JEND.SUDIRMAN KAV.70-71, JAKARTA SELATAN				SETIABUDI	SETIA BUDI	68111	JAKARTA SELATAN			Non Efektif	2007-02-15 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
012201588411001	PANCA WIRA DHARMA							18111				Normal	2014-06-04 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
012562922645001	KHARISMA SUMA JAYA SAKTI							45405				Normal	2022-04-05 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014659064657002	PADMATIRTA WISESA							46339				Normal	2019-03-25 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014800445901001	HASIL FASTINDO							46900				Normal	2012-08-08 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
021141866107001	ENDO INDONESIA							47725				Normal	2021-10-28 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
668740251101002	JAYA SEMANGGI ENJINIRING							41019				Non Efektif	2019-09-02 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
668740251406001	JAYA SEMANGGI ENJINIRING							41019				Non Efektif	2018-07-27 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
665980710721001	GADAI MAS JATIM							64921				PL/DE	2018-01-29 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
668740251732001	JAYA SEMANGGI ENJINIRING							41019				Non Efektif	2018-04-03 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014659064643001	PADMATIRTA WISESA							46900				Normal	2012-10-23 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
026091769609000	SELOSARI	JL JEMURSARI SELATAN BLOK III NO 16 RT 002 RW 008	085732842005	PT	BADAN	WONOCOLO	JEMUR WONOSARI	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2006-11-29 00:00:00	2007-03-08 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
814841201614000	SDA PNEUMATIC	JL RADEN SALEH NO 10-D	0315674861	CV	BADAN	BUBUTAN	BUBUTAN	47793	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2017-03-15 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
029681913604000	SUMBER ORGANIK	JL ROMOKALISARI LPA BENOWO, ROMOKALISARI	082143262026	PT	BADAN	BENOWO	ROMOKALISARI	35111	KOTA SURABAYA		JAWA TIMUR	Normal	2009-06-02 00:00:00	2012-10-08 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
022071096631000	ULTRA KARYA BERSAMA	JL ABDUL WAHAB SIAMIN, VILLA BUKIT MAS BLOK RE NO 5 RT 003 RW 007	081233395288	PT	BADAN	DUKUH PAKIS	DUKUH PAKIS	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2007-02-13 00:00:00	2007-05-04 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414413001	CAMPINA ICE CREAM INDUSTRY							10531				Normal	2010-12-30 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414513001	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Normal	2017-11-22 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
312812308906001	UNIVERSAL MAS							41011				Normal	2019-10-25 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414643001	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Normal	2010-07-20 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
032085235648001	ANUGERAH GELORA PERKASA JAYA							47725				PL/DE	2017-11-28 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
061808481607000	RASID HARSONO	JL IMAM BONJOL NO 97-99 RT 003 RW 012	083830784177		OP	TEGALSARI	DR. SOETOMO	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Normal	2012-02-03 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
026704551611000	LVIORS JAYA SENTOSA	JL EMBONG PLOSO BLOK - NO 29 RT 000 RW 000	083866503693	PT	BADAN	GENTENG	EMBONG KALIASIN	96112	KOTA SURABAYA		JAWA TIMUR	Normal	2008-06-19 00:00:00	2011-01-31 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
022568372631000	DEWATA KENCANA DISTRIBUSI	JL CEMPAKA NO 32-34	08123278169	PT	BADAN	TEGALSARI	TEGALSARI	46333	KOTA SURABAYA		JAWA TIMUR	Normal	2004-11-02 00:00:00	2004-11-03 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
062759733609003	SUDARSONO	JL A YANI NO 288 CITY OF TOMORROW BLOK GE NO 21	03170573839		OP	GAYUNGAN	DUKUH MENANGGAL	68111	KOTA SURABAYA	3,5102E+15	JAWA TIMUR	Non Efektif	2011-07-20 00:00:00	\N	2015-08-24 00:00:00	user_2smaBk7vSR3r7bawHbmoBp7pxRO
062759733614004	SUDARSONO	RUKO GRAND FLOWER B-6 JL PASAR KEMBANG	08123188999		OP	SAWAHAN	KUPANG KRAJAN	68111	KOTA SURABAYA	3,5102E+15	JAWA TIMUR	Normal	2011-02-10 00:00:00	2011-02-10 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
011087434604001	GADING MURNI	KOMP. SUPERMAL PAKUWON INDAH NO. LG-041 A RT.000 RW.000, LONTAR		PT	BADAN	SAMBIKEREP	LONTAR	47412	KOTA SURABAYA		JAWA TIMUR	PL/DE	2007-06-12 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
151249265721000	RUDY GUNAWAN	JL SUTOREJO UTARA II BLOK C-2 NO 4 RT 013 RW 008	085103311776		OP	MULYOREJO	DUKUH SUTOREJO	45302	KOTA SURABAYA	3,5781E+15	JAWA TIMUR	Normal	2009-09-28 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
313983645619001	SKV SEJAHTERA	MANYAR KERTOARJO NO 12 RT 000 RW 000	082231328189	PT	BADAN	MULYOREJO	MANYAR SABRANGAN	47591	KOTA SURABAYA		JAWA TIMUR	Normal	2015-10-06 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
015266042614000	CAHAYA HAMPARAN SURYA	JL PAHLAWAN 9 , ALUN-ALUN CONTONG	081222216962	PT	BADAN	BUBUTAN	ALUN-ALUN CONTONG	46633	KOTA SURABAYA		JAWA TIMUR	Normal	1990-07-13 00:00:00	1990-07-13 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
011087434405001	GADING MURNI							47650				Normal	2020-12-02 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
011122926505001	KEDAWUNG SUBUR							23121				Normal	2012-02-23 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251219001	PANCA PILAR TANGGUH							46339				Normal	2006-12-28 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019132067504001	PULAU WEH CAB.SEMARANG							50131				PL/DE	2005-01-04 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
011122926801002	KEDAWUNG SUBUR							23129				Non Efektif	2002-09-18 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159629003	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64131				Normal	2002-01-09 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159656002	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64131				Normal	2012-01-25 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
313752883942001	SUKSES MEKAR ABADI	JL WIJAYA KUSUMA RT.004 RW.002, KOTA TERNATE				KOTA TERNATE TENGAH	KOTA BARU	47521	KOTA TERNATE			Normal	2013-09-24 00:00:00	\N	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
800945958613000	WIJAYA SENTOSA PRIMA	JL MUSI NO 12 RT 002 RW 014	085100666333	PT	BADAN	TEGALSARI	DR. SOETOMO	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2016-09-26 00:00:00	2021-03-05 00:00:00	\N	user_2smbmeLiBYVjOqT0oqnWJDOnGWm
024429540618000	TAYU WIJAYA SUKSES	JL MASTRIP WARUGUNUNG 28 RT.004 RW.002, WARUGUNUNG	0317662580	CV	BADAN	KARANG PILANG	WARU GUNUNG	47529	KOTA SURABAYA		JAWA TIMUR	Normal	2005-05-26 00:00:00	2021-12-27 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
025865676801001	BANGUN KARYA PERKASA							41011				PL/DE	2014-05-28 00:00:00	\N	\N	user_2smb9tL93JGktnVu0BveFwzJ36p
031133788615000	KARYA NIAGA MURNI	JL RAYA PANJANG JIWO NO 58 RT 001 RW 004	0318433166	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	46900	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2011-08-26 00:00:00	\N	2017-06-07 00:00:00	user_2smapMhjztr0ymBCpAvYMtdPvnK
015448194922001	NUSA TRIUTAMA	JL. TAEBENU RT 008 RW 004, LILIBA, KOTA KUPANG				OEBOBO	LILIBA	46900	KOTA KUPANG			Normal	2024-05-08 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014659064651001	PADMATIRTA WISESA							46334				Normal	2011-01-26 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014659064603001	PADMATIRTA WISESA							46339				Normal	2022-06-03 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
016774135601001	SRIKANDIDIAMOND INDAH MOTORS							45103				Normal	2015-06-08 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
018796250545001	ANUGRAH PRATAMA							46491				Non Efektif	2017-05-05 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
031132962624001	GRAHA AGUNG PERKASA							68111				Normal	2014-08-11 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
668740251601002	JAYA SEMANGGI ENJINIRING							41015				Normal	2023-04-12 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
801951989452001	SANPO SUKSES MANDIRI							46651				Normal	2019-09-25 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
805935582645001	AMARIS TIRTA PRATAMA							46339				Normal	2021-01-15 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
805935582624001	AMARIS TIRTA PRATAMA							46339				Normal	2022-06-03 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
701923419619000	GLOBAL MAS UTAMA	JL KERTAJAYA INDAH 3/19 BLOK F NO 609 RT 002 RW 010	0315945928	PT	BADAN	MULYOREJO	MANYAR SABRANGAN	47219	KOTA SURABAYA		JAWA TIMUR	Normal	2014-05-14 00:00:00	2014-08-28 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
741661128604000	SUMBER JAYA FASTINDO	PERGUDANGAN BUMI MASPION 7C-9 NO 46	082234003524	PT	BADAN	BENOWO	ROMOKALISARI	46631	KOTA SURABAYA		JAWA TIMUR	Normal	2015-10-13 00:00:00	2016-10-18 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
949097695604000	KAHURIPAN MAKMUR	PERUMAHAN  WESTERN VILLAGE LT.II BLOK A1 NO 27 RT 005 RW 010	089675766811	CV	BADAN	BENOWO	SEMEMI	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2020-05-20 00:00:00	2020-07-14 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
015998891624001	SOEDALI SEJAHTERA							13112				Normal	2000-12-15 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414412001	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Normal	2010-07-29 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414528001	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Normal	2013-01-29 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
018134692417001	ESA ZONA EKSPRES							52291				PL/DE	2008-02-14 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414502001	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Normal	2011-02-23 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
817952716616000	KONTA ALAS SAKTI	JALAN GEMBONG BLOK C-3 NO 2-16 RT 006 RW 005	082245651275	PT	BADAN	SIMOKERTO	KAPASAN	47712	KOTA SURABAYA		JAWA TIMUR	Normal	2017-04-17 00:00:00	2017-07-04 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
062759733604001	SUDARSONO	ROMO KALISARI INDUSTRI RAYA BLOK I NO 38	0317328358		OP	BENOWO	ROMOKALISARI	68111	KOTA SURABAYA	3,5102E+15	JAWA TIMUR	Non Efektif	2011-02-09 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
029938115615000	SYNERGY ULTIMA NOBILUS	JL PANJANGJIWO PERMAI BLOK IV NO 44 RT 002 RW 005	0318495566	PT	BADAN	TENGGILIS MEJOYO	PANJANG JIWO	69201	KOTA SURABAYA		JAWA TIMUR	Normal	2010-05-07 00:00:00	2012-11-20 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
062759733614002	SUDARSONO	JL MARGOMULYO 46 BLOK I NO 4	03170573839		OP	ASEM ROWO	GENTING KALIANAK	68111	KOTA SURABAYA	3,5102E+15	JAWA TIMUR	Non Efektif	2011-01-17 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
020098612618000	PADI INTERNET	JL MAYJEN SUNGKONO NO 83	08563019979	PT	BADAN	DUKUH PAKIS	GUNUNG SARI	61100	KOTA SURABAYA		JAWA TIMUR	Normal	2002-01-28 00:00:00	2002-02-14 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
016639429614001	RODASAKTI SURYARAYA	JL.MAYJEND.SUNGKONO NO.4 RT.006 RW.004, PAKIS		PT	BADAN	SAWAHAN	PAKIS	45401	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2004-06-24 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
802034447614000	SINAR PERKASA	JL. DUKUH KUPANG TIMUR BLOK IX NO 42 RT 008 RW 009	6281335588889	CV	BADAN	SAWAHAN	PAKIS	47528	KOTA SURABAYA		JAWA TIMUR	Normal	2016-10-04 00:00:00	2017-09-18 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
062759733908001	SUDARSONO							68111				Non Efektif	2011-01-24 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
019132067613000	PULAU WEH	JL PERAK BARAT NO 203 RT 008 RW 005	085903776565	PT	BADAN			50131				Normal	1999-11-04 00:00:00	2013-06-19 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
041669052606000	SOEGIARTO ADIKOESOEMO	JL RAYA GUBENG 28	0215311300		OP	GUBENG	GUBENG	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	1984-02-29 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
031131196822001	KARYA PUTRA ANDALAN							47725				Non Efektif	2015-11-23 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
315762104606000	PILAR EKATAMA	JL PUCANG ANOM 7 NO 16-18	081358914805	PT	BADAN	GUBENG	PUCANG SEWU	43224	KOTA SURABAYA		JAWA TIMUR	Normal	2012-08-10 00:00:00	2012-08-29 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
017158593613000	ERAMANDIRI CIPTASENTOSA	JL. NILAM BARAT BARU 45                           , PERAK UTARA	081	PT	BADAN			30111				Non Efektif	1995-01-16 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251125001	PANCA PILAR TANGGUH							46100				Non Efektif	1999-01-08 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251643001	PANCA PILAR TANGGUH							46339				Normal	2011-05-05 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251116001	PANCA PILAR TANGGUH							46339				Normal	2006-12-21 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159608003	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64131				Normal	2012-06-21 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159646003	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64131				Normal	2001-12-24 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251642001	PANCA PILAR TANGGUH							46339				Normal	2008-04-07 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
031791791609000	MANDAGUNA METALINDO	KO APARTEMEN PUNCAK MARINA TWR I LT. 2 JL MARGOREJO INDAH BLOK XVII NO 2-4 RT 007 RW 005	0318493671	PT	BADAN	WONOCOLO	SIDOSERMO	46639	KOTA SURABAYA		JAWA TIMUR	Normal	2012-01-02 00:00:00	2012-02-22 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
011358389822001	SALAM PACIFIC INDONESIA LINES							50131				Normal	2018-06-05 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
597974237609000	DANNY IRAWAN PRIJADI	JL MARGOREJO INDAH BLOK B NO 313 RT 002 RW 008	081230758181		OP	WONOCOLO	MARGOREJO	Z5000	KOTA SURABAYA	3,57802E+15	JAWA TIMUR	Normal	2008-12-15 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
011328580712001	MURNI BERLIAN MOTORS							45103				Normal	2003-07-28 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
012562922627001	KHARISMA SUMA JAYA SAKTI							45405				Normal	2010-07-28 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014659064602001	PADMATIRTA WISESA							46339				Normal	2022-06-03 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014659064608001	PADMATIRTA WISESA							46339				Normal	2021-04-14 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
022070627042001	JATIM PETROLEUM TRANSPORT							52291				Normal	2017-02-08 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
668740251315001	JAYA SEMANGGI ENJINIRING							41019				Non Efektif	2018-06-08 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
668740251526001	JAYA SEMANGGI ENJINIRING							41019				Normal	2020-08-04 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
805935582603001	AMARIS TIRTA PRATAMA							46339				Normal	2020-10-23 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
818521908604000	YAMAMAX INDONESIA	JL PERGUDANGAN MARGOMULYO PERMAI BLOK Q NO 3	6281216888878	CV	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	46447	KOTA SURABAYA		JAWA TIMUR	Normal	2017-04-26 00:00:00	2017-08-22 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414631000	CAMPINA ICE CREAM INDUSTRY TBK.	JL.RUNGKUT INDUSTRI II/15,	082330525573	PT	BADAN	TENGGILIS MEJOYO	TENGILIS MEJOYO	10531	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
014659064645001	PADMATIRTA WISESA							46339				Normal	2020-01-16 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
017161282614001	PANDULIMA JAYATEHNIK	MARGOMULYO INDUSTRI BLOK L-03 NO 44 RT 001 RW 001	0315465679	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2021-01-06 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
011504446631000	DAMAI SENTOSA COOKING OIL	JL UNDAAN WETAN NO 32 RT 004 RW 010	0318438238	PT	BADAN	GENTENG	KETABANG	46315	KOTA SURABAYA		JAWA TIMUR	Normal	2005-01-07 00:00:00	2005-01-24 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414006001	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Normal	2011-01-21 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414422001	CAMPINA ICE CREAM INDUSTRY TBK.							46339				Normal	2002-02-01 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414602001	CAMPINA ICE CREAM INDUSTRY TBK.							10531				PL/DE	2017-12-11 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
827310889642001	INDIS TATA PERSADA							47111				Normal	2018-07-10 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
827310889211001	INDIS TATA PERSADA							47111				Normal	2018-01-25 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
018134692043001	ESA ZONA EKSPRES							52291				Non Efektif	2003-09-30 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
729673632618000	AGRO MANDIRI ABADI	JL KALIMATI KULON NO 35	62315019555	PT	BADAN	PABEAN CANTIAN	NYAMPLUNGAN	46652	KOTA SURABAYA		JAWA TIMUR	Normal	2015-05-08 00:00:00	2018-04-11 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
062759733614003	SUDARSONO	JL MARGOMULYO 46 BLOK D NO 5	03170573839		OP	ASEM ROWO	GENTING KALIANAK	68111	KOTA SURABAYA	3,5102E+15	JAWA TIMUR	Non Efektif	2011-01-17 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
030711139606000	GRASIKA KARYA PRIMA	JL NGAGEL JAYA SELATAN RUKO RMI BLOK G NO 26	081333357627	PT	BADAN	GUBENG	BARATAJAYA	47521	KOTA SURABAYA		JAWA TIMUR	Normal	2010-07-20 00:00:00	2010-07-20 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
801520305611000	MENTARI SEJAHTERA	JL BASUKI RACHMAD NO 45-47	089620071371	CV	BADAN	GENTENG	EMBONG KALIASIN	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2016-10-20 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
078688801607000	SUGIARTA ADIWINATA	JL.RAYA DIPONEGORO 136 RT.002 RW.015, DR.SUTOMO			OP	TEGALSARI	DR. SOETOMO	Z5000	KOTA SURABAYA	3,57805E+15	JAWA TIMUR	Non Efektif	2002-09-17 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
021758842631000	TIGA MUARA JAYA	JL NGAGEL MADYA NO 79	08123536370	PT	BADAN	GUBENG	BARATAJAYA	42912	KOTA SURABAYA		JAWA TIMUR	Normal	2002-11-21 00:00:00	2002-12-03 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
030521918048000	MITRA PINASTHIKA MULIA	JL SIMPANG DUKUH NO 42-44 RT 002 RW 009	083856616017	PT	BADAN	GENTENG	KAPASARI	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2010-11-11 00:00:00	2018-07-09 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
025150624609000	SURABAYA MEDIA TELEVISI	JL A.YANI GEDUNG GRAHA PENA LT.21 NO 88	082196624497	PT	BADAN	GAYUNGAN	KETINTANG	60102	KOTA SURABAYA		JAWA TIMUR	Normal	2006-05-15 00:00:00	2008-01-18 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
826096836604000	BIMA SUKSES PERKASA	ROMOKALISARI PERGUDANGAN BUMI MASPION BLOK 2 NO C 5	6282110930418	PT	BADAN	BENOWO	ROMOKALISARI	45301	KOTA SURABAYA		JAWA TIMUR	Normal	2017-08-18 00:00:00	2018-01-31 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
067152744606001	LILY HENDARTO	DHARMAHUSADA UTARA AA/22 RT.004 RW.002, MOJO			OP	GUBENG	MOJO	Z5000	KOTA SURABAYA	3,57809E+15	JAWA TIMUR	PL/DE	2009-02-18 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
011087434903001	GADING MURNI							47611				Non Efektif	2010-06-15 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
011122926648001	KEDAWUNG SUBUR							23121				PL/DE	2004-08-12 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251201001	PANCA PILAR TANGGUH							46651				Normal	2003-06-16 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
011122926732001	KEDAWUNG SUBUR							23121				Normal	2003-10-02 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251625001	PANCA PILAR TANGGUH							46339				Non Efektif	2008-06-26 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159645001	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64131				Normal	2002-01-04 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251627001	PANCA PILAR TANGGUH							46339				Normal	2008-09-11 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
023553282606000	MITRA PERSADA SUKSES	JL SEMOLOWARU INDAH BLOK P 20	6281330330768	PT	BADAN	SUKOLILO	SEMOLOWARU	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2004-07-19 00:00:00	2004-07-21 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
025996125611000	AKBAR MAULANA ABADI	THE GAYUNGSARI BLOK D NO 52A RT 004 RW 006	082131161600	PT	BADAN	GAYUNGAN	GAYUNGAN	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2007-08-16 00:00:00	2013-02-27 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
014659064621001	PADMATIRTA WISESA							46339				Normal	2012-07-11 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014659064655001	PADMATIRTA WISESA							46339				Normal	2022-10-04 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
012562922621001	KHARISMA SUMA JAYA SAKTI							45406				Normal	2013-09-13 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
016774135648001	SRIKANDIDIAMOND INDAH MOTORS							45103				Normal	2011-10-11 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
016774135713001	SRIKANDIDIAMOND INDAH MOTORS							45101				Normal	2011-10-10 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
668740251727001	JAYA SEMANGGI ENJINIRING							41019				Normal	2022-02-25 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
805935582608001	AMARIS TIRTA PRATAMA							46339				Normal	2021-04-14 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
312812308619000	UNIVERSAL MAS	JL KERTAJAYA INDAH 3/19 BLOK F-609 RT 002 RW 010	62816568512	PT	BADAN	MULYOREJO	MANYAR SABRANGAN	41011	KOTA SURABAYA		JAWA TIMUR	Normal	2011-02-16 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
032085235606000	ANUGERAH GELORA PERKASA JAYA	RUKO KLAMPIS MEGAH B 15	081310759416	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	47725	KOTA SURABAYA		JAWA TIMUR	Normal	2012-01-19 00:00:00	2012-02-15 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017161282614000	PANDULIMA JAYATEHNIK	JL PENGHELA 2 C-D , ALUN-ALUN CONTONG	0811329536	PT	BADAN	BUBUTAN	ALUN-ALUN CONTONG	46591	KOTA SURABAYA		JAWA TIMUR	Normal	2004-07-12 00:00:00	2004-07-15 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
015314339606000	NAWATA KURNIA PUTRA	JL PERKANTORAN RUKO 21 KLAMPIS JL AR HAKIM BLOK F8 NO 51	0811334416	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	46599	KOTA SURABAYA		JAWA TIMUR	Normal	1991-04-06 00:00:00	1991-04-08 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
040213936614000	TJIANG TJU TJIANG	JL PASAR BESAR WETAN NO 30/1 RT 001 RW 002	081331126440		OP	BUBUTAN	ALUN-ALUN CONTONG		KOTA SURABAYA	3,57813E+15	JAWA TIMUR	Normal	1983-12-04 00:00:00	1989-04-15 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
011088994012001	SINAR GALAXY							68111				Normal	2019-01-30 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
015680275601001	PUSKOPAL KODIKLATAL							46900				Normal	2019-11-12 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414426001	CAMPINA ICE CREAM INDUSTRY TBK.							46339				Normal	2001-10-17 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414608001	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Normal	2017-12-29 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
031131196615000	KARYA PUTRA ANDALAN	JL RAYA I GUSTI NGURAH RAI LT.1 BLOK A-1 NO 11-12 RT 001 RW 007	085730088271	PT	BADAN	GUNUNG ANYAR	GUNUNG ANYAR	47725	KOTA SURABAYA		JAWA TIMUR	Normal	2011-03-01 00:00:00	2011-04-12 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
317170439614000	NAGA MAS JAYA SUKSES	JL MARGOMULYO PERMAI BLOK AE NO 45 RT 001 RW 001	0895425591999	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2013-03-20 00:00:00	2018-08-06 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
062759733604003	SUDARSONO	RAYA ROMOKALISARI INDUSTRI BLOK I NO 9	03170573839		OP	BENOWO	ROMOKALISARI	68111	KOTA SURABAYA	3,5102E+15	JAWA TIMUR	Non Efektif	2011-07-14 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
025407446605000	KORMAN WAHANA TRANSINDO	JL TANJUNG SADARI NO 107 RT 003 RW 001	3573282	PT	BADAN	KREMBANGAN	PERAK BARAT	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2006-05-08 00:00:00	2013-04-19 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
060559069606000	WILLY WALLA	JL DHARMAHUSADA INDAH B 3	6281330727272		OP	GUBENG	MOJO	96990	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	2000-09-14 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
062759733606001	SUDARSONO	JL SEOKARNO HATTA RUKO ICON 21 BLOK UNIT S NO 10-11	03170573839		OP	SUKOLILO	KLAMPIS NGASEM	68111	KOTA SURABAYA	3,5102E+15	JAWA TIMUR	Non Efektif	2013-01-22 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
062759733801001	SUDARSONO	IR SUTAMI TOL <DEPAN PEMB TOL BIRINGKANAYA> NO 788X, PAI, KOTA MAKASSAR				BIRINGKANAYA	PAI	68111	KOTA MAKASSAR			Non Efektif	2014-10-13 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
011331618655001	GELORA DJAJA							12011				PL/DE	2014-01-09 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
314658535614000	CAHAYA SELANG	JL SEMARANG NO 96 A-B RT 004 RW 005	0315453541	PT	BADAN	BUBUTAN	BUBUTAN	46599	KOTA SURABAYA		JAWA TIMUR	Normal	2012-02-10 00:00:00	2012-02-22 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
485204440606000	HANDOYO	JL  SUMATRA NO 99 RT 003 RW 005	0811315463		OP	GUBENG	GUBENG	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	2008-09-23 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
016639429625003	RODA SAKTI SURYA MEGAH							45403				Non Efektif	2011-03-10 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
738328350616000	NEWTON METAL	JL GEMBONG NO 42-A RT 005 RW 009	082128007168	CV	BADAN	SIMOKERTO	KAPASAN	46620	KOTA SURABAYA		JAWA TIMUR	Normal	2015-09-03 00:00:00	2015-11-23 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
016639429915001	RODA SAKTI SURYA MEGAH							45401				PL/DE	2019-09-02 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
031131196822002	KARYA PUTRA ANDALAN							47725				Non Efektif	2016-02-02 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
062759733902001	SUDARSONO							68111				Non Efektif	2011-01-18 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
018135251213001	PANCA PILAR TANGGUH							46491				Normal	2008-04-21 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251115001	PANCA PILAR TANGGUH							46339				Normal	2018-01-04 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251102001	PANCA PILAR TANGGUH							46339				Normal	2008-07-21 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159644002	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64121				Normal	2013-04-05 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
030521918626001	MITRA PINASTHIKA MULIA							46900				Normal	2019-08-02 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
030521918926001	MITRA PINASTHIKA MULIA							46900				Non Efektif	2019-12-26 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
029691557609000	BANGUN ARTA HUTAMA	JL DIPONEGORO NO 81 RT 001 RW 001	085730101036	PT	BADAN	WONOKROMO	DARMO	42918	KOTA SURABAYA		JAWA TIMUR	Normal	2009-06-05 00:00:00	2010-01-05 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
014659064622001	PADMATIRTA WISESA							46339				PL/DE	2012-07-18 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014659064657001	PADMATIRTA WISESA							46900				Normal	2011-01-25 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014800445651001	HASIL FASTINDO							47521				Normal	2001-01-25 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
016774135711001	SRIKANDIDIAMOND INDAH MOTORS							45103				Non Efektif	2017-11-06 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
668740251101003	JAYA SEMANGGI ENJINIRING							41015				Normal	2023-09-06 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
668740251524001	JAYA SEMANGGI ENJINIRING							41019				Normal	2019-09-18 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
805935582626001	AMARIS TIRTA PRATAMA							46339				Normal	2021-04-14 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
827310889618000	INDIS TATA PERSADA	JL RAYA MAYJEND YONO SOEWOYO LT 06 SUITE A BLOK - NO 66 RT 002 RW 009	081231414369	PT	BADAN	WIYUNG	BABATAN	47111	KOTA SURABAYA		JAWA TIMUR	Normal	2017-09-05 00:00:00	2017-11-30 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
805935582654001	AMARIS TIRTA PRATAMA							46339				Normal	2022-06-03 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
767819832604000	AGRINDO SAWIT MANDIRI	PRAMBANAN LIDAH KULON RK-B NO 19 RT 001 RW 008	082139201882	PT	BADAN	LAKARSANTRI	LIDAH KULON	10437	KOTA SURABAYA		JAWA TIMUR	Normal	2016-08-18 00:00:00	2016-10-31 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
060317203611000	JULIANA CHRISTINA KATUARI	JL KECILUNG NO 18	082245651598		OP	GENTENG	KETABANG	47112	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	Normal	1984-06-11 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
210658753618000	ABADIMITRA BERSAMA PERDANA	RUKO DARMO GALERIA C-8 JL MAYJEND SUNGKONO 75 B/14 RT 000 RW 000	08179977806	PT	BADAN	DUKUH PAKIS	GUNUNG SARI	46638	KOTA SURABAYA		JAWA TIMUR	Normal	2009-01-07 00:00:00	2012-09-27 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
011088994403001	SINAR GALAXY							68111				Normal	2022-04-08 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414405001	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Normal	2010-11-04 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414439001	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Normal	2016-02-12 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
730123916642001	ADHI DHARMA INDONESIA							46314				Normal	2022-08-25 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
028173599614001	TIMUR JAYA SENTOSA	JL GREGES JAYA NO 8 RT 001 RW 001	628123534278	PT	BADAN	ASEM ROWO	TAMBAK SARIOSO	47593	KOTA SURABAYA		JAWA TIMUR	Normal	2010-09-20 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
026041566614000	BERAU KARYA INDAH	DUSUN KETEMAS RT 003 RW 002	0899680888	PT	BADAN	PURI	KETEMASDUNGUS	16101	KAB. MOJOKERTO		JAWA TIMUR	Normal	2009-09-30 00:00:00	2009-10-01 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
028174191613000	RAJASA DHARMA VIESTA	JL TELUK KUMAI BARAT NO 122 RT 003 RW 002	03199097622	PT	BADAN			52293				Normal	2010-01-22 00:00:00	2011-11-01 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
807955448618000	SATIVA BHUMI INVESTAMA	JL MAYJEN SUNGKONO NO 83	087853320937	PT	BADAN	DUKUH PAKIS	GUNUNG SARI	41011	KOTA SURABAYA		JAWA TIMUR	Normal	2016-12-19 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
028244986614000	UNI AGRO CHEMICA	JL RAYA TAMBAK LANGON NO.22/A-1 RT.001 RW.001, TAMBAK LANGON BLOK - NO 22 RT 001 RW 001	0317491388	CV	BADAN	ASEM ROWO	ASEM ROWO	47763	KOTA SURABAYA		JAWA TIMUR	Normal	2009-02-26 00:00:00	2009-02-26 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
061378600604000	OEI RONNY WIJAYA	JL PUTAT GEDE TIMUR NO 25 RT 004 RW 002	623161105747		OP	SUKOMANUNGGAL	PUTAT GEDE	Z5000	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	Normal	2011-04-13 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
016639429617001	RODA SAKTI SURYA MEGAH							46593				Normal	1999-03-02 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
026704551721001	LVIORS JAYA SENTOSA							96112				Normal	2019-08-23 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
024768632606000	CONCRETE TECHNOLOGY INDONESIA	JL RUKO KLAMPIS MEGAH BLOK D 6	08113180103	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	42918	KOTA SURABAYA		JAWA TIMUR	Normal	2009-06-29 00:00:00	2011-01-06 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
066928029604000	ANDIKA LIMANTARA IR	JL DARMO PERMAI TIMUR III NO 36 RT 001	6287854090939		OP	SUKOMANUNGGAL	SONOKWIJENAN	Z5000	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	Normal	1993-07-01 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
674929393619000	HENDRA SUSANTO	JL DHARMAHUSADA INDAH TIMUR BLOK L184 NO 36 RT 005 RW 009	081803038444		OP	MULYOREJO	MULYOREJO	Z5000	KOTA SURABAYA	3,57804E+15	JAWA TIMUR	Normal	2009-01-06 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
014660906605000	PELAYARAN PACIFIC SELATAN	JL PERAK BARAT NO 157	6281235939474	PT	BADAN	KREMBANGAN	PERAK BARAT	50133	KOTA SURABAYA		JAWA TIMUR	Normal	2004-05-28 00:00:00	2004-08-24 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
011087434615001	GADING MURNI	JL JEMUR ANDAYANI NO 191-193 RT 002 RW 005	0318433455	PT	BADAN	TENGGILIS MEJOYO	KENDANGSARI	46447	KOTA SURABAYA		JAWA TIMUR	Normal	2001-05-09 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
011087434642001	GADING MURNI							47650				Normal	2019-05-27 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251202001	PANCA PILAR TANGGUH	JL RAYA PADANG LUAR KM 04 NO 13, KAB. AGAM				BANUHAMPU	PADANG LUA	46441	KAB. AGAM			Normal	2003-08-12 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251624001	PANCA PILAR TANGGUH							46334				Non Efektif	2010-07-27 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159622002	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64131				Normal	2002-01-07 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159655005	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64131				Normal	2002-01-15 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
030521918643001	MITRA PINASTHIKA MULIA							46900				Normal	2018-12-10 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
030521918654001	MITRA PINASTHIKA MULIA							46900				Normal	2019-02-13 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159651001	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64121				Normal	2001-12-24 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
014659064653002	PADMATIRTA WISESA							46339				Normal	2021-01-05 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014800445504001	HASIL FASTINDO							47521				Normal	2000-03-22 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
016774135645001	SRIKANDIDIAMOND INDAH MOTORS							45101				Normal	2013-12-09 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014659064612001	PADMATIRTA WISESA							46339				Normal	2012-06-01 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014659064625001	PADMATIRTA WISESA							46339				Non Efektif	2020-01-06 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
014659064626001	PADMATIRTA WISESA							46339				Normal	2012-07-18 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
805935582644001	AMARIS TIRTA PRATAMA							46339				Normal	2021-04-13 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
805935582608002	AMARIS TIRTA PRATAMA							46339				Normal	2022-06-03 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
019224765611000	KARYA AGUNG WAHANA INTI	JL KALIANYAR NO 30 RT 001 RW 001	0811318162	PT	BADAN	GENTENG	KAPASARI	47592	KOTA SURABAYA		JAWA TIMUR	Normal	2000-02-16 00:00:00	2000-03-14 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
014541502615000	VARIA INDOWIN PERKASA	JL RUNGKUT INDUSTRI BLOK III NO 62-A	081234557652	PT	BADAN	RUNGKUT	RUNGKUT KIDUL	77321	KOTA SURABAYA		JAWA TIMUR	Normal	1988-08-30 00:00:00	1989-06-30 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
849249719614000	KUSUMA PIRANTI JAYA	JL. DACOTA NO 1 RT 002 RW 001	081380744602	PT	BADAN	SAWAHAN	PUTAT JAYA	43223	KOTA SURABAYA		JAWA TIMUR	Normal	2018-05-21 00:00:00	2018-12-04 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
718177884619000	SAMA SAMA UNTUNG	JL SAN ANTONIO SHOPPING STREET BLOK N1 NO 50	082133700412	PT	BADAN	MULYOREJO	KALISARI	47754	KOTA SURABAYA		JAWA TIMUR	Normal	2014-12-29 00:00:00	2018-01-15 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414401001	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Normal	2010-10-19 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414433001	CAMPINA ICE CREAM INDUSTRY							10531				Normal	2017-07-13 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414627001	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Normal	2017-11-21 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414518001	CAMPINA ICE CREAM INDUSTRY TBK.							46339				Normal	2002-05-01 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414655002	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Normal	2017-11-09 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
906794177609000	AKKARYA JAYA PRATAMA	JL KARAH AGUNG VI NO 63 RT 003 RW 010	0318290658	PT	BADAN	JAMBANGAN	KARAH	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2019-02-27 00:00:00	2019-04-09 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
026704551604001	LVIORS JAYA SENTOSA	RUKO TAMAN BEVERLY JL HR MUHAMMAD 49-55 KAV 10	082232321787	PT	BADAN	SUKOMANUNGGAL	PUTAT GEDE	96112	KOTA SURABAYA		JAWA TIMUR	Normal	2018-09-24 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
314217571607000	KARYA BUMI SUBUR	JL RONGGOLAWE NO 6	081252717771	PT	BADAN	TEGALSARI	DR. SOETOMO	46204	KOTA SURABAYA		JAWA TIMUR	Normal	2011-11-22 00:00:00	2012-06-26 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
016639429631001	RODA SAKTI SURYA MEGAH	JL.MAYJEND.SUNGKONO NO.4, PAKIS		PT	BADAN	SAWAHAN	PAKIS	45401	KOTA SURABAYA		JAWA TIMUR	Non Efektif	2007-09-04 00:00:00	\N	2017-03-10 00:00:00	user_2smaBk7vSR3r7bawHbmoBp7pxRO
028227882619000	TIGA BERLIAN MANDIRI	JL MUSTIKA NO 10 RT 006 RW 001	081216283779	PT	BADAN	WONOKROMO	NGAGEL	46593	KOTA SURABAYA		JAWA TIMUR	Normal	2010-06-10 00:00:00	2010-06-30 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
022568372903001	DEWATA KENCANA DISTRIBUSI							46339				Normal	2010-05-10 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
704326149732001	BORNEO LANCAR ABADI							46202				Normal	2017-12-12 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
019415090607000	NINDYABINA ABADISENTOSA	JL MOJOPAHIT NO 27 RT 001 RW 006	6282233005715	PT	BADAN	TEGALSARI	KEPUTRAN	46207	KOTA SURABAYA		JAWA TIMUR	Normal	1999-11-24 00:00:00	2019-08-20 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
769990151611000	YULIANI CHANDRANATA	JL WALIKOTA MUSTAJAB NO 64 RT 001 RW 005	081259562915		OP	GENTENG	KETABANG		KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	2016-09-07 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
024760555606000	PRASETYA BANGUN PERKASA	JL NGAGEL JAYA TENGAH NO 21	081331432020	PT	BADAN	GUBENG	PUCANG SEWU	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2009-01-13 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
313946014619000	TRISETIA CIPTA PERSADA	DUSUN CARAT RT 001 RW 001	08123521868	PT	BADAN	GEMPOL	CARAT	46100	KAB. PASURUAN		JAWA TIMUR	Normal	2011-10-12 00:00:00	2013-02-01 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
062759733618001	SUDARSONO							68111				PL/DE	2011-02-10 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
016639429627001	RODA SAKTI SURYA MEGAH							45403				Normal	2003-07-04 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
018135251622001	PANCA PILAR TANGGUH							47111				Normal	2001-02-15 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
016639429651001	RODA SAKTI SURYA MEGAH							45401				Normal	1996-12-23 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
019419159629001	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64121				Normal	2002-01-03 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
030521918622001	MITRA PINASTHIKA MULIA							46900				Normal	2018-09-05 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159647005	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64131				Normal	2001-12-24 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
026224378604000	FORTUNA SAKTI INDO JAYA	DARMO PERMAI TIMUR VII/16 RT.004 RW.001, SONOKWIJENAN	628123223345	CV	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	46339	KOTA SURABAYA		JAWA TIMUR	Normal	2007-03-07 00:00:00	2007-03-28 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
751122045614000	CARJAYA	JL. RAYA MARGOMULYO NO 51 RT 000 RW 000	628991524656	CV	BADAN	ASEM ROWO	TAMBAK SARIOSO	45201	KOTA SURABAYA		JAWA TIMUR	Normal	2016-02-04 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
024542292606000	IKANINDO REKATAMA CIPTA	JL PUCANG JAJAR 32	0811308400	PT	BADAN	GUBENG	KERTAJAYA	41019	KOTA SURABAYA		JAWA TIMUR	Normal	2005-03-07 00:00:00	2005-03-09 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
805935582655001	AMARIS TIRTA PRATAMA							46339				Normal	2021-05-20 00:00:00	\N	\N	user_2smapMhjztr0ymBCpAvYMtdPvnK
817349764614000	SUMBER NIAGA MAKMUR	JL. RAYA ARJUNA NO 110 RT 08 RW 03	6281931527227	PT	BADAN	SAWAHAN	SAWAHAN	45103	KOTA SURABAYA		JAWA TIMUR	Normal	2017-04-12 00:00:00	2017-05-29 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
011088994631000	SINAR GALAXY	JL  KERTAJAYA INDAH TIMUR NO 33	08563373733	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	68111	KOTA SURABAYA		JAWA TIMUR	Normal	2007-09-04 00:00:00	2007-09-04 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414034001	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Normal	2001-07-04 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414501001	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Normal	2017-12-21 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414626001	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Normal	2005-12-01 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
767819832712001	AGRINDO SAWIT MANDIRI							10437				Normal	2018-02-21 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414521001	CAMPINA ICE CREAM INDUSTRY TBK.							47112				Normal	2010-10-18 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
022071971613000	WAHYU AGUNG	JL INDRAPURA BARU NO 353G RT 003 RW 008	085104440696	PT	BADAN			33151				Normal	2007-07-25 00:00:00	2007-07-31 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
028252724604000	TUNAS INDO MAKMUR	JL TANJUNG SARI NO 40E	082234533299	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	46641	KOTA SURABAYA		JAWA TIMUR	Normal	2009-06-17 00:00:00	2015-08-13 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
572929180604000	LAKSMIWATI, TJANDRA	JL KUPANG BARU I NO 108 RT 007 RW 005	0818304569		OP	SUKOMANUNGGAL	SONOKWIJENAN	Z5000	KOTA SURABAYA	3,57828E+15	JAWA TIMUR	Normal	2008-11-20 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
866295181614000	KASIH ANUGERAH	JL MARGOMULYO BLOK 31 A NO 7 RT 003 RW 001	6282330092013	CV	BADAN	ASEM ROWO	TAMBAK SARIOSO	46447	KOTA SURABAYA		JAWA TIMUR	Normal	2018-11-22 00:00:00	2019-01-09 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
026331942605000	KABENG GUNA SAMUDRA	JL IKAN MUNGSING VI NO 41 RT 000 RW 000	082331772276	CV	BADAN	KREMBANGAN	PERAK BARAT	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2009-04-27 00:00:00	2010-01-14 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
011331618631001	GELORA DJAJAUNIT PETEMON BARAT	JL.PETEMON BARAT NO.150-152, PETEMON		PT	BADAN	SAWAHAN	PETEMON	12011	KOTA SURABAYA		JAWA TIMUR	PL/DE	2007-09-04 00:00:00	\N	2020-07-30 00:00:00	user_2smaBk7vSR3r7bawHbmoBp7pxRO
026704551047001	LVIORS JAYA SENTOSA							96112				Normal	2020-02-06 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
911887735416001	BIMA TEK INDONESIA							47592				Normal	2020-08-11 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
011087798611000	NUSA PERMAI	GEDUNG KOKO PERDANA JL BASUKI RAHMAT NO 105-107 RT 003 RW 009	0315341454	PT	BADAN	GENTENG	EMBONG KALIASIN	46599	KOTA SURABAYA		JAWA TIMUR	Non Efektif	1982-11-05 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
016639429912001	RODA SAKTI SURYA MEGAH							45401				Normal	2020-03-17 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
022071971009001	WAHYU AGUNG							46100				Non Efektif	2015-04-30 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
011087434651001	GADING MURNI							47611				Normal	2004-06-01 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251112002	PANCA PILAR TANGGUH							46900				Normal	2023-03-07 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251218001	PANCA PILAR TANGGUH							46447				Normal	2003-06-26 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251652001	PANCA PILAR TANGGUH							46339				Normal	2001-01-12 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159644001	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64131				Normal	2002-02-14 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251626001	PANCA PILAR TANGGUH							46900				Normal	2004-01-27 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
030521918601001	MITRA PINASTHIKA MULIA							46900				Normal	2019-07-29 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
745529719615000	MERAK BINTANG PERKASA	JL SUKOSEMOLO RUKO GALAXY BUMI PERMAI BLOK J1 NO 10 RT 004 RW 012	082132082980	PT	BADAN	SUKOLILO	SEMOLOWARU	46638	KOTA SURABAYA		JAWA TIMUR	Normal	2015-11-23 00:00:00	2016-03-02 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
019419159653002	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64131				Normal	2002-01-09 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
313651978609000	EUROAUTO TRANS PRATAMA	JL ADITYAWARMAN NO 41-47 RT 005 RW 011	0817778842	PT	BADAN	WONOKROMO	SAWUNGGALING	45101	KOTA SURABAYA		JAWA TIMUR	Normal	2011-08-05 00:00:00	2011-10-24 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
708423363604000	WIRA SADANA LESTARI	JL RAYA BIBIS NO 2	6281290735555	PT	BADAN	TANDES	MANUKAN WETAN	46339	KOTA SURABAYA		JAWA TIMUR	Normal	2014-08-28 00:00:00	2014-10-27 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
086398823609000	ACHMAD ZAINI	BAGONG GINAYAN BLOK 7 NO 27 RT 004 RW 003	081233758659		OP	WONOKROMO	NGAGEL	47521	KOTA SURABAYA	3,57804E+15	JAWA TIMUR	Normal	2010-06-22 00:00:00	2010-06-29 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
016639429619001	RODASAKTI SURYARAYA	JL KENJERAN 366		PT	BADAN	TAMBAKSARI	GADING	46591	KOTA SURABAYA		JAWA TIMUR	PL/DE	2003-04-10 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
827310889418001	INDIS TATA PERSADA							47111				Non Efektif	2017-10-30 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
011331618614001	GELORA DJAJAUNIT PETEMON BARAT	JL.PETEMON BARAT NO.150-152                       , PETEMON		PT	BADAN	SAWAHAN	PETEMON	12011	KOTA SURABAYA		JAWA TIMUR	PL/DE	1995-01-20 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
063625057619000	HERMAN KOSASIH	JL RANGKAH I NO 90	085101278128		OP	TAMBAKSARI	RANGKAH	Z5000	KOTA SURABAYA	3,57818E+15	JAWA TIMUR	Normal	1986-08-25 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
011331618626001	GELORA DJAJA							12011				PL/DE	2001-04-05 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
026704551043001	LVIORS JAYA SENTOSA							96112				Normal	2024-06-27 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
030711139043001	GRASIKA KARYA PRIMA							47521				Non Efektif	2022-11-15 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
067152744606000	WINARTO WIJONO	JL DHARMAHUSADA UTARA BLOK AA NO 22	0816502312		OP	GUBENG	MOJO	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	Normal	1993-11-24 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
022075865615000	SUKSES MAKMUR JAYA	KOMPLEK PERTOKOAN MEGAH RAYA BLOK M NO 36	08563412109	PT	BADAN	RUNGKUT	KALIRUNGKUT	46339	KOTA SURABAYA		JAWA TIMUR	Normal	2003-03-07 00:00:00	2003-06-13 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251613000	PANCA PILAR TANGGUH	JL KALIANGET NO 100 RT 002 RW 003	085232093880	PT	BADAN			46900				Normal	1998-08-19 00:00:00	1998-09-07 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
313983645609002	SKV SEJAHTERA	JL ACHMAD YANI NO. 288 - CITY OF TOMORROW FIRST FLOOR	082231328189	PT	BADAN	GAYUNGAN	DUKUH MENANGGAL	47591	KOTA SURABAYA		JAWA TIMUR	Normal	2014-12-05 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019297977609000	ABHIRAMA MANDIRI	PERUMAHAN GRAHA SAMPURNA INDAH BLOK M NO 2A	081231517246	PT	BADAN	WIYUNG	BABATAN	42918	KOTA SURABAYA		JAWA TIMUR	Normal	2000-03-20 00:00:00	2004-03-15 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
011122926722001	KEDAWUNG SUBUR							46900				Normal	2005-09-13 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251645001	PANCA PILAR TANGGUH							42918				Normal	2012-11-21 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159608002	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64121				Normal	2002-02-14 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159624001	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64121				Normal	2001-11-21 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159656001	PERUSAHAAN PERSEROAN DAERAH BANK PERKREDITAN RAKYAT JAWA TIMUR							64131				Normal	2011-03-22 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
030521918621001	MITRA PINASTHIKA MULIA							46900				Normal	2019-11-06 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159626001	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64131				Normal	2006-08-03 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159654001	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64121				Normal	2020-08-27 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
936538891615000	PRATAMA SINERGI INDUSTRI	JL RUNGKUT INDUSTRI I NO 15 RT 001 RW 005, KOTA SURABAYA	Normal	PT	BADAN	TENGGILIS MEJOYO	KENDANGSARI	64200	KOTA SURABAYA		JAWA TIMUR	08155211088	2019-12-04 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
011443934615000	CATUR BAKTI ABADI	JL.PANJANG JIWO NO 58, PANJANGJIWO, SURABAYA	Non Efektif	PT	BADAN	TENGGILIS MEJOYO	PANJANGJIWO	41012	KOTA SURABAYA		JAWA TIMUR	081234587	1982-12-06 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
021763487606000	BASKHARA SINAR SAKTI	JL NGINDEN KOTA III NO 21, KOTA SURABAYA	Normal	PT	BADAN	GUBENG	BARATAJAYA	46610	KOTA SURABAYA		JAWA TIMUR	085707072742	2003-08-11 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
752857771643001	AIRA TECHNOLOGIES		PL/DE					46491					2018-07-09 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
014802318631000	BUMI MASPION	JL ROMOKALISARI <KAWASAN MASPION UNIT IV>, KOTA SURABAYA	Normal	PT	BADAN	BENOWO	ROMOKALISARI	41019	KOTA SURABAYA		JAWA TIMUR	0895399169699	2000-07-15 00:00:00	1989-11-09 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
015680275605000	KONSUMEN PUSKOPAL KODIKLATAL TNI AL	JL MOROKREMBANGAN	0313281101	KOP	BADAN	KREMBANGAN	MOROKREMBANGAN	46900	KOTA SURABAYA		JAWA TIMUR	Normal	1992-10-21 00:00:00	1992-10-21 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
916144355605000	SATYA GEMBALA BAHARI	RUKO BEST LAND JALAN DUPAK 61 BLOK A3-A5 RT 00 RW 00	081332334828	PT	BADAN	KREMBANGAN	DUPAK	03251	KOTA SURABAYA		JAWA TIMUR	Normal	2019-05-25 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
031003452034000	BUMI KURNIA LESTARI	JL IMAM BONJOL NO 124 RT 004 RW 014	081231000777	PT	BADAN	TEGALSARI	DR. SOETOMO	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2011-03-23 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414625001	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Non Efektif	2016-02-23 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414651001	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Normal	2005-11-22 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
911887735604000	BIMA TEK INDONESIA	JL PATTIMURA (RUKO PLAZA SEGI DELAPAN) BLOK A NO 836 RT 005 RW 003	085230429693	CV	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	47592	KOTA SURABAYA		JAWA TIMUR	Normal	2019-04-11 00:00:00	2019-09-30 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
026704551618001	LVIORS JAYA SENTOSA	RUKAN GOLDEN PALACE BLOK E-15, JL. HR MUHAMMAD 373-383	0317321004	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	96112	KOTA SURABAYA		JAWA TIMUR	Normal	2016-08-11 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
062759733627000	SUDARSONO	JL BRATANG WETAN 1 NO 31 RT 003 RW 008	087852999099		OP	WONOKROMO	NGAGEL REJO	Z5000	KOTA SURABAYA	3,5102E+15	JAWA TIMUR	Normal	1985-06-18 00:00:00	\N	2017-05-24 00:00:00	user_2smaBk7vSR3r7bawHbmoBp7pxRO
016639429631002	RODA SAKTI SURYA MEGAH	JL KENJERAN NO 366	083856526570	PT	BADAN	TAMBAKSARI	GADING	45401	KOTA SURABAYA		JAWA TIMUR	Normal	2003-04-10 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
062759733614005	SUDARSONO	DUMAR INDUSTRI BLOK B NO 36	628123004809		OP	ASEM ROWO	ASEM ROWO	68111	KOTA SURABAYA	3,5102E+15	JAWA TIMUR	Non Efektif	2011-04-08 00:00:00	\N	2018-06-28 00:00:00	user_2smaBk7vSR3r7bawHbmoBp7pxRO
031200579605000	CIPTA SAMUDERA SHIPPING LINE	JL PERAK TIMUR NO 104 RT 001 RW 005	087852342366	PT	BADAN			50141				Normal	2011-05-13 00:00:00	2012-05-30 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
016102360905001	DYNAMI PERKASA INDONESIA							41017				PL/DE	2008-10-14 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
026041566955001	BERAU KARYA INDAH							16101				Normal	2010-06-30 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
028175685613000	PUTRA MANDIRI	JL KEMBANG JEPUN NO 127M	081331679494	CV	BADAN	PABEAN CANTIAN	BONGKARAN	46443	KOTA SURABAYA		JAWA TIMUR	Normal	2011-02-09 00:00:00	2012-05-29 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
031131196311001	KARYA PUTRA ANDALAN							47725				Non Efektif	2018-05-18 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
030521918611001	MITRA PINASTHIKA MULIA	JL SIMPANG DUKUH NO 42-44 RT 000 RW 000	087716142394	PT	BADAN	GENTENG	KAPASARI	45401	KOTA SURABAYA		JAWA TIMUR	Normal	2010-12-27 00:00:00	\N	2021-05-24 00:00:00	user_2smbUveHvsH8BTJNUGIMAmkJTaN
016639429626001	RODA SAKTI SURYA MEGAH							45401				Normal	1996-12-31 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
022071971513001	WAHYU AGUNG							68111				Non Efektif	2019-11-06 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
011122926625001	KEDAWUNG SUBUR							23121				Non Efektif	2004-08-24 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
011122926645001	KEDAWUNG SUBUR							23121				PL/DE	2008-01-23 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
011122926801001	KEDAWUNG SUBUR							23121				Normal	1985-03-28 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251117001	PANCA PILAR TANGGUH							46900				Normal	2006-12-18 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
030521918623001	MITRA PINASTHIKA MULIA							46900				Normal	2016-11-28 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
748484045619000	NIAGA ARTHAMAKMUR SENTOSA	JL KALIKEPITING NO 133	6282245189025	PT	BADAN	TAMBAKSARI	PACARKEMBANG	47797	KOTA SURABAYA		JAWA TIMUR	Normal	2016-01-05 00:00:00	2016-10-27 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
317267391613000	GRAHA RUKUN SEJAHTERA	JL YUWONO NO 4	0817315561	PT	BADAN	WONOKROMO	DARMO	46900	KOTA SURABAYA		JAWA TIMUR	Normal	2013-04-04 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
313983645609001	SKV SEJAHTERA							47591				PL/DE	2014-12-05 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
025149212724001	INDO PENTA BUMI PERMAI		PL/DE					41019					2013-07-22 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
862662863619000	COBAS KARYA NUSANTARA	JL RESIDEN SUDIRMAN NO 2-C, KOTA SURABAYA	Normal	PT	BADAN	TAMBAKSARI	TAMBAKSARI	46599	KOTA SURABAYA		JAWA TIMUR	087703386438	2018-10-17 00:00:00	2018-12-03 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
019759026086001	ADITANA INTI PERDANA	KOMPLEK BUSINESS PARK KEBON JERUK JL. MERUYA ILIR NO.88 BLOK E2 NO 12 RT 001 RW 005, JAKARTA BARAT	Normal			KEMBANGAN	MERUYA UTARA	46599	JAKARTA BARAT				2018-05-04 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
801515008605000	LAYAR MAS INDONESIA	JL INDRAPURA NO 21 RT 002 RW 001, KOTA SURABAYA	Normal	PT	BADAN	KREMBANGAN	KEMAYORAN	52291	KOTA SURABAYA		JAWA TIMUR	0313545555	2016-10-20 00:00:00	2017-01-20 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
025149212631000	INDOPENTA BUMI PERMAI	JL JEMURSARI VII NO 19 RT 002 RW 010, KOTA SURABAYA	Normal	PT	BADAN	WONOCOLO	JEMUR WONOSARI	42202	KOTA SURABAYA		JAWA TIMUR	081252150000	2006-02-21 00:00:00	2006-03-14 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
750839995607000	SELAMAT MAKMUR MOTOR	JL KEDUNGDORO NO 141, KOTA SURABAYA	Normal	CV	BADAN	TEGALSARI	KEDUNGDORO	45302	KOTA SURABAYA		JAWA TIMUR	6281230053552	2016-01-29 00:00:00	2017-06-06 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
945028074604000	HASTA SAHABAT	PERUMAHAN WESTERN VILLAGE BLOK A1 NO 27 RT 005 RW 010, KOTA SURABAYA	Normal	CV	BADAN	BENOWO	SEMEMI	46900	KOTA SURABAYA		JAWA TIMUR	081325122678	2020-02-27 00:00:00	2020-06-11 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
851303503605000	MEDIKA NOOR AFIAH	JL. RAYA GUBENG NO 11 RT 003 RW 004	081331500042	PT	BADAN	GUBENG	GUBENG	86105	KOTA SURABAYA		JAWA TIMUR	Normal	2018-06-26 00:00:00	2023-08-03 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
010816072631000	ALBEA RIGID PACKAGING SURABAYA	JL RUNGKUT INDUSTRI IV NO 23 RT 004 RW 005	082244428392	PT	BADAN	GUNUNG ANYAR	RUNGKUT TENGAH	22220	KOTA SURABAYA		JAWA TIMUR	Normal	1994-01-13 00:00:00	1994-02-04 00:00:00	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
730123916614000	ADHI DHARMA INDONESIA	JL. RAYA MAYJEND YONO SOEWOYO LT. 7B NO 66 RT 002 RW 009	-	PT	BADAN	WIYUNG	BABATAN	46314	KOTA SURABAYA		JAWA TIMUR	Normal	2015-05-15 00:00:00	\N	2022-08-15 00:00:00	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414601001	CAMPINA ICE CREAM INDUSTRY							10531				Normal	2010-07-19 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
017227414655001	CAMPINA ICE CREAM INDUSTRY TBK.							10531				Normal	2010-10-22 00:00:00	\N	\N	user_2smZa1llq8GziSzCfdYk1FmMidd
011331618631000	GELORA DJAJA	JL BUNTARAN NO 9	087854719747	PT	BADAN	TANDES	MANUKAN WETAN	12011	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
062759733609002	SUDARSONO	JL A YANI NO 288 CITY OF TOMORROW BLOK GE NO 22	03170573839		OP	GAYUNGAN	DUKUH MENANGGAL	68111	KOTA SURABAYA	3,5102E+15	JAWA TIMUR	Non Efektif	2011-07-20 00:00:00	\N	2015-08-24 00:00:00	user_2smaBk7vSR3r7bawHbmoBp7pxRO
061404182618000	LIM, ALIM PING ASTOMO	PERUMAHAN GRAHA FAMILI BLOK I NO 52 RT 004 RW 002	0818359359		OP	DUKUH PAKIS	PRADAH KALIKENDAL	49431	KOTA SURABAYA	3,51511E+15	JAWA TIMUR	Normal	1985-12-09 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
062759733614001	SUDARSONO	JL MARGOMULYO 44 BLOK G NO 4	0317328358		OP	ASEM ROWO	GENTING KALIANAK	68111	KOTA SURABAYA	3,5102E+15	JAWA TIMUR	Non Efektif	2011-01-17 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
016639429631000	RODA SAKTI SURYA MEGAH	JL BASUKI RAKHMAD NO 47	081259846913	PT	BADAN	GENTENG	EMBONG KALIASIN	45401	KOTA SURABAYA		JAWA TIMUR	Normal	2007-04-09 00:00:00	2007-04-09 00:00:00	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
017307646618000	SATIVA RIACENDANA	JL MAYJEN.SUNGKONO NO 83	6285233972812	PT	BADAN	DUKUH PAKIS	GUNUNG SARI	56101	KOTA SURABAYA		JAWA TIMUR	Normal	1995-12-07 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
016639429654001	RODA SAKTI SURYA MEGAH							45403				Normal	2008-02-11 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
016639429625002	RODA SAKTI SURYA MEGAH							45403				Normal	2011-03-10 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
016639429657001	RODA SAKTI SURYA MEGAH							45403				Normal	2003-04-09 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
016639429914001	RODA SAKTI SURYA MEGAH							45401				Normal	2002-03-06 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
752795567611000	UNTUNG BERHASIL SEJAHTERA	JL MOJOKLANGGRU LOR NO 36 RT 001 RW 004	081936295757	PT	BADAN	GUBENG	MOJO	45301	KOTA SURABAYA		JAWA TIMUR	Normal	2016-02-18 00:00:00	2016-06-03 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
011087434028001	GADING MURNI							46599				Normal	1983-12-31 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251103001	PANCA PILAR TANGGUH							46339				Non Efektif	2008-01-09 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251118001	PANCA PILAR TANGGUH							46319				Normal	2006-12-19 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159601001	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64131				Normal	2011-08-23 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159621001	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64131				Normal	2001-12-24 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
016639429652001	RODA SAKTI SURYA MEGAH							45401				Normal	2021-03-25 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
024768632643001	CONCRETE TECHNOLOGY INDONESIA							41013				Normal	2012-04-03 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
030521918623002	MITRA PINASTHIKA MULIA							46900				Normal	2019-02-12 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
014976005618000	SURYAPUTRA BARUTAMA	JL RAYA MASTRIP KEDURUS NO 23	628123236699	PT	BADAN	KARANG PILANG	KEDURUS	29200	KOTA SURABAYA		JAWA TIMUR	Normal	1990-08-13 00:00:00	1990-08-13 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
019419159627001	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64121				Normal	2002-01-11 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
186979134606001	SUPRAPTO SANTOSO	JL NGINDEN KOTA 3, KOTA SURABAYA	Non Efektif		OP	GUBENG	BARATAJAYA	97000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	08454445222	2011-11-23 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
016776957604001	SINKO PRIMA ALLOY		PL/DE					46641					2012-07-19 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
064184831618000	WILLY SUTANTO LIE	JL PULAO GOLF 1 BLOK G NO 36 RT 004 RW 002, KOTA SURABAYA	Normal		OP	DUKUH PAKIS	PRADAH KALIKENDAL	96990	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	628123038694	2009-07-13 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
746114776613000	PANTAI ARMADA LAUTAN	LONG BEACH S.11 NO 32, KOTA SURABAYA	Normal	PT	BADAN	MULYOREJO	KALISARI	80100	KOTA SURABAYA		JAWA TIMUR	0811379361	2015-12-04 00:00:00	2018-10-15 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
031201148616000	BINTANG KHARISMA AGUNG	KOMPLEK HANG TUAH NO 3, KOTA SURABAYA	Normal	PT	BADAN	SEMAMPIR	UJUNG	52240	KOTA SURABAYA		JAWA TIMUR	081231521488	2011-10-17 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
014660229027001	DHARMA KUMALA UTAMA		PL/DE					46100					2010-09-27 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
													\N	\N	\N	\N
014660229631001	DHARMA KUMALA UTAMA		PL/DE					46100					2013-01-09 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
031200488605000	BARKALIN ARTHA PRIMA	JL VETERAN NO 9-G	6285217111944	CV	BADAN	KREMBANGAN	KREMBANGAN SELATAN	46610	KOTA SURABAYA		JAWA TIMUR	Normal	2011-04-26 00:00:00	2013-11-19 00:00:00	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
011122926901001	KEDAWUNG SUBUR							47593				PL/DE	1982-11-05 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
018135251104001	PANCA PILAR TANGGUH							46339				Normal	2020-01-20 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159602001	PERUSAHAAN PERSEROAN DAERAH BANK PERKREDITAN RAKYAT JAWA TIMUR							64131				Normal	2001-12-26 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159628001	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64121				Normal	2010-11-23 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159625002	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64131				Normal	2002-01-04 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
030521918651001	MITRA PINASTHIKA MULIA							46900				Normal	2010-12-27 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
011358389631000	SALAM PACIFIC INDONESIA LINES	JL KARET NO 104	082233062854	PT	BADAN	PABEAN CANTIAN	BONGKARAN	50131	KOTA SURABAYA		JAWA TIMUR	Normal	1982-11-29 00:00:00	2004-09-01 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
733545172613000	SAMUDERA INDONESIA PERKASA	SPAZIO TOWER NO. 10-15 JL MAYJEN YONO SOEWOYO NO 35	6281615022711	PT	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	52291	KOTA SURABAYA		JAWA TIMUR	Normal	2015-07-03 00:00:00	2016-02-10 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
012111258615000	BUKIT BAJA ABADI	JL.PANJANG JIWO RAYA NO 58, PANJANGJIWO, SURABAYA	Non Efektif	PT	BADAN	TENGGILIS MEJOYO	PANJANGJIWO	41012	KOTA SURABAYA		JAWA TIMUR	08123451234	1987-03-11 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
028173383613000	BERKAH SAMUDRA LINE	JL TELUK KUMAI TIMUR NO 97 RT 004 RW 002, KOTA SURABAYA	Normal	PT	BADAN	PABEAN CANTIKAN	TANJUNG PERAK	50131	KOTA SURABAYA			082228497377	2009-05-07 00:00:00	2009-05-07 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
752647206615000	TRIMEGA PRIMA LABORAT	JL MEDOKAN SAWAH BARU NO 9-A RT 001 RW 001, KOTA SURABAYA	Normal	PT	BADAN	RUNGKUT	MEDOKAN AYU	46691	KOTA SURABAYA		JAWA TIMUR	083857746074	2016-02-18 00:00:00	2016-03-01 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
015591043823001	TRI DOMINITAMA	JL H.J KATUUK BLOK 0 NO 339 RT 018 RW 003, KOTA BITUNG	Normal			MADIDIR	MADIDIR UNET	69201	KOTA BITUNG				2002-03-07 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
020494282631000	ARTA NIAGA NUSANTARA	JL KLAMPIS JAYA NO 68 RT 004 RW 001, KOTA SURABAYA	Normal	PT	BADAN	SUKOLILO	KLAMPIS NGASEM	42918	KOTA SURABAYA		JAWA TIMUR	031-5996780	2001-10-26 00:00:00	2001-12-03 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
838311348604000	ANGGITA KENCANA	PERUMAHAN WESTERN VILLAGE AI NO 27 RT 005 RW 004, SEMEMI, KOTA SURABAYA	Normal	CV	BADAN	BENOWO	SEMEMI	46900	KOTA SURABAYA		JAWA TIMUR	082132844418	2018-01-23 00:00:00	2018-05-17 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
012084877609000	MULTICONSULT	JL KETINTANG BARU IV-B NO 45, RT 006 RW 002, KETINTANG, SURABAYA	Normal	CV	BADAN	GAYUNGAN	KETINTANG	70203	KOTA SURABAYA		JAWA TIMUR	6281331454919	1987-10-26 00:00:00	2013-12-12 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
247116973619000	JULIANI SUKOWIRYO.IR.	PERUMAHAN PAKUWON CITY VILLA ROYAL L. 2 NO 1-3 RT 004 RW 003, KOTA SURABAYA	Normal		OP	MULYOREJO	KEJAWAN PUTIH TAMBAK	Z5000	KOTA SURABAYA	3,57827E+15	JAWA TIMUR	0811304617	2008-11-18 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
016776957611000	SINKO PRIMA ALLOY	JL RAYA TAMBAK OSOWILANGUN NO.61 KOMPLEK PERGUDANGAN OSOWILANGUN PERMAI BLOK BLOK E7-E8 RT 002 RW 004, KOTA SURABAYA	Normal	PT	BADAN	BENOWO	TAMBAK OSO WILANGUN	23122	KOTA SURABAYA		JAWA TIMUR	0811379960	1995-08-31 00:00:00	1995-08-31 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
016639429628002	RODA SAKTI SURYA MEGAH							45403				Normal	2003-04-09 00:00:00	\N	\N	user_2smaBk7vSR3r7bawHbmoBp7pxRO
019419159617001	PERUSAHAAN PERSEROAN DAERAH BANK PERKREDITAN RAKYAT JAWA TIMUR							64131				Normal	2004-12-03 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019419159625001	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64121				Non Efektif	2002-01-02 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
030521918629001	MITRA PINASTHIKA MULIA							46900				Normal	2020-10-07 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
030521918922001	MITRA PINASTHIKA MULIA							46900				Normal	2010-12-27 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
857547558618000	BAHARI SENTOSA RAYA	SUBCO SPAZIO SUITES 525 A JL MAYJEND YONO SOEWOYO KAV 3	6281252932235	CV	BADAN	DUKUH PAKIS	PRADAH KALIKENDAL	03254	KOTA SURABAYA		JAWA TIMUR	Normal	2018-08-29 00:00:00	2019-08-02 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
313946014624001	TRISETIA CIPTA PERSADA							46100				Normal	2017-08-01 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
186979134606000	SUPRAPTO SANTOSO	JL NGINDEN KOTA 3 NO 21 RT 006 RW 003, KOTA SURABAYA	Normal		OP	GUBENG	BARATAJAYA	05100	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	6285707072742	2005-09-30 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
022072698613000	EKSPEDISI MUATAN KAPAL LAUT WALUYO LINTAS NUSANTARA	KOMPLEK RUKO PENGAMPON SQUARE BLOK E NO 8, KOTA SURABAYA	Normal	PT	BADAN	PABEAN CANTIKAN	BONGKARAN	52293	KOTA SURABAYA		JAWA TIMUR	0818500580	2008-01-31 00:00:00	2011-05-13 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
042114157613001	HEE YONGKIE HERMAWAN	JL SEMUT INDAH NO A-3, KOTA SURABAYA	Non Efektif		OP	PABEAN CANTIKAN	BONGKARAN	47521	KOTA SURABAYA	0	JAWA TIMUR		1995-07-27 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
316184662609000	INTI JAYA SUKSES PERDANA	JL GAYUNGSARI BARAT NO 83 RT 003 RW 005, KOTA SURABAYA	Normal	PT	BADAN	GAYUNGAN	GAYUNGAN	46900	KOTA SURABAYA		JAWA TIMUR	081249903664	2012-10-30 00:00:00	2012-11-06 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
015591043614000	TRI DOMINITAMA	JL KALIANAK BARAT NO 55-N, KOTA SURABAYA	Normal	PT	BADAN	ASEMROWO	GENTING KALIANAK	52291	KOTA SURABAYA		JAWA TIMUR	08113054499	1992-01-27 00:00:00	2000-07-04 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
030463574609000	SARANA INDO METAL	KO RUKO JL RAYA JEMURSARI 76 BLOK D NO 19 RT 001 RW 007, KOTA SURABAYA	Normal	CV	BADAN	WONOCOLO	JEMUR WONOSARI	47521	KOTA SURABAYA		JAWA TIMUR	081216328319	2010-09-06 00:00:00	2010-11-26 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
016931750642001	SAMJAYA MANUNGGAL ABADI	JL RAYA SUMPUT NO 9, KAB. GRESIK	Normal			DRIYOREJO	SUMPUT	46631	KAB. GRESIK				2003-12-10 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
825462088604000	MANDIRI BAHAGIA SEJATI	RAYA PAKAL NO.16 BLOK A NO 06 RT 001 RW 001, KOTA SURABAYA	Normal	PT	BADAN	PAKAL	PAKAL	46491	KOTA SURABAYA		JAWA TIMUR	082234661212	2017-08-09 00:00:00	2018-02-06 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
030521918649001	MITRA PINASTHIKA MULIA							46900				Normal	2018-12-06 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
317876126604000	BERKAT LAUT INDONESIA JAYA	JL PATTIMURA (RUKO PLAZA SEGI DELAPAN KAV. D-820) RT. 000 RW. 000	081357370399	PT	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	50133	KOTA SURABAYA		JAWA TIMUR	Normal	2013-06-20 00:00:00	2014-01-02 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
033467994604000	HENGFA MACHINE INDONESIA TRADE	SUKOMANUNGGAL JAYA IV / 5 RT 003 RW 003, SUKOMANUNGGAL	082124949469	PT	BADAN	SUKOMANUNGGAL	SUKOMANUNGGAL	46100	KOTA SURABAYA		JAWA TIMUR	Normal	2014-01-28 00:00:00	2015-11-25 00:00:00	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
011443934526001	CATUR BAKTI ABADI CABANG SURAKARTA		PL/DE					41012					1985-12-05 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
033183344606000	TERMINAL NILAM UTARA	JL NILAM UTARA, KOTA SURABAYA	Normal	PT	BADAN	PABEAN CANTIKAN	TANJUNG PERAK	52221	KOTA SURABAYA			085732325456	2013-09-20 00:00:00	2016-04-05 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
060557410028001	NELLY SURYATI		PL/DE					Z5000					2009-04-14 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
745314930619000	STEFFEN LEONARDI	JL KERTAJAYA INDAH TIMUR BLOK 8 NO 27 RT 005 RW 010, KOTA SURABAYA	Normal		OP	MULYOREJO	MANYAR SABRANGAN	Z5000	KOTA SURABAYA	3,57826E+15	JAWA TIMUR	08113433538	2015-11-20 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
025149212647001	INDO PENTA BUMI PERMAI		PL/DE					46639					2016-07-21 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
249085820619000	MARTIN TRIADMAJA HENDRIADI	JL SOKA NO 3 RT 003 RW 003, KOTA SURABAYA	Normal		OP	TAMBAKSARI	TAMBAKSARI	47773	KOTA SURABAYA	3,5781E+15	JAWA TIMUR	0811325668	2008-12-25 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
060557410618000	SUGITO WINARKO,IR	PERUMAHAN KOMPLEKS PT. SERUNI JL MAYJEND BLOK D NO 5, KOTA SURABAYA	Normal		OP	DUKUH PAKIS	DUKUH PAKIS	Z5000	KOTA SURABAYA	3,57821E+15	JAWA TIMUR	081330727272	1984-11-20 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
012168472526000	PONCOREDJO	JL GAYUNGAN KOMPLEK AD KAV I NO 1 RT 004 RW 006, KOTA SURABAYA	Normal	PT	BADAN	GAYUNGAN	GAYUNGAN	41012	KOTA SURABAYA		JAWA TIMUR	082233425091	1986-03-24 00:00:00	1985-10-10 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
016931750618000	SAMJAYA MANUNGGAL ABADI	JL KUPANG INDAH XVI NO.26, DUKUH KUPANG, KOTA SURABAYA	Normal	PT	BADAN	DUKUH PAKIS	DUKUH KUPANG	46639	KOTA SURABAYA		JAWA TIMUR	085101970990	2008-03-04 00:00:00	2021-05-24 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
030710065606000	LAJU BRATA	JL NGAGEL JAYA UTARA NO 140, KOTA SURABAYA	Normal	PT	BADAN	GUBENG	BARATAJAYA	46900	KOTA SURABAYA		JAWA TIMUR	0315016488	2010-05-05 00:00:00	2010-05-20 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
738010065615000	SAPTAJAYA GUNUNG EMAS	JALAN KUTISARI SELATAN XI NO 11 RT 005 RW 003, KOTA SURABAYA	Normal	PT	BADAN	TENGGILIS MEJOYO	KUTISARI	47753	KOTA SURABAYA		JAWA TIMUR	081331777989	2015-09-04 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
818979635613000	GEMALA MAS INDONESIA	JL. TELUK SARERA NO 24 RT 005 RW 002, PERAK UTARA, KOTA SURABAYA	Normal	CV	BADAN	PABEAN CANTIKAN	TANJUNG PERAK	46201	KOTA SURABAYA			081285912763	2017-05-03 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
019419159646002	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64121				Normal	2001-12-24 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
040226524618001	PAULUS WELLY AFANDY	KOMP.DARMO PARK II BLOK VI NO 21-22	081230988818		OP	DUKUH PAKIS	DUKUH PAKIS	96990	KOTA SURABAYA	3,57812E+15	JAWA TIMUR	Non Efektif	2005-06-28 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
314658535032001	CAHAYA SELANG							22230				Non Efektif	2020-12-18 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
025149212722001	INDO PENTA BUMI PERMAI		PL/DE					46641					2007-04-24 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
314072166603001	ARGA BANGUN IDEAL	JL. RAYA GELURAN NO 28 RT 001 RW 001, KAB. SIDOARJO	Non Efektif			TAMAN	GELURAN	47528	KAB. SIDOARJO				2017-05-19 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
757585245613000	AGUNG ABADI	SIMO RUKUN TIMUR VIII NO 22 RT 009 RW 004, KOTA SURABAYA	Normal	CV	BADAN	SUKOMANUNGGAL	SIMOMULYO	46100	KOTA SURABAYA		JAWA TIMUR	087849787580	2016-04-06 00:00:00	\N	2023-05-08 00:00:00	user_2smavKFCLtHThJWYtqSlhchbd7W
011443934517001	CATUR BAKTI ABADI	JL.SEMERU NO.4, KARANG REJO, KOTA SEMARANG	Normal			GAJAH MUNGKUR	KARANG REJO	41019	KOTA SEMARANG				1988-06-15 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
025868217614000	DWI TUNGGAL MULIA KIMIA	JL MARGOMULYO PERMAI BLOK N-7 RT 001 RW 001, KOTA SURABAYA	Normal	PT	BADAN	ASEMROWO	TAMBAK SARIOSO	46651	KOTA SURABAYA		JAWA TIMUR	085231789233	2007-11-28 00:00:00	2008-06-20 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
857936421611000	LAPAK LIVIA INDONESIA	GEDUNG PERKANTORAN KOKO PERDANALANTAI 1 SUITE 103 JL BASUKI RACHMAD NO 105-107, KOTA SURABAYA	Non Efektif	PT	BADAN	GENTENG	EMBONG KALIASIN	47754	KOTA SURABAYA		JAWA TIMUR	089681255553	2018-09-04 00:00:00	\N	2023-10-03 00:00:00	user_2smavKFCLtHThJWYtqSlhchbd7W
028230829606000	KURNIA WAHYU SANTOSA	JL. NGINDEN KOTA BLOK 3 NO 21 RT 006 RW 003, KOTA SURABAYA	Normal	PT	BADAN	GUBENG	BARATAJAYA	46610	KOTA SURABAYA		JAWA TIMUR	085707072742	2008-11-29 00:00:00	\N	2023-01-11 00:00:00	user_2smavKFCLtHThJWYtqSlhchbd7W
042114157606000	HEE YONGKIE HERMAWAN	JL DHARMAHUSADA INDAH B 65, KOTA SURABAYA	Normal		OP	GUBENG	MOJO		KOTA SURABAYA	3,57826E+15	JAWA TIMUR	62818373000	1984-04-11 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
756167300804001	MITRALANGGENG JAYA KONSTRUKSI	KAWASAN CENTER POINT OF INDONESIA <CPI> JL METRO TANJUNG BUNGA, KOTA MAKASSAR	Non Efektif			MARISO	PANAMBUNGAN	42918	KOTA MAKASSAR				2020-08-04 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
849502331613000	SIMCO METAL INDONESIA	JL KALIANAK BARAT NO 59A, KOTA SURABAYA	Normal	PT	BADAN	ASEMROWO	GENTING KALIANAK	46631	KOTA SURABAYA		JAWA TIMUR	0317495058	2018-05-23 00:00:00	2019-08-27 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
317647030616000	MITRANIAGA USAHA MANDIRI	JL BUNGURAN NO 81 RT 005 RW 005, KOTA SURABAYA	Normal	PT	BADAN	PABEAN CANTIKAN	BONGKARAN	47599	KOTA SURABAYA		JAWA TIMUR	08123189889	2013-05-22 00:00:00	2013-10-11 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
015591043941001	TRI DOMINITAMA	A.Y PATTY GEDUNG ATC LT 2 BLOK D NO 17 RT 02 RW 02, HONIPOPU, KOTA AMBON	Normal			SIRIMAU	HONIPOPU	52221	KOTA AMBON				2017-12-19 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
806638789614000	LANGGENG MAKMUR	JL. MARGOMULYO PERMAI BLOK J NO 31 RT 001 RW 005, TAMBAK SARIOSO, KOTA SURABAYA	Normal	CV	BADAN	ASEMROWO	TAMBAK SARIOSO	46492	KOTA SURABAYA		JAWA TIMUR	087753423154	2016-12-01 00:00:00	2017-02-09 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
014660229631000	DHARMA KUMALA UTAMA	JL PAHLAWAN NO 69, KOTA SURABAYA	Normal	PT	BADAN	BUBUTAN	ALUN-ALUN CONTONG	46523	KOTA SURABAYA		JAWA TIMUR	082245038757	1989-08-19 00:00:00	1989-08-19 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
752857771615000	AIRA TECHNOLOGIES	JL GUNUNG ANYAR TAMBAK NO 29 A RT 000 RW 000, KOTA SURABAYA	Normal	CV	BADAN	GUNUNG ANYAR	GUNUNG ANYAR TAMBAK	32502	KOTA SURABAYA		JAWA TIMUR	082114850204	2016-02-25 00:00:00	\N	2021-12-15 00:00:00	user_2smavKFCLtHThJWYtqSlhchbd7W
841258304606000	MENTARIMITRA MANUNGGAL	JL RAYA DHARMAHUSADA INDAH NO 108 A RT 003 RW 011	6285100578220	PT	BADAN	GUBENG	MOJO	09900	KOTA SURABAYA		JAWA TIMUR	Normal	2018-03-01 00:00:00	\N	\N	user_2smZm1vDtfnfDSnbbcMX0bgfIZP
019419159648001	BANK PERKREDITAN RAKYAT JAWA TIMUR <BPR JATIM>							64131				Normal	2009-01-14 00:00:00	\N	\N	user_2smbUveHvsH8BTJNUGIMAmkJTaN
019759026615000	ADITANA INTI PERDANA	JL RAYA KALIRUNGKUT 1-3<RUKO RUNGKUT MEGAH RAYA M-23> RT 001 RW 004, KOTA SURABAYA	Normal	PT	BADAN	TENGGILIS MEJOYO	PANJANGJIWO	46599	KOTA SURABAYA		JAWA TIMUR	62318709482	2000-06-29 00:00:00	2000-06-29 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
062584974611000	ALIM MARKUS	JL EMBONG TANJUNG 5 NO 5 RT 001 RW 001, KOTA SURABAYA	Normal		OP	GENTENG	EMBONG KALIASIN	Z5000	KOTA SURABAYA	3,57807E+15	JAWA TIMUR	083848903321	1985-03-29 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
756167300604000	MITRALANGGENG JAYA KONSTRUKSI	RAYA TENGGILIS 54 RT 001 RW 002, KOTA SURABAYA	Normal	PT	BADAN	TENGGILIS MEJOYO	KENDANGSARI	42918	KOTA SURABAYA		JAWA TIMUR	628123310418	2016-03-24 00:00:00	2017-10-26 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
011457330615000	KARYA NIAGA MURNI	JL.PANJANG JIWO RAYA NO 58, PANJANGJIWO, SURABAYA	Non Efektif	PT	BADAN	TENGGILIS MEJOYO	PANJANGJIWO	41012	KOTA SURABAYA		JAWA TIMUR	0812875679	1982-12-21 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
315480681618000	SIMATRA SENTOSA	KOMPLEK PAKUWON SQUARE BLOK AK-02 NO 47, KOTA SURABAYA	Non Efektif	PT	BADAN	WIYUNG	BABATAN	47711	KOTA SURABAYA		JAWA TIMUR	6281938455000	2012-06-14 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
012327268615000	SARI WARNA PELANGI	JL RAYA RUNGKUT INDUSTRI <RUKO SECTION ONE> BLOK F-6 NO 1 RT 001 RW 005, KOTA SURABAYA	Normal	PT	BADAN	TENGGILIS MEJOYO	KENDANGSARI	46651	KOTA SURABAYA		JAWA TIMUR	628165409669	1985-06-10 00:00:00	1987-06-01 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
211122007607000	PRIMA SUKSES SEJAHTERA ABADI	GEDUNG EKONOMI LT. 2 JL EMBONG MALANG NO 61-65 RT 001 RW 008, KOTA SURABAYA	Normal	PT	BADAN	TEGALSARI	KEDUNGDORO	46315	KOTA SURABAYA		JAWA TIMUR	0818370928	2009-08-06 00:00:00	2018-01-12 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
838383073611000	INGGRID CHANDRANATA	WALIKOTAMUSTAJAB NO 64 RT 001 RW 005, KOTA SURABAYA	Normal		OP	GENTENG	KETABANG	Z5000	KOTA SURABAYA	3,57808E+15	JAWA TIMUR	6282139751129	2018-01-25 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
015591043804001	TRI DOMINITAMA	JL ONTA LAMA NO 3 RT 001 RW 002, KOTA MAKASSAR	Normal			MAMAJANG	MAMAJANG LUAR	52291	KOTA MAKASSAR				2016-12-15 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
015591043043001	TRI DOMINITAMA	JL BUKIT GADING RAYA, KOMPLEK GADING BUKIT INDAH BLOK B NO 2 RT 018 RW 008, JAKARTA UTARA	Non Efektif			KELAPA GADING	KELAPA GADING BARAT	52291	JAKARTA UTARA				2019-05-29 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
314072166604000	ARGA BANGUN IDEAL	JL PLAZA SEGI DELAPAN KAV A-832 RT 005 RW 003, KOTA SURABAYA	Normal	PT	BADAN	SUKOMANUNGGAL	SONOKWIJENAN	47528	KOTA SURABAYA		JAWA TIMUR	081519308798	2011-10-31 00:00:00	2019-01-16 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
314072166617001	ARGA BANGUN IDEAL	JL SEKAWAN RAYA BUMI CITRA FAJAR, KAB. SIDOARJO	Normal			SIDOARJO	PUCANGANOM	47528	KAB. SIDOARJO				2012-06-04 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
941544629619000	BERKAT ENERGI SOLLUSINDO	JL KALIJUDAN NO 3, KOTA SURABAYA	Normal	PT	BADAN	TAMBAKSARI	PACAR KEMBANG	46900	KOTA SURABAYA		JAWA TIMUR	082132229281	2020-01-28 00:00:00	2020-02-19 00:00:00	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
012168472525001	PONCOREDJO	DK MANCUNGAN RT 002 RW 007, KAB. KLATEN	Normal			PEDAN	KALANGAN	41012	KAB. KLATEN				2017-08-28 00:00:00	\N	\N	user_2smavKFCLtHThJWYtqSlhchbd7W
\.


--
-- Data for Name: EmpoweringData; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."EmpoweringData" (id, "npwpId", "tahunPajak", pph21, pph22, pph23, pph26, "pphFinal", pph15, ppn, "pajakLainnya", "userId", pph2529, "createdAt", "pelaksanaanKegiatan", "sendingDataToKanwilId", kunci, kpp) FROM stdin;
\.


--
-- Data for Name: FinalPembenahanMfwp; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."FinalPembenahanMfwp" (id, npwp, "namaWajibPajak", "jenisTarget", "hasilUjiValiditas", "keteranganUjiValiditas", "jenisMfwp", "npwpGanda", "detilKeterangan", "kebutuhanKlarifikasi", "hasilKlarifikasi", "buktiWpTidakMemberikanKlarifikasi", "usulanTindakanPembenahan", "prognosaTindakan", "alasanBelumDilakukanTindakanPembenahan", "npwpLawan", "usulanTindakanPembenahanLawan", keterangan, "createdAt", "pembenahanCabangPusatBedahEntitasId", "pembenahanWpIdentitasGandaId", "pembenahanWpNamaTtlSamaId", "pembenahanWpNikGandaId", "sendingDataToKanwilId") FROM stdin;
\.


--
-- Data for Name: JawabanPembenahanCabangPusatBedaEntitas; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."JawabanPembenahanCabangPusatBedaEntitas" (id, "dataId", "createdAt", "userId", keterangan, "jawabanLangsung", "perluDihapus", "nomorLhp") FROM stdin;
\.


--
-- Data for Name: JawabanPembenahanWpIdentitasGanda; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."JawabanPembenahanWpIdentitasGanda" (id, "dataId", "jawabanLangsung", "perluDihapus", "nomorLhp", keterangan, "createdAt", "userId") FROM stdin;
\.


--
-- Data for Name: JawabanPembenahanWpNamaTtlSama; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."JawabanPembenahanWpNamaTtlSama" (id, "dataId", "jawabanLangsung", keterangan, "createdAt", "userId", "nomorLhp", "perluDihapus") FROM stdin;
\.


--
-- Data for Name: JawabanPembenahanWpNikGanda; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."JawabanPembenahanWpNikGanda" (id, "dataId", "jawabanLangsung", "perluDihapus", "nomorLhp", keterangan, "createdAt", "userId") FROM stdin;
\.


--
-- Data for Name: PembenahanCabangPusatBedahEntitas; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."PembenahanCabangPusatBedahEntitas" (id, "npwpCabang", "namaCabang", "alamatCabang", "createdAt", "nomorHpCabang", "emailCabang", "kppCabang", "kanwilCabang", "nipId", "seksiCabang", "noKepCabang", "validitasCabang", "statusCabang", "npwpPusat", "namaPusat", "kppPusat", "kanwilPusat", "arPusat", "seksiPusat", "kepPusat", "validitasPusat", "statusPusat", "namaBersihCabang", "namaBersihPusat", "nikBersihPusat", "nikBersihCabang", "tglBentukData", "currentStatus") FROM stdin;
\.


--
-- Data for Name: PembenahanWpIdentitasGanda; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."PembenahanWpIdentitasGanda" (id, "aktaTgl", "aktaTglKe2", "aktaTmp", "aktaTmpKe2", "arKe2", "createdAt", email, "emailKe2", hp, "hpKe2", jalan, "jalanKe2", "jmlBayar10Thn", "jmlBayar10ThnKe2", "jmlLapor10Thn", "jmlLapor10ThnKe2", "jmlPh10Thn", "jmlPhThnKe2", "jnsWp", "jnsWp2", kanwil, "kanwilKe2", "kdKlu", "kdKluKe2", "kdWil", "kdWilayahKe2", kpp, "kppKe2", "namaWp", "namaWp2", "noAkta", "noAktaKe2", "notarisInstansi", "notarisInstansiKe2", npwp2, "pjNama", "pjNamaKe2", "pjNoId", "pjNoIdKe2", "pjNpwp", "pjNpwpKe2", "saldoPiutang", "saldoPiutangKe2", seksi, "seksiKe2", "skorNama", "stsWp", "stsWpKe2", telp, "telpKe2", "tglBayarTerakhir", "tglBayarTerakhirKe2", "tglBentukData", "tglDaftar", "tglDaftarKe2", "tglUpdateTerakhir", "tglUpdateTerakhirKe2", "thlLaporTerakhirKe2", "thnLaporTerakhir", "thnPhTerakhir", "thnPhTerakhirKe2", nip, npwp1, "currentStatus") FROM stdin;
\.


--
-- Data for Name: PembenahanWpNamaTtlSama; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."PembenahanWpNamaTtlSama" (id, npwp, nama, nik, alamat, "nomorHp", email, "tmpLahir", "tglLahir", kpp, kanwil, "nipId", seksi, status, "noKep", "stsValid", "thnLaporTerakhir", "jmlLapor10Thn", "tglBayarTerakhir", "jmlBayar10thn", "thnPhTerakhir", "jmlPh10Thn", "saldoUtang", "tglUpdateTerakhir", "npwpSama", "namaSama", "nikSama", "alamatSama", "nomorHpSama", "emailSama", "tmpLahirSama", "tglLahirSama", "kppSama", "kanwilSama", "arSama", "seksiSama", "statusSama", "noKepSama", "stsValidSama", "thnLaporTerakhirSama", "jmlLapor10ThnSama", "tglBayarTerakhirSama", "jmlBayar10ThnSama", "thnPhTerakhirSama", "jmlPh10ThnSama", "saldoUtangSama", "tglUpdateTerakhirSama", "skorJwsNama", "skorJwsTempat", "skorEdsNama", "skorEdsTempat", "tglBentukData", "createdAt", "currentStatus") FROM stdin;
\.


--
-- Data for Name: PembenahanWpNikGanda; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."PembenahanWpNikGanda" (id, no, nama1, nik1, kpp1, kanwil1, "statusValid1", "statusWp1", "updatedBy1", "noKep1", "penerimanFasilitasPen1", "dataLapor1", "dataBayar1", "dataTunggakan1", "jumlahData1", "dataTransaksi1", "tempatLahir1", "tanggalLahir1", npwp2, nama2, nik2, kpp2, kanwil2, "statusValid2", "statusWp2", "updateBy2", "noKep2", "penerimaFasilitasPen2", "dataLapor2", "dataBayar2", "dataTunggakan2", "jumlahData2", "dataTransaksi2", "tempatLahir2", "tanggalLahir2", "kppTerdaftar1dan2", "hasilCekNikDukcapil", "namaDukcapil", "persenNamaDukcapil", "edsSkor", "jswSkor", "cosSkor", "diceSkor", "createdAt", "npwp1Id", "currentStatus") FROM stdin;
\.


--
-- Data for Name: SendingDataToKanwil; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."SendingDataToKanwil" (id, "nomorNd", "tanggalKirimNd", "createdAt", "statusKirim") FROM stdin;
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public."User" (id, "createdAt", role, nip, "firstName", "lastName", password, username, "nipPanjang") FROM stdin;
user_2sjcri5oOqGU66W2wQLwvEccWXW	2025-09-01 17:00:00	oc	817931679	Said	Fatahillah	12345678	saidftlh2	\N
user_2sjckrAwUD4rO2bZY3UU7rXQ66S	2025-01-08 17:00:00	admin	817999999	Said	2	12345678	saidftlh	\N
user_2smYz6ocHudQzLdI63CS3lRGncN	2025-02-09 00:54:38.638	kasipw1	060086935	yanti	rahayu	12345678	yantirahayu	\N
user_2smZ2NGRBItRprFxyFoutwqDCRU	2025-02-09 00:55:04.807	kasipw2	060091735	adi	leksono	12345678	adileksono	\N
user_2smYuUvJfV0kYTwACFeWCRE0kAu	2025-02-09 00:54:01.023	kasipkd	060081659	wirta	kusuma	12345678	wirtakus	\N
user_2smZBEwSfan6yXGLlTI41sHt6B3	2025-02-09 00:56:14.141	kasipw3	060078358	hartono		12345678	hartono	\N
user_2smZEcwi6byeivwIcmbwAlEOOdL	2025-02-09 00:56:41.33	kasipw4	060093196	nur	hasyim	12345678	nurhasyim	\N
user_2smZIJYGpyuPtgVoa74bUXEwGpI	2025-02-09 00:57:11.296	kasipw5	060078994	mohamad	sefrudin	12345678	sefruddin	\N
user_2smZR7rSWvLA1TIDwBQnuw0i8GL	2025-02-09 00:58:21.44	kasipw6	060096867	bruce	andrian	12345678	bruceandrian	\N
user_2smZXnsIsnyUD4vOnRkYKe67QSm	2025-02-09 00:59:14.007	ar_1	908205253	yunita	pratiwi	12345678	yunitapratiwi	\N
user_2smZa1llq8GziSzCfdYk1FmMidd	2025-02-09 00:59:31.373	ar_1	060108712	iskandar	monadi	12345678	iskandarmonadi	\N
user_2smZdMSwo8GLV0mqxsfv1IuJhlS	2025-02-09 00:59:57.997	ar_1	060111206	faisal	akbar rosandi	12345678	faisalbardi	\N
user_2smZfLt4t79qd8RpnHsGxAFWJgq	2025-02-09 01:00:14.318	ar_1	060112032	abdul	aziz	12345678	abdulaziz	\N
user_2smZjxXbKtwSh3BEEUzt58Nggn2	2025-02-09 01:00:51.118	ar_1	830060434	ningrum	khairani	12345678	ningrumkhairani	\N
user_2smZm1vDtfnfDSnbbcMX0bgfIZP	2025-02-09 01:01:07.093	ar_1	930102827	kuswanto		12345678	kuswanto	\N
user_2smZoKKCH1wJ39OWYKrlIoxslVI	2025-02-09 01:01:25.158	ar_1	060115506	r	hidayat	12345678	rhidayat	\N
user_2smZqNTeNZdiMZW4ZapYNi5FyfN	2025-02-09 01:01:42.016	ar_2	060095760	dian	irawan	12345678	dianirawan	\N
user_2smZt2Dm4U2CNVOJ7iDsG5NEY3T	2025-02-09 01:02:03.291	ar_2	060116238	nimas	septanti nafi'ah	12345678	nimaseptanti	\N
user_2sma8tnJRwwZckhHrrGIF28DQek	2025-02-09 01:04:09.239	ar_2	926100152	mihwar	anshari	12345678	mihwaranshari	\N
user_2smaBk7vSR3r7bawHbmoBp7pxRO	2025-02-09 01:04:32.011	ar_2	060110625	khalid	rijaludin	12345678	khalidrijal	\N
user_2smaIfODFlzm8YDJfrstldzV5BA	2025-02-09 01:05:27.844	ar_2	808320397	feizar	nur fadli	12345678	feizarnur	\N
user_2smaLHzr3vUpPpNTrxs5e2FCGzq	2025-02-09 01:05:48.511	ar_2	955730270	i ketut	satya wijaya	12345678	iketutsatyawijaya	\N
user_2smaNyTgjEYShVzC31CcgVW2p9W	2025-02-09 01:06:09.617	ar_3	908103377	aziz	surachman	12345678	azizsurachman	\N
user_2smaQu2f8bFFd5ZdyG4txyueJ7A	2025-02-09 01:06:32.629	ar_3	910202021	fitri	yanuartantri	12345678	fitriyanuar	\N
user_2smaTpzecsrBC8bCeslF7ApFR6j	2025-02-09 01:06:56.106	ar_3	060081629	lilin	erlina	12345678	lilinerlina	\N
user_2smaWxchS4q6cZDOd2DAzFcvD5R	2025-02-09 01:07:20.046	ar_3	060090635	eko	budiyanto	12345678	ekobudiyanto	\N
user_2smaYyAtW4LUhz8zof5cqmquyuT	2025-02-09 01:07:36.732	ar_3	060098918	sultoni		12345678	sultoni	\N
user_2smadYpFEUXhnCGjoYGcaGAkg7S	2025-02-09 01:08:13.88	ar_3	060106572	nuruddin	arraniriy	12345678	nuruddinar	\N
user_2smagzuZma6eoLOdXEOAxgzjX7w	2025-02-09 01:08:40.11	ar_3	955350251	hariska	wira kumala	12345678	hariskawirk	\N
user_2sman5MQQu57XoEHfjHe1ImowKn	2025-02-09 01:09:29.444	ar_4	060098524	ikha	indriati susanti	12345678	ikhaindriati	\N
user_2smapMhjztr0ymBCpAvYMtdPvnK	2025-02-09 01:09:47.724	ar_4	060100361	imam	zunaidi	12345678	imamzun	\N
user_2smarUb8cHYvdzDtY5MUO7mYyen	2025-02-09 01:10:04.381	ar_4	060100576	arif	wibowo	12345678	arifwibowo	\N
user_2smavKFCLtHThJWYtqSlhchbd7W	2025-02-09 01:10:34.109	ar_4	804261180	putri	nugraheni	12345678	putrinugraheni	\N
user_2smayyYdLDNM2IpTeaQwyGb3Iw8	2025-02-09 01:11:03.276	ar_4	060116052	evan	rizaldhi	12345678	evanrizaldhi	\N
user_2smb3nSakuIH32TbOrrGYEFR6S3	2025-02-09 01:11:41.91	ar_4	951820550	aflakha	aqil haqiqi	12345678	aflakhaah	\N
user_2smb6FNp04ByIe9yV2L3sFaG7L7	2025-02-09 01:12:01.147	ar_4	060116649	nurul	afrian	12345678	nurulafrian	\N
user_2smb9tL93JGktnVu0BveFwzJ36p	2025-02-09 01:12:30.732	ar_5	060083849	masna	churia	12345678	masnachuria	\N
user_2smbEzk5YCUvPfdGMKapmH6g4aK	2025-02-09 01:13:11.204	ar_5	060099168	septyana	fatsahanda	12345678	septyanafatsa	\N
user_2smbHso2UW3p4SBYX3e6SuJFMly	2025-02-09 01:13:34.343	ar_5	881360295	handi	irawan	12345678	handiirawan	\N
user_2smbK2DuLxiD1AymLK6jA1JtOsG	2025-02-09 01:13:51.883	ar_5	060095345	edi	purwanto	12345678	edipurwanto	\N
user_2smbNtNMXKn7LTZrHb3JEz8Q2le	2025-02-09 01:14:22.456	ar_5	060112305	aziz	imam machmudi	12345678	azizimam	\N
user_2smbQbeE63eIw5egPdMsIgrWUck	2025-02-09 01:14:43.865	ar_5	917318249	devita	ratna dilla	12345678	devitaratdil	\N
user_2smbUveHvsH8BTJNUGIMAmkJTaN	2025-02-09 01:15:18.282	ar_6	869220676	kristiyanti		12345678	kristiyanti	\N
user_2smbZ5PXEGvubrX47eEEhwhiaI5	2025-02-09 01:15:50.945	ar_6	060108142	sigma	nurani rahman	12345678	sigmanurani	\N
user_2smbdxCsSLWERmHJVpnSGGScHDN	2025-02-09 01:16:29.063	ar_6	060110990	sarip	abdollah	12345678	saripabdollah	\N
user_2smbgVCwH0IXZPyre0iAyW8EYEd	2025-02-09 01:16:50.067	ar_6	060111549	hari	priadi	12345678	haripriadi	\N
user_2smbkBWW6xuEZqKYkIJ7iR9lUVu	2025-02-09 01:17:19.066	ar_6	060101828	i wayan	adhy nugraha	12345678	iwayanadhynug	\N
user_2smbmeLiBYVjOqT0oqnWJDOnGWm	2025-02-09 01:17:39.797	ar_6	929600853	masduki 	jakaria	12345678	masdukijakaria	\N
user_2smbpCYyFH3ezSUODUOhhBFVGAj	2025-02-09 01:17:59.537	ar_6	932740417	zainul	arifin	12345678	zainularifin	\N
\.


--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
48380b87-79f9-4a7c-950f-faa7fbec9e6c	4c1f7f3e0d985f4f63f954777503754687210ae6f9175243eab5e48b780cf467	2025-03-17 07:24:16.92148+00	20250202052025_init	\N	\N	2025-03-17 07:24:16.907413+00	1
823d7d0c-8483-4263-a282-87462eb11212	072de7fcd22f2e8089672b7aa83c9161cb3571bfbc5f59dadba5fd4a13965e94	2025-03-17 07:24:16.259808+00	20250111112242_init	\N	\N	2025-03-17 07:24:16.237562+00	1
16f036ef-230a-4b20-8dba-007295e21479	ed5811a31ce46bcc22aade1da30f8d90fbe701babf19dcec506d3c2c0523c013	2025-03-17 07:24:16.543609+00	20250116222636_init	\N	\N	2025-03-17 07:24:16.529905+00	1
e6ef2a9a-0749-407f-8bae-c2a15dd7560c	bad93604336a97291da860f5d69b86d20337646d661141abc0a0ec556b16c6a3	2025-03-17 07:24:16.289894+00	20250112094144_init	\N	\N	2025-03-17 07:24:16.2664+00	1
3db507de-21f8-4948-80fa-531c92ac297f	64b85016de84f2bf1c8bd348928cd42d4b3c93fae43701cd0669438c6d0bae46	2025-03-17 07:24:16.316694+00	20250112215024_init	\N	\N	2025-03-17 07:24:16.295859+00	1
37187e17-01cb-46de-b724-5b34ebdbb9b8	688944996cf3dc1d1924cae5387b62d763718de0fc1d02d1e5171112d92ff8e1	2025-03-17 07:24:16.700341+00	20250118043307_init	\N	\N	2025-03-17 07:24:16.68899+00	1
3207fc7c-532c-49ff-997f-5dd84ec6b2ef	25300ba963ac44945f0affa019eae90fedb917f54b190fa7fd6ac061e0354050	2025-03-17 07:24:16.3342+00	20250112215546_init	\N	\N	2025-03-17 07:24:16.320843+00	1
8fb613e6-d09f-4058-817f-d7f743846ae2	a86c0d148778e317132749ecc40f11ad4872e1d218dbfa85363f0b025cffb0bc	2025-03-17 07:24:16.561206+00	20250116224715_init	\N	\N	2025-03-17 07:24:16.548376+00	1
cab506fd-015b-4c28-9f11-7768604bc2d1	c6de34470e420eda1274518c550303930a42077dc94754ccdbf643c8d70b852a	2025-03-17 07:24:16.352398+00	20250112222635_init	\N	\N	2025-03-17 07:24:16.338887+00	1
d7276187-c44e-45d3-bc85-94f7017595b1	d90a8964951389bd5affd958d206630b993382ee673ecff4e6b66a03c721f720	2025-03-17 07:24:16.370871+00	20250113142649_init	\N	\N	2025-03-17 07:24:16.356673+00	1
2c024154-2229-4f43-9b1d-c8d3c9fb75b2	9aca813e63ee3e8b28d1bc20ae8e29eee3a6de4ee982a22ca32b1043d43075e1	2025-03-17 07:24:16.391038+00	20250114134842_init	\N	\N	2025-03-17 07:24:16.375701+00	1
1917abef-6ca1-421f-b106-240ff8e79aff	c55ac1c0a8e4da3ad2abe75da8fdbd65704edcf1c89183c3be91211cfd4dfb11	2025-03-17 07:24:16.581874+00	20250117234715_init	\N	\N	2025-03-17 07:24:16.565791+00	1
2cf79c80-0000-4779-9a17-3f80875af56d	cc0e60610591a2f32a1899a68b005538f3fefa0c32f05b9c2305938ebd3773cd	2025-03-17 07:24:16.4121+00	20250114230501_init	\N	\N	2025-03-17 07:24:16.396059+00	1
2f4d1c5a-6580-4097-a12f-bab10e2f38fb	a7196f5057b38053182bf47890c92a816c225d8f2b42951db0acf3415098a3dd	2025-03-17 07:24:16.430936+00	20250114231502_init	\N	\N	2025-03-17 07:24:16.416549+00	1
cd2b41be-2b0f-4d94-b538-0346e11a0a92	50a115fa5da88e5958275cd066f61f5fc533cfad2899a2a8c39e9ce810d68b0f	2025-03-17 07:24:16.806549+00	20250128232021_init	\N	\N	2025-03-17 07:24:16.794272+00	1
80b4786e-12c5-4395-982f-6fb28ab33d18	b2f3670a0db90e76ac2180b59ee327d0b2a1d3a5bc26891292474889675ed4b5	2025-03-17 07:24:16.448628+00	20250114231635_init	\N	\N	2025-03-17 07:24:16.435304+00	1
38ba8875-8513-4466-ac29-158f6c036faf	40d2e6fcec38ad9df8fd5abb0d358dc7fba4c2680b12b136b4ace57edf23ab7b	2025-03-17 07:24:16.598265+00	20250118012051_init	\N	\N	2025-03-17 07:24:16.586333+00	1
98dbafc0-ba5b-4c0e-9769-1fb7c7313404	816c8b1349be65a7d459c21aeaa868df31e67bd9df1538c08d75d88067f7a7d1	2025-03-17 07:24:16.46697+00	20250115133535_init	\N	\N	2025-03-17 07:24:16.453517+00	1
488db8b4-d1e8-4878-8f0b-26794b70b873	5c214d4b4020c1847eb058491f3077e94c925919f8652c558d0bb0641a2762f8	2025-03-17 07:24:16.4836+00	20250115140310_init	\N	\N	2025-03-17 07:24:16.471127+00	1
0b3a8e4f-e6fa-49c4-830d-ac2af62c42f5	3ab80580602ff7d4e206af168898f1dac7c5f949735b09664d4e92d09c8b9569	2025-03-17 07:24:16.717553+00	20250121131956_init	\N	\N	2025-03-17 07:24:16.704153+00	1
8e23b922-2ce1-46df-ab58-feb59b8ae23b	0578988b71e4aeae5e449fcf15f3bf49b4eb616b4806c96f3336454b1f26b46b	2025-03-17 07:24:16.504782+00	20250115230954_init	\N	\N	2025-03-17 07:24:16.48774+00	1
e97e1aa0-2720-437a-af0f-a1267bc8fee6	b036fbdb5df07b065e9504ba82aa09c457e9784b1375a5b4cc419425b8f026ae	2025-03-17 07:24:16.616618+00	20250118013033_init	\N	\N	2025-03-17 07:24:16.60251+00	1
0daeae68-9cc3-4080-a698-d2966b497fbe	aaea4625679cdc81083fbcd0d32ecd59215e7a0ec0cdb9d3b7b73e9ba03e3056	2025-03-17 07:24:16.524722+00	20250116210246_init	\N	\N	2025-03-17 07:24:16.509479+00	1
d8f74672-0095-437a-a767-a972673c23b7	a28965b788ee7ce01f6ecc1e380520573fdc398e47261ba6ec401e4cfdea2f6d	2025-03-17 07:24:16.634132+00	20250118021156_init	\N	\N	2025-03-17 07:24:16.620642+00	1
c6b7560e-2c44-4833-8437-7595b3f04a0e	6e5b90fb8833be39c9b55a8046db8a9d6907d9746ea49b43de4ab9b7b39f29b5	2025-03-17 07:24:16.651751+00	20250118032350_init	\N	\N	2025-03-17 07:24:16.638548+00	1
faae2b41-7328-4267-b4f6-cbef751daac9	4e00687482bdb728ea1ccb48e3f437e0f67e822d05fb817d84b2d74359fef91d	2025-03-17 07:24:16.73557+00	20250121232519_init	\N	\N	2025-03-17 07:24:16.721813+00	1
a627b91b-fc6d-41b2-8dff-2ec5fd2b4c19	d2caa214542f60e59853b7f33b235ef1d224b4d13e90a4bf265b2f33bca7b718	2025-03-17 07:24:16.668972+00	20250118032531_init	\N	\N	2025-03-17 07:24:16.656206+00	1
c75e0de5-bdf3-4318-b8de-9945b3361a54	589755c0b205f1ddcd38f53f9ee733d48bf2855bbb169918ea14d36c244d6536	2025-03-17 07:24:16.68514+00	20250118040011_init	\N	\N	2025-03-17 07:24:16.673145+00	1
f85a5c15-836f-482e-bf33-23abc0edd73e	4fe685442e1223f1ab6c29f067149d763c42d9ee68a709beab516cef0c051e73	2025-03-17 07:24:16.878712+00	20250131233004_init	\N	\N	2025-03-17 07:24:16.865953+00	1
dd01b0e6-7f15-40ff-96ce-7c4fc5282bf3	5183b4704cd412f1071bcf138a32fdfa66c69d741262245cde5b5c7a5088faf2	2025-03-17 07:24:16.755563+00	20250122140713_init	\N	\N	2025-03-17 07:24:16.740157+00	1
da4196d7-285a-4af6-90cd-b88399e2c296	c61cda34294aadbcde6a719241b012fe06f368c9c12500732ba007c1f87e3ae3	2025-03-17 07:24:16.82336+00	20250130230025_init	\N	\N	2025-03-17 07:24:16.810778+00	1
1176f3a2-f202-4d06-b22f-4d2d42ab9f81	aadf746ad205e834226c56195202d393f3f5f075beebaa936f0bdb8bdd6cc767	2025-03-17 07:24:16.773115+00	20250122213647_init	\N	\N	2025-03-17 07:24:16.76014+00	1
06a35a47-f2c8-4d9e-a696-1d898b308c96	781e725c0a6ca7269ed2981eb1c9081c870c594d4a0bb35cc052bca8bec47782	2025-03-17 07:24:16.790036+00	20250122222129_init	\N	\N	2025-03-17 07:24:16.777401+00	1
f7bd3e1a-1d50-4b21-baa9-5da4c588bbf4	1d205d772db823e8907de85e00a2dc9cb36f84964b9daa5621eda85b83059bd4	2025-03-17 07:24:16.84415+00	20250130231445_init	\N	\N	2025-03-17 07:24:16.828404+00	1
6ffa562f-0568-45ef-bcc6-2cdc442346d5	a7f322674c90c65a4312a72a35ea20d4a44d1a357525fa262a4db28746188289	2025-03-17 07:24:16.861535+00	20250131230831_init	\N	\N	2025-03-17 07:24:16.848525+00	1
bf5a445c-7c5f-4ba3-86e0-a4450e601709	d01cc10899cdec977b0049a8b849d74adb4fddf91bada61902d5ccb90c296b3f	2025-03-17 07:24:16.898695+00	20250131233804_init	\N	\N	2025-03-17 07:24:16.883117+00	1
66275727-5208-483c-82be-a63be7b1b8ea	f550b36d744f0686866f422d3a58c97e66233b123bbfde24e04809ba66ff6353	2025-03-17 07:24:16.962853+00	20250202223644_init	\N	\N	2025-03-17 07:24:16.947517+00	1
8d28f04b-e7ba-431c-8bbc-0017bdb7bafd	45b67103ed16eeaaa3e2c44028330debd66b2e7f2ca2029c3d1aed4965feb900	2025-03-17 07:24:16.942499+00	20250202222143_init	\N	\N	2025-03-17 07:24:16.92634+00	1
ed3199ae-285b-453a-bdf9-d60514f6daec	9530292f5a5ee0620e6409ed7bb33d23b296d92deba941ee237ae89cfb31ee29	2025-03-17 07:24:16.983276+00	20250208005950_init	\N	\N	2025-03-17 07:24:16.96728+00	1
f93da409-9b6e-4110-bf74-13ee2d9cdb9e	1d324ec9f05248d42f15917c17bc774f0df2e70173cd292a992607063dbe9241	2025-03-17 07:24:17.000178+00	20250208223214_init	\N	\N	2025-03-17 07:24:16.987654+00	1
5bc75241-3e09-4dee-984e-aad47aeb2059	b4344c82e37224118085bda664fbee8827cf93d8c6b11b48e711e6582223db68	2025-03-17 07:24:17.017636+00	20250208225550_init	\N	\N	2025-03-17 07:24:17.004246+00	1
9ca9936d-6f04-429a-8740-6adc832260f5	d4904cdf2e25083cf8cb53f517ccf57dbc39617a2213b33948207bf13d44db4f	2025-03-17 07:24:17.035163+00	20250209000049_init	\N	\N	2025-03-17 07:24:17.022104+00	1
62d24e29-f0e5-4b03-a101-7abb7ed43d23	e70882ad8ee3b128f78062fb35c628b4efad155a0ffb2f8f24fd72f049830d21	2025-03-17 07:24:17.053871+00	20250209003337_init	\N	\N	2025-03-17 07:24:17.03932+00	1
1cf0288b-9975-4666-858d-f70e195adf4c	d2f2203bc2c53c03e234fbc64de903b235cb2034195973b66bd06cd40025f6c1	2025-03-17 07:24:17.072913+00	20250209104026_init	\N	\N	2025-03-17 07:24:17.057904+00	1
6e44869e-ca55-4217-a730-6bebd3e2547d	1daf746cba63e7e4f49f2fb839d157c91a1487bbc5a3ba6abebbc0a217bc3618	2025-03-17 07:24:17.384316+00	20250218222458_init	\N	\N	2025-03-17 07:24:17.369518+00	1
56d77135-bc93-4699-a2c8-5d83cddab31d	3bb6234dc61f1661d8bed859218e82760a335c95804936bf476180d8e4ada58c	2025-03-17 07:24:17.094031+00	20250209125843_init	\N	\N	2025-03-17 07:24:17.078034+00	1
73ac6034-cc57-4727-a625-861abe860296	d75e6792e4830aceb70c7ee2bd5a983de6e303bf185cb6048b6cb5c1c6548c2b	2025-03-17 07:24:17.112894+00	20250210133537_init	\N	\N	2025-03-17 07:24:17.098303+00	1
cea3eb43-63ff-4429-8b3b-544c76c57639	3ee361847417b7e4a9a879e861cb8e368886d904288f3dea9d72c578edb90ea1	2025-03-17 07:24:17.545724+00	20250222001036_init	\N	\N	2025-03-17 07:24:17.53401+00	1
99caa043-5172-4fa0-9dc1-4045110b9904	e5d17391d9c6ad743ec641eae727f3945ae98b530b1edd8270e0b0548a22e708	2025-03-17 07:24:17.130814+00	20250210135612_init	\N	\N	2025-03-17 07:24:17.117301+00	1
49c328df-a0af-495a-bc79-5083706bf082	36bd75de90e8926285490599ed1f1f71d74329e2632c7ecb73869fba429c3402	2025-03-17 07:24:17.403331+00	20250219124404_init	\N	\N	2025-03-17 07:24:17.388054+00	1
6902042d-be75-401e-be83-f4e1ac8c6614	761d1b6dc78992f734e497aea3b9d2df843e2f724aadda818989a4d72ef11a2c	2025-03-17 07:24:17.154275+00	20250211124951_init	\N	\N	2025-03-17 07:24:17.135106+00	1
e15e35a8-e7ee-4125-90ae-9ca6ca54871c	3d99d5b741539e8931afc5871b936c06bdb07e9d9642eb12c339eb38083f5ec1	2025-03-17 07:24:17.176548+00	20250211132009_init	\N	\N	2025-03-17 07:24:17.158972+00	1
43ee534c-ef81-49d7-9186-9b71b1986f1f	73cecb6e587f35c1ee190e2f4e9e8ea30b4b3bef92616669e427306cb17d32d1	2025-03-17 07:24:17.197325+00	20250211132911_init	\N	\N	2025-03-17 07:24:17.181289+00	1
629cefd0-f849-456a-9f1c-7ac2984f12dc	38ae5cbf7d127714965c4a51453c8976ea00726fd6a5206b6ce7948408e5bf70	2025-03-17 07:24:17.42416+00	20250219135228_init	\N	\N	2025-03-17 07:24:17.408019+00	1
3ef2d461-c693-48b9-a5e2-03c8fb2b3d24	619feedb91d5887c8ffee74b0a8afcdc5566639bac6ea968895f993fe54e74ce	2025-03-17 07:24:17.219258+00	20250211133016_init	\N	\N	2025-03-17 07:24:17.202735+00	1
2a6ecd4a-925e-4ee3-ba4e-44841511d72d	b683f409dd37a14813212db81784b57852535709a8795c0bc5bfa7c277b7ec0f	2025-03-17 07:24:17.243941+00	20250211133856_init	\N	\N	2025-03-17 07:24:17.225136+00	1
01d7dff9-3e4a-4d9c-99af-9aab054fa3be	db8b1cb7daa23611ccf323d6cfe51abf38fc040f9a588912e46e714eb63436c9	2025-03-17 07:24:17.651112+00	20250312022720_init	\N	\N	2025-03-17 07:24:17.634843+00	1
26c78a8c-d12b-4bfb-bdd2-f315c9853a38	53f968962983191cbda281604dc9442d8f078d6164ae412f240c51425366314d	2025-03-17 07:24:17.268285+00	20250211135354_init	\N	\N	2025-03-17 07:24:17.250956+00	1
775b86ca-0e78-437c-830d-1e8be3dc71d9	7ea3382d2d4f751dd1fce71b57580419ab5e768fa920d052b917c9247a49197c	2025-03-17 07:24:17.443748+00	20250219142053_init	\N	\N	2025-03-17 07:24:17.429003+00	1
4f4e3a9a-cf71-4809-b3d5-1e79c0f37276	202ad32449cd6a174f25647bf78dfa01f69ad6fc76c5bb962a786e73d21c82cc	2025-03-17 07:24:17.296353+00	20250212213946_init	\N	\N	2025-03-17 07:24:17.273634+00	1
deae88ac-927b-4946-83aa-8c706088aebd	66cd39936cdf8213ab8d374315c99fbc556751f990087890f68765210dcf7dda	2025-03-17 07:24:17.325548+00	20250212231112_init	\N	\N	2025-03-17 07:24:17.303326+00	1
f29f5234-6da2-47ad-8e73-94e628889044	517665163dd53e3c0cfacab15eb351e9029be85b79ba1508a46369c9fd9ec53f	2025-03-17 07:24:17.562879+00	20250222093206_init	\N	\N	2025-03-17 07:24:17.550268+00	1
00ca63ef-b32a-48d3-ada5-42c228483701	5e6d8791c85c3699a1560eec4e268e6b6de53f55cd9f1461b9df06886807c801	2025-03-17 07:24:17.346213+00	20250216123921_init	\N	\N	2025-03-17 07:24:17.331381+00	1
b7961f0c-ffc0-448d-b210-c534ee00aedc	1333390989d8e2200a06fc50953725c2b4f31fc54951c5db8f93857174cb8cf0	2025-03-17 07:24:17.46229+00	20250219230244_init	\N	\N	2025-03-17 07:24:17.448723+00	1
8cb858c6-1e58-481f-a484-ae656a997103	673e4fdad7797ad2826b867e93c026e8079b671e8efe60bc549cd1e5c8ea11ff	2025-03-17 07:24:17.365664+00	20250218120756_init	\N	\N	2025-03-17 07:24:17.351331+00	1
e8a9f86b-7fd2-4a55-b2f0-094d73b477ac	f7531094ccea7f1ba94b3d0d1cdc369c84fa4799c58fb9388e781b9024e1e2c6	2025-03-17 07:24:17.480707+00	20250220214824_init	\N	\N	2025-03-17 07:24:17.466916+00	1
2be3d8cb-4f0e-4bf8-b94e-e3733febd4a0	fbfd665969a78a64aba40ec878ae7137bff2668c51d39a96afd9d742733ffb36	2025-03-17 07:24:17.499641+00	20250220232538_init	\N	\N	2025-03-17 07:24:17.485664+00	1
7ca5b2af-3afe-4ae5-80aa-b142fc4d4873	517ef9dffef08ba8953c8a7ca46c6d0560227d40de2a1d5035c2fe1d1a749862	2025-03-17 07:24:17.577872+00	20250223231902_init	\N	\N	2025-03-17 07:24:17.566219+00	1
682c06c1-aef4-41ed-910a-55c23cbabda4	9ce71330fb6071da7ef0652d9146afd6cee466b30bc36973ec82ac583211d871	2025-03-17 07:24:17.515011+00	20250220232811_init	\N	\N	2025-03-17 07:24:17.503235+00	1
7b6a5874-d885-492c-b750-4e02e998f132	74f2114536ef987b608910dfb3509dcbd3753497512465a442cb0a37fc4431f1	2025-03-17 07:24:17.530563+00	20250220233549_init	\N	\N	2025-03-17 07:24:17.518384+00	1
621ed6a6-6c1d-42c6-9613-d4a5b24dad98	345b5a27463adcea274e322a65d06ecb862fa1decc7398aee61a1495c3caf519	2025-03-17 07:24:17.593351+00	20250301035658_init	\N	\N	2025-03-17 07:24:17.581845+00	1
8309bba8-74a0-44f2-bba0-9319e1bc13a0	54ecaba482bdbf5ab14c405ceb23548c15abe491d5fb483114bb3a05e8c4a03e	2025-03-17 07:24:17.671529+00	20250312032941_init	\N	\N	2025-03-17 07:24:17.655816+00	1
915a0a9f-8d91-4cc1-a383-045e184106db	289adedda3d5e91b70cbecd2a9679e3a06a1608ba711ff2ca686b5f6de00e82e	2025-03-17 07:24:17.609929+00	20250312011121_init	\N	\N	2025-03-17 07:24:17.59752+00	1
a415d527-d89e-4e1e-abd8-dc8a8992f9c5	95edabae6869535f1e0c058adb7b1f88300a42c597e57c0006fd67de0db87fd8	2025-03-17 07:24:17.630573+00	20250312014305_init	\N	\N	2025-03-17 07:24:17.614887+00	1
96de9787-8719-4768-b9c6-b0fc43d0668a	b267be50d262f3a59bb1f28e0a300617f74b6b390606b6f1b5f626f1d681052a	2025-03-20 02:21:42.952281+00	20250320022142_init	\N	\N	2025-03-20 02:21:42.936916+00	1
0486bc75-779f-4357-9dcc-2eb530d9ee2b	29859165eb4332fb2af7d845638d25649199ea542921ed2a891d55f73a7d3a31	2025-03-20 07:17:20.074494+00	20250320071720_init	\N	\N	2025-03-20 07:17:20.051349+00	1
\.


--
-- Name: BedahWPData_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public."BedahWPData_id_seq"', 103, true);


--
-- Name: EmpoweringData_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public."EmpoweringData_id_seq"', 1, false);


--
-- Name: FinalPembenahanMfwp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public."FinalPembenahanMfwp_id_seq"', 1, false);


--
-- Name: JawabanPembenahanCabangPusatBedaEntitas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public."JawabanPembenahanCabangPusatBedaEntitas_id_seq"', 1, false);


--
-- Name: JawabanPembenahanWpIdentitasGanda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public."JawabanPembenahanWpIdentitasGanda_id_seq"', 1, false);


--
-- Name: JawabanPembenahanWpNamaTtlSama_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public."JawabanPembenahanWpNamaTtlSama_id_seq"', 1, false);


--
-- Name: JawabanPembenahanWpNikGanda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public."JawabanPembenahanWpNikGanda_id_seq"', 1, false);


--
-- Name: PembenahanCabangPusatBedahEntitas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public."PembenahanCabangPusatBedahEntitas_id_seq"', 1, false);


--
-- Name: PembenahanWpIdentitasGanda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public."PembenahanWpIdentitasGanda_id_seq"', 1, false);


--
-- Name: PembenahanWpNamaTtlSama_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public."PembenahanWpNamaTtlSama_id_seq"', 1, false);


--
-- Name: PembenahanWpNikGanda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public."PembenahanWpNikGanda_id_seq"', 1, false);


--
-- Name: SendingDataToKanwil_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public."SendingDataToKanwil_id_seq"', 1, false);


--
-- Name: BedahWPData BedahWPData_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."BedahWPData"
    ADD CONSTRAINT "BedahWPData_pkey" PRIMARY KEY (id);


--
-- Name: DatabaseWajibPajak DatabaseWajibPajak_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."DatabaseWajibPajak"
    ADD CONSTRAINT "DatabaseWajibPajak_pkey" PRIMARY KEY (id);


--
-- Name: EmpoweringData EmpoweringData_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."EmpoweringData"
    ADD CONSTRAINT "EmpoweringData_pkey" PRIMARY KEY (id);


--
-- Name: FinalPembenahanMfwp FinalPembenahanMfwp_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."FinalPembenahanMfwp"
    ADD CONSTRAINT "FinalPembenahanMfwp_pkey" PRIMARY KEY (id);


--
-- Name: JawabanPembenahanCabangPusatBedaEntitas JawabanPembenahanCabangPusatBedaEntitas_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."JawabanPembenahanCabangPusatBedaEntitas"
    ADD CONSTRAINT "JawabanPembenahanCabangPusatBedaEntitas_pkey" PRIMARY KEY (id);


--
-- Name: JawabanPembenahanWpIdentitasGanda JawabanPembenahanWpIdentitasGanda_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."JawabanPembenahanWpIdentitasGanda"
    ADD CONSTRAINT "JawabanPembenahanWpIdentitasGanda_pkey" PRIMARY KEY (id);


--
-- Name: JawabanPembenahanWpNamaTtlSama JawabanPembenahanWpNamaTtlSama_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."JawabanPembenahanWpNamaTtlSama"
    ADD CONSTRAINT "JawabanPembenahanWpNamaTtlSama_pkey" PRIMARY KEY (id);


--
-- Name: JawabanPembenahanWpNikGanda JawabanPembenahanWpNikGanda_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."JawabanPembenahanWpNikGanda"
    ADD CONSTRAINT "JawabanPembenahanWpNikGanda_pkey" PRIMARY KEY (id);


--
-- Name: PembenahanCabangPusatBedahEntitas PembenahanCabangPusatBedahEntitas_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."PembenahanCabangPusatBedahEntitas"
    ADD CONSTRAINT "PembenahanCabangPusatBedahEntitas_pkey" PRIMARY KEY (id);


--
-- Name: PembenahanWpIdentitasGanda PembenahanWpIdentitasGanda_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."PembenahanWpIdentitasGanda"
    ADD CONSTRAINT "PembenahanWpIdentitasGanda_pkey" PRIMARY KEY (id);


--
-- Name: PembenahanWpNamaTtlSama PembenahanWpNamaTtlSama_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."PembenahanWpNamaTtlSama"
    ADD CONSTRAINT "PembenahanWpNamaTtlSama_pkey" PRIMARY KEY (id);


--
-- Name: PembenahanWpNikGanda PembenahanWpNikGanda_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."PembenahanWpNikGanda"
    ADD CONSTRAINT "PembenahanWpNikGanda_pkey" PRIMARY KEY (id);


--
-- Name: SendingDataToKanwil SendingDataToKanwil_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."SendingDataToKanwil"
    ADD CONSTRAINT "SendingDataToKanwil_pkey" PRIMARY KEY (id);


--
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: BedahWPData_npwpId_tahunPajak_key; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX "BedahWPData_npwpId_tahunPajak_key" ON public."BedahWPData" USING btree ("npwpId", "tahunPajak");


--
-- Name: EmpoweringData_npwpId_tahunPajak_key; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX "EmpoweringData_npwpId_tahunPajak_key" ON public."EmpoweringData" USING btree ("npwpId", "tahunPajak");


--
-- Name: User_nip_key; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX "User_nip_key" ON public."User" USING btree (nip);


--
-- Name: BedahWPData BedahWPData_npwpId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."BedahWPData"
    ADD CONSTRAINT "BedahWPData_npwpId_fkey" FOREIGN KEY ("npwpId") REFERENCES public."DatabaseWajibPajak"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: BedahWPData BedahWPData_sendingDataToKanwilId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."BedahWPData"
    ADD CONSTRAINT "BedahWPData_sendingDataToKanwilId_fkey" FOREIGN KEY ("sendingDataToKanwilId") REFERENCES public."SendingDataToKanwil"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: BedahWPData BedahWPData_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."BedahWPData"
    ADD CONSTRAINT "BedahWPData_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: DatabaseWajibPajak DatabaseWajibPajak_nipId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."DatabaseWajibPajak"
    ADD CONSTRAINT "DatabaseWajibPajak_nipId_fkey" FOREIGN KEY ("nipId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: EmpoweringData EmpoweringData_npwpId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."EmpoweringData"
    ADD CONSTRAINT "EmpoweringData_npwpId_fkey" FOREIGN KEY ("npwpId") REFERENCES public."DatabaseWajibPajak"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: EmpoweringData EmpoweringData_sendingDataToKanwilId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."EmpoweringData"
    ADD CONSTRAINT "EmpoweringData_sendingDataToKanwilId_fkey" FOREIGN KEY ("sendingDataToKanwilId") REFERENCES public."SendingDataToKanwil"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: EmpoweringData EmpoweringData_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."EmpoweringData"
    ADD CONSTRAINT "EmpoweringData_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: FinalPembenahanMfwp FinalPembenahanMfwp_pembenahanCabangPusatBedahEntitasId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."FinalPembenahanMfwp"
    ADD CONSTRAINT "FinalPembenahanMfwp_pembenahanCabangPusatBedahEntitasId_fkey" FOREIGN KEY ("pembenahanCabangPusatBedahEntitasId") REFERENCES public."PembenahanCabangPusatBedahEntitas"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: FinalPembenahanMfwp FinalPembenahanMfwp_pembenahanWpIdentitasGandaId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."FinalPembenahanMfwp"
    ADD CONSTRAINT "FinalPembenahanMfwp_pembenahanWpIdentitasGandaId_fkey" FOREIGN KEY ("pembenahanWpIdentitasGandaId") REFERENCES public."PembenahanWpIdentitasGanda"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: FinalPembenahanMfwp FinalPembenahanMfwp_pembenahanWpNamaTtlSamaId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."FinalPembenahanMfwp"
    ADD CONSTRAINT "FinalPembenahanMfwp_pembenahanWpNamaTtlSamaId_fkey" FOREIGN KEY ("pembenahanWpNamaTtlSamaId") REFERENCES public."PembenahanWpNamaTtlSama"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: FinalPembenahanMfwp FinalPembenahanMfwp_pembenahanWpNikGandaId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."FinalPembenahanMfwp"
    ADD CONSTRAINT "FinalPembenahanMfwp_pembenahanWpNikGandaId_fkey" FOREIGN KEY ("pembenahanWpNikGandaId") REFERENCES public."PembenahanWpNikGanda"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: FinalPembenahanMfwp FinalPembenahanMfwp_sendingDataToKanwilId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."FinalPembenahanMfwp"
    ADD CONSTRAINT "FinalPembenahanMfwp_sendingDataToKanwilId_fkey" FOREIGN KEY ("sendingDataToKanwilId") REFERENCES public."SendingDataToKanwil"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: JawabanPembenahanCabangPusatBedaEntitas JawabanPembenahanCabangPusatBedaEntitas_dataId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."JawabanPembenahanCabangPusatBedaEntitas"
    ADD CONSTRAINT "JawabanPembenahanCabangPusatBedaEntitas_dataId_fkey" FOREIGN KEY ("dataId") REFERENCES public."PembenahanCabangPusatBedahEntitas"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: JawabanPembenahanCabangPusatBedaEntitas JawabanPembenahanCabangPusatBedaEntitas_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."JawabanPembenahanCabangPusatBedaEntitas"
    ADD CONSTRAINT "JawabanPembenahanCabangPusatBedaEntitas_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: JawabanPembenahanWpIdentitasGanda JawabanPembenahanWpIdentitasGanda_dataId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."JawabanPembenahanWpIdentitasGanda"
    ADD CONSTRAINT "JawabanPembenahanWpIdentitasGanda_dataId_fkey" FOREIGN KEY ("dataId") REFERENCES public."PembenahanWpIdentitasGanda"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: JawabanPembenahanWpIdentitasGanda JawabanPembenahanWpIdentitasGanda_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."JawabanPembenahanWpIdentitasGanda"
    ADD CONSTRAINT "JawabanPembenahanWpIdentitasGanda_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: JawabanPembenahanWpNamaTtlSama JawabanPembenahanWpNamaTtlSama_dataId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."JawabanPembenahanWpNamaTtlSama"
    ADD CONSTRAINT "JawabanPembenahanWpNamaTtlSama_dataId_fkey" FOREIGN KEY ("dataId") REFERENCES public."PembenahanWpNamaTtlSama"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: JawabanPembenahanWpNamaTtlSama JawabanPembenahanWpNamaTtlSama_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."JawabanPembenahanWpNamaTtlSama"
    ADD CONSTRAINT "JawabanPembenahanWpNamaTtlSama_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: JawabanPembenahanWpNikGanda JawabanPembenahanWpNikGanda_dataId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."JawabanPembenahanWpNikGanda"
    ADD CONSTRAINT "JawabanPembenahanWpNikGanda_dataId_fkey" FOREIGN KEY ("dataId") REFERENCES public."PembenahanWpNikGanda"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: JawabanPembenahanWpNikGanda JawabanPembenahanWpNikGanda_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."JawabanPembenahanWpNikGanda"
    ADD CONSTRAINT "JawabanPembenahanWpNikGanda_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: PembenahanCabangPusatBedahEntitas PembenahanCabangPusatBedahEntitas_nipId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."PembenahanCabangPusatBedahEntitas"
    ADD CONSTRAINT "PembenahanCabangPusatBedahEntitas_nipId_fkey" FOREIGN KEY ("nipId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: PembenahanWpNamaTtlSama PembenahanWpNamaTtlSama_nipId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."PembenahanWpNamaTtlSama"
    ADD CONSTRAINT "PembenahanWpNamaTtlSama_nipId_fkey" FOREIGN KEY ("nipId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: PembenahanWpNikGanda PembenahanWpNikGanda_npwp1Id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public."PembenahanWpNikGanda"
    ADD CONSTRAINT "PembenahanWpNikGanda_npwp1Id_fkey" FOREIGN KEY ("npwp1Id") REFERENCES public."DatabaseWajibPajak"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

