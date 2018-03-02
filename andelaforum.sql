--
-- PostgreSQL database dump
--

-- Dumped from database version 10.2
-- Dumped by pg_dump version 10.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE comments (
    id integer NOT NULL,
    comment character(250),
    userid integer NOT NULL,
    replyid integer,
    time_stamp timestamp without time zone
);


ALTER TABLE comments OWNER TO postgres;

--
-- Name: userlevels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE userlevels (
    id integer NOT NULL,
    type text NOT NULL
);


ALTER TABLE userlevels OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE users (
    id integer NOT NULL,
    firstname text,
    lastname text,
    username text,
    time_stamp timestamp without time zone,
    userlevel integer,
    password character(50) NOT NULL
);


ALTER TABLE users OWNER TO postgres;

--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY comments (id, comment, userid, replyid, time_stamp) FROM stdin;
\.


--
-- Data for Name: userlevels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY userlevels (id, type) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, firstname, lastname, username, time_stamp, userlevel, password) FROM stdin;
\.


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: userlevels userlevels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY userlevels
    ADD CONSTRAINT userlevels_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: comments fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT fk_user_id FOREIGN KEY (userid) REFERENCES users(id);


--
-- Name: users fk_user_level; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT fk_user_level FOREIGN KEY (userlevel) REFERENCES userlevels(id);


--
-- PostgreSQL database dump complete
--

