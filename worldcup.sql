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
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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

INSERT INTO public.games VALUES (33, 2018, 'Final', 500, 501, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 502, 503, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 501, 503, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 500, 502, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 501, 504, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 503, 505, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 502, 506, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 500, 507, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 503, 508, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 505, 509, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 502, 510, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 506, 511, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 501, 512, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 504, 513, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 507, 514, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 500, 515, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 516, 515, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 517, 506, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 515, 517, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 516, 506, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 517, 518, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 515, 502, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 506, 508, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 516, 500, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 506, 519, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 508, 507, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 500, 520, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 516, 521, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 517, 511, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 518, 522, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 515, 509, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 502, 523, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (500, 'France');
INSERT INTO public.teams VALUES (501, 'Croatia');
INSERT INTO public.teams VALUES (502, 'Belgium');
INSERT INTO public.teams VALUES (503, 'England');
INSERT INTO public.teams VALUES (504, 'Russia');
INSERT INTO public.teams VALUES (505, 'Sweden');
INSERT INTO public.teams VALUES (506, 'Brazil');
INSERT INTO public.teams VALUES (507, 'Uruguay');
INSERT INTO public.teams VALUES (508, 'Colombia');
INSERT INTO public.teams VALUES (509, 'Switzerland');
INSERT INTO public.teams VALUES (510, 'Japan');
INSERT INTO public.teams VALUES (511, 'Mexico');
INSERT INTO public.teams VALUES (512, 'Denmark');
INSERT INTO public.teams VALUES (513, 'Spain');
INSERT INTO public.teams VALUES (514, 'Portugal');
INSERT INTO public.teams VALUES (515, 'Argentina');
INSERT INTO public.teams VALUES (516, 'Germany');
INSERT INTO public.teams VALUES (517, 'Netherlands');
INSERT INTO public.teams VALUES (518, 'Costa Rica');
INSERT INTO public.teams VALUES (519, 'Chile');
INSERT INTO public.teams VALUES (520, 'Nigeria');
INSERT INTO public.teams VALUES (521, 'Algeria');
INSERT INTO public.teams VALUES (522, 'Greece');
INSERT INTO public.teams VALUES (523, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 523, true);


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

