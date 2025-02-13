--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2025-02-13 20:49:30

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 5024 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 232 (class 1259 OID 33529)
-- Name: at_ab_mstipeabsen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.at_ab_mstipeabsen (
    tipeabsen_id integer NOT NULL,
    tipeabsen_name character varying(50),
    created_by integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    modified_by integer NOT NULL,
    modified_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    is_active boolean
);


ALTER TABLE public.at_ab_mstipeabsen OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 33528)
-- Name: at_ab_mstipeabsen_tipeabsen_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.at_ab_mstipeabsen_tipeabsen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.at_ab_mstipeabsen_tipeabsen_id_seq OWNER TO postgres;

--
-- TOC entry 5025 (class 0 OID 0)
-- Dependencies: 231
-- Name: at_ab_mstipeabsen_tipeabsen_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.at_ab_mstipeabsen_tipeabsen_id_seq OWNED BY public.at_ab_mstipeabsen.tipeabsen_id;


--
-- TOC entry 234 (class 1259 OID 33538)
-- Name: at_ab_trabsen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.at_ab_trabsen (
    absen_id integer NOT NULL,
    user_id integer NOT NULL,
    days_id integer NOT NULL,
    tipeabsen_id integer,
    absen_date date,
    absen_check_in time without time zone,
    absen_check_out time without time zone,
    absen_status character varying(20),
    absen_revision boolean,
    is_active boolean,
    created_by integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    modified_by integer,
    modified_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.at_ab_trabsen OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 33537)
-- Name: at_ab_trabsen_absen_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.at_ab_trabsen_absen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.at_ab_trabsen_absen_id_seq OWNER TO postgres;

--
-- TOC entry 5026 (class 0 OID 0)
-- Dependencies: 233
-- Name: at_ab_trabsen_absen_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.at_ab_trabsen_absen_id_seq OWNED BY public.at_ab_trabsen.absen_id;


--
-- TOC entry 236 (class 1259 OID 33562)
-- Name: at_ct_trcuti; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.at_ct_trcuti (
    cuti_id integer NOT NULL,
    user_id integer NOT NULL,
    cuti_start_date date NOT NULL,
    cuti_end_date date NOT NULL,
    cuti_reason text NOT NULL,
    created_by integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    modified_by integer NOT NULL,
    modified_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    is_active boolean
);


ALTER TABLE public.at_ct_trcuti OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 33561)
-- Name: at_ct_trcuti_cuti_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.at_ct_trcuti_cuti_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.at_ct_trcuti_cuti_id_seq OWNER TO postgres;

--
-- TOC entry 5027 (class 0 OID 0)
-- Dependencies: 235
-- Name: at_ct_trcuti_cuti_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.at_ct_trcuti_cuti_id_seq OWNED BY public.at_ct_trcuti.cuti_id;


--
-- TOC entry 238 (class 1259 OID 33578)
-- Name: at_lb_mstipelembur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.at_lb_mstipelembur (
    tipelembur_id integer NOT NULL,
    tipelembur_name character varying(50) NOT NULL,
    created_by integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    modified_by integer NOT NULL,
    modified_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    is_active boolean
);


ALTER TABLE public.at_lb_mstipelembur OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 33577)
-- Name: at_lb_mstipelembur_tipelembur_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.at_lb_mstipelembur_tipelembur_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.at_lb_mstipelembur_tipelembur_id_seq OWNER TO postgres;

--
-- TOC entry 5028 (class 0 OID 0)
-- Dependencies: 237
-- Name: at_lb_mstipelembur_tipelembur_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.at_lb_mstipelembur_tipelembur_id_seq OWNED BY public.at_lb_mstipelembur.tipelembur_id;


--
-- TOC entry 240 (class 1259 OID 33589)
-- Name: at_lb_trlembur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.at_lb_trlembur (
    lembur_id integer NOT NULL,
    user_id integer NOT NULL,
    tipelembur_id integer NOT NULL,
    days_id integer NOT NULL,
    lembur_date date NOT NULL,
    lembur_start_time time without time zone NOT NULL,
    lembur_end_time time without time zone NOT NULL,
    lembur_reason text NOT NULL,
    created_by integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    modified_by integer NOT NULL,
    modified_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    is_active boolean
);


ALTER TABLE public.at_lb_trlembur OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 33588)
-- Name: at_lb_trlembur_lembur_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.at_lb_trlembur_lembur_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.at_lb_trlembur_lembur_id_seq OWNER TO postgres;

--
-- TOC entry 5029 (class 0 OID 0)
-- Dependencies: 239
-- Name: at_lb_trlembur_lembur_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.at_lb_trlembur_lembur_id_seq OWNED BY public.at_lb_trlembur.lembur_id;


--
-- TOC entry 230 (class 1259 OID 33518)
-- Name: at_sys_msdays; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.at_sys_msdays (
    days_id integer NOT NULL,
    days_name character varying(50) NOT NULL,
    created_by integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    modified_by integer NOT NULL,
    modified_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    is_active boolean
);


ALTER TABLE public.at_sys_msdays OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 33517)
-- Name: at_sys_msdays_days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.at_sys_msdays_days_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.at_sys_msdays_days_id_seq OWNER TO postgres;

--
-- TOC entry 5030 (class 0 OID 0)
-- Dependencies: 229
-- Name: at_sys_msdays_days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.at_sys_msdays_days_id_seq OWNED BY public.at_sys_msdays.days_id;


--
-- TOC entry 220 (class 1259 OID 33440)
-- Name: at_sys_msdepartment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.at_sys_msdepartment (
    department_id integer NOT NULL,
    department_name character varying(50) NOT NULL,
    created_by integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    modified_by integer NOT NULL,
    modified_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    is_active boolean
);


ALTER TABLE public.at_sys_msdepartment OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 33439)
-- Name: at_sys_msdepartment_department_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.at_sys_msdepartment_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.at_sys_msdepartment_department_id_seq OWNER TO postgres;

--
-- TOC entry 5031 (class 0 OID 0)
-- Dependencies: 219
-- Name: at_sys_msdepartment_department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.at_sys_msdepartment_department_id_seq OWNED BY public.at_sys_msdepartment.department_id;


--
-- TOC entry 228 (class 1259 OID 33505)
-- Name: at_sys_msexceltemplate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.at_sys_msexceltemplate (
    template_id integer NOT NULL,
    template_name character varying(100) NOT NULL,
    template_description text,
    template_file bytea NOT NULL,
    created_by integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    modified_by integer NOT NULL,
    modified_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    is_active boolean
);


ALTER TABLE public.at_sys_msexceltemplate OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 33504)
-- Name: at_sys_msexceltemplate_template_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.at_sys_msexceltemplate_template_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.at_sys_msexceltemplate_template_id_seq OWNER TO postgres;

--
-- TOC entry 5032 (class 0 OID 0)
-- Dependencies: 227
-- Name: at_sys_msexceltemplate_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.at_sys_msexceltemplate_template_id_seq OWNED BY public.at_sys_msexceltemplate.template_id;


--
-- TOC entry 218 (class 1259 OID 33429)
-- Name: at_sys_msposition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.at_sys_msposition (
    position_id integer NOT NULL,
    position_name character varying(50) NOT NULL,
    created_by integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    modified_by integer NOT NULL,
    modified_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    is_active boolean
);


ALTER TABLE public.at_sys_msposition OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 33428)
-- Name: at_sys_msposition_position_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.at_sys_msposition_position_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.at_sys_msposition_position_id_seq OWNER TO postgres;

--
-- TOC entry 5033 (class 0 OID 0)
-- Dependencies: 217
-- Name: at_sys_msposition_position_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.at_sys_msposition_position_id_seq OWNED BY public.at_sys_msposition.position_id;


--
-- TOC entry 224 (class 1259 OID 33475)
-- Name: at_sys_msrole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.at_sys_msrole (
    role_id integer NOT NULL,
    role_name character varying(50) NOT NULL,
    created_by integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    modified_by integer NOT NULL,
    modified_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    is_active boolean
);


ALTER TABLE public.at_sys_msrole OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 33474)
-- Name: at_sys_msrole_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.at_sys_msrole_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.at_sys_msrole_role_id_seq OWNER TO postgres;

--
-- TOC entry 5034 (class 0 OID 0)
-- Dependencies: 223
-- Name: at_sys_msrole_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.at_sys_msrole_role_id_seq OWNED BY public.at_sys_msrole.role_id;


--
-- TOC entry 216 (class 1259 OID 33416)
-- Name: at_sys_msuser; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.at_sys_msuser (
    user_id integer NOT NULL,
    user_nip character varying(20) NOT NULL,
    user_name character varying(50) NOT NULL,
    user_fullname character varying(100) NOT NULL,
    user_pass character varying(255) NOT NULL,
    user_email character varying(100) NOT NULL,
    user_phone character varying(20) NOT NULL,
    user_image bytea,
    created_by integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    modified_by integer NOT NULL,
    modified_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    is_active boolean
);


ALTER TABLE public.at_sys_msuser OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 33415)
-- Name: at_sys_msuser_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.at_sys_msuser_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.at_sys_msuser_user_id_seq OWNER TO postgres;

--
-- TOC entry 5035 (class 0 OID 0)
-- Dependencies: 215
-- Name: at_sys_msuser_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.at_sys_msuser_user_id_seq OWNED BY public.at_sys_msuser.user_id;


--
-- TOC entry 222 (class 1259 OID 33451)
-- Name: at_sys_msuserdepartment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.at_sys_msuserdepartment (
    userdepartment_id integer NOT NULL,
    user_id integer NOT NULL,
    position_id integer NOT NULL,
    department_id integer NOT NULL,
    created_by integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    modified_by integer NOT NULL,
    modified_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    is_active boolean
);


ALTER TABLE public.at_sys_msuserdepartment OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 33450)
-- Name: at_sys_msuserdepartment_userdepartment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.at_sys_msuserdepartment_userdepartment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.at_sys_msuserdepartment_userdepartment_id_seq OWNER TO postgres;

--
-- TOC entry 5036 (class 0 OID 0)
-- Dependencies: 221
-- Name: at_sys_msuserdepartment_userdepartment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.at_sys_msuserdepartment_userdepartment_id_seq OWNED BY public.at_sys_msuserdepartment.userdepartment_id;


--
-- TOC entry 226 (class 1259 OID 33486)
-- Name: at_sys_msuserrole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.at_sys_msuserrole (
    userrole_id integer NOT NULL,
    user_id integer NOT NULL,
    role_id integer NOT NULL,
    created_by integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    modified_by integer NOT NULL,
    modified_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    is_active boolean
);


ALTER TABLE public.at_sys_msuserrole OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 33485)
-- Name: at_sys_msuserrole_userrole_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.at_sys_msuserrole_userrole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.at_sys_msuserrole_userrole_id_seq OWNER TO postgres;

--
-- TOC entry 5037 (class 0 OID 0)
-- Dependencies: 225
-- Name: at_sys_msuserrole_userrole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.at_sys_msuserrole_userrole_id_seq OWNED BY public.at_sys_msuserrole.userrole_id;


--
-- TOC entry 242 (class 1259 OID 33615)
-- Name: at_temp_absen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.at_temp_absen (
    temp_id integer NOT NULL,
    temp_nama_user character varying(100),
    temp_hari_tanggal character varying(50),
    temp_jadwal character varying(50),
    temp_check_in character varying(50),
    temp_check_out character varying(50),
    temp_status character varying(50),
    temp_keterangan character varying(100),
    temp_koreksi character varying(10),
    temp_created_by character varying(50) NOT NULL,
    temp_created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    is_active boolean
);


ALTER TABLE public.at_temp_absen OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 33614)
-- Name: at_temp_absen_temp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.at_temp_absen_temp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.at_temp_absen_temp_id_seq OWNER TO postgres;

--
-- TOC entry 5038 (class 0 OID 0)
-- Dependencies: 241
-- Name: at_temp_absen_temp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.at_temp_absen_temp_id_seq OWNED BY public.at_temp_absen.temp_id;


--
-- TOC entry 4777 (class 2604 OID 33532)
-- Name: at_ab_mstipeabsen tipeabsen_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_ab_mstipeabsen ALTER COLUMN tipeabsen_id SET DEFAULT nextval('public.at_ab_mstipeabsen_tipeabsen_id_seq'::regclass);


--
-- TOC entry 4780 (class 2604 OID 33541)
-- Name: at_ab_trabsen absen_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_ab_trabsen ALTER COLUMN absen_id SET DEFAULT nextval('public.at_ab_trabsen_absen_id_seq'::regclass);


--
-- TOC entry 4783 (class 2604 OID 33565)
-- Name: at_ct_trcuti cuti_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_ct_trcuti ALTER COLUMN cuti_id SET DEFAULT nextval('public.at_ct_trcuti_cuti_id_seq'::regclass);


--
-- TOC entry 4786 (class 2604 OID 33581)
-- Name: at_lb_mstipelembur tipelembur_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_lb_mstipelembur ALTER COLUMN tipelembur_id SET DEFAULT nextval('public.at_lb_mstipelembur_tipelembur_id_seq'::regclass);


--
-- TOC entry 4789 (class 2604 OID 33592)
-- Name: at_lb_trlembur lembur_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_lb_trlembur ALTER COLUMN lembur_id SET DEFAULT nextval('public.at_lb_trlembur_lembur_id_seq'::regclass);


--
-- TOC entry 4774 (class 2604 OID 33521)
-- Name: at_sys_msdays days_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msdays ALTER COLUMN days_id SET DEFAULT nextval('public.at_sys_msdays_days_id_seq'::regclass);


--
-- TOC entry 4759 (class 2604 OID 33443)
-- Name: at_sys_msdepartment department_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msdepartment ALTER COLUMN department_id SET DEFAULT nextval('public.at_sys_msdepartment_department_id_seq'::regclass);


--
-- TOC entry 4771 (class 2604 OID 33508)
-- Name: at_sys_msexceltemplate template_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msexceltemplate ALTER COLUMN template_id SET DEFAULT nextval('public.at_sys_msexceltemplate_template_id_seq'::regclass);


--
-- TOC entry 4756 (class 2604 OID 33432)
-- Name: at_sys_msposition position_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msposition ALTER COLUMN position_id SET DEFAULT nextval('public.at_sys_msposition_position_id_seq'::regclass);


--
-- TOC entry 4765 (class 2604 OID 33478)
-- Name: at_sys_msrole role_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msrole ALTER COLUMN role_id SET DEFAULT nextval('public.at_sys_msrole_role_id_seq'::regclass);


--
-- TOC entry 4753 (class 2604 OID 33419)
-- Name: at_sys_msuser user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msuser ALTER COLUMN user_id SET DEFAULT nextval('public.at_sys_msuser_user_id_seq'::regclass);


--
-- TOC entry 4762 (class 2604 OID 33454)
-- Name: at_sys_msuserdepartment userdepartment_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msuserdepartment ALTER COLUMN userdepartment_id SET DEFAULT nextval('public.at_sys_msuserdepartment_userdepartment_id_seq'::regclass);


--
-- TOC entry 4768 (class 2604 OID 33489)
-- Name: at_sys_msuserrole userrole_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msuserrole ALTER COLUMN userrole_id SET DEFAULT nextval('public.at_sys_msuserrole_userrole_id_seq'::regclass);


--
-- TOC entry 4792 (class 2604 OID 33618)
-- Name: at_temp_absen temp_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_temp_absen ALTER COLUMN temp_id SET DEFAULT nextval('public.at_temp_absen_temp_id_seq'::regclass);


--
-- TOC entry 5008 (class 0 OID 33529)
-- Dependencies: 232
-- Data for Name: at_ab_mstipeabsen; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5010 (class 0 OID 33538)
-- Dependencies: 234
-- Data for Name: at_ab_trabsen; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5012 (class 0 OID 33562)
-- Dependencies: 236
-- Data for Name: at_ct_trcuti; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5014 (class 0 OID 33578)
-- Dependencies: 238
-- Data for Name: at_lb_mstipelembur; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5016 (class 0 OID 33589)
-- Dependencies: 240
-- Data for Name: at_lb_trlembur; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5006 (class 0 OID 33518)
-- Dependencies: 230
-- Data for Name: at_sys_msdays; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.at_sys_msdays VALUES (1, 'Senin', 1, '2025-02-12 22:07:09.17509', 1, '2025-02-12 22:07:09.17509', true);
INSERT INTO public.at_sys_msdays VALUES (2, 'Selasa', 1, '2025-02-12 22:07:09.17509', 1, '2025-02-12 22:07:09.17509', true);
INSERT INTO public.at_sys_msdays VALUES (3, 'Rabu', 1, '2025-02-12 22:07:09.17509', 1, '2025-02-12 22:07:09.17509', true);
INSERT INTO public.at_sys_msdays VALUES (4, 'Kamis', 1, '2025-02-12 22:07:09.17509', 1, '2025-02-12 22:07:09.17509', true);
INSERT INTO public.at_sys_msdays VALUES (5, 'Jumat', 1, '2025-02-12 22:07:09.17509', 1, '2025-02-12 22:07:09.17509', true);
INSERT INTO public.at_sys_msdays VALUES (6, 'Sabtu', 1, '2025-02-12 22:07:09.17509', 1, '2025-02-12 22:07:09.17509', true);
INSERT INTO public.at_sys_msdays VALUES (7, 'Minggu', 1, '2025-02-12 22:07:09.17509', 1, '2025-02-12 22:07:09.17509', true);


--
-- TOC entry 4996 (class 0 OID 33440)
-- Dependencies: 220
-- Data for Name: at_sys_msdepartment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.at_sys_msdepartment VALUES (1, 'Appsenin', 1, '2025-02-12 22:08:22.09805', 1, '2025-02-12 22:08:22.09805', true);
INSERT INTO public.at_sys_msdepartment VALUES (2, 'Korporat-1', 1, '2025-02-12 22:08:22.09805', 1, '2025-02-12 22:08:22.09805', true);


--
-- TOC entry 5004 (class 0 OID 33505)
-- Dependencies: 228
-- Data for Name: at_sys_msexceltemplate; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4994 (class 0 OID 33429)
-- Dependencies: 218
-- Data for Name: at_sys_msposition; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.at_sys_msposition VALUES (1, 'Appsenin_Position', 1, '2025-02-12 22:08:00.312194', 1, '2025-02-12 22:08:00.312194', true);
INSERT INTO public.at_sys_msposition VALUES (2, 'Team Leader', 1, '2025-02-12 22:08:00.312194', 1, '2025-02-12 22:08:00.312194', true);
INSERT INTO public.at_sys_msposition VALUES (3, 'Technical Support', 1, '2025-02-12 22:08:00.312194', 1, '2025-02-12 22:08:00.312194', true);
INSERT INTO public.at_sys_msposition VALUES (4, 'Technical Writer', 1, '2025-02-12 22:08:00.312194', 1, '2025-02-12 22:08:00.312194', true);


--
-- TOC entry 5000 (class 0 OID 33475)
-- Dependencies: 224
-- Data for Name: at_sys_msrole; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.at_sys_msrole VALUES (1, 'Administrator', 1, '2025-02-12 22:07:34.619314', 1, '2025-02-12 22:07:34.619314', true);
INSERT INTO public.at_sys_msrole VALUES (2, 'Team_Leader', 1, '2025-02-12 22:07:34.619314', 1, '2025-02-12 22:07:34.619314', true);
INSERT INTO public.at_sys_msrole VALUES (3, 'Tech_Writer', 1, '2025-02-12 22:07:34.619314', 1, '2025-02-12 22:07:34.619314', true);
INSERT INTO public.at_sys_msrole VALUES (4, 'Tech_Support', 1, '2025-02-12 22:07:34.619314', 1, '2025-02-12 22:07:34.619314', true);


--
-- TOC entry 4992 (class 0 OID 33416)
-- Dependencies: 216
-- Data for Name: at_sys_msuser; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.at_sys_msuser VALUES (2, '621234', 'appsenin.leader', 'Appsenin Team Leader', '$2b$15$lRqiw/bZdtDJhxhP666cLuC.li7/bBDDVUv.r9Bmb0Erl/6yg84wO', 'appsenin.leader@test.com', '6212341224234', NULL, 1, '2025-02-12 22:05:59.71707', 1, '2025-02-12 22:05:59.71707', true);
INSERT INTO public.at_sys_msuser VALUES (3, '621234', 'appsenin.techwriter', 'Appsenin Tech Writer', '$2b$15$8y09sSMkCQf1tH/9ys4lJeqvNjFKFzbueCin1K7a2GJTLMNMKR69.', 'appsenin.techwriter@test.com', '6212341224234', NULL, 1, '2025-02-12 22:06:03.168107', 1, '2025-02-12 22:06:03.168107', true);
INSERT INTO public.at_sys_msuser VALUES (4, '621234', 'appsenin.techsupport', 'Appsenin Tech Support', '$2b$15$t4JnY/pcA5MWgJrwAXIiCOOKysKiyLGRo.3kh3HVm8e.dbvzUgPQu', 'appsenin.techsupport@test.com', '6212341224234', NULL, 1, '2025-02-12 22:06:06.616236', 1, '2025-02-12 22:06:06.616236', true);
INSERT INTO public.at_sys_msuser VALUES (1, '621234', 'appsenin.admin', 'Appsenin Admin', '$2b$15$xQ1NOAt5q3Xn0TEFh2YQb.BomJNFRpvrs/pcG14/Qr.tJ2ENOzVlm', 'appsenin.admin@test.com', '6212341224234', NULL, 1, '2025-02-12 22:05:56.274794', 1, '2025-02-12 22:05:56.274794', true);


--
-- TOC entry 4998 (class 0 OID 33451)
-- Dependencies: 222
-- Data for Name: at_sys_msuserdepartment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.at_sys_msuserdepartment VALUES (1, 1, 1, 1, 1, '2025-02-12 22:17:18.3817', 1, '2025-02-12 22:17:18.3817', true);
INSERT INTO public.at_sys_msuserdepartment VALUES (2, 2, 2, 1, 1, '2025-02-12 22:17:18.3817', 1, '2025-02-12 22:17:18.3817', true);
INSERT INTO public.at_sys_msuserdepartment VALUES (3, 3, 3, 1, 1, '2025-02-12 22:17:18.3817', 1, '2025-02-12 22:17:18.3817', true);
INSERT INTO public.at_sys_msuserdepartment VALUES (4, 4, 4, 1, 1, '2025-02-12 22:17:18.3817', 1, '2025-02-12 22:17:18.3817', true);


--
-- TOC entry 5002 (class 0 OID 33486)
-- Dependencies: 226
-- Data for Name: at_sys_msuserrole; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.at_sys_msuserrole VALUES (1, 1, 1, 1, '2025-02-12 22:14:59.247151', 2, '2025-02-12 22:14:59.247151', true);
INSERT INTO public.at_sys_msuserrole VALUES (2, 2, 2, 1, '2025-02-12 22:14:59.247151', 2, '2025-02-12 22:14:59.247151', true);
INSERT INTO public.at_sys_msuserrole VALUES (3, 3, 3, 1, '2025-02-12 22:14:59.247151', 2, '2025-02-12 22:14:59.247151', true);
INSERT INTO public.at_sys_msuserrole VALUES (4, 4, 4, 1, '2025-02-12 22:14:59.247151', 2, '2025-02-12 22:14:59.247151', true);


--
-- TOC entry 5018 (class 0 OID 33615)
-- Dependencies: 242
-- Data for Name: at_temp_absen; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5039 (class 0 OID 0)
-- Dependencies: 231
-- Name: at_ab_mstipeabsen_tipeabsen_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.at_ab_mstipeabsen_tipeabsen_id_seq', 1, false);


--
-- TOC entry 5040 (class 0 OID 0)
-- Dependencies: 233
-- Name: at_ab_trabsen_absen_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.at_ab_trabsen_absen_id_seq', 1, false);


--
-- TOC entry 5041 (class 0 OID 0)
-- Dependencies: 235
-- Name: at_ct_trcuti_cuti_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.at_ct_trcuti_cuti_id_seq', 1, false);


--
-- TOC entry 5042 (class 0 OID 0)
-- Dependencies: 237
-- Name: at_lb_mstipelembur_tipelembur_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.at_lb_mstipelembur_tipelembur_id_seq', 1, false);


--
-- TOC entry 5043 (class 0 OID 0)
-- Dependencies: 239
-- Name: at_lb_trlembur_lembur_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.at_lb_trlembur_lembur_id_seq', 1, false);


--
-- TOC entry 5044 (class 0 OID 0)
-- Dependencies: 229
-- Name: at_sys_msdays_days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.at_sys_msdays_days_id_seq', 7, true);


--
-- TOC entry 5045 (class 0 OID 0)
-- Dependencies: 219
-- Name: at_sys_msdepartment_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.at_sys_msdepartment_department_id_seq', 2, true);


--
-- TOC entry 5046 (class 0 OID 0)
-- Dependencies: 227
-- Name: at_sys_msexceltemplate_template_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.at_sys_msexceltemplate_template_id_seq', 1, false);


--
-- TOC entry 5047 (class 0 OID 0)
-- Dependencies: 217
-- Name: at_sys_msposition_position_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.at_sys_msposition_position_id_seq', 4, true);


--
-- TOC entry 5048 (class 0 OID 0)
-- Dependencies: 223
-- Name: at_sys_msrole_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.at_sys_msrole_role_id_seq', 4, true);


--
-- TOC entry 5049 (class 0 OID 0)
-- Dependencies: 215
-- Name: at_sys_msuser_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.at_sys_msuser_user_id_seq', 4, true);


--
-- TOC entry 5050 (class 0 OID 0)
-- Dependencies: 221
-- Name: at_sys_msuserdepartment_userdepartment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.at_sys_msuserdepartment_userdepartment_id_seq', 4, true);


--
-- TOC entry 5051 (class 0 OID 0)
-- Dependencies: 225
-- Name: at_sys_msuserrole_userrole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.at_sys_msuserrole_userrole_id_seq', 4, true);


--
-- TOC entry 5052 (class 0 OID 0)
-- Dependencies: 241
-- Name: at_temp_absen_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.at_temp_absen_temp_id_seq', 1, false);


--
-- TOC entry 4823 (class 2606 OID 33536)
-- Name: at_ab_mstipeabsen at_ab_mstipeabsen_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_ab_mstipeabsen
    ADD CONSTRAINT at_ab_mstipeabsen_pkey PRIMARY KEY (tipeabsen_id);


--
-- TOC entry 4825 (class 2606 OID 33545)
-- Name: at_ab_trabsen at_ab_trabsen_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_ab_trabsen
    ADD CONSTRAINT at_ab_trabsen_pkey PRIMARY KEY (absen_id);


--
-- TOC entry 4827 (class 2606 OID 33571)
-- Name: at_ct_trcuti at_ct_trcuti_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_ct_trcuti
    ADD CONSTRAINT at_ct_trcuti_pkey PRIMARY KEY (cuti_id);


--
-- TOC entry 4829 (class 2606 OID 33585)
-- Name: at_lb_mstipelembur at_lb_mstipelembur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_lb_mstipelembur
    ADD CONSTRAINT at_lb_mstipelembur_pkey PRIMARY KEY (tipelembur_id);


--
-- TOC entry 4831 (class 2606 OID 33587)
-- Name: at_lb_mstipelembur at_lb_mstipelembur_tipelembur_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_lb_mstipelembur
    ADD CONSTRAINT at_lb_mstipelembur_tipelembur_name_key UNIQUE (tipelembur_name);


--
-- TOC entry 4833 (class 2606 OID 33598)
-- Name: at_lb_trlembur at_lb_trlembur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_lb_trlembur
    ADD CONSTRAINT at_lb_trlembur_pkey PRIMARY KEY (lembur_id);


--
-- TOC entry 4819 (class 2606 OID 33527)
-- Name: at_sys_msdays at_sys_msdays_days_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msdays
    ADD CONSTRAINT at_sys_msdays_days_name_key UNIQUE (days_name);


--
-- TOC entry 4821 (class 2606 OID 33525)
-- Name: at_sys_msdays at_sys_msdays_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msdays
    ADD CONSTRAINT at_sys_msdays_pkey PRIMARY KEY (days_id);


--
-- TOC entry 4803 (class 2606 OID 33449)
-- Name: at_sys_msdepartment at_sys_msdepartment_department_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msdepartment
    ADD CONSTRAINT at_sys_msdepartment_department_name_key UNIQUE (department_name);


--
-- TOC entry 4805 (class 2606 OID 33447)
-- Name: at_sys_msdepartment at_sys_msdepartment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msdepartment
    ADD CONSTRAINT at_sys_msdepartment_pkey PRIMARY KEY (department_id);


--
-- TOC entry 4815 (class 2606 OID 33514)
-- Name: at_sys_msexceltemplate at_sys_msexceltemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msexceltemplate
    ADD CONSTRAINT at_sys_msexceltemplate_pkey PRIMARY KEY (template_id);


--
-- TOC entry 4817 (class 2606 OID 33516)
-- Name: at_sys_msexceltemplate at_sys_msexceltemplate_template_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msexceltemplate
    ADD CONSTRAINT at_sys_msexceltemplate_template_name_key UNIQUE (template_name);


--
-- TOC entry 4799 (class 2606 OID 33436)
-- Name: at_sys_msposition at_sys_msposition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msposition
    ADD CONSTRAINT at_sys_msposition_pkey PRIMARY KEY (position_id);


--
-- TOC entry 4801 (class 2606 OID 33438)
-- Name: at_sys_msposition at_sys_msposition_position_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msposition
    ADD CONSTRAINT at_sys_msposition_position_name_key UNIQUE (position_name);


--
-- TOC entry 4809 (class 2606 OID 33482)
-- Name: at_sys_msrole at_sys_msrole_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msrole
    ADD CONSTRAINT at_sys_msrole_pkey PRIMARY KEY (role_id);


--
-- TOC entry 4811 (class 2606 OID 33484)
-- Name: at_sys_msrole at_sys_msrole_role_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msrole
    ADD CONSTRAINT at_sys_msrole_role_name_key UNIQUE (role_name);


--
-- TOC entry 4795 (class 2606 OID 33425)
-- Name: at_sys_msuser at_sys_msuser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msuser
    ADD CONSTRAINT at_sys_msuser_pkey PRIMARY KEY (user_id);


--
-- TOC entry 4797 (class 2606 OID 33427)
-- Name: at_sys_msuser at_sys_msuser_user_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msuser
    ADD CONSTRAINT at_sys_msuser_user_name_key UNIQUE (user_name);


--
-- TOC entry 4807 (class 2606 OID 33458)
-- Name: at_sys_msuserdepartment at_sys_msuserdepartment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msuserdepartment
    ADD CONSTRAINT at_sys_msuserdepartment_pkey PRIMARY KEY (userdepartment_id);


--
-- TOC entry 4813 (class 2606 OID 33493)
-- Name: at_sys_msuserrole at_sys_msuserrole_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msuserrole
    ADD CONSTRAINT at_sys_msuserrole_pkey PRIMARY KEY (userrole_id);


--
-- TOC entry 4835 (class 2606 OID 33623)
-- Name: at_temp_absen at_temp_absen_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_temp_absen
    ADD CONSTRAINT at_temp_absen_pkey PRIMARY KEY (temp_id);


--
-- TOC entry 4841 (class 2606 OID 33551)
-- Name: at_ab_trabsen at_ab_trabsen_days_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_ab_trabsen
    ADD CONSTRAINT at_ab_trabsen_days_id_fkey FOREIGN KEY (days_id) REFERENCES public.at_sys_msdays(days_id);


--
-- TOC entry 4842 (class 2606 OID 33556)
-- Name: at_ab_trabsen at_ab_trabsen_tipeabsen_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_ab_trabsen
    ADD CONSTRAINT at_ab_trabsen_tipeabsen_id_fkey FOREIGN KEY (tipeabsen_id) REFERENCES public.at_ab_mstipeabsen(tipeabsen_id);


--
-- TOC entry 4843 (class 2606 OID 33546)
-- Name: at_ab_trabsen at_ab_trabsen_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_ab_trabsen
    ADD CONSTRAINT at_ab_trabsen_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.at_sys_msuser(user_id);


--
-- TOC entry 4844 (class 2606 OID 33572)
-- Name: at_ct_trcuti at_ct_trcuti_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_ct_trcuti
    ADD CONSTRAINT at_ct_trcuti_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.at_sys_msuser(user_id);


--
-- TOC entry 4845 (class 2606 OID 33609)
-- Name: at_lb_trlembur at_lb_trlembur_days_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_lb_trlembur
    ADD CONSTRAINT at_lb_trlembur_days_id_fkey FOREIGN KEY (days_id) REFERENCES public.at_sys_msdays(days_id);


--
-- TOC entry 4846 (class 2606 OID 33604)
-- Name: at_lb_trlembur at_lb_trlembur_tipelembur_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_lb_trlembur
    ADD CONSTRAINT at_lb_trlembur_tipelembur_id_fkey FOREIGN KEY (tipelembur_id) REFERENCES public.at_lb_mstipelembur(tipelembur_id);


--
-- TOC entry 4847 (class 2606 OID 33599)
-- Name: at_lb_trlembur at_lb_trlembur_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_lb_trlembur
    ADD CONSTRAINT at_lb_trlembur_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.at_sys_msuser(user_id);


--
-- TOC entry 4836 (class 2606 OID 33464)
-- Name: at_sys_msuserdepartment at_sys_msuserdepartment_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msuserdepartment
    ADD CONSTRAINT at_sys_msuserdepartment_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.at_sys_msdepartment(department_id);


--
-- TOC entry 4837 (class 2606 OID 33469)
-- Name: at_sys_msuserdepartment at_sys_msuserdepartment_position_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msuserdepartment
    ADD CONSTRAINT at_sys_msuserdepartment_position_id_fkey FOREIGN KEY (position_id) REFERENCES public.at_sys_msposition(position_id);


--
-- TOC entry 4838 (class 2606 OID 33459)
-- Name: at_sys_msuserdepartment at_sys_msuserdepartment_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msuserdepartment
    ADD CONSTRAINT at_sys_msuserdepartment_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.at_sys_msuser(user_id);


--
-- TOC entry 4839 (class 2606 OID 33499)
-- Name: at_sys_msuserrole at_sys_msuserrole_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msuserrole
    ADD CONSTRAINT at_sys_msuserrole_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.at_sys_msrole(role_id);


--
-- TOC entry 4840 (class 2606 OID 33494)
-- Name: at_sys_msuserrole at_sys_msuserrole_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.at_sys_msuserrole
    ADD CONSTRAINT at_sys_msuserrole_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.at_sys_msuser(user_id);


-- Completed on 2025-02-13 20:49:31

--
-- PostgreSQL database dump complete
--

