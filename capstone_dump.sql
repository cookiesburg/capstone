--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: thomasdefeo
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO thomasdefeo;

--
-- Name: cookers; Type: TABLE; Schema: public; Owner: thomasdefeo
--

CREATE TABLE cookers (
    id bigint NOT NULL,
    food_description character varying,
    price_per_week character varying,
    neighborhood character varying,
    delivery_available boolean,
    user_id bigint,
    dietary_options character varying,
    profile_photo character varying
);


ALTER TABLE cookers OWNER TO thomasdefeo;

--
-- Name: cookers_id_seq; Type: SEQUENCE; Schema: public; Owner: thomasdefeo
--

CREATE SEQUENCE cookers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cookers_id_seq OWNER TO thomasdefeo;

--
-- Name: cookers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thomasdefeo
--

ALTER SEQUENCE cookers_id_seq OWNED BY cookers.id;


--
-- Name: eaters; Type: TABLE; Schema: public; Owner: thomasdefeo
--

CREATE TABLE eaters (
    id bigint NOT NULL,
    user_id bigint,
    cooker_id integer
);


ALTER TABLE eaters OWNER TO thomasdefeo;

--
-- Name: eaters_id_seq; Type: SEQUENCE; Schema: public; Owner: thomasdefeo
--

CREATE SEQUENCE eaters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE eaters_id_seq OWNER TO thomasdefeo;

--
-- Name: eaters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thomasdefeo
--

ALTER SEQUENCE eaters_id_seq OWNED BY eaters.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: thomasdefeo
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO thomasdefeo;

--
-- Name: users; Type: TABLE; Schema: public; Owner: thomasdefeo
--

CREATE TABLE users (
    id bigint NOT NULL,
    username character varying,
    phone_number integer,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_type integer
);


ALTER TABLE users OWNER TO thomasdefeo;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: thomasdefeo
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO thomasdefeo;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thomasdefeo
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: cookers id; Type: DEFAULT; Schema: public; Owner: thomasdefeo
--

ALTER TABLE ONLY cookers ALTER COLUMN id SET DEFAULT nextval('cookers_id_seq'::regclass);


--
-- Name: eaters id; Type: DEFAULT; Schema: public; Owner: thomasdefeo
--

ALTER TABLE ONLY eaters ALTER COLUMN id SET DEFAULT nextval('eaters_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: thomasdefeo
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: thomasdefeo
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2017-08-04 22:46:02.727407	2017-08-04 22:46:02.727407
\.


--
-- Data for Name: cookers; Type: TABLE DATA; Schema: public; Owner: thomasdefeo
--

COPY cookers (id, food_description, price_per_week, neighborhood, delivery_available, user_id, dietary_options, profile_photo) FROM stdin;
15	I'm going through Mastering the Art of French Cooking page by page so whatever page I'm on is what you'll get. Have faith, I'm sure there will be some real winners along the way. 	over 60	Envigado	t	87	none	data:image/jpeg;base64,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
14	I make many delicious Thai meals for my family but I would love to cook for you also! I make many soups and curries - very spicy with chicken and shrimp mostly.	under 40	El Poblado	t	86	none	http://www.ladylux.com/images/articles/Spicy-Thai-Coconut-Chicken-Soup(1).jpg
16	I grew up in Texas in an Indian household and I've developed my own unique style of  traditional Indian dishes with some Texas tang. Get ready for some HEAT! 	under 40	El Poblado	t	88	none	http://www.texasmonthly.com/wp-content/uploads/2014/07/BBQ-Sign-Steer-e1436846444777.png
17	I make amazing dishes with local organic produce when possible. Lots of miracle foods and ancient grains. NO MEAT EVER except fish because fish have no souls. Namaste!	over 60	Envigado	t	89	pescatarian	https://christianjfarber.files.wordpress.com/2017/01/shutterstock_122924773.jpg
18	I do not cook animals. It is wrong. I make sandwiches - simple sandwiches and damn fine ones too. This is all one needs. Sometimes they have mustard and sometimes they do not.	under 40	Envigado	t	90	vegetarian	https://pbs.twimg.com/profile_images/839843233903464448/S7GofFfO.jpg
19	I am from Seoul and I cook traditional Korean food. I make kimchi stew at least once per week and everything I cook is very spicy, it will make you sweat very much.	40-60	El Poblado	t	97	none	https://lolcow.farm/ot/src/1464871782727.jpg
\.


--
-- Name: cookers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thomasdefeo
--

SELECT pg_catalog.setval('cookers_id_seq', 19, true);


--
-- Data for Name: eaters; Type: TABLE DATA; Schema: public; Owner: thomasdefeo
--

COPY eaters (id, user_id, cooker_id) FROM stdin;
3	81	\N
2	80	16
4	82	14
5	91	18
6	92	16
7	93	15
8	94	15
9	95	18
10	96	14
11	98	\N
\.


--
-- Name: eaters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thomasdefeo
--

SELECT pg_catalog.setval('eaters_id_seq', 11, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: thomasdefeo
--

COPY schema_migrations (version) FROM stdin;
20170804221001
20170805002505
20170805165224
20170805190639
20170806180849
20170806181049
20170806230315
20170807022905
20170807193651
20170807194119
20170807200414
20170807231825
20170807232356
20170808204417
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: thomasdefeo
--

COPY users (id, username, phone_number, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, user_type) FROM stdin;
91	Carol Joy	9998723	caroling@xmas.com	$2a$11$8ItghLUYa9QI9cZ8b/WDXOrOj0EBlyyNorPIgtDkqkcy8LAnfFJdi	\N	\N	\N	1	2017-08-10 21:23:07.310391	2017-08-10 21:23:07.310391	127.0.0.1	127.0.0.1	2017-08-10 21:23:07.306232	2017-08-10 21:23:07.311166	1
92	Ricky Winters	6625389	1080@snowboarding.com	$2a$11$BYlns86zOvNjqX1OZPf3Fu1sEEQH.6Q5LfKUSgv/Inyy8dj1g4Q8y	\N	\N	\N	1	2017-08-10 21:24:07.208566	2017-08-10 21:24:07.208566	127.0.0.1	127.0.0.1	2017-08-10 21:24:07.205258	2017-08-10 21:24:07.209093	1
93	Tony Hawk	9907222	bird@house.com	$2a$11$9RhVrWYG7C1ghuezmK0YSu8EWlBlzIDI09Hh7Lxs8ZDEluGjL8UqW	\N	\N	\N	1	2017-08-10 21:24:48.287865	2017-08-10 21:24:48.287865	127.0.0.1	127.0.0.1	2017-08-10 21:24:48.284732	2017-08-10 21:24:48.288429	1
94	Wilson	9200	rango@frontdesk.com	$2a$11$YKL35fSHgikeePJcdijjN.URTKDKlXRCdzlFZ.J9xDV03dFUhYzU.	\N	\N	\N	2	2017-08-10 22:00:53.485343	2017-08-10 21:25:30.56349	127.0.0.1	127.0.0.1	2017-08-10 21:25:30.560309	2017-08-10 22:00:53.486263	1
97	KimchiKim	91443	kevs@mom.com	$2a$11$CxP/t59YKhTurGbFZxULReaV0/umZbJX4413ttHYrkGLFYFOTjdLm	\N	\N	\N	1	2017-08-10 22:44:50.448847	2017-08-10 22:44:50.448847	127.0.0.1	127.0.0.1	2017-08-10 22:44:50.445372	2017-08-10 22:44:50.449605	2
96	kareem_campell	64263	citystars@sk8.com	$2a$11$C.XdrOw8E6NGdzygToGAFu00hz5znQZU62K4oCqiSLoIdVEyHFWBy	\N	\N	\N	2	2017-08-11 02:49:00.133928	2017-08-10 21:27:57.034077	127.0.0.1	127.0.0.1	2017-08-10 21:27:57.03085	2017-08-11 02:49:00.134821	1
95	The_Real_Esteban	9997672	teamketchup@rockthevote.com	$2a$11$6Qd064bbZ57xYV9226GmmeI1qfkqJ9W5efFd8eOUiaQDvLhK6RkLa	\N	\N	\N	4	2017-08-11 03:25:33.96441	2017-08-10 21:41:31.489984	127.0.0.1	127.0.0.1	2017-08-10 21:27:08.522259	2017-08-11 03:25:33.965255	1
82	polymorphic	\N	poly@poly.com	$2a$11$JuuyojhBGMmU6W6.iCk87uT8WOf1wmshLC2FSHNGf/7jgLCWTJWei	\N	\N	\N	42	2017-08-10 23:55:16.889968	2017-08-10 23:05:31.015595	127.0.0.1	127.0.0.1	2017-08-07 23:09:56.295174	2017-08-10 23:55:16.890865	1
98	rango	9890	bossy@dog.com	$2a$11$GR.wAwXxTpCN7oCUHumrte24rdP3CqGzJAW5Qeqw7fpgLLe41chpe	\N	\N	\N	1	2017-08-11 02:27:08.848511	2017-08-11 02:27:08.848511	127.0.0.1	127.0.0.1	2017-08-11 02:27:08.844569	2017-08-11 02:27:08.849085	1
80	s	\N	sdad@jh.com	$2a$11$S7fo5l5rcY7.qKmIGail4OQdKnamHHGQi/2lGyP5YvdizKGMsr5yy	\N	\N	\N	2	2017-08-10 03:16:37.393927	2017-08-07 23:03:34.628576	127.0.0.1	127.0.0.1	2017-08-07 23:03:34.624657	2017-08-10 03:16:37.39477	1
86	Earth 	\N	thai@food.com	$2a$11$cpQjwqZiW62H1sBTmEBajejTsENJtkZh0DZGeXttexbXMqT1CIXAe	\N	\N	\N	3	2017-08-10 22:01:16.376167	2017-08-10 20:27:26.756698	127.0.0.1	127.0.0.1	2017-08-08 21:21:21.988534	2017-08-10 22:01:16.376887	2
87	FancyFrench	1276436	julia@gulia.com	$2a$11$7C6ZTv0WY7ukCfPehynOKugvfSJRhjoOEFii6TGNvnC8UNy.dWpdK	\N	\N	\N	19	2017-08-11 03:25:06.670844	2017-08-11 03:04:27.26812	127.0.0.1	127.0.0.1	2017-08-08 21:44:05.218826	2017-08-11 03:25:06.671718	2
88	Ryan Patel	5448272	raiders@gmail.com	$2a$11$o598CGTavsIOQpr/V2WlsetE2fCYPTBjtCg.2sGKKZwQQH/ik/sEi	\N	\N	\N	4	2017-08-10 20:29:04.531876	2017-08-10 20:24:05.468696	127.0.0.1	127.0.0.1	2017-08-10 03:04:59.147803	2017-08-10 20:29:04.533051	2
89	Chakra Gal	7653342	love@earth.envy	$2a$11$JRNuOxrr6V7JJdtCes7ft.zd52vQWZnyllVYHg0hvkfYitK8f/AtK	\N	\N	\N	1	2017-08-10 20:37:53.16861	2017-08-10 20:37:53.16861	127.0.0.1	127.0.0.1	2017-08-10 20:37:53.15998	2017-08-10 20:43:00.584439	2
90	Estab	98879	ketchup@mayo.com	$2a$11$cP/UkFx.5c7x/AwcC3Aa8Oc.7UojJpTnAEV1W0xNkOasziGDrhcF.	\N	\N	\N	1	2017-08-10 20:47:06.054817	2017-08-10 20:47:06.054817	127.0.0.1	127.0.0.1	2017-08-10 20:47:06.051693	2017-08-10 20:47:06.055318	2
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thomasdefeo
--

SELECT pg_catalog.setval('users_id_seq', 98, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: thomasdefeo
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: cookers cookers_pkey; Type: CONSTRAINT; Schema: public; Owner: thomasdefeo
--

ALTER TABLE ONLY cookers
    ADD CONSTRAINT cookers_pkey PRIMARY KEY (id);


--
-- Name: eaters eaters_pkey; Type: CONSTRAINT; Schema: public; Owner: thomasdefeo
--

ALTER TABLE ONLY eaters
    ADD CONSTRAINT eaters_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: thomasdefeo
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: thomasdefeo
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_cookers_on_user_id; Type: INDEX; Schema: public; Owner: thomasdefeo
--

CREATE INDEX index_cookers_on_user_id ON cookers USING btree (user_id);


--
-- Name: index_eaters_on_user_id; Type: INDEX; Schema: public; Owner: thomasdefeo
--

CREATE INDEX index_eaters_on_user_id ON eaters USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: thomasdefeo
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: thomasdefeo
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: cookers fk_rails_d2b43a7faf; Type: FK CONSTRAINT; Schema: public; Owner: thomasdefeo
--

ALTER TABLE ONLY cookers
    ADD CONSTRAINT fk_rails_d2b43a7faf FOREIGN KEY (user_id) REFERENCES users(id);


--
-- PostgreSQL database dump complete
--

