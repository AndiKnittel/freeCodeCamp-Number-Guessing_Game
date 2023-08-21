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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    games_id integer NOT NULL,
    number_of_guesses integer DEFAULT 0 NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_games_id_seq OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_games_id_seq OWNED BY public.games.games_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
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
-- Name: games games_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN games_id SET DEFAULT nextval('public.games_games_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 4, 36);
INSERT INTO public.games VALUES (2, 657, 36);
INSERT INTO public.games VALUES (3, 64, 37);
INSERT INTO public.games VALUES (4, 948, 37);
INSERT INTO public.games VALUES (5, 972, 36);
INSERT INTO public.games VALUES (6, 262, 36);
INSERT INTO public.games VALUES (7, 752, 36);
INSERT INTO public.games VALUES (8, 13, 23);
INSERT INTO public.games VALUES (9, 15, 23);
INSERT INTO public.games VALUES (10, 230, 38);
INSERT INTO public.games VALUES (11, 942, 38);
INSERT INTO public.games VALUES (12, 166, 39);
INSERT INTO public.games VALUES (13, 378, 39);
INSERT INTO public.games VALUES (14, 476, 38);
INSERT INTO public.games VALUES (15, 325, 38);
INSERT INTO public.games VALUES (16, 820, 38);
INSERT INTO public.games VALUES (17, 945, 40);
INSERT INTO public.games VALUES (18, 538, 40);
INSERT INTO public.games VALUES (19, 153, 41);
INSERT INTO public.games VALUES (20, 617, 41);
INSERT INTO public.games VALUES (21, 773, 40);
INSERT INTO public.games VALUES (22, 236, 40);
INSERT INTO public.games VALUES (23, 452, 40);
INSERT INTO public.games VALUES (24, 993, 42);
INSERT INTO public.games VALUES (25, 515, 42);
INSERT INTO public.games VALUES (26, 99, 43);
INSERT INTO public.games VALUES (27, 819, 43);
INSERT INTO public.games VALUES (28, 104, 42);
INSERT INTO public.games VALUES (29, 968, 42);
INSERT INTO public.games VALUES (30, 504, 42);
INSERT INTO public.games VALUES (31, 197, 48);
INSERT INTO public.games VALUES (32, 246, 48);
INSERT INTO public.games VALUES (33, 36, 49);
INSERT INTO public.games VALUES (34, 918, 49);
INSERT INTO public.games VALUES (35, 709, 48);
INSERT INTO public.games VALUES (36, 181, 48);
INSERT INTO public.games VALUES (37, 74, 48);
INSERT INTO public.games VALUES (38, 8, 23);
INSERT INTO public.games VALUES (39, 685, 50);
INSERT INTO public.games VALUES (40, 830, 50);
INSERT INTO public.games VALUES (41, 866, 51);
INSERT INTO public.games VALUES (42, 248, 51);
INSERT INTO public.games VALUES (43, 272, 50);
INSERT INTO public.games VALUES (44, 731, 50);
INSERT INTO public.games VALUES (45, 606, 50);
INSERT INTO public.games VALUES (46, 463, 52);
INSERT INTO public.games VALUES (47, 539, 52);
INSERT INTO public.games VALUES (48, 34, 53);
INSERT INTO public.games VALUES (49, 238, 53);
INSERT INTO public.games VALUES (50, 480, 52);
INSERT INTO public.games VALUES (51, 681, 52);
INSERT INTO public.games VALUES (52, 416, 52);
INSERT INTO public.games VALUES (53, 34, 54);
INSERT INTO public.games VALUES (54, 630, 54);
INSERT INTO public.games VALUES (55, 908, 55);
INSERT INTO public.games VALUES (56, 136, 55);
INSERT INTO public.games VALUES (57, 670, 54);
INSERT INTO public.games VALUES (58, 211, 54);
INSERT INTO public.games VALUES (59, 888, 54);
INSERT INTO public.games VALUES (60, 448, 56);
INSERT INTO public.games VALUES (61, 246, 56);
INSERT INTO public.games VALUES (62, 286, 57);
INSERT INTO public.games VALUES (63, 73, 57);
INSERT INTO public.games VALUES (64, 500, 56);
INSERT INTO public.games VALUES (65, 337, 56);
INSERT INTO public.games VALUES (66, 451, 56);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1692626781783');
INSERT INTO public.users VALUES (2, 'user_1692626781782');
INSERT INTO public.users VALUES (3, 'user_1692627779887');
INSERT INTO public.users VALUES (4, 'user_1692627779886');
INSERT INTO public.users VALUES (5, 'user_1692628018952');
INSERT INTO public.users VALUES (6, 'user_1692628018951');
INSERT INTO public.users VALUES (7, 'user_1692628203753');
INSERT INTO public.users VALUES (8, 'user_1692628203752');
INSERT INTO public.users VALUES (9, 'user_1692628303944');
INSERT INTO public.users VALUES (10, 'user_1692628303943');
INSERT INTO public.users VALUES (11, 'user_1692628357935');
INSERT INTO public.users VALUES (12, 'user_1692628357934');
INSERT INTO public.users VALUES (13, 'user_1692628489404');
INSERT INTO public.users VALUES (14, 'user_1692628489403');
INSERT INTO public.users VALUES (15, 'user_1692628891916');
INSERT INTO public.users VALUES (16, 'user_1692628891915');
INSERT INTO public.users VALUES (17, 'user_1692629066729');
INSERT INTO public.users VALUES (18, 'user_1692629066728');
INSERT INTO public.users VALUES (19, 'user_1692629134287');
INSERT INTO public.users VALUES (20, 'user_1692629134286');
INSERT INTO public.users VALUES (21, 'user_1692629395186');
INSERT INTO public.users VALUES (22, 'user_1692629395185');
INSERT INTO public.users VALUES (23, 'Andi');
INSERT INTO public.users VALUES (24, 'user_1692629972412');
INSERT INTO public.users VALUES (25, 'user_1692629972411');
INSERT INTO public.users VALUES (26, 'user_1692630273653');
INSERT INTO public.users VALUES (27, 'user_1692630273652');
INSERT INTO public.users VALUES (28, 'user_1692630716101');
INSERT INTO public.users VALUES (30, 'user_1692630716100');
INSERT INTO public.users VALUES (31, '');
INSERT INTO public.users VALUES (32, 'user_1692631657500');
INSERT INTO public.users VALUES (33, 'user_1692631657499');
INSERT INTO public.users VALUES (34, 'user_1692631758276');
INSERT INTO public.users VALUES (35, 'user_1692631758275');
INSERT INTO public.users VALUES (36, 'user_1692632395248');
INSERT INTO public.users VALUES (37, 'user_1692632395247');
INSERT INTO public.users VALUES (38, 'user_1692632646102');
INSERT INTO public.users VALUES (39, 'user_1692632646101');
INSERT INTO public.users VALUES (40, 'user_1692632767566');
INSERT INTO public.users VALUES (41, 'user_1692632767565');
INSERT INTO public.users VALUES (42, 'user_1692632996386');
INSERT INTO public.users VALUES (43, 'user_1692632996385');
INSERT INTO public.users VALUES (44, 'user_1692633042016');
INSERT INTO public.users VALUES (45, 'user_1692633042015');
INSERT INTO public.users VALUES (46, 'user_1692633055913');
INSERT INTO public.users VALUES (47, 'user_1692633055912');
INSERT INTO public.users VALUES (48, 'user_1692633083528');
INSERT INTO public.users VALUES (49, 'user_1692633083527');
INSERT INTO public.users VALUES (50, 'user_1692633154227');
INSERT INTO public.users VALUES (51, 'user_1692633154226');
INSERT INTO public.users VALUES (52, 'user_1692633223057');
INSERT INTO public.users VALUES (53, 'user_1692633223056');
INSERT INTO public.users VALUES (54, 'user_1692633407869');
INSERT INTO public.users VALUES (55, 'user_1692633407868');
INSERT INTO public.users VALUES (56, 'user_1692633483043');
INSERT INTO public.users VALUES (57, 'user_1692633483042');


--
-- Name: games_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_games_id_seq', 66, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 57, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (games_id);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

