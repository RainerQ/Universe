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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
    number_of_species integer,
    costraint name
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    color text,
    size_in_km integer,
    costraint name
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    planet_description text,
    has_life boolean,
    star_id integer,
    costraint name
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    costraint name
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    galaxy_id integer,
    color text,
    costraint name
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 10, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Via Lactea', 12, false, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Milky Way Galaxy', 13, false, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Virgo A Galaxy', 15, false, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Canis Major Dwarf Galaxy', 20, false, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Maffei', 22, true, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Deimos moon', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Luna', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Luna Aurora', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Phobos', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Callisto', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Ganymede', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Mimas', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Enceladus', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Tethys', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Lunes Moon', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Martes Moon', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Miercoles Moon', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Jueves Moon', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Viernes Moon', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Sabado Moon', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Domingo Moon', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Enero Moon', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Febrero Moon', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Marzo Moon', 4, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mars', 10000, 'It is the red planet', true, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Rainbow', 12000, 'It is a rainbow', true, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Auric World', 50000, 'This is a big planet', false, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Urea', 13000, 'It is a small planet', false, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Metal World', 50000, 'This is a nice planet', false, 1, NULL);
INSERT INTO public.planet VALUES (6, 'Treasure', 113000, 'It is the darker planet', false, 1, NULL);
INSERT INTO public.planet VALUES (7, 'Chondrite World', 510000, 'This is a nice planet too', true, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Planet 1 epsilon andromeda', 114000, 'It is the Fun planet', false, 6, NULL);
INSERT INTO public.planet VALUES (9, 'Planet 2 epsilon andromeda', 510000, 'This is a average planet', true, 6, NULL);
INSERT INTO public.planet VALUES (10, 'Planet 3 epsilon andromeda', 1140000, 'It is the Fun planet too', false, 6, NULL);
INSERT INTO public.planet VALUES (11, 'Planet 4 epsilon andromeda', 220000, 'This is a average planet too', true, 6, NULL);
INSERT INTO public.planet VALUES (12, 'Planet 5 epsilon andromeda', 1140000, 'It is the richer planet', false, 6, NULL);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 'First Solar System', 'This is the First solar system', NULL);
INSERT INTO public.solar_system VALUES (2, 'Second Solar System', 'This is the Second solar system', NULL);
INSERT INTO public.solar_system VALUES (3, 'Third Solar System', 'This is the Third solar system', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Andromeda', 12, 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Delta Andromeda', 13, 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Lota Andromeda', 11, 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Upsilon Andromeda', 10, 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Xi Andromeda', 17, 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Mu Andromeda', 20, 1, NULL, NULL);


--
-- Name: galaxy galaxy_costraint_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_costraint_key UNIQUE (costraint);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_costraint_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_costraint_key UNIQUE (costraint);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: star name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: galaxy name_unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique_galaxy UNIQUE (name);


--
-- Name: planet planet_costraint_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_costraint_key UNIQUE (costraint);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: solar_system solar_system_costraint_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_costraint_key UNIQUE (costraint);


--
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


--
-- Name: star star_costraint_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_costraint_key UNIQUE (costraint);


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

