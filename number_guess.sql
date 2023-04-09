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
    username character varying(22) NOT NULL,
    games_played integer,
    attempts integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('yasser', 77, 2);
INSERT INTO public.users VALUES ('user_1681081182754', 72, 89);
INSERT INTO public.users VALUES ('user_1681081182755', 74, 131);
INSERT INTO public.users VALUES ('user_1681081259835', 65, 154);
INSERT INTO public.users VALUES ('user_1681081259836', 67, 292);
INSERT INTO public.users VALUES ('user_1681081417186', 59, 269);
INSERT INTO public.users VALUES ('user_1681081417187', 60, 148);
INSERT INTO public.users VALUES ('user_1681081479464', 53, 900);
INSERT INTO public.users VALUES ('user_1681081479465', 54, 691);
INSERT INTO public.users VALUES ('user_1681081492624', 46, 557);
INSERT INTO public.users VALUES ('user_1681081492625', 48, 639);
INSERT INTO public.users VALUES ('user_1681081548843', 39, 425);
INSERT INTO public.users VALUES ('user_1681081548844', 41, 252);
INSERT INTO public.users VALUES ('user_1681081960504', 32, 312);
INSERT INTO public.users VALUES ('user_1681081960505', 34, 196);
INSERT INTO public.users VALUES ('user_1681081968870', 26, 108);
INSERT INTO public.users VALUES ('user_1681081968871', 28, 321);
INSERT INTO public.users VALUES ('user_1681081974394', 19, 598);
INSERT INTO public.users VALUES ('user_1681081974395', 21, 503);
INSERT INTO public.users VALUES ('user_1681081983323', 12, 744);
INSERT INTO public.users VALUES ('user_1681081983324', 14, 426);
INSERT INTO public.users VALUES ('user_1681081989840', 5, 375);
INSERT INTO public.users VALUES ('user_1681081989841', 7, 540);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- PostgreSQL database dump complete
--


