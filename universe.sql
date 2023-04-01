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
    name character varying(20) NOT NULL,
    weight numeric(6,2),
    size numeric(6,2),
    starnum integer
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
    name character varying(20) NOT NULL,
    number integer,
    planet_id integer NOT NULL,
    weight numeric(6,2)
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
-- Name: mygalaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.mygalaxy (
    mygalaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    number integer,
    weight numeric(6,2)
);


ALTER TABLE public.mygalaxy OWNER TO freecodecamp;

--
-- Name: mygalaxy_mygalaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.mygalaxy_mygalaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mygalaxy_mygalaxy_id_seq OWNER TO freecodecamp;

--
-- Name: mygalaxy_mygalaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.mygalaxy_mygalaxy_id_seq OWNED BY public.mygalaxy.mygalaxy_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    star_id integer NOT NULL,
    weight numeric(6,2),
    size numeric(6,2)
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    number integer,
    weight numeric(6,2),
    info text,
    isplanet boolean,
    ismoon boolean,
    galaxy_id integer NOT NULL
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
-- Name: mygalaxy mygalaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mygalaxy ALTER COLUMN mygalaxy_id SET DEFAULT nextval('public.mygalaxy_mygalaxy_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g1', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'g2', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'g3', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'g4', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'g5', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'g6', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'g7', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'g8', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'g9', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'g10', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'g11', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'g12', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, 'g13', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, 'g14', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, 'g15', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, 'g16', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, 'g17', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, 'g18', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, 'g19', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, 'g20', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (7, 'm1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (8, 'm2', NULL, 1, NULL);
INSERT INTO public.moon VALUES (9, 'm3', NULL, 1, NULL);
INSERT INTO public.moon VALUES (10, 'm4', NULL, 1, NULL);
INSERT INTO public.moon VALUES (11, 'm5', NULL, 1, NULL);
INSERT INTO public.moon VALUES (12, 'm21', NULL, 1, NULL);
INSERT INTO public.moon VALUES (13, 'm6', NULL, 1, NULL);
INSERT INTO public.moon VALUES (14, 'm7', NULL, 1, NULL);
INSERT INTO public.moon VALUES (15, 'm8', NULL, 1, NULL);
INSERT INTO public.moon VALUES (16, 'm9', NULL, 1, NULL);
INSERT INTO public.moon VALUES (17, 'm10', NULL, 1, NULL);
INSERT INTO public.moon VALUES (18, 'm11', NULL, 1, NULL);
INSERT INTO public.moon VALUES (19, 'm12', NULL, 1, NULL);
INSERT INTO public.moon VALUES (20, 'm13', NULL, 1, NULL);
INSERT INTO public.moon VALUES (21, 'm14', NULL, 1, NULL);
INSERT INTO public.moon VALUES (22, 'm15', NULL, 1, NULL);
INSERT INTO public.moon VALUES (23, 'm16', NULL, 1, NULL);
INSERT INTO public.moon VALUES (24, 'm17', NULL, 1, NULL);
INSERT INTO public.moon VALUES (25, 'm18', NULL, 1, NULL);
INSERT INTO public.moon VALUES (26, 'm19', NULL, 1, NULL);
INSERT INTO public.moon VALUES (27, 'm20', NULL, 1, NULL);


--
-- Data for Name: mygalaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.mygalaxy VALUES (1, 'my1', NULL, NULL);
INSERT INTO public.mygalaxy VALUES (2, 'my2', NULL, NULL);
INSERT INTO public.mygalaxy VALUES (3, 'my3', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p1', 4, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'p2', 5, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'p3', 4, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'p4', 5, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'p5', 6, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'p6', 7, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'p7', 4, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'p8', 4, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'p9', 4, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'p10', 4, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'p11', 4, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'p12', 4, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4, 's1', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 's2', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (6, 's3', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (7, 's4', NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (8, 's5', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (9, 's6', NULL, NULL, NULL, NULL, NULL, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: mygalaxy_mygalaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.mygalaxy_mygalaxy_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: mygalaxy mygalaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mygalaxy
    ADD CONSTRAINT mygalaxy_name_key UNIQUE (name);


--
-- Name: mygalaxy mygalaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mygalaxy
    ADD CONSTRAINT mygalaxy_pkey PRIMARY KEY (mygalaxy_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

