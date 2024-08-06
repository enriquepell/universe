--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: additional_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.additional_table (
    additional_table_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    value numeric NOT NULL
);


ALTER TABLE public.additional_table OWNER TO freecodecamp;

--
-- Name: additional_table_additional_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.additional_table_additional_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.additional_table_additional_table_id_seq OWNER TO freecodecamp;

--
-- Name: additional_table_additional_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.additional_table_additional_table_id_seq OWNED BY public.additional_table.additional_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type text NOT NULL,
    distance_from_earth numeric NOT NULL,
    number_of_stars integer NOT NULL,
    has_black_hole boolean NOT NULL
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
    name character varying(255) NOT NULL,
    planet_id integer NOT NULL,
    diameter integer NOT NULL,
    is_habitable boolean NOT NULL
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
    name character varying(255) NOT NULL,
    star_id integer NOT NULL,
    type text NOT NULL,
    radius numeric NOT NULL,
    has_rings boolean NOT NULL
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
    name character varying(255) NOT NULL,
    galaxy_id integer NOT NULL,
    type text NOT NULL,
    mass numeric NOT NULL,
    luminosity integer NOT NULL,
    has_planets boolean NOT NULL
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
-- Name: additional_table additional_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional_table ALTER COLUMN additional_table_id SET DEFAULT nextval('public.additional_table_additional_table_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: additional_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.additional_table VALUES (1, 'Additional 1', 'Description 1', 100.0);
INSERT INTO public.additional_table VALUES (2, 'Additional 2', 'Description 2', 200.0);
INSERT INTO public.additional_table VALUES (3, 'Additional 3', 'Description 3', 300.0);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 0, 100, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 2537000, 100000, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 2730000, 40000, true);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'Spiral', 2800, 800, true);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 'Elliptical', 1300, 1500, true);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'Spiral', 2300, 100, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', 1, 3474, false);
INSERT INTO public.moon VALUES (2, 'Moon 2', 1, 3000, false);
INSERT INTO public.moon VALUES (3, 'Moon 3', 2, 5000, false);
INSERT INTO public.moon VALUES (4, 'Moon 4', 3, 2500, false);
INSERT INTO public.moon VALUES (5, 'Moon 5', 4, 1000, false);
INSERT INTO public.moon VALUES (6, 'Moon 6', 5, 2000, false);
INSERT INTO public.moon VALUES (7, 'Moon 7', 6, 3000, false);
INSERT INTO public.moon VALUES (8, 'Moon 8', 7, 1500, false);
INSERT INTO public.moon VALUES (9, 'Moon 9', 8, 2000, false);
INSERT INTO public.moon VALUES (10, 'Moon 10', 9, 1000, false);
INSERT INTO public.moon VALUES (11, 'Moon 11', 10, 500, false);
INSERT INTO public.moon VALUES (12, 'Moon 12', 11, 600, false);
INSERT INTO public.moon VALUES (13, 'Moon 13', 12, 700, false);
INSERT INTO public.moon VALUES (14, 'Moon 14', 3, 800, false);
INSERT INTO public.moon VALUES (15, 'Moon 15', 4, 900, false);
INSERT INTO public.moon VALUES (16, 'Moon 16', 5, 1000, false);
INSERT INTO public.moon VALUES (17, 'Moon 17', 6, 1100, false);
INSERT INTO public.moon VALUES (18, 'Moon 18', 7, 1200, false);
INSERT INTO public.moon VALUES (19, 'Moon 19', 8, 1300, false);
INSERT INTO public.moon VALUES (20, 'Moon 20', 9, 1400, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Proxima b', 3, 'Terrestrial', 1.1, false);
INSERT INTO public.planet VALUES (2, 'Alpha Centauri Bb', 5, 'Terrestrial', 1.1, false);
INSERT INTO public.planet VALUES (3, 'Alpha Centauri Bc', 5, 'Terrestrial', 1.2, false);
INSERT INTO public.planet VALUES (4, 'Sirius Ab', 1, 'Gas Giant', 1.2, true);
INSERT INTO public.planet VALUES (5, 'Betelgeuse B', 2, 'Gas Giant', 1.3, true);
INSERT INTO public.planet VALUES (6, 'Proxima c', 3, 'Gas Giant', 1.4, true);
INSERT INTO public.planet VALUES (7, 'Proxima d', 3, 'Terrestrial', 1.1, false);
INSERT INTO public.planet VALUES (8, 'Alpha Centauri Bd', 5, 'Gas Giant', 1.2, true);
INSERT INTO public.planet VALUES (9, 'Canopus b', 4, 'Terrestrial', 1.3, false);
INSERT INTO public.planet VALUES (10, 'Arcturus b', 6, 'Gas Giant', 1.4, true);
INSERT INTO public.planet VALUES (11, 'Arcturus c', 6, 'Terrestrial', 1.5, false);
INSERT INTO public.planet VALUES (12, 'Arcturus d', 6, 'Gas Giant', 1.6, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 1, 'A', 2.1, 25, false);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 1, 'Red Supergiant', 20, 100000, false);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 1, 'Red Dwarf', 0.123, 0, true);
INSERT INTO public.star VALUES (4, 'Canopus', 1, 'F', 8.74, 15200, false);
INSERT INTO public.star VALUES (5, 'Alpha Centauri A', 1, 'G', 1.1, 2, true);
INSERT INTO public.star VALUES (6, 'Arcturus', 1, 'K', 1.1, 170, false);


--
-- Name: additional_table_additional_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.additional_table_additional_table_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: additional_table additional_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional_table
    ADD CONSTRAINT additional_table_name_key UNIQUE (name);


--
-- Name: additional_table additional_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.additional_table
    ADD CONSTRAINT additional_table_pkey PRIMARY KEY (additional_table_id);


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

