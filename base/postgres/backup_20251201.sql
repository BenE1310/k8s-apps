--
-- PostgreSQL database dump
--

\restrict KngIqQLggAbHSkURcrgIkvK5d1XycHsFz5CHu1cywBJeWyNQG62DCMdhq6UWUl3

-- Dumped from database version 16.11
-- Dumped by pg_dump version 16.11

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
-- Name: account_withdrawal; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.account_withdrawal (
    "User_Id" integer NOT NULL,
    "Action_Id" integer NOT NULL,
    "Withrawel_Date" date NOT NULL,
    "Transaction_Amount" integer NOT NULL
);


ALTER TABLE public.account_withdrawal OWNER TO admin;

--
-- Name: events; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.events (
    "User_Id" integer NOT NULL,
    "Event_Id" integer NOT NULL,
    "Event_Area" text NOT NULL,
    "Event_Occurance_Date" date NOT NULL,
    "Event_Occurance_Time" time without time zone NOT NULL,
    "Event_Type" text NOT NULL,
    "Event_Sent_To_Police_Date" date NOT NULL,
    "Event_Sent_To_Police_Time" time without time zone NOT NULL
);


ALTER TABLE public.events OWNER TO admin;

--
-- Name: events_status; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.events_status (
    "Event_Id" integer NOT NULL,
    "User_Id" integer NOT NULL,
    "Total_Fine_Approved" integer,
    "Fine_Approval_Date" date,
    "Status" text NOT NULL
);


ALTER TABLE public.events_status OWNER TO admin;

--
-- Name: tiers; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.tiers (
    "Tier" text NOT NULL,
    "Min_Points" integer,
    "Max_Points" integer,
    "Fine_Perc" double precision
);


ALTER TABLE public.tiers OWNER TO admin;

--
-- Name: users; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    password text NOT NULL,
    email text NOT NULL,
    registry_date date NOT NULL,
    deactivation_date date,
    preferred_area text,
    phone text NOT NULL,
    firstname text,
    lastname text,
    car_type text,
    user_city text,
    username text
);


ALTER TABLE public.users OWNER TO admin;

--
-- Name: TABLE users; Type: COMMENT; Schema: public; Owner: admin
--

COMMENT ON TABLE public.users IS 'This table holds all the users in our project';


--
-- Data for Name: account_withdrawal; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.account_withdrawal ("User_Id", "Action_Id", "Withrawel_Date", "Transaction_Amount") FROM stdin;
1234	1	2025-04-03	200
1234	2	2025-05-14	150
1234	3	2025-06-05	80
7859	1	2025-04-13	800
7859	2	2025-05-29	250
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.events ("User_Id", "Event_Id", "Event_Area", "Event_Occurance_Date", "Event_Occurance_Time", "Event_Type", "Event_Sent_To_Police_Date", "Event_Sent_To_Police_Time") FROM stdin;
1234	4341157	Jerusalem	2025-03-02	07:20:21	Car Crash	2025-03-02	12:00:12
1234	5122412	Tel Aviv	2025-01-14	08:12:16	Excessive speed	2025-01-14	08:30:45
1234	13293857	Jerusalem	2025-01-30	18:25:09	Excessive speed	2025-01-30	19:05:58
1234	13753409	Tel Aviv	2025-03-15	13:25:39	Red light crossing	2025-03-15	15:03:32
1234	17875533	Center	2025-02-18	01:33:53	Red light crossing	2025-02-18	06:05:20
1234	19817155	Tel Aviv	2025-04-11	12:39:20	Dangerous detour	2025-04-11	15:40:34
1234	27040068	Center	2025-03-13	04:02:41	Car Crash	2025-03-13	08:25:23
1234	34688632	Center	2025-03-18	21:34:39	Car Crash	2025-03-19	03:17:08
1234	35595702	Jerusalem	2025-02-09	01:19:29	Car Crash	2025-02-09	05:39:14
1234	40540608	Tel Aviv	2025-02-25	21:22:51	Car Crash	2025-02-25	23:13:46
1234	46593834	Jerusalem	2025-04-07	19:11:09	Car Crash	2025-04-07	20:45:55
1234	49829478	Tel Aviv	2025-02-01	21:06:45	Car Crash	2025-02-02	00:02:49
1234	51215109	Jerusalem	2025-02-19	21:55:48	Car Crash	2025-02-20	01:29:42
1234	55258870	North	2025-03-29	20:21:29	Car Crash	2025-03-30	00:17:39
1234	55959658	North	2025-04-03	12:24:14	Red light crossing	2025-04-03	16:18:53
1234	57260250	South	2025-03-11	07:07:42	Red light crossing	2025-03-11	09:59:43
1234	62575382	Tel Aviv	2025-03-09	14:39:55	Excessive speed	2025-03-09	18:08:01
1234	63234050	Center	2025-03-19	16:53:50	Car Crash	2025-03-19	17:14:54
1234	63292873	North	2025-04-01	18:36:19	Car Crash	2025-04-01	19:56:10
1234	64371948	South	2025-03-11	02:42:37	Excessive speed	2025-03-11	03:12:29
1234	72068268	North	2025-02-16	20:41:29	Car Crash	2025-02-16	21:11:53
1234	73833589	Tel Aviv	2025-03-26	03:03:00	Car Crash	2025-03-26	03:10:35
1234	75516146	Tel Aviv	2025-04-04	12:15:39	Excessive speed	2025-04-04	17:36:24
1234	78827030	Tel Aviv	2025-02-21	02:43:50	Car Crash	2025-02-21	06:50:28
1234	81005696	North	2025-03-15	15:13:39	Car Crash	2025-03-15	15:20:42
1234	81607419	North	2025-02-03	10:01:03	Car Crash	2025-02-03	11:59:44
1234	83418022	Jerusalem	2025-02-08	08:37:42	Excessive speed	2025-02-08	08:42:37
1234	85378033	Center	2025-02-15	23:17:08	Car Crash	2025-02-16	01:29:57
1234	85645532	Tel Aviv	2025-02-05	16:51:41	Dangerous detour	2025-02-05	21:13:32
1234	85834991	Tel Aviv	2025-02-01	14:39:58	Car Crash	2025-02-01	16:28:33
1234	88707307	South	2025-04-05	10:45:00	Car Crash	2025-04-05	11:11:40
1234	94754916	Jerusalem	2025-03-02	06:03:34	Car Crash	2025-03-02	06:13:36
1234	94783128	North	2025-01-16	13:34:21	Red light crossing	2025-01-16	13:50:57
1234	97526131	Tel Aviv	2025-04-08	21:19:18	Car Crash	2025-04-08	21:52:57
1234	99400998	North	2025-03-19	13:29:44	Car Crash	2025-03-19	19:24:44
1234	99899692	Jerusalem	2025-02-14	17:14:01	Dangerous detour	2025-02-14	20:52:01
7859	87111296	Jerusalem	2025-01-14	11:34:47	Car Crash	2025-01-17	13:30:09
7859	25879190	South	2025-02-21	15:38:51	Excessive speed	2025-02-22	11:36:43
7859	33562453	Center	2025-02-03	16:15:52	Red light crossing	2025-02-06	07:31:12
7859	10478704	South	2025-03-09	20:08:06	Car Crash	2025-03-11	22:49:57
7859	79256229	Tel Aviv	2025-01-24	14:04:57	Dangerous detour	2025-01-24	12:50:55
7859	72089241	South	2025-02-18	01:26:00	Excessive speed	2025-02-19	02:40:49
7859	32604861	Center	2025-04-04	20:41:46	Red light crossing	2025-04-07	02:56:08
7859	19038981	North	2025-02-12	04:51:18	Red light crossing	2025-02-14	23:31:51
7859	69053110	Tel Aviv	2025-03-27	00:03:21	Red light crossing	2025-03-30	10:26:26
7859	74984090	Tel Aviv	2025-01-30	15:32:41	Car Crash	2025-01-30	02:14:08
7859	42745861	North	2025-02-26	12:58:48	Excessive speed	2025-02-28	11:58:21
7859	93566281	Tel Aviv	2025-04-08	23:49:16	Car Crash	2025-04-09	06:33:52
7859	28557928	Center	2025-03-18	02:53:37	Excessive speed	2025-03-20	21:01:08
7859	47051436	South	2025-01-30	21:46:29	Car Crash	2025-01-31	07:19:55
7859	38808219	South	2025-03-28	06:22:18	Excessive speed	2025-03-29	22:55:10
7859	80104116	Tel Aviv	2025-01-16	13:56:29	Excessive speed	2025-01-17	18:27:52
7859	72719469	North	2025-04-09	18:11:17	Dangerous detour	2025-04-10	11:38:34
7859	46037831	South	2025-02-03	21:43:31	Red light crossing	2025-02-06	03:28:04
7859	73803606	North	2025-02-15	23:45:19	Dangerous detour	2025-02-17	23:01:04
7859	74839486	Tel Aviv	2025-04-07	23:01:59	Excessive speed	2025-04-10	04:14:16
7859	43410988	Center	2025-03-17	21:29:01	Dangerous detour	2025-03-17	03:02:46
7859	81261798	Center	2025-04-09	15:31:43	Red light crossing	2025-04-12	11:31:57
7859	41691994	Jerusalem	2025-01-29	12:05:47	Dangerous detour	2025-01-29	21:45:26
7859	31415315	North	2025-03-10	01:16:39	Red light crossing	2025-03-11	16:49:04
7859	84063185	South	2025-04-01	19:51:41	Excessive speed	2025-04-04	15:57:07
7859	60674998	Tel Aviv	2025-04-04	19:12:39	Excessive speed	2025-04-05	19:05:41
7859	35176205	Tel Aviv	2025-04-11	10:42:01	Car Crash	2025-04-13	01:55:18
7859	48463511	South	2025-02-01	22:04:13	Dangerous detour	2025-02-03	12:40:12
7859	68053607	Tel Aviv	2025-02-02	16:15:00	Red light crossing	2025-02-02	20:13:38
7859	56564064	Jerusalem	2025-03-16	10:25:27	Red light crossing	2025-03-17	09:01:41
7859	94023914	Center	2025-03-02	14:19:16	Dangerous detour	2025-03-04	02:38:33
7859	51488472	Jerusalem	2025-03-12	03:21:36	Excessive speed	2025-03-15	03:07:27
7859	39298205	North	2025-03-25	22:13:17	Excessive speed	2025-03-25	22:25:47
7859	59070758	South	2025-02-27	18:42:58	Car Crash	2025-02-27	18:18:42
7859	82790475	South	2025-03-12	00:31:10	Red light crossing	2025-03-12	12:40:08
7859	91616615	Center	2025-01-14	16:33:48	Car Crash	2025-01-16	22:36:31
\.


--
-- Data for Name: events_status; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.events_status ("Event_Id", "User_Id", "Total_Fine_Approved", "Fine_Approval_Date", "Status") FROM stdin;
4341157	1234	500	2025-05-14	Approved
5122412	1234	750	2025-04-16	Approved
13293857	1234	\N	\N	Pending
13753409	1234	\N	2025-04-07	Rejected: Police
17875533	1234	500	2025-05-14	Approved
19817155	1234	\N	2025-05-07	Rejected: Court
27040068	1234	1500	2025-05-13	Approved
34688632	1234	\N	2025-04-16	Rejected: Police
35595702	1234	\N	\N	Pending
40540608	1234	1500	2025-05-04	Approved
46593834	1234	\N	2025-04-26	Rejected: Court
49829478	1234	\N	\N	Pending
51215109	1234	\N	2025-03-10	Rejected: Police
55258870	1234	\N	2025-04-17	Rejected: Police
55959658	1234	\N	2025-04-19	Rejected: Court
57260250	1234	500	2025-05-07	Approved
62575382	1234	500	2025-05-29	Approved
63234050	1234	1500	2025-04-02	Approved
63292873	1234	\N	2025-04-18	Rejected: Court
64371948	1234	\N	2025-04-01	Rejected: Police
72068268	1234	\N	\N	Pending
73833589	1234	\N	2025-04-05	Rejected: Police
75516146	1234	1000	2025-07-06	Approved
78827030	1234	1000	2025-05-22	Approved
81005696	1234	1000	2025-03-28	Approved
81607419	1234	\N	\N	Pending
83418022	1234	750	2025-03-17	Approved
85378033	1234	\N	\N	Pending
85645532	1234	750	2025-04-13	Approved
85834991	1234	750	2025-04-07	Approved
88707307	1234	1500	2025-06-01	Approved
94754916	1234	\N	2025-03-19	Rejected: Police
94783128	1234	750	2025-02-28	Approved
97526131	1234	750	2025-05-17	Approved
99400998	1234	\N	2025-04-18	Rejected: Police
99899692	1234	\N	\N	Pending
19038981	7859	\N	2025-06-17	Pending
69053110	7859	\N	2025-05-29	Rejected: Police
74984090	7859	500	2025-06-04	Approved
42745861	7859	\N	\N	Pending
93566281	7859	\N	2025-06-25	Rejected: Police
28557928	7859	\N	\N	Pending
47051436	7859	\N	\N	Pending
38808219	7859	250	2025-05-31	Approved
80104116	7859	1000	2025-03-30	Approved
72719469	7859	\N	\N	Pending
46037831	7859	750	2025-04-04	Approved
73803606	7859	\N	2025-06-08	Rejected: Court
74839486	7859	\N	\N	Pending
43410988	7859	\N	\N	Pending
81261798	7859	\N	2025-03-22	Rejected: Police
41691994	7859	\N	2025-06-14	Rejected: Court
31415315	7859	250	2025-04-28	Approved
84063185	7859	\N	2025-04-13	Rejected: Court
60674998	7859	\N	2025-05-16	Rejected: Police
35176205	7859	\N	2025-03-31	Rejected: Police
48463511	7859	\N	2025-04-15	Rejected: Police
68053607	7859	1000	2025-04-18	Approved
56564064	7859	750	2025-05-27	Approved
94023914	7859	750	2025-05-03	Approved
51488472	7859	\N	\N	Pending
39298205	7859	\N	\N	Pending
59070758	7859	\N	\N	Pending
82790475	7859	\N	2025-06-08	Rejected: Police
91616615	7859	\N	2025-03-11	Rejected: Police
\.


--
-- Data for Name: tiers; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.tiers ("Tier", "Min_Points", "Max_Points", "Fine_Perc") FROM stdin;
Bronze	0	500	0.1
Silver	501	1000	0.15
Gold	1001	2000	0.2
Platinum	2001	4000	0.25
Diamond	4001	1000000	0.3
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.users (user_id, password, email, registry_date, deactivation_date, preferred_area, phone, firstname, lastname, car_type, user_city, username) FROM stdin;
1234	YYWJP	liranZ@gmail.com	2025-01-01	2025-09-18	South	050-6906898	Liran	Zaidman	Private	Rishon Lezion	liran_ha_katan
7859	TH^^SF	ben_eytan@gmail.com	2024-02-03	\N	North	052-7998561	Ben	Eytan	Bus	Tel Aviv	ben
\.


--
-- Name: events_status Events_Status_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.events_status
    ADD CONSTRAINT "Events_Status_pkey" PRIMARY KEY ("Event_Id");


--
-- Name: tiers Tiers_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.tiers
    ADD CONSTRAINT "Tiers_pkey" PRIMARY KEY ("Tier");


--
-- Name: events evens_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT evens_pkey PRIMARY KEY ("Event_Id");


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

\unrestrict KngIqQLggAbHSkURcrgIkvK5d1XycHsFz5CHu1cywBJeWyNQG62DCMdhq6UWUl3

