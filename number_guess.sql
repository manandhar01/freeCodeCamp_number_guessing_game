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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0 NOT NULL,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1689480308431', 5, 20);
INSERT INTO public.users VALUES (3, 'user_1689480308430', 5, 20);
INSERT INTO public.users VALUES (4, 'user_1689480314299', 5, 20);
INSERT INTO public.users VALUES (5, 'user_1689480314298', 5, 20);
INSERT INTO public.users VALUES (6, 'user_1689480324142', 5, 20);
INSERT INTO public.users VALUES (7, 'user_1689480324141', 5, 20);
INSERT INTO public.users VALUES (8, 'user_1689480341435', 5, 20);
INSERT INTO public.users VALUES (9, 'user_1689480341434', 5, 20);
INSERT INTO public.users VALUES (40, 'user_1689484404125', 2, 173);
INSERT INTO public.users VALUES (11, 'user_1689481013777', 2, 151);
INSERT INTO public.users VALUES (39, 'user_1689484404126', 5, 346);
INSERT INTO public.users VALUES (10, 'user_1689481013778', 5, 444);
INSERT INTO public.users VALUES (13, 'user_1689481392325', 2, 500);
INSERT INTO public.users VALUES (12, 'user_1689481392326', 4, 459);
INSERT INTO public.users VALUES (14, 'user_1689481408025', 0, NULL);
INSERT INTO public.users VALUES (15, 'user_1689481408024', 0, NULL);
INSERT INTO public.users VALUES (16, 'user_1689481416158', 0, NULL);
INSERT INTO public.users VALUES (17, 'user_1689481416157', 0, NULL);
INSERT INTO public.users VALUES (18, 'user_1689481426310', 0, NULL);
INSERT INTO public.users VALUES (19, 'user_1689481426309', 0, NULL);
INSERT INTO public.users VALUES (20, 'user_1689481448572', 0, NULL);
INSERT INTO public.users VALUES (21, 'user_1689481448571', 0, NULL);
INSERT INTO public.users VALUES (22, 'user_1689481453519', 0, NULL);
INSERT INTO public.users VALUES (23, 'user_1689481453518', 0, NULL);
INSERT INTO public.users VALUES (24, 'user_1689481558016', 0, NULL);
INSERT INTO public.users VALUES (25, 'user_1689481558015', 0, NULL);
INSERT INTO public.users VALUES (42, 'user_1689484431842', 2, 239);
INSERT INTO public.users VALUES (27, 'user_1689481621110', 2, 688);
INSERT INTO public.users VALUES (41, 'user_1689484431843', 5, 265);
INSERT INTO public.users VALUES (26, 'user_1689481621111', 5, 209);
INSERT INTO public.users VALUES (29, 'user_1689481644214', 2, 103);
INSERT INTO public.users VALUES (44, 'user_1689484468035', 2, 266);
INSERT INTO public.users VALUES (28, 'user_1689481644215', 5, 156);
INSERT INTO public.users VALUES (30, 'testuesr', 0, NULL);
INSERT INTO public.users VALUES (43, 'user_1689484468036', 5, 373);
INSERT INTO public.users VALUES (32, 'user_1689482810410', 2, 326);
INSERT INTO public.users VALUES (31, 'user_1689482810411', 5, 201);
INSERT INTO public.users VALUES (34, 'user_1689482822359', 2, 32);
INSERT INTO public.users VALUES (46, 'user_1689484499631', 2, 426);
INSERT INTO public.users VALUES (33, 'user_1689482822360', 5, 116);
INSERT INTO public.users VALUES (45, 'user_1689484499632', 5, 1000);
INSERT INTO public.users VALUES (36, 'user_1689482838064', 2, 579);
INSERT INTO public.users VALUES (35, 'user_1689482838065', 5, 469);
INSERT INTO public.users VALUES (48, 'user_1689484905351', 2, 1);
INSERT INTO public.users VALUES (38, 'user_1689482857126', 2, 72);
INSERT INTO public.users VALUES (47, 'user_1689484905352', 5, 1);
INSERT INTO public.users VALUES (37, 'user_1689482857127', 5, 272);
INSERT INTO public.users VALUES (1, 'testuser', 5, 10);
INSERT INTO public.users VALUES (50, 'user_1689485332893', 2, 443);
INSERT INTO public.users VALUES (49, 'user_1689485332894', 5, 125);
INSERT INTO public.users VALUES (52, 'user_1689485477326', 2, 268);
INSERT INTO public.users VALUES (51, 'user_1689485477327', 5, 469);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 52, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

