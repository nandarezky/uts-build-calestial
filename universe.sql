--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    speed integer,
    description text,
    name character varying(30) NOT NULL,
    kecepatan_rotasi integer DEFAULT 34441 NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    name_kode character varying(30) NOT NULL,
    udara boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    banyak_orang numeric,
    alien boolean DEFAULT false NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: satelit; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satelit (
    satelit_id integer NOT NULL,
    nama_satelit character varying(30) NOT NULL,
    kecepatan_orbit integer,
    galaxy_id integer,
    name character varying(35) NOT NULL
);


ALTER TABLE public.satelit OWNER TO freecodecamp;

--
-- Name: satelit_satelit_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satelit_satelit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satelit_satelit_id_seq OWNER TO freecodecamp;

--
-- Name: satelit_satelit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satelit_satelit_id_seq OWNED BY public.satelit.satelit_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    radius integer,
    warna character varying(30) NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: satelit satelit_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelit ALTER COLUMN satelit_id SET DEFAULT nextval('public.satelit_satelit_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 30, NULL, 'andromeda', 34441);
INSERT INTO public.galaxy VALUES (2, 20, NULL, 'bima_sakti', 34441);
INSERT INTO public.galaxy VALUES (3, 60, NULL, 'virgo', 34441);
INSERT INTO public.galaxy VALUES (4, 40, NULL, 'cygnus', 34441);
INSERT INTO public.galaxy VALUES (5, 46, NULL, 'magellanic', 34441);
INSERT INTO public.galaxy VALUES (6, 62, NULL, 'maffei', 34441);
INSERT INTO public.galaxy VALUES (7, 10, NULL, 'major', 34441);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'bulan merah', 'bulan1', false, 1);
INSERT INTO public.moon VALUES (2, 'bulan kuning', 'bulan2', false, 2);
INSERT INTO public.moon VALUES (3, 'bulan hijau', 'bulan3', false, 4);
INSERT INTO public.moon VALUES (4, 'bulan biru', 'bulan4', false, 7);
INSERT INTO public.moon VALUES (5, 'bulan ungu', 'bulan5', false, 3);
INSERT INTO public.moon VALUES (6, 'bulan oren', 'bulan6', false, 5);
INSERT INTO public.moon VALUES (7, 'bulan pink', 'bulan7', false, 6);
INSERT INTO public.moon VALUES (8, 'bulan abu abu', 'bulan8', false, 7);
INSERT INTO public.moon VALUES (9, 'bulan abun', 'bulan9', false, 10);
INSERT INTO public.moon VALUES (10, 'bulan coklat', 'bulan10', false, 11);
INSERT INTO public.moon VALUES (11, 'bulan emas', 'bulan11', false, 12);
INSERT INTO public.moon VALUES (12, 'bulanku', 'bulan12', false, 1);
INSERT INTO public.moon VALUES (13, 'bulan hitam', 'bulan13', false, 5);
INSERT INTO public.moon VALUES (14, 'bulan putih', 'bulan14', false, 2);
INSERT INTO public.moon VALUES (15, 'bulan pastel', 'bulan15', false, 4);
INSERT INTO public.moon VALUES (16, 'bulan ayam', 'bulan16', false, 6);
INSERT INTO public.moon VALUES (17, 'bulan mythic', 'bulan17', false, 11);
INSERT INTO public.moon VALUES (18, 'bulan epic', 'bulan18', false, 1);
INSERT INTO public.moon VALUES (19, 'bulan master', 'bulan19', false, 3);
INSERT INTO public.moon VALUES (20, 'bulan gm', 'bulan20', false, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'bumi', NULL, false, 5);
INSERT INTO public.planet VALUES (2, 'mars', NULL, false, 1);
INSERT INTO public.planet VALUES (3, 'jupiter', NULL, false, 3);
INSERT INTO public.planet VALUES (4, 'saturnus', NULL, false, 2);
INSERT INTO public.planet VALUES (5, 'uranus', NULL, false, 4);
INSERT INTO public.planet VALUES (6, 'neptunus', NULL, false, 5);
INSERT INTO public.planet VALUES (7, 'pluto', NULL, false, 6);
INSERT INTO public.planet VALUES (8, 'markurius', NULL, false, 7);
INSERT INTO public.planet VALUES (9, 'venus', NULL, false, 2);
INSERT INTO public.planet VALUES (10, 'nanda', NULL, false, 3);
INSERT INTO public.planet VALUES (11, 'rezky', NULL, false, 4);
INSERT INTO public.planet VALUES (12, 'putra', NULL, false, 7);


--
-- Data for Name: satelit; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satelit VALUES (1, 'palapa', 100, 2, 'palapa1');
INSERT INTO public.satelit VALUES (2, 'kelapa2', 100, 4, 'kelapa2');
INSERT INTO public.satelit VALUES (3, 'air3', 400, 5, 'air3');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 435, 'emas', 'alpha andromeda', 1);
INSERT INTO public.star VALUES (2, 255, 'kuning', 'vega', 2);
INSERT INTO public.star VALUES (3, 827, 'kuning', 'capella', 2);
INSERT INTO public.star VALUES (4, 8829, 'emas', 'arcturus', 5);
INSERT INTO public.star VALUES (5, 156, 'emas', 'canis major', 4);
INSERT INTO public.star VALUES (6, 1565, 'kuning', 'major', 6);
INSERT INTO public.star VALUES (7, 8935, 'kuning', 'alfa', 7);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 7, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: satelit_satelit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satelit_satelit_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_kode_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_kode_key UNIQUE (name_kode);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy nama_uniq_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT nama_uniq_galaxy UNIQUE (name);


--
-- Name: planet nama_uniq_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT nama_uniq_planet UNIQUE (name);


--
-- Name: star nama_uniq_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT nama_uniq_star UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: satelit satelit_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelit
    ADD CONSTRAINT satelit_name_key UNIQUE (name);


--
-- Name: satelit satelit_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelit
    ADD CONSTRAINT satelit_pkey PRIMARY KEY (satelit_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

