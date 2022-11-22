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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (65, 2018, 'Final', 4, 2, 265, 266);
INSERT INTO public.games VALUES (66, 2018, 'Third Place', 2, 0, 267, 268);
INSERT INTO public.games VALUES (67, 2018, 'Semi-Final', 2, 1, 266, 268);
INSERT INTO public.games VALUES (68, 2018, 'Semi-Final', 1, 0, 265, 267);
INSERT INTO public.games VALUES (69, 2018, 'Quarter-Final', 3, 2, 266, 269);
INSERT INTO public.games VALUES (70, 2018, 'Quarter-Final', 2, 0, 268, 270);
INSERT INTO public.games VALUES (71, 2018, 'Quarter-Final', 2, 1, 267, 271);
INSERT INTO public.games VALUES (72, 2018, 'Quarter-Final', 2, 0, 265, 272);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 2, 1, 268, 273);
INSERT INTO public.games VALUES (74, 2018, 'Eighth-Final', 1, 0, 270, 274);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 3, 2, 267, 275);
INSERT INTO public.games VALUES (76, 2018, 'Eighth-Final', 2, 0, 271, 276);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 2, 1, 266, 277);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 2, 1, 269, 278);
INSERT INTO public.games VALUES (79, 2018, 'Eighth-Final', 2, 1, 272, 279);
INSERT INTO public.games VALUES (80, 2018, 'Eighth-Final', 4, 3, 265, 280);
INSERT INTO public.games VALUES (81, 2014, 'Final', 1, 0, 281, 280);
INSERT INTO public.games VALUES (82, 2014, 'Third Place', 3, 0, 282, 271);
INSERT INTO public.games VALUES (83, 2014, 'Semi-Final', 1, 0, 280, 282);
INSERT INTO public.games VALUES (84, 2014, 'Semi-Final', 7, 1, 281, 271);
INSERT INTO public.games VALUES (85, 2014, 'Quarter-Final', 1, 0, 282, 283);
INSERT INTO public.games VALUES (86, 2014, 'Quarter-Final', 1, 0, 280, 267);
INSERT INTO public.games VALUES (87, 2014, 'Quarter-Final', 2, 1, 271, 273);
INSERT INTO public.games VALUES (88, 2014, 'Quarter-Final', 1, 0, 281, 265);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 2, 1, 271, 284);
INSERT INTO public.games VALUES (90, 2014, 'Eighth-Final', 2, 0, 273, 272);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 2, 0, 265, 285);
INSERT INTO public.games VALUES (92, 2014, 'Eighth-Final', 2, 1, 281, 286);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 2, 1, 282, 276);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 2, 1, 283, 287);
INSERT INTO public.games VALUES (95, 2014, 'Eighth-Final', 1, 0, 280, 274);
INSERT INTO public.games VALUES (96, 2014, 'Eighth-Final', 2, 1, 267, 288);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (265, 'France');
INSERT INTO public.teams VALUES (266, 'Croatia');
INSERT INTO public.teams VALUES (267, 'Belgium');
INSERT INTO public.teams VALUES (268, 'England');
INSERT INTO public.teams VALUES (269, 'Russia');
INSERT INTO public.teams VALUES (270, 'Sweden');
INSERT INTO public.teams VALUES (271, 'Brazil');
INSERT INTO public.teams VALUES (272, 'Uruguay');
INSERT INTO public.teams VALUES (273, 'Colombia');
INSERT INTO public.teams VALUES (274, 'Switzerland');
INSERT INTO public.teams VALUES (275, 'Japan');
INSERT INTO public.teams VALUES (276, 'Mexico');
INSERT INTO public.teams VALUES (277, 'Denmark');
INSERT INTO public.teams VALUES (278, 'Spain');
INSERT INTO public.teams VALUES (279, 'Portugal');
INSERT INTO public.teams VALUES (280, 'Argentina');
INSERT INTO public.teams VALUES (281, 'Germany');
INSERT INTO public.teams VALUES (282, 'Netherlands');
INSERT INTO public.teams VALUES (283, 'Costa Rica');
INSERT INTO public.teams VALUES (284, 'Chile');
INSERT INTO public.teams VALUES (285, 'Nigeria');
INSERT INTO public.teams VALUES (286, 'Algeria');
INSERT INTO public.teams VALUES (287, 'Greece');
INSERT INTO public.teams VALUES (288, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 288, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

