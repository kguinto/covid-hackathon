--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 11.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: organization_needs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.organization_needs (
    org_id integer,
    need character varying(200) NOT NULL
);


ALTER TABLE public.organization_needs OWNER TO postgres;

--
-- Name: organizations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.organizations (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    contact_email character varying(200),
    zip_code character varying(50),
    description text,
    image_url text,
    latitude character varying(100),
    longitude character varying(100),
    address text,
    accepts_opened text,
    instructions text,
    city character varying(500),
    state character varying(100)
);


ALTER TABLE public.organizations OWNER TO postgres;

--
-- Name: organizations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.organizations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.organizations_id_seq OWNER TO postgres;

--
-- Name: organizations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.organizations_id_seq OWNED BY public.organizations.id;


--
-- Name: organizations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organizations ALTER COLUMN id SET DEFAULT nextval('public.organizations_id_seq'::regclass);


--
-- Data for Name: organization_needs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.organization_needs (org_id, need) FROM stdin;
1	N95s
1	Surgical Masks
2	N95s
2	Surgical Masks
3	N95s
3	Surgical Masks
3	Disposable Booties
3	Safety Goggles
3	Gloves
3	Face Shields
4	N95s
4	Surgical masks
4	Face shields
4	Disposable booties
4	Safety goggles
4	Gloves
4	Gowns
4	Hand sanitizer
4	Disinfecting wipes
4	Thermometers
5	N95s
5	Surgical masks
5	Face shields
5	Safety goggles
5	Gloves
5	Gowns
5	Thermometers
6	N95s
6	Surgical masks
6	Face shields
6	Safety goggles
6	Gowns
7	N95s
7	Surgical masks
7	Face shields
7	Gowns
7	Hand sanitizer
7	Disinfecting wipes
7	Thermometers
8	N95s
8	Surgical masks
8	Face shields
8	Safety goggles
8	Gowns
8	Disinfecting wipes
8	Thermometers
9	N95s
9	Surgical masks
9	Face shields
9	Safety goggles
9	Gloves
9	Gowns
9	Hand sanitizer
9	Disinfecting wipes
9	Thermometers
10	N95s
10	Surgical masks
10	Gowns
10	Hand sanitizer
11	N95s
11	Surgical masks
11	Face shields
11	Disposable booties
11	Safety goggles
11	Gloves
11	Gowns
11	Hand sanitizer
11	Disinfecting wipes
12	N95s
12	Face shields
12	Gloves
12	Gowns
13	N95s
13	Surgical masks
13	Gloves
13	Disinfecting wipes
14	N95s
14	Surgical masks
14	Gloves
14	Gowns
15	N95s
16	N95s
16	Surgical masks
16	Face shields
16	Safety goggles
16	Gloves
16	Gowns
17	N95s
17	Surgical masks
17	Hand sanitizer
18	N95s
18	Surgical masks
18	Face shields
18	Safety goggles
19	Surgical masks
19	Gloves
19	Gowns
19	Hand sanitizer
19	Disinfecting wipes
19	Thermometers
20	N95s
20	Surgical masks
20	Face shields
20	Safety goggles
20	Gowns
20	Hand sanitizer
20	Disinfecting wipes
21	N95s
21	Surgical masks
21	Face shields
21	Disposable booties
21	Safety goggles
21	Gloves
21	Gowns
21	Not yet collecting homemade masks.
22	N95s
22	Surgical masks
22	Face shields
22	Disposable booties
22	Safety goggles
22	Gloves
22	Gowns
22	Hand sanitizer
22	Disinfecting wipes
22	Ponchos
23	N95s
23	Surgical masks
23	Face shields
23	Safety goggles
23	Gloves
23	Gowns
23	Hand sanitizer
23	Disinfecting wipes
24	N95s
24	Surgical masks
24	Face shields
24	Safety goggles
24	Hand sanitizer
24	Disinfecting wipes
25	N95s
25	Surgical masks
25	Face shields
25	Disposable booties
25	Safety goggles
25	Gloves
25	Gowns
25	Hand sanitizer
25	Disinfecting wipes
25	Thermometers
25	Distilled Water for Autoclave Machine & Disinfecting Spray
26	N95s
26	Surgical masks
26	Face shields
26	Safety goggles
26	Gowns
26	Hand sanitizer
26	Disinfecting wipes
26	Thermometers
27	N95s
27	Surgical masks
27	Face shields
27	Hand sanitizer
27	Disinfecting wipes
27	Thermometers
27	Words of encouragement!
28	N95s
28	Surgical masks
28	Face shields
28	Gloves
29	N95s
29	Surgical masks
29	Face shields
29	Disposable booties
29	Safety goggles
29	Gloves
29	Gowns
29	Hand sanitizer
29	Disinfecting wipes
30	N95s
30	Surgical masks
30	Face shields
30	Disposable booties
30	Safety goggles
30	Gloves
30	Gowns
30	Hand sanitizer
30	Disinfecting wipes
30	Thermometers
31	N95s
31	Surgical masks
31	Face shields
31	Safety goggles
31	Gloves
31	Gowns
31	Hand sanitizer
31	Disinfecting wipes
32	N95s
32	Surgical masks
32	Face shields
32	Safety goggles
32	Gowns
32	Thermometers
33	N95s
33	Surgical masks
33	Face shields
33	Disposable booties
33	Safety goggles
33	Gloves
33	Gowns
33	Hand sanitizer
33	Disinfecting wipes
34	N95s
34	Surgical masks
34	Face shields
35	N95s
35	Surgical masks
35	Face shields
35	Disposable booties
35	Safety goggles
35	Gloves
35	Gowns
36	N95s
36	Surgical masks
36	Face shields
36	Disposable booties
36	Safety goggles
36	Gowns
36	Hand sanitizer
36	Disinfecting wipes
36	Thermometers
37	N95s
38	N95s
38	Surgical masks
38	Face shields
38	Gloves
38	Gowns
38	Hand sanitizer
38	Disinfecting wipes
39	N95s
39	Surgical masks
39	Face shields
39	Safety goggles
39	Hand sanitizer
40	N95s
40	Surgical masks
40	Face shields
40	Disposable booties
40	Safety goggles
40	Gowns
40	Hand sanitizer
40	Disinfecting wipes
40	Thermometers
41	N95s
41	Surgical masks
41	Face shields
41	Disposable booties
41	Safety goggles
41	Gloves
41	Gowns
41	Hand sanitizer
41	Disinfecting wipes
42	N95s
42	Surgical masks
42	Face shields
42	Safety goggles
42	Gloves
42	Gowns
42	Hand sanitizer
42	Disinfecting wipes
43	N95s
43	Surgical masks
43	Face shields
43	Disposable booties
43	Safety goggles
43	Gloves
43	Gowns
43	Hand sanitizer
43	Disinfecting wipes
43	Thermometers
43	Anything that will help EMS
44	N95s
44	Surgical masks
44	Face shields
44	Safety goggles
44	Gowns
44	Hand sanitizer
44	Disinfecting wipes
44	Thermometers
45	N95s
45	Surgical masks
45	Face shields
45	Disposable booties
45	Safety goggles
45	Gloves
45	Gowns
45	Hand sanitizer
45	Disinfecting wipes
46	N95s
46	Surgical masks
46	Face shields
46	Safety goggles
46	Gowns
46	Thermometers
47	N95s
47	Surgical masks
47	Face shields
47	Disposable booties
47	Safety goggles
47	Gloves
47	Gowns
47	Hand sanitizer
47	Disinfecting wipes
47	Thermometers
47	Biohazard bags
48	N95s
48	Face shields
48	Gloves
48	Gowns
48	Hand sanitizer
48	Disinfecting wipes
48	Thermometers
49	N95s
49	Face shields
49	Disinfecting wipes
49	Surgical Scrubs
50	N95s
50	Surgical masks
50	Face shields
50	Disposable booties
50	Safety goggles
50	Gloves
50	Gowns
50	Hand sanitizer
50	Disinfecting wipes
50	Thermometers
51	Surgical masks
51	Face shields
51	Hand sanitizer
51	Disinfecting wipes
52	N95s
52	Surgical masks
52	Face shields
52	Gloves
52	Gowns
52	Hand sanitizer
52	Disinfecting wipes
53	N95s
53	Surgical masks
53	Gloves
53	Hand sanitizer
53	Disinfecting wipes
54	N95s
54	Surgical masks
54	Gowns
54	Hand sanitizer
54	Disinfecting wipes
55	N95s
55	Surgical masks
55	Face shields
55	Safety goggles
55	Gloves
55	Gowns
56	N95s
56	Surgical masks
56	Face shields
56	Disposable booties
56	Safety goggles
56	Gloves
56	Gowns
56	Hand sanitizer
56	Disinfecting wipes
56	Thermometers
57	N95s
57	Gowns
57	Hand sanitizer
57	Disinfecting wipes
58	N95s
58	Face shields
58	Gowns
58	Hand sanitizer
58	Disinfecting wipes
59	N95s
59	Surgical masks
59	Face shields
59	Disposable booties
59	Safety goggles
59	Gloves
59	Gowns
59	Hand sanitizer
59	Disinfecting wipes
60	N95s
60	Surgical masks
60	Safety goggles
60	Gloves
60	Gowns
60	Hand sanitizer
60	Disinfecting wipes
60	Thermometers
61	N95s
61	Surgical masks
61	Face shields
61	Disposable booties
61	Safety goggles
61	Gloves
61	Gowns
61	Hand sanitizer
61	Disinfecting wipes
61	Thermometers
62	N95s
62	Face shields
63	N95s
63	Surgical masks
63	Disposable booties
63	Gloves
63	Gowns
63	Hand sanitizer
63	Disinfecting wipes
63	Thermometers
64	N95s
64	Surgical masks
64	Face shields
64	Disposable booties
64	Safety goggles
64	Gowns
64	Hand sanitizer
64	Disinfecting wipes
64	Thermometers
65	N95s
65	Surgical masks
65	Face shields
65	Safety goggles
65	Gowns
65	Hand sanitizer
65	Disinfecting wipes
65	Thermometers
66	N95s
66	Face shields
66	Disposable booties
66	Safety goggles
66	Hand sanitizer
66	Disinfecting wipes
66	Alcohol prep pads
66	Quidel 403C Swab Specimen Flocked Tube Flexible Minitip 50 UTM
67	N95s
67	Surgical masks
67	Face shields
67	Disposable booties
67	Safety goggles
67	Gloves
67	Gowns
67	Hand sanitizer
67	Disinfecting wipes
67	Thermometers
68	N95s
68	Surgical masks
68	Face shields
68	Gowns
68	Hand sanitizer
68	Disinfecting wipes
68	Thermometers
69	N95s
69	Surgical masks
69	Safety goggles
69	Gloves
69	Hand sanitizer
69	Disinfecting wipes
70	N95s
70	Surgical masks
70	Face shields
70	Disposable booties
70	Safety goggles
70	Gloves
70	Gowns
70	Hand sanitizer
70	Disinfecting wipes
70	Thermometers
71	N95s
71	Surgical masks
71	Face shields
71	Safety goggles
71	Gloves
71	Hand sanitizer
71	Disinfecting wipes
72	N95s
72	Surgical masks
72	Face shields
72	Disposable booties
72	Safety goggles
72	Gloves
72	Gowns
72	Hand sanitizer
72	Disinfecting wipes
72	Thermometers
73	N95s
73	Surgical masks
73	Face shields
73	Disposable booties
73	Safety goggles
73	Gloves
73	Gowns
73	Hand sanitizer
73	Disinfecting wipes
73	Thermometers
74	N95s
74	Face shields
74	Safety goggles
74	Hand sanitizer
74	Disinfecting wipes
74	Thermometers
75	Surgical masks
75	Gloves
75	Hand sanitizer
75	Disinfecting wipes
75	Thermometers
76	N95s
76	Surgical masks
76	Face shields
76	Gowns
76	Hand sanitizer
76	Disinfecting wipes
77	N95s
77	Surgical masks
77	Face shields
77	Safety goggles
77	Gloves
77	Gowns
77	Hand sanitizer
77	Disinfecting wipes
78	N95s
78	Gloves
78	Gowns
78	Hand sanitizer
79	N95s
79	Surgical masks
79	Face shields
79	Safety goggles
79	Gloves
79	Gowns
79	Hand sanitizer
79	Disinfecting wipes
79	Thermometers
80	N95s
80	Surgical masks
80	Face shields
80	Safety goggles
80	Gloves
80	Gowns
80	Hand sanitizer
80	Disinfecting wipes
81	N95s
81	Surgical masks
81	Face shields
81	Gloves
81	Gowns
81	Hand sanitizer
82	N95s
82	Surgical masks
82	Face shields
82	Disposable booties
82	Safety goggles
82	Gloves
82	Gowns
82	Hand sanitizer
82	Disinfecting wipes
82	Thermometers
83	N95s
83	Surgical masks
83	Face shields
83	Disposable booties
83	Safety goggles
83	Gloves
83	Gowns
83	Hand sanitizer
83	Disinfecting wipes
84	N95s
84	Gloves
84	Hand sanitizer
84	Disinfecting wipes
85	N95s
85	Surgical masks
85	Face shields
85	Disposable booties
85	Safety goggles
85	Gloves
85	Gowns
85	Hand sanitizer
85	Disinfecting wipes
85	Thermometers
86	N95s
86	Surgical masks
86	Hand sanitizer
86	Thermometers
87	N95s
87	Surgical masks
87	Face shields
87	Safety goggles
87	Hand sanitizer
87	Disinfecting wipes
87	Thermometers
88	N95s
88	Surgical masks
88	Face shields
88	Disposable booties
88	Safety goggles
88	Gloves
88	Gowns
88	Hand sanitizer
88	Disinfecting wipes
88	Thermometers
89	N95s
89	Surgical masks
89	Face shields
89	Disposable booties
89	Safety goggles
89	Gloves
89	Gowns
89	Hand sanitizer
89	Disinfecting wipes
89	Thermometers
90	N95s
90	Surgical masks
90	Face shields
90	Disposable booties
90	Safety goggles
90	Gloves
90	Gowns
90	Disinfecting wipes
91	Surgical masks
91	Face shields
91	Gowns
91	Hand sanitizer
92	N95s
92	Surgical masks
92	Face shields
92	Safety goggles
92	Gloves
92	Gowns
92	Hand sanitizer
92	Disinfecting wipes
92	Thermometers
93	N95s
93	Surgical masks
93	Face shields
93	Disposable booties
93	Safety goggles
93	Gloves
93	Gowns
93	Hand sanitizer
93	Disinfecting wipes
93	Thermometers
94	N95s
94	Surgical masks
94	Face shields
95	N95s
95	Surgical masks
95	Face shields
95	Gloves
95	Gowns
95	Hand sanitizer
95	Disinfecting wipes
96	N95s
96	Surgical masks
96	Face shields
96	Safety goggles
96	Gowns
96	Hand sanitizer
96	Disinfecting wipes
97	N95s
97	Surgical masks
97	Face shields
97	Disposable booties
97	Safety goggles
97	Gloves
97	Gowns
97	Hand sanitizer
97	Disinfecting wipes
97	Thermometers
98	N95s
98	Surgical masks
98	Face shields
98	Disposable booties
98	Safety goggles
98	Gloves
98	Gowns
98	Hand sanitizer
98	Disinfecting wipes
98	Thermometers
99	N95s
99	Surgical masks
99	Face shields
99	Safety goggles
99	Gloves
99	Gowns
99	Hand sanitizer
99	Disinfecting wipes
100	N95s
100	Surgical masks
100	Face shields
100	Disposable booties
100	Safety goggles
100	Gloves
100	Gowns
100	Hand sanitizer
100	Disinfecting wipes
101	N95s
101	Surgical masks
101	Face shields
101	Gowns
101	Hand sanitizer
101	Disinfecting wipes
101	Thermometers
102	N95s
102	Surgical masks
102	Face shields
102	Disposable booties
102	Safety goggles
102	Gloves
102	Gowns
103	N95s
103	Surgical masks
103	Face shields
103	Gloves
103	Gowns
103	Hand sanitizer
103	Disinfecting wipes
104	N95s
104	Surgical masks
104	Face shields
104	Gloves
104	Gowns
104	Hand sanitizer
104	Disinfecting wipes
105	N95s
105	Surgical masks
105	Face shields
105	Gloves
105	Gowns
105	Hand sanitizer
105	Disinfecting wipes
106	N95s
106	Surgical masks
106	Face shields
106	Gloves
106	Gowns
106	Hand sanitizer
106	Disinfecting wipes
107	N95s
107	Surgical masks
107	Face shields
107	Disposable booties
107	Safety goggles
107	Gloves
107	Gowns
107	Hand sanitizer
107	Disinfecting wipes
108	N95s
108	Surgical masks
108	Face shields
108	Safety goggles
108	Gloves
109	N95s
109	Surgical masks
109	Face shields
109	Gloves
109	Gowns
109	Hand sanitizer
109	Disinfecting wipes
110	N95s
110	Surgical masks
110	Face shields
110	Disposable booties
110	Safety goggles
110	Gloves
110	Gowns
110	Hand sanitizer
110	Disinfecting wipes
110	Thermometers
111	N95s
111	Surgical Masks
111	Face Shields
111	Disposable Booties
111	Safety Goggles
111	Gloves
111	Gowns
112	Surgical masks
112	Gloves
112	Hand sanitizer
112	Disinfecting wipes
113	N95s
113	Surgical masks
113	Face shields
113	Disposable booties
113	Safety goggles
113	Gowns
113	Hand sanitizer
113	Disinfecting wipes
113	Thermometers
114	N95s
114	Surgical masks
114	Face shields
114	Disposable booties
114	Safety goggles
114	Gloves
114	Gowns
114	Hand sanitizer
114	Disinfecting wipes
114	Thermometers
115	N95s
115	Surgical masks
115	Safety goggles
115	Gloves
115	Gowns
115	Hand sanitizer
115	Disinfecting wipes
115	Thermometers
116	N95s
116	Face shields
116	Gloves
116	Hand sanitizer
116	Disinfecting wipes
117	N95s
117	Surgical masks
117	Face shields
117	Disposable booties
117	Safety goggles
117	Gloves
117	Gowns
117	Hand sanitizer
117	Disinfecting wipes
117	Thermometers
117	Disposable rain coats
118	N95s
118	Surgical masks
118	Face shields
118	Safety goggles
118	Gowns
118	Hand sanitizer
119	N95s
119	Surgical masks
119	Face shields
119	Gloves
119	Gowns
119	Hand sanitizer
119	Disinfecting wipes
120	N95s
120	Surgical masks
120	Face shields
120	Gloves
120	Gowns
120	Hand sanitizer
120	Disinfecting wipes
121	N95s
121	Surgical masks
121	Gloves
121	Gowns
121	Hand sanitizer
121	Disinfecting wipes
121	Thermometers
122	N95s
122	Surgical masks
122	Face shields
122	Safety goggles
122	Gloves
122	Gowns
122	Hand sanitizer
122	Disinfecting wipes
122	Thermometers
123	N95s
123	Surgical masks
123	Face shields
123	Disposable booties
123	Safety goggles
123	Gloves
123	Gowns
123	Hand sanitizer
123	Disinfecting wipes
123	Thermometers
124	Surgical masks
124	Face shields
124	Disposable booties
124	Gowns
124	Hand sanitizer
124	Disinfecting wipes
125	Please contact me before sending anything.  I am checking to see if local manufacturers can make some masks and inquire more about needs.
126	N95s
126	Surgical masks
126	Face shields
126	Safety goggles
126	Gloves
126	Gowns
126	Hand sanitizer
126	Disinfecting wipes
127	N95s
127	Surgical masks
127	Face shields
127	Disposable booties
127	Safety goggles
127	Gloves
127	Gowns
127	Hand sanitizer
127	Disinfecting wipes
128	N95s
128	Surgical masks
128	Face shields
128	Disposable booties
128	Safety goggles
128	Gloves
128	Gowns
128	Hand sanitizer
128	Disinfecting wipes
128	Thermometers
129	N95s
129	Surgical masks
129	Face shields
129	Hand sanitizer
129	Disinfecting wipes
130	N95s
130	Surgical masks
130	Face shields
130	Disposable booties
130	Safety goggles
130	Gloves
130	Gowns
130	Hand sanitizer
130	Disinfecting wipes
130	Thermometers
131	N95s
131	Surgical masks
131	Face shields
131	Disposable booties
131	Safety goggles
131	Gloves
131	Gowns
131	Hand sanitizer
132	N95s
132	Surgical masks
132	Face shields
132	Disposable booties
132	Safety goggles
132	Gloves
132	Gowns
132	Disinfecting wipes
133	N95s
133	Surgical masks
133	Face shields
133	Safety goggles
133	Gloves
133	Gowns
133	Hand sanitizer
133	Disinfecting wipes
133	Thermometers
133	EMS Safety Glasses
134	N95s
134	Surgical masks
134	Face shields
134	Disposable booties
134	Safety goggles
134	Gowns
135	N95s
135	Surgical masks
135	Disposable booties
135	Gloves
135	Disinfecting wipes
135	Thermometers
136	N95s
136	Surgical masks
136	Gloves
136	Hand sanitizer
136	Disinfecting wipes
137	
138	N95s
138	Surgical masks
138	Face shields
138	Disposable booties
138	Safety goggles
138	Gloves
138	Gowns
138	Hand sanitizer
138	Disinfecting wipes
138	Thermometers
139	N95s
139	Surgical masks
139	Face shields
139	Disposable booties
139	Safety goggles
139	Gloves
139	Gowns
139	Hand sanitizer
139	Disinfecting wipes
139	Thermometers
140	N95s
140	Surgical masks
140	Gloves
140	Hand sanitizer
140	Disinfecting wipes
141	N95s
141	Surgical masks
141	Face shields
141	Safety goggles
142	N95s
142	Surgical masks
142	Face shields
142	Safety goggles
142	Gowns
142	Hand sanitizer
142	Disinfecting wipes
142	Thermometers
142	Thermometer Probe Covers
143	N95s
143	Surgical masks
143	Face shields
143	Disposable booties
143	Gowns
143	Hand sanitizer
144	N95s
144	Surgical masks
144	Disposable booties
144	Safety goggles
144	Gloves
144	Gowns
144	Hand sanitizer
144	Disinfecting wipes
145	N95s
145	Surgical masks
145	Face shields
145	Disposable booties
145	Safety goggles
145	Gloves
145	Gowns
145	Hand sanitizer
145	Disinfecting wipes
145	Thermometers
146	N95s
146	Surgical masks
146	Face shields
146	Disposable booties
146	Safety goggles
146	Gloves
146	Gowns
146	Hand sanitizer
146	Disinfecting wipes
147	N95s
147	Surgical masks
148	Surgical masks
148	Gloves
148	Gowns
148	Hand sanitizer
148	Disinfecting wipes
148	Thermometers
149	N95s
149	Surgical masks
149	Face shields
149	Disposable booties
149	Safety goggles
149	Gloves
149	Gowns
149	Hand sanitizer
149	Disinfecting wipes
149	Thermometers
150	N95s
150	Surgical masks
150	Face shields
150	Safety goggles
150	Gowns
150	Disinfecting wipes
151	N95s
151	Surgical masks
151	Face shields
151	Gloves
151	Gowns
151	Hand sanitizer
151	Disinfecting wipes
152	N95s
152	Hand sanitizer
153	N95s
153	Surgical masks
153	Face shields
153	Gloves
153	Gowns
153	Hand sanitizer
153	Thermometers
154	N95s
154	Surgical masks
154	Face shields
154	Safety goggles
154	Gloves
154	Gowns
154	Hand sanitizer
154	Disinfecting wipes
154	Thermometers
155	N95s
155	Surgical masks
155	Face shields
155	Disposable booties
155	Safety goggles
155	Gloves
155	Gowns
155	Hand sanitizer
155	Disinfecting wipes
155	Thermometers
156	N95s
156	Surgical masks
156	Face shields
156	Disposable booties
156	Safety goggles
156	Gloves
156	Gowns
156	Hand sanitizer
156	Disinfecting wipes
156	Thermometers
157	N95s
157	Surgical masks
157	Gowns
157	Hand sanitizer
157	Disinfecting wipes
158	N95s
158	Face shields
158	Disposable booties
158	Safety goggles
158	Gloves
158	Gowns
158	Hand sanitizer
158	Disinfecting wipes
159	N95s
159	Surgical masks
159	Face shields
159	Disposable booties
159	Safety goggles
159	Gloves
159	Gowns
159	Disinfecting wipes
160	N95s
160	Surgical masks
160	Face shields
160	Disposable booties
160	Safety goggles
160	Gloves
160	Gowns
160	Hand sanitizer
160	Disinfecting wipes
160	pre packaged food like cereal bars so on
161	N95s
162	Surgical masks
162	Face shields
162	Safety goggles
162	Gloves
162	Gowns
162	Hand sanitizer
162	Disinfecting wipes
163	N95s
163	Surgical masks
163	Face shields
163	Disposable booties
163	Safety goggles
163	Gloves
163	Gowns
163	Hand sanitizer
163	Disinfecting wipes
163	Thermometers
163	Cleaning Supplies
164	N95s
164	Face shields
164	Safety goggles
164	Gowns
164	Hand sanitizer
164	Disinfecting wipes
164	Thermometers
165	N95s
165	Surgical masks
165	Face shields
165	Disposable booties
165	Safety goggles
165	Gloves
165	Gowns
165	Hand sanitizer
165	Disinfecting wipes
165	Thermometers
166	N95s
166	Surgical masks
166	Face shields
166	Disposable booties
166	Safety goggles
166	Gloves
166	Gowns
166	Hand sanitizer
166	Disinfecting wipes
167	N95s
167	Surgical masks
167	Face shields
167	Disposable booties
167	Safety goggles
167	Gloves
167	Gowns
167	Hand sanitizer
167	Disinfecting wipes
167	Thermometers
168	N95s
168	Surgical masks
168	Face shields
168	Disposable booties
168	Gowns
168	Thermometers
169	N95s
169	Surgical masks
169	Face shields
169	Gloves
169	Gowns
169	Hand sanitizer
169	Disinfecting wipes
170	N95s
170	Surgical masks
170	Face shields
170	Disposable booties
170	Safety goggles
170	Gowns
170	Hand sanitizer
170	Disinfecting wipes
171	N95s
171	Surgical masks
171	Face shields
171	Disposable booties
171	Safety goggles
171	Gloves
171	Gowns
171	Hand sanitizer
171	Disinfecting wipes
172	N95s
172	Surgical masks
172	Face shields
172	Safety goggles
172	Gloves
172	Gowns
172	Hand sanitizer
172	Disinfecting wipes
173	N95s
173	Surgical masks
173	Hand sanitizer
174	N95s
174	Surgical masks
174	Face shields
174	Safety goggles
174	Gloves
174	Gowns
174	Hand sanitizer
174	Disinfecting wipes
174	Thermometers
175	N95s
175	Face shields
175	Gowns
175	Hand sanitizer
176	N95s
176	Surgical masks
176	Face shields
176	Disposable booties
176	Safety goggles
176	Gowns
176	Hand sanitizer
176	Disinfecting wipes
177	N95s
177	Surgical masks
177	Face shields
177	Safety goggles
177	Gloves
177	Gowns
177	Hand sanitizer
177	Disinfecting wipes
177	Homemade masks
178	N95s
178	Surgical masks
178	Face shields
178	Safety goggles
178	Gowns
179	N95s
179	Face shields
179	Disposable booties
179	Safety goggles
179	Hand sanitizer
179	Thermometers
180	N95s
180	Surgical masks
180	Disposable booties
180	Safety goggles
180	Gloves
180	Gowns
180	Hand sanitizer
180	Disinfecting wipes
181	Surgical masks
181	Face shields
181	Gloves
181	Gowns
181	Hand sanitizer
181	Disinfecting wipes
182	N95s
182	Surgical masks
182	Face shields
182	Disposable booties
182	Safety goggles
182	Gloves
182	Gowns
182	Hand sanitizer
182	Disinfecting wipes
182	Thermometers
183	N95s
183	Surgical masks
183	Gloves
183	Hand sanitizer
183	Disinfecting wipes
184	N95s
184	Surgical masks
184	Face shields
184	Disposable booties
184	Safety goggles
184	Gloves
184	Gowns
184	Hand sanitizer
184	Disinfecting wipes
184	Thermometers
185	N95s
185	Surgical masks
185	Face shields
185	Disposable booties
185	Safety goggles
185	Gloves
185	Gowns
185	Hand sanitizer
185	Disinfecting wipes
185	Thermometers
186	N95s
186	Surgical masks
186	Face shields
186	Disposable booties
186	Safety goggles
186	Gloves
186	Gowns
186	Hand sanitizer
186	Disinfecting wipes
187	N95s
187	Surgical masks
187	Face shields
187	Disposable booties
187	Safety goggles
187	Gloves
187	Gowns
187	Hand sanitizer
187	
188	N95s
188	Surgical masks
188	Face shields
188	Gowns
188	Hand sanitizer
188	Disinfecting wipes
189	N95s
189	Surgical masks
189	Face shields
189	Disposable booties
189	Safety goggles
189	Gloves
189	Gowns
189	Hand sanitizer
189	Disinfecting wipes
190	N95s
190	Surgical masks
190	Face shields
190	Disposable booties
190	Safety goggles
190	Gloves
190	Gowns
190	Hand sanitizer
190	Disinfecting wipes
190	Thermometers
191	N95s
191	Surgical masks
191	Face shields
191	Disposable booties
191	Safety goggles
191	Gloves
191	Gowns
191	Hand sanitizer
191	Disinfecting wipes
191	Thermometers
192	N95s
192	Surgical masks
192	Face shields
192	Disposable booties
192	Safety goggles
192	Gloves
192	Gowns
192	Hand sanitizer
192	Disinfecting wipes
192	Thermometers
193	N95s
193	Surgical masks
193	Face shields
193	Disposable booties
193	Safety goggles
193	Gloves
193	Gowns
193	Hand sanitizer
193	Disinfecting wipes
193	Thermometers
194	N95s
194	Surgical masks
194	Face shields
194	Disposable booties
194	Safety goggles
194	Gloves
194	Gowns
194	Hand sanitizer
194	Disinfecting wipes
194	Thermometers
195	N95s
195	Surgical masks
195	Face shields
195	Disposable booties
195	Safety goggles
195	Gloves
195	Gowns
195	Hand sanitizer
195	Disinfecting wipes
195	Thermometers
196	N95s
196	Surgical masks
196	Face shields
196	Disposable booties
196	Safety goggles
196	Gloves
196	Gowns
196	Hand sanitizer
196	Disinfecting wipes
196	Thermometers
197	N95s
197	Surgical masks
197	Face shields
197	Disposable booties
197	Safety goggles
197	Gloves
197	Gowns
197	Hand sanitizer
197	Disinfecting wipes
198	N95s
198	Surgical masks
198	Face shields
198	Disposable booties
198	Safety goggles
198	Gloves
198	Gowns
198	Hand sanitizer
198	Disinfecting wipes
198	Thermometers
199	N95s
199	Face shields
199	Safety goggles
199	Gloves
199	Gowns
199	Hand sanitizer
199	Disinfecting wipes
199	Permeable gowns
200	N95s
200	Surgical masks
200	Face shields
200	Safety goggles
200	Gloves
200	Gowns
200	Hand sanitizer
200	Disinfecting wipes
201	N95s
201	Surgical masks
201	Face shields
201	Safety goggles
201	Gloves
201	Gowns
201	Hand sanitizer
201	Disinfecting wipes
202	N95s
202	Surgical masks
202	Face shields
202	Disposable booties
202	Safety goggles
202	Gloves
202	Gowns
202	Hand sanitizer
202	Disinfecting wipes
203	N95s
203	Surgical masks
203	Safety goggles
203	Thermometers
204	N95s
204	Surgical masks
204	Gloves
204	Gowns
204	Hand sanitizer
204	Disinfecting wipes
205	N95s
205	Face shields
205	Gloves
205	Gowns
205	Hand sanitizer
205	Disinfecting wipes
205	Thermometers
206	Surgical masks
206	Hand sanitizer
206	Disinfecting wipes
207	N95s
207	Surgical masks
207	Gloves
207	Gowns
207	Hand sanitizer
208	N95s
208	Surgical masks
208	Face shields
208	Gowns
208	Hand sanitizer
208	Disinfecting wipes
209	N95s
209	Surgical masks
209	Face shields
209	Disposable booties
209	Safety goggles
209	Gloves
209	Gowns
209	Hand sanitizer
209	Disinfecting wipes
209	Thermometers
210	N95s
210	Surgical masks
210	Face shields
210	Gowns
210	Hand sanitizer
211	N95s
211	Surgical masks
211	Face shields
211	Disposable booties
211	Safety goggles
211	Gloves
211	Gowns
211	Hand sanitizer
211	Disinfecting wipes
211	Thermometers
212	N95s
212	Surgical masks
212	Face shields
212	Disposable booties
212	Safety goggles
212	Gloves
212	Gowns
212	Hand sanitizer
212	Disinfecting wipes
212	Thermometers
213	N95s
213	Surgical masks
213	Face shields
213	Gloves
213	Gowns
213	Hand sanitizer
213	Disinfecting wipes
213	Lysol Spray
213	Peroxide
213	alcohol wipes
214	N95s
214	Surgical masks
214	Face shields
214	Gloves
214	Gowns
214	Hand sanitizer
214	Disinfecting wipes
215	N95s
215	Surgical masks
215	Face shields
215	Disposable booties
215	Safety goggles
215	Gloves
215	Gowns
215	Hand sanitizer
215	Disinfecting wipes
216	N95s
216	Surgical masks
216	Face shields
216	Safety goggles
216	Gloves
216	Gowns
216	Hand sanitizer
216	Disinfecting wipes
216	Thermometers
217	N95s
217	Surgical masks
217	Face shields
217	Disposable booties
217	Safety goggles
217	Gloves
217	Gowns
217	Hand sanitizer
217	Disinfecting wipes
217	Thermometers
218	N95s
218	Surgical masks
218	Face shields
218	Gloves
218	Gowns
218	Hand sanitizer
218	Disinfecting wipes
218	Thermometers
219	N95s
220	N95s
220	Surgical masks
220	Face shields
220	Disposable booties
220	Safety goggles
220	Gloves
220	Gowns
220	Hand sanitizer
221	N95s
221	Surgical masks
221	Face shields
221	Disposable booties
221	Safety goggles
221	Gloves
221	Gowns
221	Hand sanitizer
221	Disinfecting wipes
221	Thermometers
222	N95s
222	Surgical masks
222	Safety goggles
222	Gloves
222	Gowns
222	Disinfecting wipes
223	N95s
223	Surgical masks
223	Face shields
223	Safety goggles
223	Gowns
223	Hand sanitizer
223	Disinfecting wipes
224	N95s
224	Surgical Masks
224	Face Shields
224	Disposable Booties
224	Safety Goggles
224	Gloves
225	N95s
225	Surgical masks
225	Face shields
225	Disposable booties
225	Safety goggles
225	Gloves
225	Gowns
225	Disinfecting wipes
226	N95s
226	Surgical masks
226	Face shields
226	Gloves
226	Gowns
227	N95s
227	Gloves
227	Hand sanitizer
228	N95s
228	Surgical masks
228	Face shields
228	Disposable booties
228	Safety goggles
228	Gloves
228	Gowns
228	Hand sanitizer
228	Disinfecting wipes
229	N95s
229	Surgical masks
229	Face shields
229	Gloves
229	Gowns
229	Hand sanitizer
229	Disinfecting wipes
230	N95s
230	Surgical masks
230	Face shields
230	Disposable booties
230	Safety goggles
230	Gloves
230	Gowns
230	Hand sanitizer
230	Disinfecting wipes
230	Thermometers
231	N95s
231	Surgical masks
231	Face shields
231	Safety goggles
231	Gloves
231	Gowns
231	Hand sanitizer
231	Thermometers
231	Isopropyl Alcohol bottles or prep pads
232	N95s
232	Surgical masks
232	Face shields
232	Disposable booties
232	Safety goggles
232	Gloves
232	Gowns
232	Hand sanitizer
232	Disinfecting wipes
232	Thermometers
233	N95s
234	N95s
234	Face shields
234	Gowns
234	Hand sanitizer
234	Disinfecting wipes
234	Thermometers
235	N95s
235	Surgical masks
235	Face shields
235	Safety goggles
235	Hand sanitizer
235	Disinfecting wipes
235	Thermometers
236	N95s
236	Surgical masks
236	Face shields
236	Safety goggles
236	Hand sanitizer
236	Disinfecting wipes
236	Thermometers
237	N95s
237	Surgical masks
237	Face shields
237	Disposable booties
237	Safety goggles
237	Gloves
237	Gowns
237	Hand sanitizer
237	Disinfecting wipes
237	Thermometers
238	N95s
238	Surgical masks
238	Face shields
238	Disposable booties
238	Safety goggles
238	Gloves
238	Gowns
238	Hand sanitizer
238	Disinfecting wipes
239	N95s
239	Surgical masks
239	Face shields
239	Disposable booties
239	Gloves
239	Gowns
240	N95s
240	Surgical masks
240	Face shields
240	Disposable booties
240	Safety goggles
240	Gowns
240	Hand sanitizer
240	Disinfecting wipes
241	N95s
241	Surgical masks
241	Face shields
241	Safety goggles
241	Gloves
241	Gowns
241	Hand sanitizer
241	Disinfecting wipes
241	Thermometers
242	N95s
242	Surgical masks
242	Face shields
242	Disposable booties
242	Safety goggles
242	Gloves
242	Gowns
242	Hand sanitizer
242	Disinfecting wipes
242	Thermometers
243	N95s
243	Surgical masks
243	Safety goggles
243	Gloves
243	Gowns
243	Hand sanitizer
243	Disinfecting wipes
243	Toilet Paper
244	N95s
244	Surgical masks
244	Face shields
244	Gloves
244	Disinfecting wipes
245	N95s
245	Surgical masks
245	Face shields
245	Disposable booties
245	Safety goggles
245	Gloves
245	Gowns
245	Hand sanitizer
245	Disinfecting wipes
245	Thermometers
245	toilet paper
245	to-go boxes/containers for resident meals
245	thermometer sheaths
246	N95s
246	Surgical masks
246	Disposable booties
246	Gowns
247	N95s
247	Surgical masks
247	Face shields
247	Disposable booties
247	Safety goggles
247	Gloves
247	Gowns
247	Hand sanitizer
247	Disinfecting wipes
247	Thermometers
248	Surgical masks
248	Gloves
248	Gowns
248	Disinfecting wipes
249	Surgical masks
249	Face shields
249	Disposable booties
249	Gowns
249	Hand sanitizer
249	Disinfecting wipes
250	N95s
250	Surgical masks
250	Face shields
250	Safety goggles
250	Gloves
250	Gowns
250	Hand sanitizer
250	Disinfecting wipes
251	Face shields
251	Sewn Masks: https://www.unitypoint.org/cedarrapids/sewing-surgical-masks.aspx
252	N95s
252	Surgical masks
252	Face shields
252	Disposable booties
252	Safety goggles
252	Gloves
252	Gowns
252	Hand sanitizer
252	Disinfecting wipes
252	Thermometers
253	N95s
253	Hand sanitizer
253	Disinfecting wipes
254	N95s
254	Surgical masks
254	Face shields
254	Safety goggles
254	Hand sanitizer
254	Disinfecting wipes
254	Thermometers
255	N95s
255	Face shields
255	Hand sanitizer
255	Disinfecting wipes
256	N95s
256	Surgical masks
256	Face shields
256	Safety goggles
256	Gloves
256	Gowns
256	Hand sanitizer
256	Disinfecting wipes
256	Thermometers
257	N95s
257	Surgical masks
257	Face shields
257	Safety goggles
257	Hand sanitizer
257	Disinfecting wipes
257	Thermometers
258	Face shields
258	Sewn Masks: Pattern https://buttoncounter.com/2018/01/14/facemask-a-picture-tutorial/
259	N95s
259	Surgical masks
259	Face shields
259	Disposable booties
259	Safety goggles
259	Gloves
259	Gowns
259	Hand sanitizer
259	Disinfecting wipes
259	Thermometers
260	N95s
260	Surgical masks
260	Face shields
260	Thermometers
261	N95s
261	Surgical masks
261	Face shields
261	Safety goggles
261	Gloves
261	Gowns
261	Hand sanitizer
261	Disinfecting wipes
261	Thermometers
262	N95s
262	Face shields
262	Safety goggles
262	Gloves
262	Gowns
262	Hand sanitizer
262	Disinfecting wipes
263	N95s
263	Surgical masks
263	Hand sanitizer
263	Disinfecting wipes
263	gift cards for patient families who no longer have income
264	Surgical masks
264	Face shields
264	Disposable booties
264	Gowns
264	Hand sanitizer
264	Disinfecting wipes
264	Thermometers
265	N95s
265	Surgical masks
265	Face shields
265	Disposable booties
265	Safety goggles
265	Gloves
265	Gowns
265	Hand sanitizer
265	Disinfecting wipes
266	N95s
266	Surgical masks
266	Face shields
266	Disposable booties
266	Safety goggles
266	Gloves
266	Gowns
266	Hand sanitizer
266	Disinfecting wipes
266	Thermometers
267	N95s
267	Surgical masks
267	Face shields
267	Safety goggles
267	Gowns
267	Hand sanitizer
267	Disinfecting wipes
268	N95s
268	Surgical masks
268	Face shields
268	Safety goggles
268	Gloves
268	Gowns
268	Hand sanitizer
268	Disinfecting wipes
269	N95s
269	Surgical masks
269	Face shields
269	Safety goggles
269	Gloves
269	Gowns
269	Hand sanitizer
269	Disinfecting wipes
269	Thermometers
270	N95s
270	Surgical masks
270	Face shields
270	Disposable booties
270	Safety goggles
270	Gloves
270	Gowns
270	Hand sanitizer
270	Disinfecting wipes
270	hand sewn masks are also acceptable
271	N95s
271	Surgical masks
271	Face shields
271	Safety goggles
271	Gowns
271	Hand sanitizer
272	N95s
272	Surgical masks
272	Face shields
272	Disposable booties
272	Safety goggles
272	Gloves
272	Gowns
272	Hand sanitizer
272	Disinfecting wipes
272	Thermometers
273	N95s
273	Surgical masks
273	Face shields
273	Disposable booties
273	Safety goggles
273	Gloves
273	Gowns
273	Hand sanitizer
273	Disinfecting wipes
274	N95s
274	Surgical masks
274	Face shields
274	Disposable booties
274	Safety goggles
274	Gloves
274	Gowns
275	N95s
275	Surgical masks
275	Face shields
275	Gloves
275	Gowns
275	Hand sanitizer
275	Disinfecting wipes
276	N95s
276	Surgical masks
276	Face shields
276	Disposable booties
276	Safety goggles
276	Gloves
276	Gowns
276	Hand sanitizer
276	Disinfecting wipes
276	Thermometers
277	N95s
277	Surgical masks
277	Face shields
277	Safety goggles
277	Gloves
277	Hand sanitizer
277	Disinfecting wipes
277	Thermometers
278	N95s
278	Surgical masks
278	Face shields
278	Safety goggles
278	Gloves
278	Gowns
278	Hand sanitizer
278	Disinfecting wipes
278	Thermometers
279	N95s
279	Gowns
279	Hand sanitizer
280	N95s
280	Surgical masks
280	Face shields
280	Disposable booties
280	Gloves
280	Gowns
280	Hand sanitizer
280	Disinfecting wipes
280	Thermometers
281	N95s
281	Face shields
281	Hand sanitizer
281	Disinfecting wipes
281	Thermometers
282	N95s
282	Surgical masks
282	Face shields
282	Disposable booties
282	Safety goggles
282	Gloves
282	Gowns
282	Hand sanitizer
282	Disinfecting wipes
282	Thermometers
283	N95s
283	Surgical masks
283	Face shields
283	Gowns
283	Disinfecting wipes
284	N95s
284	Surgical masks
284	Face shields
284	Disposable booties
284	Safety goggles
284	Gloves
284	Gowns
284	Hand sanitizer
284	Disinfecting wipes
284	Thermometers
285	N95s
285	Surgical masks
285	Face shields
285	Disposable booties
285	Safety goggles
285	Gloves
285	Gowns
285	Hand sanitizer
285	Disinfecting wipes
285	Thermometers
286	N95s
286	Surgical masks
286	Face shields
286	Disposable booties
286	Safety goggles
286	Gowns
286	Hand sanitizer
286	Disinfecting wipes
287	N95s
287	Surgical masks
287	Safety goggles
287	Gloves
287	Gowns
287	Hand sanitizer
287	Disinfecting wipes
287	Rubbing Alcohol
288	N95s
288	Surgical masks
288	Face shields
288	Disposable booties
288	Safety goggles
288	Gloves
288	Gowns
288	Hand sanitizer
288	Disinfecting wipes
288	Thermometers
288	Water/snacks for staff
289	N95s
289	Surgical masks
289	Face shields
289	Disposable booties
289	Safety goggles
289	Gloves
289	Gowns
289	Hand sanitizer
289	Disinfecting wipes
289	Thermometers
290	N95s
290	Surgical masks
290	Face shields
290	Disposable booties
290	Safety goggles
290	Gloves
290	Gowns
290	Hand sanitizer
290	Disinfecting wipes
290	Thermometers
291	N95s
291	Surgical masks
291	Hand sanitizer
291	Disinfecting wipes
291	Thermometers
292	N95s
292	Surgical masks
292	Face shields
292	Disposable booties
292	Safety goggles
292	Gloves
292	Gowns
292	Hand sanitizer
292	Disinfecting wipes
292	Thermometers
293	N95s
293	Surgical masks
293	Disposable booties
293	Safety goggles
293	Gloves
293	Hand sanitizer
293	Thermometers
294	N95s
294	Surgical masks
294	Face shields
294	Safety goggles
294	Gloves
294	Gowns
294	Hand sanitizer
294	Disinfecting wipes
295	N95s
295	Surgical masks
295	Gloves
295	Hand sanitizer
295	Disinfecting wipes
295	Thermometers
296	N95s
296	Surgical masks
296	Face shields
296	Disposable booties
296	Safety goggles
296	Gloves
296	Gowns
296	Hand sanitizer
296	Disinfecting wipes
297	N95s
297	Surgical masks
297	Face shields
297	Disposable booties
297	Safety goggles
297	Gloves
297	Gowns
297	Hand sanitizer
297	Disinfecting wipes
297	Thermometers
298	N95s
298	Surgical masks
298	Face shields
298	Safety goggles
298	Gloves
298	Hand sanitizer
298	Disinfecting wipes
298	Lab coats or gowns
299	N95s
299	Surgical masks
299	Face shields
299	Disposable booties
299	Gloves
299	Gowns
299	Hand sanitizer
299	Disinfecting wipes
300	N95s
300	Face shields
300	Gloves
300	Gowns
300	Hand sanitizer
300	Disinfecting wipes
300	Thermometers
301	N95s
301	Surgical masks
301	Face shields
301	Disposable booties
301	Safety goggles
301	Gloves
301	Gowns
301	Hand sanitizer
301	Disinfecting wipes
302	N95s
302	Surgical masks
302	Gowns
303	N95s
303	Gloves
303	Hand sanitizer
303	Disinfecting wipes
304	N95s
304	Surgical masks
304	Face shields
304	Gloves
304	Gowns
305	N95s
305	Surgical masks
305	Face shields
305	Disposable booties
305	Safety goggles
305	Gloves
305	Gowns
305	Hand sanitizer
305	Disinfecting wipes
305	Thermometers
306	N95s
306	Surgical masks
306	Face shields
306	Safety goggles
306	Gloves
306	Gowns
306	Hand sanitizer
306	Disinfecting wipes
306	Thermometers
307	Surgical masks
307	Gloves
307	Gowns
307	Hand sanitizer
307	Disinfecting wipes
307	Disposable face masks
308	N95s
308	Surgical masks
308	Face shields
308	Disposable booties
308	Safety goggles
308	Gloves
308	Gowns
308	Hand sanitizer
308	Disinfecting wipes
308	Thermometers
309	N95s
309	Surgical masks
309	Safety goggles
309	Gowns
310	N95s
310	Surgical masks
310	Gowns
311	N95s
311	Surgical masks
311	Face shields
311	Gowns
311	Hand sanitizer
311	Disinfecting wipes
311	Thermometers
312	N95s
312	Surgical masks
312	Face shields
312	Gloves
312	Gowns
312	Hand sanitizer
312	Disinfecting wipes
312	Thermometers
313	N95s
313	Surgical masks
313	Face shields
313	Disposable booties
313	Safety goggles
313	Gloves
313	Gowns
313	Hand sanitizer
313	Disinfecting wipes
313	Thermometers
313	•Acoustic stethoscopes•\tSpecimen collection or transport container/bags
314	N95s
314	Face shields
314	Disposable booties
314	Safety goggles
314	Gowns
314	Hand sanitizer
314	Disinfecting wipes
315	N95s
315	Surgical masks
315	Face shields
315	Disposable booties
315	Safety goggles
315	Gowns
316	N95s
316	Surgical masks
316	Face shields
316	Disposable booties
316	Gowns
316	Hand sanitizer
317	N95s
317	Surgical masks
317	Face shields
317	Disposable booties
317	Safety goggles
317	Gloves
317	Gowns
317	Hand sanitizer
317	Disinfecting wipes
317	Thermometers
318	N95s
318	Face shields
318	Safety goggles
318	Hand sanitizer
318	Disinfecting wipes
319	N95s
319	Surgical masks
319	Face shields
319	Disposable booties
319	Safety goggles
319	Gloves
319	Gowns
319	Hand sanitizer
319	Disinfecting wipes
319	Thermometers
320	Surgical masks
320	Gloves
320	Hand sanitizer
320	Disinfecting wipes
321	N95s
321	Surgical masks
321	Face shields
321	Gowns
321	Hand sanitizer
321	Disinfecting wipes
322	N95s
322	Surgical masks
322	Face shields
322	Disposable booties
322	Safety goggles
322	Gloves
322	Gowns
323	N95s
323	Surgical masks
323	Face shields
323	Disposable booties
323	Safety goggles
323	Gloves
323	Gowns
323	Hand sanitizer
323	Disinfecting wipes
323	Thermometers
324	N95s
324	Surgical masks
324	Face shields
324	Gloves
324	Gowns
324	Hand sanitizer
324	Disinfecting wipes
324	Thermometers
325	N95s
325	Surgical masks
325	Face shields
325	Safety goggles
325	Gloves
325	Gowns
325	Hand sanitizer
325	Disinfecting wipes
325	Thermometers
326	N95s
326	Surgical masks
326	Safety goggles
326	Hand sanitizer
326	Disinfecting wipes
327	N95s
327	Surgical masks
327	Face shields
327	Disposable booties
327	Safety goggles
327	Gloves
327	Gowns
327	Hand sanitizer
327	Disinfecting wipes
327	Thermometers
328	N95s
328	Surgical masks
328	Face shields
328	Disposable booties
328	Safety goggles
328	Gloves
328	Gowns
328	Hand sanitizer
328	Disinfecting wipes
328	Thermometers
328	Phone chargers for patients so they can speak to their loved ones
329	N95s
329	Surgical masks
329	Face shields
329	Safety goggles
329	Hand sanitizer
329	Disinfecting wipes
329	Thermometers
330	N95s
330	Surgical masks
330	Safety goggles
330	Gowns
330	Hand sanitizer
330	Disinfecting wipes
330	Thermometers
331	N95s
331	Surgical masks
331	Face shields
331	Disposable booties
331	Safety goggles
331	Gloves
331	Gowns
331	Hand sanitizer
331	Disinfecting wipes
331	Thermometers
332	N95s
332	Surgical masks
332	Safety goggles
332	Hand sanitizer
332	Disinfecting wipes
332	Thermometers
333	Surgical masks
333	Face shields
333	Disposable booties
333	Safety goggles
333	Gowns
333	Hand sanitizer
333	Disinfecting wipes
333	Thermometers
334	N95s
334	Face shields
334	Gowns
335	N95s
335	Surgical masks
335	Face shields
335	Safety goggles
335	Hand sanitizer
336	N95s
336	Surgical masks
336	Face shields
336	Gowns
336	Thermometers
337	N95s
337	Surgical masks
337	Face shields
337	Safety goggles
337	Gowns
337	Hand sanitizer
337	Thermometers
338	N95s
338	Surgical masks
338	Gowns
338	Hand sanitizer
338	Thermometers
339	N95s
339	Surgical masks
339	Face shields
339	Safety goggles
339	Gloves
339	Gowns
339	Hand sanitizer
339	Disinfecting wipes
339	Thermometers
340	N95s
340	Surgical masks
340	Face shields
340	Disposable booties
340	Safety goggles
340	Gloves
340	Gowns
340	Hand sanitizer
340	Disinfecting wipes
340	Thermometers
341	Surgical masks
341	Face shields
341	Safety goggles
341	Gowns
341	Disinfecting wipes
342	N95s
343	N95s
343	Surgical masks
343	Face shields
343	Disposable booties
343	Safety goggles
343	Gloves
343	Gowns
343	Hand sanitizer
343	Disinfecting wipes
344	N95s
344	Surgical masks
344	Face shields
344	Disposable booties
344	Safety goggles
344	Gloves
344	Gowns
344	Hand sanitizer
344	Disinfecting wipes
344	Thermometers
344	3M N95 masks; BIPAP & CPAP masks; disposable stethescopes
345	N95s
345	Surgical masks
345	Face shields
345	Safety goggles
345	Gloves
345	Gowns
346	N95s
346	Surgical masks
346	Face shields
346	Hand sanitizer
346	Disinfecting wipes
346	Thermometers
346	Safety goggles
346	Gowns
346	Powered air purifying respirator (PAPR) hoods
347	N95s
347	Surgical masks
347	Face shields
347	Safety goggles
347	Gowns
347	Hand sanitizer
347	Disinfecting wipes
348	N95s
348	Surgical masks
348	Face shields
348	Disposable booties
348	Safety goggles
348	Gloves
348	Gowns
348	Hand sanitizer
348	Disinfecting wipes
348	Thermometers
349	N95s
349	Surgical masks
349	Face shields
349	Safety goggles
349	Gloves
349	Hand sanitizer
349	Disinfecting wipes
350	N95s
350	Surgical Masks
350	Face Shields
350	Disposable Booties
350	Safety Goggles
350	Gloves
351	N95s
351	Surgical masks
351	Face shields
351	Disposable booties
351	Safety goggles
351	Gloves
351	Gowns
351	Hand sanitizer
351	Disinfecting wipes
351	Thermometers
352	N95s
352	Surgical masks
352	Face shields
352	Disposable booties
352	Safety goggles
352	Gloves
352	Gowns
352	Hand sanitizer
352	Disinfecting wipes
352	Thermometers
352	Antibacterial soap
353	N95s
353	Surgical masks
353	Face shields
353	Disposable booties
353	Safety goggles
353	Gloves
353	Gowns
353	Hand sanitizer
353	Disinfecting wipes
353	Thermometers
353	No-Touch Thermometers
354	N95s
354	Surgical masks
354	Face shields
354	Safety goggles
354	Gowns
354	Hand sanitizer
354	Disinfecting wipes
355	N95s
355	Surgical masks
355	Face shields
355	Disposable booties
355	Safety goggles
355	Gloves
355	Gowns
355	Hand sanitizer
355	Disinfecting wipes
355	Thermometers
356	N95s
356	Surgical masks
356	Face shields
356	Disposable booties
356	Safety goggles
356	Gloves
356	Gowns
356	Hand sanitizer
356	Disinfecting wipes
357	N95s
357	Surgical masks
357	Safety goggles
357	Gowns
357	Hand sanitizer
357	Disinfecting wipes
358	Surgical masks
358	Hand sanitizer
359	N95s
359	Surgical masks
359	Face shields
359	Disposable booties
359	Safety goggles
359	Gloves
359	Gowns
359	Hand sanitizer
359	Disinfecting wipes
359	Thermometers
360	N95s
360	Surgical masks
360	Gloves
360	Gowns
360	Hand sanitizer
360	Disinfecting wipes
361	N95s
361	Gloves
361	Gowns
361	Hand sanitizer
361	Disinfecting wipes
361	Thermometers
362	N95s
362	Surgical masks
362	Face shields
362	Safety goggles
362	Gloves
362	Gowns
362	Hand sanitizer
362	Disinfecting wipes
362	Thermometers
363	N95s
363	Surgical masks
363	Face shields
363	Disposable booties
363	Gowns
363	Hand sanitizer
363	Disinfecting wipes
364	N95s
364	Surgical masks
364	Face shields
364	Safety goggles
364	Hand sanitizer
364	Disinfecting wipes
365	N95s
365	Surgical masks
365	Face shields
365	Disposable booties
365	Safety goggles
365	Gloves
365	Gowns
365	Hand sanitizer
365	Disinfecting wipes
365	Thermometers
366	N95s
366	Face shields
366	Safety goggles
366	Gloves
366	Gowns
366	Hand sanitizer
366	Disinfecting wipes
366	Thermometers
367	N95s
367	Surgical masks
367	Face shields
367	Gloves
367	Gowns
367	Hand sanitizer
367	Disinfecting wipes
367	Thermometers
368	N95s
368	Surgical masks
368	Face shields
368	Gowns
368	Hand sanitizer
368	Disinfecting wipes
369	N95s
369	Surgical masks
369	Face shields
369	Disposable booties
369	Safety goggles
369	Gloves
369	Gowns
369	Hand sanitizer
369	Disinfecting wipes
369	Thermometers
370	N95s
370	Surgical masks
370	Face shields
370	Disposable booties
370	Safety goggles
370	Gloves
370	Gowns
370	Hand sanitizer
370	Disinfecting wipes
370	Thermometers
371	N95s
371	Surgical masks
371	Face shields
371	Disposable booties
371	Safety goggles
371	Gloves
371	Gowns
371	Hand sanitizer
371	Disinfecting wipes
371	Thermometers
372	N95s
372	Surgical masks
372	Face shields
372	Disposable booties
372	Safety goggles
372	Gloves
372	Gowns
372	Hand sanitizer
372	Disinfecting wipes
372	Thermometers
373	N95s
373	Surgical masks
373	Face shields
373	Disposable booties
373	Safety goggles
373	Gloves
373	Gowns
373	Hand sanitizer
373	Disinfecting wipes
373	Thermometers
374	N95s
374	Surgical masks
374	Face shields
374	Disposable booties
374	Safety goggles
374	Gloves
374	Gowns
374	Hand sanitizer
374	Disinfecting wipes
375	N95s
375	Surgical masks
375	Face shields
375	Disposable booties
375	Safety goggles
375	Gloves
375	Gowns
375	Hand sanitizer
375	Disinfecting wipes
376	N95s
376	Surgical masks
376	Face shields
376	Disposable booties
376	Safety goggles
376	Gloves
376	Gowns
376	Hand sanitizer
376	Disinfecting wipes
376	Thermometers
377	N95s
377	Surgical masks
377	Face shields
377	Disposable booties
377	Safety goggles
377	Gloves
377	Gowns
377	Hairnets
378	N95s
378	Surgical masks
378	Face shields
378	Disposable booties
378	Safety goggles
378	Gloves
378	Gowns
378	Hand sanitizer
378	Disinfecting wipes
378	Thermometers
379	N95s
379	Surgical masks
379	Safety goggles
379	Gowns
379	Hand sanitizer
379	Disinfecting wipes
379	Thermometers
380	N95s
380	Surgical masks
380	Safety goggles
380	Gloves
380	Gowns
380	Hand sanitizer
380	Disinfecting wipes
381	N95s
381	Surgical masks
381	Face shields
381	Gowns
381	Hand sanitizer
381	Disinfecting wipes
382	N95s
382	Surgical masks
382	Face shields
382	Disposable booties
382	Safety goggles
382	Gloves
382	Gowns
382	Hand sanitizer
382	Disinfecting wipes
382	Thermometers
383	N95s
383	Face shields
383	Safety goggles
383	Gloves
383	Gowns
383	Hand sanitizer
383	Disinfecting wipes
384	N95s
384	Surgical masks
384	Face shields
384	Disposable booties
384	Safety goggles
384	Gloves
384	Gowns
384	Hand sanitizer
384	Disinfecting wipes
384	Thermometers
385	N95s
385	Surgical masks
385	Face shields
385	Safety goggles
385	Gloves
385	Gowns
385	Disinfecting wipes
385	Thermometers
386	N95s
386	Surgical masks
386	Face shields
386	Disposable booties
386	Safety goggles
386	Gowns
387	N95s
387	Surgical masks
387	Face shields
387	Safety goggles
387	Hand sanitizer
387	Disinfecting wipes
388	N95s
388	Surgical masks
388	Face shields
388	Gloves
388	Gowns
388	Hand sanitizer
388	Disinfecting wipes
388	Thermometers
389	N95s
389	Surgical masks
389	Face shields
389	Gowns
389	Hand sanitizer
389	Disinfecting wipes
390	N95s
390	Surgical masks
390	Face shields
390	Disinfecting wipes
391	N95s
391	Surgical masks
391	Gloves
391	Gowns
391	Hand sanitizer
391	Disinfecting wipes
392	N95s
392	Surgical masks
392	Face shields
392	Disposable booties
392	Safety goggles
392	Gloves
392	Gowns
392	Hand sanitizer
392	Disinfecting wipes
392	Thermometers
393	N95s
393	Surgical masks
393	Face shields
393	Safety goggles
393	Gowns
393	Hand sanitizer
393	Disinfecting wipes
394	N95s
394	Surgical masks
394	Face shields
394	Disposable booties
394	Safety goggles
394	Gloves
394	Gowns
394	Hand sanitizer
394	Disinfecting wipes
394	Thermometers
395	N95s
395	Surgical masks
395	Face shields
395	Disposable booties
395	Safety goggles
395	Gloves
395	Gowns
395	Hand sanitizer
395	Disinfecting wipes
395	Thermometers
395	full coverage coverall / head cover
396	N95s
396	Gowns
397	N95s
397	Surgical masks
397	Face shields
397	Disposable booties
397	Safety goggles
397	Gloves
397	Gowns
397	Hand sanitizer
397	Disinfecting wipes
397	Thermometers
398	N95s
398	Surgical masks
398	Face shields
398	Gloves
398	Gowns
399	N95s
399	Surgical masks
399	Face shields
399	Disposable booties
399	Safety goggles
399	Gowns
399	Hand sanitizer
399	Disinfecting wipes
400	N95s
400	Face shields
400	Safety goggles
400	Gloves
400	Gowns
400	Hand sanitizer
400	Disinfecting wipes
400	Thermometers
401	N95s
401	Surgical masks
401	Face shields
401	Disposable booties
401	Safety goggles
401	Gloves
401	Gowns
401	Hand sanitizer
401	Disinfecting wipes
401	Thermometers
401	We have 4 boxes of surgical masks only. Cannot get ANY from our vendors
402	N95s
402	Surgical masks
402	Face shields
402	Disposable booties
402	Safety goggles
402	Gloves
402	Gowns
402	Hand sanitizer
402	Disinfecting wipes
402	Thermometers
403	N95s
403	Surgical masks
403	Face shields
403	Safety goggles
403	Gloves
403	Gowns
403	Hand sanitizer
403	Disinfecting wipes
403	Isopropyl Alcohol
403	Cleaning supplies
403	Alcohol Prep Pads
404	N95s
404	Surgical masks
404	Face shields
404	Disposable booties
404	Safety goggles
404	Gloves
404	Gowns
404	Hand sanitizer
404	Disinfecting wipes
404	Thermometers
405	Surgical masks
405	Gowns
405	Disinfecting wipes
406	Hand sanitizer
407	N95s
407	Surgical masks
407	Face shields
407	Hand sanitizer
407	Disinfecting wipes
407	Thermometers
408	N95s
408	Surgical masks
408	Face shields
408	Disposable booties
408	Safety goggles
408	Gloves
408	Gowns
408	Hand sanitizer
408	Disinfecting wipes
408	Thermometers
409	N95s
409	Surgical masks
409	Face shields
409	Safety goggles
409	Gloves
409	Hand sanitizer
409	Disinfecting wipes
409	Thermometers
410	Surgical masks
410	Face shields
410	Disposable booties
410	Gowns
411	N95s
411	Surgical masks
411	Face shields
411	Safety goggles
411	Gloves
411	Gowns
412	N95s
412	Surgical masks
412	Face shields
412	Disposable booties
412	Safety goggles
412	Gloves
412	Gowns
412	Hand sanitizer
412	Disinfecting wipes
412	Thermometers
412	Desperately need floor Disinfectant
413	N95s
413	Surgical masks
413	Face shields
413	Safety goggles
413	Gloves
413	Gowns
413	Disinfecting wipes
414	N95s
414	Surgical masks
414	Face shields
414	Safety goggles
414	Gowns
415	N95s
415	Surgical masks
415	Face shields
415	Disposable booties
415	Safety goggles
415	Gloves
415	Gowns
415	Hand sanitizer
415	Disinfecting wipes
415	CAPR/PAPR machines and disposables; flocked swabs
416	N95s
416	Surgical masks
416	Face shields
416	Safety goggles
416	Gloves
416	Gowns
416	Hand sanitizer
416	Disinfecting wipes
417	N95s
417	Surgical masks
417	Face shields
417	Safety goggles
417	Hand sanitizer
417	Disinfecting wipes
418	N95s
418	Surgical masks
418	Face shields
418	Disposable booties
418	Safety goggles
418	Gloves
418	Gowns
418	Hand sanitizer
418	Disinfecting wipes
419	N95s
419	Surgical masks
419	Face shields
419	Safety goggles
419	Gloves
419	Gowns
419	Hand sanitizer
419	Disinfecting wipes
419	Thermometers
420	N95s
420	Surgical masks
420	Face shields
420	Safety goggles
420	Gloves
420	Gowns
420	Hand sanitizer
420	Disinfecting wipes
421	N95s
421	Surgical masks
421	Face shields
421	Safety goggles
421	Gowns
421	Hand sanitizer
421	Disinfecting wipes
422	N95s
422	Surgical masks
422	Face shields
422	Disposable booties
422	Safety goggles
422	Gloves
422	Gowns
422	Hand sanitizer
422	Disinfecting wipes
422	Thermometers
422	99.99 % alcohol Face mask
422	surgical or NOT Lysol or Clorox wipes
422	Alcohol based Hand Sanitizer
422	Protective eye wear
422	Disposable gloves
423	N95s
423	Surgical masks
423	Face shields
423	Safety goggles
423	Gloves
423	Gowns
423	Hand sanitizer
424	N95s
424	Surgical masks
424	Face shields
424	Safety goggles
424	Gloves
424	Gowns
424	Hand sanitizer
424	Disinfecting wipes
424	bleach
425	N95s
425	Surgical masks
425	Face shields
425	Disposable booties
425	Safety goggles
425	Gloves
425	Gowns
425	Hand sanitizer
425	Disinfecting wipes
425	Thermometers
426	N95s
426	Surgical masks
426	Gloves
426	Gowns
426	Hand sanitizer
426	Disinfecting wipes
427	N95s
427	Surgical masks
427	Face shields
427	Disposable booties
427	Safety goggles
427	Gowns
427	Thermometers
428	N95s
428	Surgical masks
428	Disposable booties
428	Gowns
428	Hand sanitizer
428	Disinfecting wipes
429	N95s
429	Face shields
429	Safety goggles
429	Gowns
429	Hand sanitizer
429	Disinfecting wipes
430	N95s
430	Surgical masks
430	Face shields
430	Safety goggles
430	Gowns
430	Hand sanitizer
430	Disinfecting wipes
430	CAPR/PAPR machines
430	flocked swabs
431	N95s
431	Safety goggles
431	Gloves
431	Gowns
432	N95s
432	Surgical masks
432	Gowns
433	N95s
433	Surgical masks
433	Face shields
433	Safety goggles
433	Gloves
433	Gowns
433	Hand sanitizer
433	Disinfecting wipes
433	bleach
434	N95s
434	Surgical masks
434	Face shields
434	Disposable booties
434	Safety goggles
434	Gloves
434	Gowns
434	Hand sanitizer
434	Disinfecting wipes
435	N95s
435	Safety goggles
436	N95s
436	Face shields
436	Gowns
437	N95s
437	Surgical masks
437	Gowns
438	N95s
438	Face shields
438	Disposable booties
438	Safety goggles
438	Gloves
438	Gowns
438	Hand sanitizer
438	Disinfecting wipes
438	Thermometers
439	N95s
439	Surgical masks
439	Face shields
439	Gowns
439	Hand sanitizer
439	Disinfecting wipes
440	N95s
440	Face shields
440	Disposable booties
440	Gowns
440	Hand sanitizer
441	N95s
441	Surgical masks
441	Face shields
441	Safety goggles
441	Gowns
441	Hand sanitizer
441	Disinfecting wipes
442	N95s
442	Surgical masks
442	Face shields
442	Disposable booties
442	Safety goggles
442	Gloves
442	Gowns
442	Disinfecting wipes
443	N95s
443	Surgical masks
443	Face shields
443	Safety goggles
443	Gloves
444	N95s
444	Surgical masks
444	Face shields
444	Disposable booties
444	Safety goggles
444	Gloves
444	Gowns
444	Hand sanitizer
444	Disinfecting wipes
445	N95s
445	Surgical Masks
445	Face Shields
445	Disposable Booties
445	Safety Goggles
445	Gloves
445	Thermometers
445	Disinfectant Wipes
445	Gowns
445	CAPR/PAPR machines and disposables
446	N95s
446	Surgical masks
446	Face shields
446	Disposable booties
446	Safety goggles
446	Gloves
446	Gowns
446	Hand sanitizer
446	Disinfecting wipes
446	Thermometers
447	N95s
447	Surgical masks
447	Face shields
447	Safety goggles
447	Gowns
447	Hand sanitizer
448	N95s
448	Surgical masks
448	Face shields
448	Safety goggles
448	Gloves
448	Gowns
448	Hand sanitizer
448	Disinfecting wipes
449	N95s
449	Surgical masks
449	Face shields
449	Safety goggles
450	N95s
450	Surgical masks
450	Face shields
450	Disposable booties
450	Safety goggles
450	Gloves
450	Gowns
450	Disinfecting wipes
450	Thermometers
451	N95s
451	Gowns
452	N95s
452	Surgical masks
452	Face shields
452	Disposable booties
452	Safety goggles
452	Gloves
452	Gowns
453	N95s
453	Surgical masks
453	Face shields
453	Disposable booties
453	Safety goggles
453	Gloves
453	Gowns
454	N95s
454	Surgical masks
454	Face shields
454	Disposable booties
454	Safety goggles
454	Gloves
454	Gowns
454	Hand sanitizer
454	Disinfecting wipes
454	Thermometers
455	N95s
455	Surgical masks
455	Face shields
455	Safety goggles
455	Gowns
456	Surgical masks
456	Face shields
456	Gloves
457	N95s
457	Surgical masks
457	Face shields
457	Disposable booties
457	Safety goggles
457	Gowns
457	Disinfecting wipes
458	N95s
458	Surgical masks
458	Face shields
458	Disposable booties
458	Safety goggles
458	Gloves
458	Gowns
458	Disinfecting wipes
459	N95s
459	Surgical masks
459	Face shields
459	Safety goggles
459	Gloves
459	Gowns
459	Hand sanitizer
459	Disinfecting wipes
459	Thermometers
459	CAPR and PAPR equipment
459	Full face respirators with HEPA Filters
460	N95s
460	Surgical masks
460	Face shields
460	Disposable booties
460	Safety goggles
460	Gloves
460	Gowns
460	Hand sanitizer
460	Disinfecting wipes
460	Thermometers
460	Cleaning supplies
461	N95s
461	Surgical masks
461	Face shields
461	Safety goggles
461	Gowns
461	Thermometers
462	N95s
462	Surgical masks
462	Face shields
462	Disposable booties
462	Safety goggles
462	Gloves
462	Gowns
462	Hand sanitizer
462	Disinfecting wipes
462	Thermometers
463	N95s
463	Surgical masks
463	Face shields
463	Disposable booties
463	Safety goggles
463	Gloves
463	Gowns
463	Hand sanitizer
463	Disinfecting wipes
463	Thermometers
464	N95s
464	Surgical masks
464	Face shields
464	Disposable booties
464	Safety goggles
464	Gloves
464	Gowns
464	Hand sanitizer
464	Disinfecting wipes
464	Thermometers
464	02 monitors
465	N95s
465	Surgical masks
465	Face shields
465	Safety goggles
465	Gloves
465	Gowns
465	Hand sanitizer
465	Disinfecting wipes
466	N95s
466	Surgical masks
466	Face shields
466	Disposable booties
466	Safety goggles
466	Gloves
466	Gowns
466	Hand sanitizer
466	Disinfecting wipes
466	Thermometers
467	N95s
467	Face shields
467	Safety goggles
467	Gowns
468	N95s
468	Surgical masks
468	Face shields
468	Safety goggles
468	Hand sanitizer
468	Disinfecting wipes
469	N95s
469	Surgical masks
469	Face shields
469	Safety goggles
469	Gloves
469	Gowns
470	N95s
470	Surgical masks
470	Face shields
470	Disposable booties
470	Safety goggles
470	Gloves
470	Gowns
470	Hand sanitizer
470	Disinfecting wipes
470	Thermometers
471	N95s
471	Gloves
471	Gowns
471	Hand sanitizer
471	Disinfecting wipes
471	Thermometers
472	N95s
472	Surgical masks
472	Face shields
472	Disposable booties
472	Safety goggles
472	Gloves
472	Gowns
472	Hand sanitizer
472	Disinfecting wipes
472	Thermometers
473	N95s
473	Surgical masks
473	Face shields
473	Disposable booties
473	Safety goggles
473	Gloves
473	Gowns
473	Hand sanitizer
473	Disinfecting wipes
474	Surgical masks
475	N95s
475	Surgical masks
475	Face shields
475	Disposable booties
475	Safety goggles
475	Gloves
475	Gowns
475	Hand sanitizer
475	Disinfecting wipes
475	Thermometers
476	N95s
476	Disposable booties
476	Gowns
477	N95s
477	Surgical masks
477	Face shields
477	Disposable booties
477	Safety goggles
477	Gloves
477	Gowns
477	Hand sanitizer
477	Disinfecting wipes
477	Thermometers
478	N95s
478	Surgical masks
478	Face shields
478	Disposable booties
478	Safety goggles
478	Gowns
478	Hand sanitizer
478	Disinfecting wipes
479	N95s
479	Surgical masks
479	Face shields
479	Gloves
479	Gowns
479	Hand sanitizer
480	N95s
480	Surgical masks
480	Face shields
480	Disposable booties
480	Gloves
480	Gowns
480	Hand sanitizer
480	Disinfecting wipes
481	N95s
481	Disposable booties
481	Safety goggles
481	Gloves
481	Gowns
481	Hand sanitizer
481	Disinfecting wipes
481	Thermometers
482	N95s
482	Surgical masks
482	Face shields
482	Gloves
482	Hand sanitizer
482	Disinfecting wipes
483	N95s
483	Surgical masks
483	Face shields
483	Disposable booties
483	Safety goggles
483	Gloves
483	Gowns
483	Hand sanitizer
483	Disinfecting wipes
483	Thermometers
483	handmake masks
484	N95s
484	Surgical masks
484	Face shields
484	Disposable booties
484	Safety goggles
484	Gloves
484	Gowns
485	N95s
485	Surgical masks
485	Face shields
485	Disposable booties
485	Safety goggles
485	Gloves
485	Gowns
485	Hand sanitizer
485	Disinfecting wipes
485	Thermometers
486	N95s
486	Surgical masks
486	Safety goggles
486	Gowns
487	N95s
487	Surgical masks
487	Gloves
487	Gowns
487	Hand sanitizer
487	Disinfecting wipes
488	N95s
488	Surgical masks
488	Face shields
488	Disposable booties
488	Safety goggles
488	Gloves
488	Gowns
488	Hand sanitizer
488	Disinfecting wipes
488	Thermometers
489	N95s
489	Surgical masks
489	Face shields
489	Gowns
489	Hand sanitizer
489	Disinfecting wipes
489	Thermometers
490	N95s
490	Surgical masks
490	Face shields
490	Disposable booties
490	Safety goggles
490	Gloves
490	Gowns
490	Hand sanitizer
490	Disinfecting wipes
491	N95s
491	Surgical masks
491	Face shields
491	Disposable booties
491	Safety goggles
491	Gloves
491	Gowns
491	Hand sanitizer
491	Disinfecting wipes
491	Thermometers
492	N95s
492	Face shields
492	Gloves
492	Gowns
492	Disinfecting wipes
492	Thermometers
493	N95s
493	Surgical masks
493	Face shields
493	Gloves
493	Gowns
493	Hand sanitizer
493	Disinfecting wipes
494	N95s
494	Surgical masks
494	Face shields
494	Disposable booties
494	Gowns
494	Hand sanitizer
494	Disinfecting wipes
495	N95s
495	Surgical masks
495	Face shields
495	Disposable booties
495	Safety goggles
495	Gloves
495	Gowns
495	Hand sanitizer
495	Disinfecting wipes
495	Thermometers
496	N95s
496	Surgical masks
496	Face shields
496	Safety goggles
496	Gowns
497	N95s
497	Surgical masks
497	Gloves
498	Surgical masks
498	Face shields
498	Gloves
498	Gowns
498	Hand sanitizer
498	Disinfecting wipes
498	Thermometers
499	N95s
499	Surgical masks
499	Face shields
499	Gowns
500	N95s
500	Surgical masks
500	Face shields
500	Safety goggles
500	Gloves
500	Gowns
500	Hand sanitizer
500	Disinfecting wipes
500	Thermometers
501	N95s
501	Surgical masks
501	Face shields
501	Safety goggles
501	Gloves
501	Gowns
501	Hand sanitizer
502	N95s
502	Face shields
502	Safety goggles
502	Gowns
503	Surgical masks
503	Hand sanitizer
503	Disinfecting wipes
504	N95s
504	Surgical masks
504	Face shields
504	Safety goggles
504	Hand sanitizer
504	Disinfecting wipes
504	Thermometers
505	N95s
505	Surgical masks
505	Face shields
505	Disposable booties
505	Safety goggles
505	Gloves
505	Gowns
505	Hand sanitizer
505	Disinfecting wipes
505	Thermometers
506	N95s
506	Surgical masks
506	Face shields
506	Disposable booties
506	Safety goggles
506	Gloves
506	Gowns
506	Hand sanitizer
506	Disinfecting wipes
506	Thermometers
507	N95s
507	Surgical masks
507	Gowns
507	Hand sanitizer
507	Disinfecting wipes
508	N95s
508	Surgical masks
508	Face shields
508	Disposable booties
508	Safety goggles
508	Gloves
508	Gowns
508	Hand sanitizer
508	Disinfecting wipes
508	Thermometers
509	N95s
509	Surgical masks
509	Face shields
509	Disposable booties
509	Safety goggles
509	Gloves
509	Gowns
509	Hand sanitizer
509	Disinfecting wipes
509	Thermometers
510	N95s
510	Surgical masks
510	Face shields
510	Gowns
510	Hand sanitizer
510	Disinfecting wipes
510	Thermometers
511	N95s
511	Surgical masks
511	Face shields
511	Safety goggles
512	N95s
512	Face shields
513	N95s
513	Surgical masks
513	Face shields
513	Safety goggles
513	Gowns
513	Hand sanitizer
513	Disinfecting wipes
513	Thermometers
514	N95s
514	Surgical masks
514	Face shields
514	Disposable booties
514	Safety goggles
514	Gloves
514	Gowns
514	Hand sanitizer
514	Disinfecting wipes
514	Thermometers
515	N95s
515	Surgical masks
515	Gloves
516	N95s
516	Surgical masks
516	Face shields
516	Disposable booties
516	Safety goggles
516	Gloves
516	Gowns
516	Hand sanitizer
516	Disinfecting wipes
516	Thermometers
517	N95s
517	Surgical masks
517	Face shields
517	Gloves
517	Gowns
517	Hand sanitizer
517	Disinfecting wipes
518	Surgical masks
518	Face shields
518	Safety goggles
518	Gloves
518	Hand sanitizer
518	Disinfecting wipes
519	N95s
519	Surgical masks
519	Face shields
519	Disposable booties
519	Safety goggles
519	Gloves
519	Gowns
520	N95s
520	Surgical masks
520	Gloves
520	Hand sanitizer
520	Disinfecting wipes
521	N95s
521	Surgical masks
521	Face shields
521	Gloves
521	Hand sanitizer
521	Disinfecting wipes
522	N95s
522	Surgical masks
522	Face shields
522	Disposable booties
522	Safety goggles
522	Gloves
522	Gowns
522	Hand sanitizer
522	Disinfecting wipes
522	Thermometers
523	N95s
523	Surgical masks
523	Face shields
523	Safety goggles
523	Gloves
523	Gowns
523	Hand sanitizer
523	Disinfecting wipes
523	Thermometers
524	N95s
524	Surgical masks
524	Face shields
524	Safety goggles
524	Gloves
524	Gowns
524	Hand sanitizer
524	Disinfecting wipes
524	Thermometers
525	N95s
525	Surgical masks
525	Face shields
525	Disposable booties
525	Safety goggles
525	Gloves
525	Gowns
525	Hand sanitizer
525	Disinfecting wipes
525	Thermometers
526	N95s
526	Surgical masks
526	Face shields
526	Gowns
527	N95s
527	Hand sanitizer
527	Disinfecting wipes
527	Thermometers
528	N95s
528	Surgical masks
528	Disposable booties
528	Gowns
528	Disinfecting wipes
528	Thermometers
529	N95s
529	Surgical masks
529	Face shields
529	Disposable booties
529	Safety goggles
529	Gloves
529	Gowns
529	Hand sanitizer
529	Disinfecting wipes
529	Thermometers
530	N95s
530	Surgical masks
530	Face shields
530	Safety goggles
530	Gowns
530	Hand sanitizer
530	Homemade masks
531	N95s
531	Surgical masks
531	Face shields
531	Disposable booties
531	Safety goggles
531	Gloves
531	Gowns
531	Hand sanitizer
531	Disinfecting wipes
531	Thermometers
532	N95s
532	Face shields
532	Disposable booties
532	Safety goggles
532	Gowns
532	Thermometers
533	N95s
533	Surgical masks
533	Face shields
534	Surgical masks
534	Gloves
534	Gowns
534	Hand sanitizer
534	Disinfecting wipes
535	N95s
535	Surgical masks
535	Face shields
535	Safety goggles
535	Gloves
536	N95s
536	Surgical masks
536	Face shields
536	Safety goggles
536	Gowns
537	N95s
537	Surgical masks
537	Face shields
537	Safety goggles
537	Gloves
537	Gowns
537	Hand sanitizer
538	N95s
538	Surgical masks
538	Face shields
538	Safety goggles
538	Gowns
539	N95s
539	Surgical masks
539	Face shields
539	Safety goggles
539	Gloves
539	Gowns
539	Hand sanitizer
539	Disinfecting wipes
540	N95s
540	Surgical masks
540	Face shields
540	Disposable booties
540	Safety goggles
540	Gloves
540	Gowns
540	Hand sanitizer
540	Disinfecting wipes
540	Thermometers
541	N95s
541	Surgical masks
541	Face shields
541	Gloves
541	Gowns
541	Hand sanitizer
541	Disinfecting wipes
542	N95s
542	Surgical masks
542	Face shields
542	Disposable booties
542	Safety goggles
542	Gloves
542	Gowns
542	Hand sanitizer
542	Disinfecting wipes
543	N95s
543	Surgical masks
543	Face shields
543	Gloves
543	Gowns
543	Hand sanitizer
543	Disinfecting wipes
544	N95s
544	Surgical masks
544	Face shields
544	Safety goggles
544	Gloves
544	Gowns
544	Hand sanitizer
544	Disinfecting wipes
545	N95s
545	Surgical masks
545	Face shields
545	Safety goggles
545	Gloves
545	Gowns
545	Hand sanitizer
545	Disinfecting wipes
546	N95s
546	Surgical masks
546	Face shields
546	Safety goggles
546	Gloves
546	Gowns
546	Thermometers
547	N95s
547	Surgical masks
547	Face shields
547	Disposable booties
547	Safety goggles
547	Gloves
547	Gowns
547	Hand sanitizer
547	Disinfecting wipes
547	Thermometers
548	N95s
548	Surgical masks
548	Face shields
548	Disposable booties
548	Safety goggles
548	Gloves
548	Gowns
548	Hand sanitizer
548	Disinfecting wipes
548	Thermometers
549	N95s
549	Surgical masks
549	Face shields
549	Disposable booties
549	Safety goggles
549	Gloves
549	Gowns
549	Hand sanitizer
549	Disinfecting wipes
549	Thermometers
550	N95s
550	Surgical masks
550	Face shields
550	Disposable booties
550	Safety goggles
550	Gloves
550	Gowns
550	Hand sanitizer
550	Disinfecting wipes
550	Thermometers
551	N95s
551	Surgical masks
551	Face shields
551	Disposable booties
551	Safety goggles
551	Gloves
551	Gowns
551	Hand sanitizer
551	Disinfecting wipes
551	Thermometers
552	N95s
552	Surgical masks
552	Face shields
552	Disposable booties
552	Safety goggles
552	Gloves
552	Gowns
552	Hand sanitizer
552	Disinfecting wipes
553	N95s
553	Face shields
553	Gowns
553	Hand sanitizer
553	Disinfecting wipes
554	N95s
554	Surgical Masks
554	Face Shields
554	Unsure about non-mask items
554	bring them just in case?
555	N95s
555	Face shields
555	Safety goggles
555	Gloves
555	Gowns
555	Hand sanitizer
556	N95s
557	Surgical masks
557	Face shields
557	Safety goggles
557	Gloves
557	Gowns
557	Hand sanitizer
557	Disinfecting wipes
558	Surgical masks
558	Gloves
558	Hand sanitizer
558	Disinfecting wipes
559	N95s
559	Face shields
559	Disposable booties
559	Safety goggles
559	Gloves
559	Gowns
560	N95s
560	Surgical masks
560	Face shields
560	Safety goggles
560	Gloves
560	Gowns
560	Hand sanitizer
560	Disinfecting wipes
561	N95s
561	Surgical masks
561	Face shields
561	Safety goggles
561	Gloves
561	Gowns
561	Hand sanitizer
561	Disinfecting wipes
562	Surgical masks
562	Face shields
562	Gloves
562	Hand sanitizer
562	Disinfecting wipes
562	Thermometers
563	N95s
563	Surgical masks
563	Face shields
563	Disposable booties
563	Safety goggles
563	Gloves
563	Gowns
563	Hand sanitizer
563	Disinfecting wipes
563	Thermometers
564	N95s
564	Surgical masks
564	Face shields
564	Disposable booties
564	Safety goggles
564	Gloves
564	Gowns
564	Hand sanitizer
564	Disinfecting wipes
564	Thermometers
565	N95s
565	Surgical masks
565	Gloves
565	Gowns
565	PAPR
566	Surgical masks
566	Hand sanitizer
566	Disinfecting wipes
567	N95s
567	Surgical masks
567	Hand sanitizer
567	Disinfecting wipes
568	N95s
568	Surgical masks
568	Face shields
568	Safety goggles
568	Gloves
568	Gowns
568	Hand sanitizer
568	Disinfecting wipes
569	Surgical masks
570	N95s
570	Surgical masks
570	Hand sanitizer
570	Disinfecting wipes
570	Thermometers
571	N95s
571	Surgical masks
571	Face shields
571	Disposable booties
571	Safety goggles
571	Gloves
571	Gowns
571	PAPR/CAPR Respirators
572	N95s
572	Surgical masks
572	Face shields
572	Disposable booties
572	Safety goggles
572	Gloves
572	Gowns
572	Hand sanitizer
572	Disinfecting wipes
573	N95s
573	Surgical masks
573	Face shields
573	Safety goggles
573	Gloves
573	Gowns
573	Hand sanitizer
573	Disinfecting wipes
574	N95s
574	Surgical masks
574	Gowns
574	Hand sanitizer
574	Disinfecting wipes
575	N95s
575	Surgical masks
575	Face shields
575	Disposable booties
575	Safety goggles
575	Gloves
575	Hand sanitizer
575	Disinfecting wipes
576	N95s
576	Surgical masks
576	Face shields
576	Safety goggles
576	Gloves
576	Gowns
576	Hand sanitizer
576	Disinfecting wipes
577	N95s
577	Surgical masks
577	Face shields
577	Safety goggles
577	Gloves
577	Gowns
577	Hand sanitizer
577	Disinfecting wipes
577	Thermometers
577	Ear Thermometer covers
578	N95s
578	Surgical masks
578	Face shields
578	Disposable booties
578	Gloves
578	Gowns
578	Hand sanitizer
578	Disinfecting wipes
578	Thermometers
579	N95s
579	Surgical masks
579	Face shields
579	Safety goggles
579	Gloves
579	Gowns
579	Hand sanitizer
579	Disinfecting wipes
580	N95s
580	Surgical masks
580	Face shields
580	Safety goggles
580	Gloves
580	Gowns
580	Hand sanitizer
580	Disinfecting wipes
581	N95s
581	Surgical masks
581	Face shields
581	Safety goggles
581	Gloves
581	Gowns
581	Hand sanitizer
581	Disinfecting wipes
582	Surgical masks
582	Face shields
582	Disposable booties
582	Gloves
582	Gowns
582	Hand sanitizer
582	Disinfecting wipes
583	N95s
583	Surgical masks
583	Face shields
583	Safety goggles
583	Gloves
583	Gowns
583	Hand sanitizer
583	Disinfecting wipes
584	N95s
584	Surgical masks
584	Face shields
584	Disposable booties
584	Safety goggles
584	Gloves
584	Gowns
584	Hand sanitizer
584	Disinfecting wipes
584	Thermometers
585	N95s
585	Surgical masks
585	Face shields
585	Safety goggles
585	Gloves
585	Gowns
585	Hand sanitizer
585	Disinfecting wipes
586	N95s
586	Surgical masks
586	Face shields
586	Disposable booties
586	Safety goggles
586	Gloves
586	Gowns
586	Hand sanitizer
586	Disinfecting wipes
586	Thermometers
587	N95s
587	Surgical masks
587	Gowns
587	Hand sanitizer
587	Disinfecting wipes
588	N95s
588	Surgical masks
588	Face shields
588	Safety goggles
588	Gloves
588	Gowns
588	Hand sanitizer
588	Disinfecting wipes
589	N95s
589	Surgical masks
589	Face shields
589	Safety goggles
589	Gloves
589	Gowns
589	Hand sanitizer
589	Disinfecting wipes
590	N95s
590	Surgical masks
590	Face shields
590	Disposable booties
590	Safety goggles
590	Gloves
590	Gowns
590	Head caps
591	N95s
591	Surgical masks
591	Face shields
591	Disposable booties
591	Safety goggles
591	Gloves
591	Gowns
591	Hand sanitizer
591	Disinfecting wipes
591	Thermometers
592	N95s
592	Surgical masks
592	Face shields
592	Disposable booties
592	Safety goggles
592	Gloves
592	Gowns
592	Hand sanitizer
592	Disinfecting wipes
592	Thermometers
593	Safety goggles
593	Gowns
593	Hand sanitizer
594	N95s
594	Surgical masks
594	Gloves
594	Gowns
594	Hand sanitizer
594	Disinfecting wipes
594	Thermometers
595	N95s
595	Face shields
595	Safety goggles
595	Gloves
595	Gowns
595	Hand sanitizer
595	Disinfecting wipes
595	Thermometers
596	N95s
596	Surgical masks
596	Face shields
596	Gowns
596	Hand sanitizer
596	Disinfecting wipes
596	Thermometers
597	N95s
597	Surgical masks
597	Face shields
597	Disposable booties
597	Safety goggles
597	Gloves
597	Gowns
597	Hand sanitizer
597	Disinfecting wipes
597	Thermometers
598	N95s
598	Surgical masks
598	Gowns
598	Hand sanitizer
598	Disinfecting wipes
599	N95s
599	Surgical masks
599	Face shields
599	Gowns
599	Hand sanitizer
599	Disinfecting wipes
600	N95s
600	Surgical masks
600	Gloves
600	Hand sanitizer
600	Thermometers
601	N95s
601	Surgical masks
601	Face shields
601	Disposable booties
601	Safety goggles
601	Gowns
601	Hand sanitizer
601	Disinfecting wipes
601	swabs
601	respirtaors
602	N95s
602	Surgical masks
602	Gloves
602	Gowns
602	Hand sanitizer
602	Disinfecting wipes
603	N95s
603	Surgical masks
603	Face shields
603	Safety goggles
603	Gloves
603	Gowns
603	Disinfecting wipes
604	N95s
604	Surgical masks
604	Face shields
604	Disposable booties
604	Safety goggles
604	Gloves
604	Gowns
604	Hand sanitizer
604	Disinfecting wipes
604	Thermometers
605	N95s
605	Surgical masks
605	Gowns
605	Disinfecting wipes
606	N95s
606	Surgical masks
606	Face shields
606	Gowns
606	PAPRs
606	coveralls
606	testing kits
607	N95s
607	Surgical masks
607	Gloves
607	Gowns
607	Hand sanitizer
607	Disinfecting wipes
608	N95s
608	Surgical masks
608	Gloves
608	Gowns
608	Hand sanitizer
608	Disinfecting wipes
609	Surgical masks
609	Face shields
609	Safety goggles
609	Gowns
609	Disinfecting wipes
609	Gowns are in extreme needs.
610	N95s
610	Gloves
610	Gowns
610	Hand sanitizer
610	Disinfecting wipes
610	Thermometers
611	N95s
611	Surgical masks
611	Face shields
611	Safety goggles
611	Gloves
611	Gowns
611	Hand sanitizer
611	Disinfecting wipes
612	N95s
612	Surgical masks
612	Face shields
612	Safety goggles
612	Gloves
612	Gowns
612	Hand sanitizer
612	Disinfecting wipes
613	N95s
613	Surgical masks
613	Face shields
613	Disposable booties
613	Safety goggles
613	Gloves
613	Gowns
614	N95s
614	Surgical masks
614	Face shields
614	Safety goggles
614	Gloves
614	Gowns
614	Disinfecting wipes
614	Thermometers
615	N95s
615	Surgical Masks
615	Gloves
616	N95s
616	Surgical masks
616	Face shields
616	Disposable booties
616	Safety goggles
616	Gloves
616	Gowns
616	Hand sanitizer
616	Disinfecting wipes
616	Thermometers
617	N95s
617	Surgical masks
617	Face shields
617	Disposable booties
617	Safety goggles
617	Gloves
617	Gowns
617	Hand sanitizer
617	Disinfecting wipes
617	Thermometers
618	N95s
618	Face shields
618	Safety goggles
618	Gowns
619	N95s
619	Surgical masks
619	Gloves
619	Gowns
619	Hand sanitizer
619	Disinfecting wipes
620	N95s
620	Surgical masks
620	Face shields
620	Disposable booties
620	Safety goggles
620	Gloves
620	Gowns
620	Hand sanitizer
620	Disinfecting wipes
621	N95s
621	Surgical masks
621	Face shields
621	Safety goggles
621	Gloves
621	Gowns
621	Hand sanitizer
621	Disinfecting wipes
622	N95s
622	Surgical masks
622	Hand sanitizer
622	Thermometers
623	N95s
623	Surgical masks
623	Face shields
623	Safety goggles
623	Gloves
623	Gowns
623	Hand sanitizer
623	Disinfecting wipes
623	Thermometers
623	N100
623	P100
623	R100
623	N99
623	P99
623	R99
623	P95 and R95
624	N95s
624	Surgical masks
624	Gowns
624	Hand sanitizer
624	Disinfecting wipes
624	Thermometers
625	N95s
625	Surgical masks
625	Face shields
625	Safety goggles
625	Gloves
625	Hand sanitizer
625	Disinfecting wipes
626	N95s
626	Surgical masks
626	Face shields
626	Disposable booties
626	Safety goggles
626	Gloves
626	Gowns
626	Hand sanitizer
626	Disinfecting wipes
626	Thermometers
627	N95s
627	Surgical masks
627	Gloves
627	Gowns
627	Hand sanitizer
627	Disinfecting wipes
628	N95s
628	Surgical masks
628	Face shields
628	Gowns
628	Hand sanitizer
628	Disinfecting wipes
629	N95s
629	Surgical masks
629	Gowns
629	Hand sanitizer
629	Disinfecting wipes
629	Thermometers
630	N95s
630	Surgical masks
630	Face shields
630	Disposable booties
630	Safety goggles
630	Gloves
630	Gowns
630	Hand sanitizer
630	Disinfecting wipes
630	Thermometers
630	Tyvek Suits
631	N95s
631	Gloves
631	Hand sanitizer
631	Disinfecting wipes
632	N95s
632	Surgical masks
632	Face shields
632	Gloves
632	Gowns
632	Hand sanitizer
632	Disinfecting wipes
633	N95s
633	Surgical masks
633	Face shields
633	Gloves
633	Gowns
633	Hand sanitizer
633	Disinfecting wipes
634	N95s
634	Face shields
635	N95s
635	Surgical masks
635	Face shields
635	Disposable booties
635	Safety goggles
635	Gloves
635	Gowns
635	Hand sanitizer
635	Disinfecting wipes
636	N95s
636	Surgical masks
636	Face shields
636	Safety goggles
636	Gloves
636	Gowns
636	Hand sanitizer
636	Disinfecting wipes
636	Thermometers
636	Thermometer probe covers
637	N95s
637	Surgical masks
637	Face shields
637	Safety goggles
637	Gloves
637	Gowns
637	Disinfecting wipes
638	N95s
638	Surgical masks
638	Gowns
638	Hand sanitizer
638	Disinfecting wipes
638	Thermometers
639	N95s
639	Surgical masks
639	Face shields
639	Safety goggles
639	Gloves
639	Gowns
639	Hand sanitizer
639	Disinfecting wipes
640	N95s
640	Surgical masks
640	Gloves
640	Gowns
641	N95s
641	Surgical masks
641	Face shields
641	Disposable booties
641	Safety goggles
641	Gloves
641	Gowns
641	Hand sanitizer
641	Disinfecting wipes
641	Thermometers
642	N95s
642	Surgical masks
642	Gloves
642	Hand sanitizer
642	Disinfecting wipes
642	Thermometers
643	N95s
643	Surgical masks
643	Hand sanitizer
643	Disinfecting wipes
644	N95s
644	Face shields
644	Gloves
644	Gowns
644	Hand sanitizer
644	Disinfecting wipes
644	Thermometers
645	N95s
645	Surgical masks
645	Face shields
645	Disposable booties
645	Safety goggles
645	Gloves
645	Gowns
645	Hand sanitizer
645	Disinfecting wipes
645	Thermometers
646	N95s
646	Surgical masks
646	Face shields
646	Disposable booties
646	Safety goggles
646	Gloves
646	Gowns
646	Hand sanitizer
646	Disinfecting wipes
646	Thermometers
647	N95s
647	Surgical masks
647	Hand sanitizer
648	N95s
648	Surgical masks
648	Face shields
648	Gowns
649	N95s
649	Surgical masks
649	Face shields
649	Disposable booties
649	Safety goggles
649	Gloves
649	Gowns
650	N95s
650	Surgical masks
650	Face shields
650	Disposable booties
650	Safety goggles
650	Gloves
650	Gowns
650	Hand sanitizer
650	Disinfecting wipes
650	Thermometers
651	N95s
651	Surgical masks
651	Gloves
651	Gowns
651	Hand sanitizer
651	Disinfecting wipes
652	N95s
652	Surgical masks
652	Safety goggles
652	Hand sanitizer
652	Disinfecting wipes
652	Thermometers
653	N95s
653	Surgical masks
653	Face shields
653	Gowns
653	Hand sanitizer
653	Disinfecting wipes
654	N95s
654	Surgical masks
654	Face shields
654	Disposable booties
654	Safety goggles
654	Gloves
654	Gowns
654	Hand sanitizer
654	Disinfecting wipes
654	Thermometers
655	N95s
655	Surgical masks
655	Face shields
655	Disposable booties
655	Safety goggles
655	Gloves
655	Gowns
655	Hand sanitizer
655	Disinfecting wipes
656	N95s
656	Surgical masks
656	Gloves
656	Hand sanitizer
656	Disinfecting wipes
656	Thermometers
657	N95s
657	Surgical masks
657	Face shields
657	Disposable booties
657	Safety goggles
657	Gloves
657	Gowns
657	Hand sanitizer
657	Disinfecting wipes
657	Thermometers
658	N95s
658	Surgical masks
658	Face shields
659	Face shields
659	Disposable booties
659	Safety goggles
659	Disinfecting wipes
659	Thermometers
660	N95s
660	Face shields
660	Gloves
660	Hand sanitizer
660	Disinfecting wipes
661	N95s
661	Face shields
661	Gloves
661	Gowns
661	Hand sanitizer
661	Disinfecting wipes
662	N95s
662	Surgical masks
662	Face shields
662	Safety goggles
662	Gowns
662	Hand sanitizer
662	Disinfecting wipes
663	N95s
663	Surgical masks
663	Face shields
663	Safety goggles
663	Gowns
663	Hand sanitizer
664	N95s
664	Surgical masks
664	Gowns
664	Hand sanitizer
664	Disinfecting wipes
665	N95s
665	Surgical masks
665	Face shields
665	Disposable booties
665	Safety goggles
665	Gowns
665	Hand sanitizer
665	Disinfecting wipes
666	Surgical masks
666	Gloves
666	Hand sanitizer
666	Disinfecting wipes
666	Thermometers
667	N95s
667	Surgical masks
667	Face shields
667	Disposable booties
667	Safety goggles
667	Gloves
667	Gowns
667	Hand sanitizer
667	Disinfecting wipes
667	Thermometers
668	N95s
668	Surgical masks
668	Gowns
669	N95s
669	Surgical masks
669	Face shields
669	Disposable booties
669	Safety goggles
669	Gloves
669	Gowns
669	Hand sanitizer
669	Disinfecting wipes
669	Thermometers
670	N95s
670	Surgical masks
670	Face shields
670	Disposable booties
670	Safety goggles
670	Gloves
670	Gowns
670	Hand sanitizer
670	Disinfecting wipes
670	Thermometers
670	N95 Niosh
671	N95s
671	Surgical masks
671	Face shields
671	Gowns
671	Hand sanitizer
671	Disinfecting wipes
672	N95s
672	Surgical masks
672	Face shields
672	Disposable booties
672	Safety goggles
672	Gloves
672	Gowns
672	Hand sanitizer
672	Disinfecting wipes
672	Thermometers
673	N95s
673	Surgical masks
673	Gloves
673	Gowns
673	Hand sanitizer
673	Disinfecting wipes
674	N95s
674	Surgical masks
674	Face shields
674	Gowns
674	Thermometers
675	N95s
675	Surgical masks
675	Face shields
675	Disposable booties
675	Safety goggles
675	Gowns
675	Hand sanitizer
675	Disinfecting wipes
675	Thermometers
676	N95s
676	Surgical masks
676	Face shields
676	Disposable booties
676	Safety goggles
676	Gowns
676	Hand sanitizer
676	Disinfecting wipes
677	N95s
677	Surgical masks
677	Face shields
677	Safety goggles
677	Gloves
677	Gowns
677	Hand sanitizer
677	Disinfecting wipes
678	N95s
678	Surgical masks
678	Face shields
678	Disposable booties
678	Safety goggles
678	Gloves
678	Gowns
678	Hand sanitizer
678	Disinfecting wipes
679	N95s
679	Face shields
679	Gloves
679	Hand sanitizer
679	Disinfecting wipes
679	Thermometers
679	Alcohol wipes
680	N95s
680	Surgical masks
680	Face shields
680	Disposable booties
680	Safety goggles
680	Gloves
680	Gowns
680	Hand sanitizer
680	Disinfecting wipes
680	Thermometers
681	N95s
681	Surgical masks
681	Face shields
681	Disposable booties
681	Safety goggles
681	Gloves
681	Gowns
681	Hand sanitizer
681	Disinfecting wipes
681	Thermometers
682	N95s
682	Surgical masks
682	Face shields
682	Disposable booties
682	Safety goggles
682	Gloves
682	Gowns
682	Hand sanitizer
682	Disinfecting wipes
682	Thermometers
682	N95 respirators PAPRs
683	N95s
683	Disinfecting wipes
684	N95s
684	Surgical masks
684	Face shields
684	Gowns
684	Hand sanitizer
684	Disinfecting wipes
685	N95s
685	Surgical masks
685	Face shields
685	Disposable booties
685	Safety goggles
685	Gloves
685	Gowns
685	Hand sanitizer
685	Disinfecting wipes
685	Thermometers
686	N95s
686	Surgical masks
686	Face shields
686	Safety goggles
686	Gloves
686	Gowns
686	Hand sanitizer
686	Disinfecting wipes
687	N95s
687	Surgical masks
687	Face shields
687	Disposable booties
687	Safety goggles
687	Gloves
687	Gowns
687	Hand sanitizer
687	Disinfecting wipes
687	Thermometers
688	N95s
688	Surgical masks
688	Face shields
688	Safety goggles
688	Gloves
688	Gowns
688	Hand sanitizer
688	Disinfecting wipes
689	N95s
689	Surgical masks
689	Face shields
689	Safety goggles
689	Gloves
689	Gowns
689	Hand sanitizer
689	Disinfecting wipes
690	N95s
690	Surgical masks
690	Face shields
690	Disposable booties
690	Safety goggles
690	Gloves
690	Gowns
690	Hand sanitizer
690	Disinfecting wipes
691	N95s
691	Surgical masks
691	Face shields
691	Safety goggles
691	Gloves
691	Gowns
691	Hand sanitizer
691	Disinfecting wipes
692	N95s
692	Face shields
692	Safety goggles
692	Gloves
692	Gowns
692	Hand sanitizer
692	Disinfecting wipes
693	N95s
693	Surgical masks
693	Face shields
693	Safety goggles
693	Gloves
693	Gowns
693	Hand sanitizer
693	Disinfecting wipes
693	Thermometers
694	N95s
694	Surgical masks
694	Face shields
694	Disposable booties
694	Safety goggles
694	Gloves
694	Gowns
695	N95s
695	Surgical masks
695	Hand-sewn face masks
696	N95s
696	Surgical masks
696	Face shields
696	Disposable booties
696	Safety goggles
696	Gloves
696	Gowns
696	Hand sanitizer
696	Disinfecting wipes
696	Thermometers
697	N95s
697	Surgical masks
697	Face shields
697	Safety goggles
697	Gloves
697	Gowns
697	Hand sanitizer
697	Disinfecting wipes
698	N95s
698	Surgical masks
698	Face shields
698	Safety goggles
698	Gloves
698	Gowns
698	Hand sanitizer
698	Disinfecting wipes
699	N95s
699	Surgical masks
699	Face shields
699	Gloves
699	Gowns
699	Hand sanitizer
700	N95s
700	Surgical masks
700	Face shields
700	Disposable booties
700	Safety goggles
700	Gloves
700	Gowns
700	Hand sanitizer
700	Disinfecting wipes
700	Thermometers
701	N95s
701	Surgical masks
701	Face shields
701	Safety goggles
701	Gloves
701	Gowns
701	Hand sanitizer
701	Disinfecting wipes
702	N95s
702	Surgical masks
702	Face shields
702	Gowns
702	PAPR hoods
703	N95s
703	Surgical masks
703	Face shields
703	Disposable booties
703	Safety goggles
703	Gloves
703	Gowns
703	Hand sanitizer
703	Disinfecting wipes
704	N95s
704	Surgical masks
704	Face shields
704	Safety goggles
704	Gloves
704	Gowns
704	Hand sanitizer
704	Disinfecting wipes
705	N95s
705	Surgical masks
705	Face shields
705	Safety goggles
705	Gloves
705	Gowns
705	Hand sanitizer
705	Disinfecting wipes
706	N95s
706	Surgical masks
706	Face shields
706	Disposable booties
706	Safety goggles
706	Gloves
706	Gowns
706	Hand sanitizer
706	Disinfecting wipes
706	Thermometers
707	N95s
707	Face shields
707	Gowns
708	N95s
708	Surgical masks
708	Face shields
708	Gowns
708	Hand sanitizer
708	Disinfecting wipes
709	N95s
709	Surgical masks
709	Face shields
709	Disposable booties
709	Safety goggles
709	Gloves
709	Gowns
709	Hand sanitizer
710	N95s
710	Surgical masks
710	Face shields
710	Disposable booties
710	Safety goggles
710	Gloves
710	Gowns
710	Hand sanitizer
710	Disinfecting wipes
710	Thermometers
711	N95s
711	Surgical masks
711	Face shields
711	Safety goggles
711	Gloves
711	Gowns
711	Hand sanitizer
711	Disinfecting wipes
711	Thermometers
712	N95s
712	Surgical masks
712	Face shields
712	Safety goggles
712	Hand sanitizer
712	Disinfecting wipes
713	N95s
713	Surgical masks
713	Safety goggles
713	Gloves
713	Gowns
713	Hand sanitizer
714	N95s
714	Surgical masks
714	Face shields
714	Safety goggles
714	Disinfecting wipes
715	N95s
715	Surgical masks
715	Face shields
715	Disposable booties
715	Safety goggles
715	Gloves
715	Gowns
715	Hand sanitizer
715	Disinfecting wipes
715	Thermometers
716	N95s
716	Surgical masks
716	Safety goggles
716	Gloves
716	Hand sanitizer
716	Thermometers
717	N95s
717	Face shields
717	Gloves
717	Gowns
717	Hand sanitizer
717	Disinfecting wipes
718	N95s
718	Surgical masks
718	Face shields
718	Disposable booties
718	Gloves
718	Gowns
718	Hand sanitizer
718	Disinfecting wipes
719	N95s
719	Surgical masks
719	Face shields
719	Disposable booties
719	Safety goggles
719	Gloves
719	Gowns
719	Hand sanitizer
719	Disinfecting wipes
719	Thermometers
720	N95s
720	Surgical masks
720	Face shields
720	Gloves
720	Gowns
720	Hand sanitizer
720	Disinfecting wipes
721	N95s
721	Surgical masks
721	Face shields
721	Gowns
721	Hand sanitizer
721	Disinfecting wipes
721	Thermometers
722	N95s
722	Surgical masks
722	Face shields
722	Safety goggles
722	Gloves
722	Gowns
722	Hand sanitizer
722	Disinfecting wipes
722	Thermometers
722	Ventilators
723	N95s
723	Surgical masks
723	Gloves
723	Gowns
723	Hand sanitizer
723	Disinfecting wipes
723	Thermometers
724	N95s
724	Surgical masks
725	N95s
725	Surgical masks
725	Face shields
725	Disposable booties
725	Safety goggles
725	Gloves
725	Gowns
725	Hand sanitizer
725	Disinfecting wipes
726	N95s
726	Surgical masks
726	Gloves
726	Gowns
726	Hand sanitizer
726	Disinfecting wipes
727	N95s
727	Surgical masks
727	Face shields
727	Disposable booties
727	Safety goggles
727	Gloves
727	Gowns
727	Hand sanitizer
727	Disinfecting wipes
728	N95s
728	Surgical masks
728	Face shields
728	Disposable booties
728	Safety goggles
728	Gloves
729	N95s
729	Surgical masks
729	Face shields
729	Disposable booties
729	Safety goggles
729	Gowns
729	Disinfecting wipes
729	Thermometers
730	N95s
730	Surgical masks
730	Face shields
730	Disposable booties
730	Safety goggles
730	Gloves
731	N95s
731	Surgical masks
731	Face shields
731	Disposable booties
731	Safety goggles
731	Gloves
731	Gowns
731	Hand sanitizer
731	Disinfecting wipes
731	Thermometers
732	N95s
732	Surgical masks
732	Face shields
732	Safety goggles
732	Gloves
732	Gowns
732	Disinfecting wipes
733	N95s
733	Safety goggles
733	Gloves
733	Gowns
733	Hand sanitizer
733	Disinfecting wipes
734	N95s
734	Surgical masks
734	Face shields
734	Safety goggles
734	Gloves
734	Gowns
734	Hand sanitizer
734	Disinfecting wipes
735	N95s
735	Surgical masks
735	Face shields
735	Disposable booties
735	Safety goggles
735	Gloves
735	Gowns
735	Hand sanitizer
735	Disinfecting wipes
736	N95s
736	Surgical masks
736	Safety goggles
736	Gloves
736	Gowns
736	Hand sanitizer
736	Disinfecting wipes
737	N95s
737	Surgical masks
737	Face shields
737	Disposable booties
737	Safety goggles
737	Gloves
737	Gowns
737	Hand sanitizer
737	Disinfecting wipes
737	Thermometers
738	N95s
738	Face shields
738	Safety goggles
738	Hand sanitizer
739	N95s
739	Surgical masks
739	Face shields
739	Disposable booties
739	Safety goggles
739	Gloves
739	Gowns
739	Hand sanitizer
739	Disinfecting wipes
739	Thermometers
739	sanitizing gels and sprays
740	N95s
740	Surgical masks
740	Face shields
740	Disposable booties
740	Safety goggles
740	Gloves
740	Gowns
740	Hand sanitizer
740	Disinfecting wipes
740	Thermometers
741	N95s
741	Surgical masks
741	Face shields
741	Disposable booties
741	Safety goggles
741	Gloves
741	Gowns
742	N95s
742	Surgical masks
742	Face shields
742	Disposable booties
742	Safety goggles
742	Gloves
743	N95s
743	Surgical masks
743	Face shields
743	Safety goggles
743	Gloves
743	Gowns
743	Hand sanitizer
743	Disinfecting wipes
743	Thermometers
744	N95s
744	Surgical masks
744	Face shields
744	Disposable booties
744	Safety goggles
744	Gloves
744	Gowns
744	Hand sanitizer
744	Disinfecting wipes
745	Surgical masks
745	Gloves
745	Gowns
745	Hand sanitizer
745	Disinfecting wipes
745	Thermometers
746	N95s
746	Surgical masks
746	Face shields
746	Safety goggles
747	N95s
747	Surgical masks
747	Face shields
747	Disposable booties
747	Safety goggles
747	Gloves
748	N95s
748	Surgical masks
748	Face shields
748	Safety goggles
748	Gloves
748	Gowns
748	Hand sanitizer
748	Disinfecting wipes
749	N95s
749	Surgical masks
749	Face shields
749	Disposable booties
749	Safety goggles
749	Gloves
749	Gowns
749	Hand sanitizer
749	Disinfecting wipes
749	Thermometers
750	N95s
750	Surgical masks
750	Face shields
750	Disposable booties
750	Safety goggles
750	Gloves
751	N95s
751	Surgical masks
751	Face shields
751	Disposable booties
751	Safety goggles
751	Gloves
752	Safety goggles
752	Gowns
752	Disinfecting wipes
753	N95s
753	Surgical masks
753	Face shields
753	Disposable booties
753	Safety goggles
753	Gloves
753	Gowns
753	Hand sanitizer
753	Disinfecting wipes
753	Thermometers
754	N95s
754	Surgical masks
754	Face shields
754	Safety goggles
754	Gowns
755	N95s
756	N95s
756	Surgical masks
756	Face shields
756	Disposable booties
756	Safety goggles
756	Gloves
756	Gowns
756	Hand sanitizer
756	Disinfecting wipes
756	Thermometers
757	N95s
757	Surgical masks
757	Face shields
757	Disposable booties
757	Safety goggles
757	Gloves
757	Gowns
757	Hand sanitizer
757	Disinfecting wipes
757	Thermometers
758	N95s
758	Surgical masks
758	Face shields
758	Disposable booties
758	Safety goggles
758	Gloves
758	Gowns
758	Hand sanitizer
758	Disinfecting wipes
758	Thermometers
759	N95s
759	Surgical masks
759	Face shields
759	Safety goggles
759	Gloves
759	Gowns
760	N95s
760	Surgical masks
760	Face shields
760	Disposable booties
760	Safety goggles
760	Hand sanitizer
761	N95s
761	Surgical masks
761	Disinfecting wipes
762	N95s
762	Surgical masks
762	Face shields
762	Safety goggles
762	Gloves
762	Gowns
762	Hand sanitizer
762	Disinfecting wipes
763	N95s
763	Surgical masks
763	Face shields
763	Safety goggles
763	Gloves
763	Gowns
764	N95s
764	Surgical masks
764	Face shields
764	Disposable booties
764	Safety goggles
764	Gloves
764	Gowns
764	Hand sanitizer
764	Disinfecting wipes
764	Thermometers
765	N95s
765	Surgical masks
765	Face shields
765	Safety goggles
765	Gowns
766	N95s
766	Surgical masks
766	Face shields
766	Disposable booties
766	Safety goggles
766	Gloves
766	Gowns
766	Hand sanitizer
766	Disinfecting wipes
766	Thermometers
767	N95s
767	Surgical masks
767	Face shields
767	Disposable booties
767	Safety goggles
767	Gloves
767	Gowns
767	Hand sanitizer
768	N95s
768	Face shields
768	Safety goggles
768	Gloves
768	Gowns
768	They are acceptimg homemade masks
768	and include a video on how to make them on their site
768	but prefer N95 or surgical masks.
769	N95s
769	Surgical masks
769	Face shields
769	Disposable booties
769	Safety goggles
769	Gloves
769	Gowns
769	Hand sanitizer
769	Disinfecting wipes
770	N95s
770	Surgical masks
770	Face shields
770	Disposable booties
770	Safety goggles
770	Gloves
770	Gowns
770	Hand sanitizer
770	Disinfecting wipes
771	N95s
771	Surgical masks
771	Face shields
771	Disposable booties
771	Safety goggles
771	Gowns
771	Hand sanitizer
771	Disinfecting wipes
771	Thermometers
772	N95s
772	Surgical masks
772	Face shields
772	Disposable booties
772	Safety goggles
772	Gloves
772	Gowns
772	Hand sanitizer
772	Disinfecting wipes
772	Thermometers
774	N95s
774	Surgical masks
774	Face shields
774	Safety goggles
774	Gowns
775	N95s
775	Surgical masks
775	Face shields
775	Disposable booties
775	Safety goggles
775	Gloves
775	Gowns
775	Hand sanitizer
775	Disinfecting wipes
775	Thermometers
776	N95s
776	Face shields
776	Safety goggles
776	Gowns
776	Hand sanitizer
776	Disinfecting wipes
777	N95s
777	Surgical masks
777	Face shields
777	Gowns
777	Disinfecting wipes
777	Thermometers
778	N95s
778	Surgical masks
778	Face shields
778	Disposable booties
778	Safety goggles
778	Gloves
778	Gowns
778	Hand sanitizer
778	Disinfecting wipes
778	Thermometers
779	N95s
779	Surgical masks
779	Face shields
779	Safety goggles
779	Gowns
780	N95s
780	Surgical masks
780	Face shields
780	Disposable booties
780	Safety goggles
780	Gloves
780	Gowns
780	Hand sanitizer
780	Disinfecting wipes
780	Thermometers
781	N95s
781	Surgical masks
781	Safety goggles
781	Gloves
781	Gowns
781	Disinfecting wipes
782	N95s
782	Surgical masks
782	Face shields
782	Disposable booties
782	Safety goggles
782	Gloves
782	Gowns
782	Hand sanitizer
782	Disinfecting wipes
782	Thermometers
783	N95s
783	Surgical masks
783	Face shields
783	Safety goggles
783	Gowns
783	Hand sanitizer
783	Disinfecting wipes
783	Thermometers
784	N95s
784	Surgical masks
784	Face shields
784	Safety goggles
784	Gloves
784	Gowns
784	Hand sanitizer
784	Disinfecting wipes
784	Thermometers
785	N95s
785	Surgical masks
785	Face shields
785	Safety goggles
785	Gloves
785	Gowns
785	Hand sanitizer
785	Disinfecting wipes
785	Thermometers
786	N95s
786	Surgical masks
786	Face shields
786	Disposable booties
786	Safety goggles
786	Gloves
786	Gowns
786	Hand sanitizer
786	Disinfecting wipes
786	Thermometers
787	N95s
787	Surgical masks
787	Face shields
787	Disposable booties
787	Safety goggles
787	Gloves
787	Gowns
787	Hand sanitizer
787	Disinfecting wipes
787	Thermometers
788	N95s
788	Surgical masks
788	Face shields
788	Disposable booties
788	Safety goggles
788	Gloves
788	Gowns
788	Hand sanitizer
788	Disinfecting wipes
788	Thermometers
789	N95s
789	Surgical masks
789	Face shields
789	Safety goggles
789	Gowns
789	Disinfecting wipes
790	N95s
790	Surgical masks
790	Face shields
790	Disposable booties
790	Safety goggles
790	Gloves
790	Gowns
790	Hand sanitizer
790	Disinfecting wipes
790	Thermometers
790	Tylenol Adults and Children
790	Acetaminophen
790	OTC.
791	N95s
791	Surgical masks
791	Face shields
791	Disposable booties
791	Safety goggles
791	Gloves
791	Gowns
791	Hand sanitizer
791	Disinfecting wipes
791	Thermometers
792	Surgical masks
792	Gloves
792	Hand sanitizer
792	Disinfecting wipes
792	Thermometers
793	N95s
793	Surgical masks
793	Face shields
793	Disposable booties
793	Safety goggles
793	Gloves
793	Hand sanitizer
793	Thermometers
794	N95s
794	Surgical masks
794	Face shields
794	Disposable booties
794	Safety goggles
794	Gloves
794	Gowns
794	Hand sanitizer
794	Disinfecting wipes
794	Thermometers
795	N95s
795	Surgical masks
795	Disposable booties
795	Gloves
795	Gowns
795	Hand sanitizer
795	Disinfecting wipes
795	Thermometers
796	N95s
796	Surgical masks
796	Face shields
796	Safety goggles
796	Gloves
796	Gowns
796	Hand sanitizer
797	N95s
797	Surgical masks
797	Face shields
797	Safety goggles
797	Gloves
797	Gowns
797	Disinfecting wipes
799	N95s
799	Surgical masks
799	Face shields
799	Disposable booties
799	Gloves
799	Gowns
799	Hand sanitizer
799	Disinfecting wipes
799	Thermometers
800	N95s
800	Surgical masks
800	Gloves
800	Gowns
800	Hand sanitizer
800	Disinfecting wipes
801	N95s
801	Surgical masks
801	Face shields
801	Disposable booties
801	Safety goggles
801	Gloves
801	Gowns
801	Hand sanitizer
801	Disinfecting wipes
802	N95s
802	Surgical masks
802	Face shields
802	Disposable booties
802	Safety goggles
802	Gloves
802	Gowns
802	Hand sanitizer
802	Disinfecting wipes
803	N95s
803	Surgical masks
803	Face shields
803	Disposable booties
803	Safety goggles
803	Gloves
803	Gowns
803	Hand sanitizer
803	Disinfecting wipes
803	Thermometers
804	N95s
804	Disposable booties
804	Gloves
804	Gowns
804	Hand sanitizer
804	Disinfecting wipes
805	N95s
805	Surgical masks
805	Face shields
805	Safety goggles
805	Gloves
805	Gowns
805	Disinfecting wipes
806	N95s
806	Gloves
806	Disinfecting wipes
807	N95s
807	Surgical masks
807	Gloves
807	Gowns
807	Hand sanitizer
807	Disinfecting wipes
808	N95s
808	Surgical masks
808	Gowns
808	Nitrile Gloves
809	N95s
809	Surgical masks
809	Face shields
809	Disposable booties
809	Safety goggles
809	Gloves
809	Gowns
809	Hand sanitizer
809	Disinfecting wipes
809	Thermometers
810	N95s
810	Surgical masks
810	Face shields
810	Disposable booties
810	Safety goggles
810	Gloves
810	Gowns
810	Hand sanitizer
810	Disinfecting wipes
811	N95s
811	Face shields
811	Safety goggles
811	Gloves
811	Gowns
811	Hand sanitizer
811	Thermometers
812	N95s
812	Surgical masks
812	Face shields
812	Gloves
812	Gowns
812	Hand sanitizer
812	Disinfecting wipes
812	Thermometers
812	Thermometers without the need of probe covers
813	N95s
813	Surgical masks
813	Face shields
813	Disposable booties
813	Safety goggles
813	Gloves
813	Gowns
813	Hand sanitizer
813	Disinfecting wipes
813	Thermometers
814	N95s
814	Surgical masks
814	Face shields
814	Disposable booties
814	Safety goggles
814	Gloves
814	Gowns
814	Hand sanitizer
814	Disinfecting wipes
814	Thermometers
815	N95s
815	Surgical masks
815	Face shields
815	Disposable booties
815	Safety goggles
815	Gloves
815	Gowns
815	Hand sanitizer
815	Disinfecting wipes
815	Thermometers
816	N95s
816	Safety goggles
817	N95s
817	Face shields
817	Safety goggles
817	Gowns
817	Disinfecting wipes
818	N95s
818	Surgical masks
818	Gloves
818	Hand sanitizer
818	Disinfecting wipes
818	Thermometers
819	N95s
819	Surgical masks
819	Face shields
819	Disposable booties
819	Safety goggles
819	Gloves
819	Gowns
819	Hand sanitizer
819	Disinfecting wipes
820	N95s
820	Surgical masks
820	Face shields
820	Safety goggles
820	Gowns
820	Hand sanitizer
820	Disinfecting wipes
821	N95s
821	Surgical masks
821	Face shields
821	Disposable booties
821	Safety goggles
821	Gloves
821	Gowns
821	Hand sanitizer
821	Disinfecting wipes
821	Thermometers
822	N95s
822	Surgical masks
822	Face shields
822	Disposable booties
822	Safety goggles
822	Gloves
822	Gowns
822	Disinfecting wipes
823	N95s
823	Surgical masks
823	Face shields
823	Disposable booties
823	Safety goggles
823	Gloves
823	Gowns
823	Hand sanitizer
823	Disinfecting wipes
823	Thermometers
824	N95s
824	Surgical masks
824	Face shields
824	Gloves
824	Gowns
824	Hand sanitizer
824	Disinfecting wipes
825	N95s
825	Surgical masks
825	Face shields
825	Disposable booties
825	Safety goggles
825	Gloves
825	Gowns
825	Hand sanitizer
825	Disinfecting wipes
826	N95s
826	Surgical masks
826	Gowns
826	Nitrile Gloves
827	N95s
827	Surgical masks
827	Face shields
827	Disposable booties
827	Safety goggles
827	Gloves
827	Gowns
827	Hand sanitizer
827	Disinfecting wipes
827	We have nothing protecting us on our days off
827	because the public is stock piling items just a little hand santizer would helo
828	N95s
828	Surgical masks
828	Face shields
828	Disposable booties
828	Safety goggles
828	Gloves
828	Gowns
828	Hand sanitizer
828	Disinfecting wipes
829	N95s
829	Face shields
829	Disposable booties
829	Safety goggles
829	Hand sanitizer
830	N95s
830	Surgical masks
830	Face shields
830	Disposable booties
830	Safety goggles
830	Gloves
830	Gowns
830	Disinfecting wipes
831	N95s
831	Surgical masks
831	Face shields
831	Disposable booties
831	Safety goggles
831	Gloves
831	Gowns
831	Hand sanitizer
831	Disinfecting wipes
831	Thermometers
831	Appreciate anything
832	N95s
832	Surgical masks
832	Face shields
832	Disposable booties
832	Safety goggles
832	Gloves
832	Gowns
832	Hand sanitizer
832	Disinfecting wipes
833	N95s
833	Surgical masks
833	Face shields
833	Disposable booties
833	Safety goggles
833	Gloves
833	Gowns
833	Hand sanitizer
833	Disinfecting wipes
833	Thermometers
834	N95s
834	Surgical masks
835	N95s
835	Surgical masks
835	Face shields
835	Safety goggles
835	Hand sanitizer
835	Disinfecting wipes
836	N95s
836	Surgical masks
836	Gowns
836	Nitrile Gloves
837	N95s
837	Surgical masks
837	Face shields
837	Disposable booties
837	Safety goggles
837	Gloves
837	Gowns
837	Hand sanitizer
837	Disinfecting wipes
837	Thermometers
838	N95s
838	Surgical masks
838	Face shields
838	Disposable booties
838	Safety goggles
838	Gloves
838	Gowns
838	Hand sanitizer
838	Disinfecting wipes
838	Thermometers
839	Surgical masks
839	Face shields
839	Gloves
839	Gowns
840	N95s
840	Surgical masks
840	Face shields
840	Disposable booties
840	Safety goggles
840	Gloves
840	Gowns
840	Hand sanitizer
840	Disinfecting wipes
840	Thermometers
841	N95s
841	Surgical masks
841	Gloves
841	Gowns
841	Hand sanitizer
841	Disinfecting wipes
842	N95s
843	N95s
843	Surgical masks
843	Gloves
843	Gowns
843	Disinfecting wipes
844	N95s
844	Surgical masks
844	Face shields
844	Safety goggles
844	Gloves
845	N95s
845	Surgical masks
845	Face shields
845	Disposable booties
845	Safety goggles
845	Gloves
845	Gowns
845	Hand sanitizer
845	Disinfecting wipes
845	Thermometers
846	Surgical masks
846	Gowns
846	Hand sanitizer
846	Disinfecting wipes
848	N95s
848	Surgical masks
848	Face shields
848	Disposable booties
848	Safety goggles
848	Gloves
848	Gowns
848	Hand sanitizer
848	Disinfecting wipes
848	Thermometers
849	N95s
849	Surgical masks
849	Face shields
849	Disposable booties
849	Safety goggles
849	Gloves
849	Gowns
849	Hand sanitizer
849	Disinfecting wipes
849	Thermometers
850	N95s
850	Surgical masks
850	Face shields
850	Disposable booties
850	Safety goggles
850	Gloves
850	Gowns
850	Hand sanitizer
850	Disinfecting wipes
851	N95s
851	Surgical masks
851	Face shields
851	Safety goggles
851	Gloves
851	Gowns
851	Hand sanitizer
851	Disinfecting wipes
852	6" plastic nasal swabs
853	N95s
853	Surgical masks
853	Face shields
853	Disposable booties
853	Safety goggles
853	Gowns
853	Thermometers
854	N95s
854	Surgical masks
854	Face shields
854	Gloves
854	Gowns
855	N95s
855	Surgical masks
855	Face shields
855	Gowns
855	Hand sanitizer
855	Disinfecting wipes
855	Thermometers
856	N95s
856	Surgical masks
856	Face shields
856	Safety goggles
856	Gowns
857	N95s
857	Surgical masks
857	Face shields
857	Safety goggles
857	Gloves
857	Gowns
858	N95s
858	Face shields
858	Safety goggles
858	Gloves
858	Gowns
858	Hand sanitizer
858	Disinfecting wipes
858	Thermometers
859	N95s
859	Surgical masks
859	Face shields
859	Gloves
859	Hand sanitizer
859	Disinfecting wipes
859	mouth swabs
860	N95s
860	Surgical masks
860	Face shields
860	Disposable booties
860	Safety goggles
860	Gloves
860	Gowns
860	Hand sanitizer
860	Disinfecting wipes
860	mouth swabs
861	N95s
861	Surgical masks
861	Safety goggles
861	Gloves
861	Gowns
861	Hand sanitizer
861	Disinfecting wipes
862	N95s
862	Surgical masks
862	Face shields
862	Disposable booties
862	Safety goggles
862	Gloves
862	Gowns
863	N95s
863	Surgical masks
863	Face shields
863	Disposable booties
863	Safety goggles
863	Gloves
863	Gowns
863	Hand sanitizer
863	Disinfecting wipes
863	Thermometers
863	Any protective or sanitizing equipment
863	paper towels
863	testing kits.
864	N95s
864	Surgical masks
864	Face shields
864	Safety goggles
864	Gloves
864	Gowns
864	Hand sanitizer
864	Disinfecting wipes
865	N95s
865	Gloves
865	Gowns
865	Hand sanitizer
865	Disinfecting wipes
867	N95s
867	Surgical masks
867	Face shields
867	Safety goggles
867	Gloves
867	Hand sanitizer
867	Disinfecting wipes
867	Thermometers
868	N95s
868	Face shields
868	Gloves
868	Hand sanitizer
868	Thermometers
869	N95s
869	Face shields
869	Disposable booties
869	Safety goggles
869	Gowns
869	Hand sanitizer
869	Thermometers
870	N95s
870	Face shields
870	Safety goggles
870	Hand sanitizer
871	N95s
871	Surgical masks
871	Face shields
871	Safety goggles
871	Gloves
871	Gowns
871	Hand sanitizer
871	Disinfecting wipes
872	N95s
872	Surgical masks
872	Face shields
872	Disposable booties
872	Safety goggles
872	Gloves
872	Gowns
872	Hand sanitizer
872	Disinfecting wipes
872	Thermometers
873	N95s
873	Face shields
873	Gowns
873	Hand sanitizer
873	Disinfecting wipes
874	N95s
874	Surgical masks
874	Face shields
874	Disposable booties
874	Safety goggles
874	Gloves
874	Gowns
874	Hand sanitizer
874	Disinfecting wipes
874	Thermometers
875	N95s
875	Surgical masks
875	Face shields
875	Disposable booties
875	Safety goggles
875	Gowns
875	Hand sanitizer
875	Disinfecting wipes
875	chemo gowns
876	N95s
876	Surgical masks
876	Face shields
876	Disposable booties
876	Safety goggles
876	Gloves
876	Gowns
876	Hand sanitizer
876	Disinfecting wipes
876	disposable stethoscope
877	N95s
877	Surgical masks
877	Face shields
877	Safety goggles
877	Gloves
877	Gowns
877	Hand sanitizer
877	Disinfecting wipes
877	Thermometers
878	N95s
878	Face shields
878	Gowns
878	Disinfecting wipes
879	N95s
879	Surgical masks
879	Face shields
879	Disposable booties
879	Safety goggles
879	Gloves
879	Gowns
879	Hand sanitizer
879	Disinfecting wipes
879	Thermometers
880	N95s
880	Surgical masks
880	Face shields
880	Disposable booties
880	Safety goggles
880	Gloves
880	Gowns
880	Hand sanitizer
880	Disinfecting wipes
880	Thermometers
881	N95s
881	Surgical masks
881	Face shields
881	Safety goggles
881	Gowns
882	Surgical masks
882	Face shields
882	Disposable booties
882	Safety goggles
882	Gloves
882	Gowns
882	Hand sanitizer
882	Disinfecting wipes
884	N95s
884	Surgical masks
884	Face shields
884	Gloves
884	Gowns
885	N95s
885	Surgical masks
885	Face shields
885	Safety goggles
885	Gowns
885	Hand sanitizer
885	Disinfecting wipes
885	Thermometers
886	N95s
886	Surgical masks
886	Face shields
886	Disposable booties
886	Safety goggles
886	Gloves
886	Gowns
886	Hand sanitizer
886	Disinfecting wipes
886	Thermometers
887	N95s
887	Surgical masks
887	Face shields
887	Safety goggles
887	Gowns
888	N95s
888	Surgical masks
888	Face shields
888	Disposable booties
888	Safety goggles
888	Gloves
888	Gowns
888	Hand sanitizer
888	Disinfecting wipes
888	Thermometers
889	N95s
889	Surgical masks
889	Face shields
889	Disposable booties
889	Safety goggles
889	Gowns
890	N95s
890	Surgical masks
890	Face shields
890	Disposable booties
890	Safety goggles
890	Gloves
890	Gowns
890	Hand sanitizer
890	Disinfecting wipes
890	Thermometers
891	N95s
891	Surgical masks
891	Face shields
891	Disposable booties
891	Gloves
891	Gowns
891	Hand sanitizer
891	Disinfecting wipes
891	Thermometers
892	N95s
892	Surgical masks
892	Face shields
892	Disposable booties
892	Safety goggles
892	Gowns
892	Hand sanitizer
893	N95s
893	Surgical masks
894	N95s
894	Surgical masks
894	Face shields
894	Disposable booties
894	Safety goggles
894	Gloves
894	Gowns
894	Hand sanitizer
894	Disinfecting wipes
894	Thermometers
894	Homemade Masks
895	N95s
895	Surgical masks
895	Face shields
895	Disposable booties
895	Safety goggles
895	Gloves
895	Gowns
895	Hand sanitizer
895	Disinfecting wipes
895	Thermometers
896	N95s
896	Surgical masks
896	Face shields
896	Disposable booties
896	Safety goggles
896	Gloves
896	Gowns
896	Hand sanitizer
897	Surgical masks
897	Gloves (Vinyl or Nitrile)
897	Liquid Hand Sanitizer
898	N95s
898	Surgical masks
898	Face shields
898	Disposable booties
898	Safety goggles
898	Gloves
898	Gowns
898	Hand sanitizer
898	Disinfecting wipes
898	Thermometers
898	testing kits
899	N95s
899	Surgical masks
899	Face shields
899	Disposable booties
899	Safety goggles
899	Gloves
899	Gowns
899	Hand sanitizer
899	Disinfecting wipes
900	N95s
900	Surgical masks
900	Face shields
900	Disposable booties
900	Safety goggles
900	Gloves
900	Gowns
900	Hand sanitizer
900	Disinfecting wipes
900	Thermometers
900	Thermometer probe covers
901	N95s
901	Surgical masks
901	Face shields
901	Disposable booties
901	Safety goggles
901	Gloves
901	Gowns
901	Hand sanitizer
901	Disinfecting wipes
902	N95s
902	Surgical masks
902	Face shields
902	Disposable booties
902	Safety goggles
902	Gloves
902	Gowns
902	Hand sanitizer
902	Disinfecting wipes
903	N95s
903	Surgical masks
903	Face shields
903	Safety goggles
903	Gowns
904	N95s
904	Surgical masks
904	Face shields
904	Disposable booties
904	Safety goggles
904	Gowns
904	Hand sanitizer
904	Disinfecting wipes
904	Homemade masks
905	N95s
905	Surgical masks
905	Face shields
905	Gloves
905	Gowns
905	Hand sanitizer
905	Disinfecting wipes
906	N95s
906	Surgical masks
906	Face shields
906	Disposable booties
906	Safety goggles
906	Gowns
906	Hand sanitizer
906	Disinfecting wipes
907	N95s
907	Surgical masks
907	Face shields
907	Disposable booties
907	Safety goggles
907	Gloves
907	Gowns
907	Hand sanitizer
907	Disinfecting wipes
908	N95s
908	Surgical masks
908	Face shields
908	Disposable booties
908	Safety goggles
908	Gloves
908	Gowns
908	Hand sanitizer
908	Disinfecting wipes
909	N95s
909	Surgical masks
909	Face shields
909	Disposable booties
909	Safety goggles
909	Gloves
909	Gowns
909	Hand sanitizer
910	N95s
910	Surgical masks
910	Face shields
910	Safety goggles
910	Gloves
910	Gowns
910	Hand sanitizer
910	Disinfecting wipes
910	Thermometers
911	N95s
911	Surgical masks
911	Face shields
911	Disposable booties
911	Safety goggles
911	Gloves
911	Gowns
911	Disinfecting wipes
911	Thermometers
912	N95s
912	Surgical masks
912	Face shields
912	Safety goggles
912	Disinfecting wipes
912	Thermometers
913	N95s
913	Surgical masks
913	Face shields
913	Disposable booties
913	Safety goggles
913	Gloves
913	Gowns
913	Hand sanitizer
913	Disinfecting wipes
914	N95s
914	Surgical masks
914	Face shields
914	Safety goggles
914	Gloves
914	Gowns
915	N95s
915	Surgical masks
915	Face shields
915	Safety goggles
915	Gloves
915	Gowns
915	Hand sanitizer
915	Disinfecting wipes
916	N95s
916	Safety goggles
916	Gowns
917	Surgical masks
917	Face shields
917	Disposable booties
917	Safety goggles
917	Gloves
917	Gowns
917	Hand sanitizer
917	Disinfecting wipes
917	Thermometers
918	N95s
918	Surgical masks
918	Gowns
919	N95s
919	Surgical masks
919	Face shields
919	Disposable booties
919	Safety goggles
919	Gloves
919	Gowns
919	Hand sanitizer
919	Disinfecting wipes
919	Thermometers
920	N95s
920	Surgical masks
920	Face shields
920	Disposable booties
920	Safety goggles
920	Gloves
920	Gowns
920	Hand sanitizer
920	Disinfecting wipes
920	Thermometers
921	N95s
921	Surgical masks
921	Safety goggles
921	Gloves
921	Hand sanitizer
921	Disinfecting wipes
922	Gowns
922	Hand sanitizer
922	Disinfecting wipes
922	Thermometers
923	N95s
923	Face shields
923	Safety goggles
923	Gloves
923	Hand sanitizer
924	N95s
924	Surgical masks
924	Face shields
924	Safety goggles
924	Gloves
924	Gowns
924	Hand sanitizer
924	Disinfecting wipes
924	Thermometers
925	N95s
925	Surgical masks
925	Face shields
925	Gloves
925	Hand sanitizer
925	Disinfecting wipes
925	Thermometers
926	N95s
926	Surgical masks
926	Face shields
926	Safety goggles
926	Gloves
926	Gowns
926	Hand sanitizer
926	Disinfecting wipes
926	Thermometers
927	N95s
927	Surgical masks
927	Face shields
927	Disposable booties
927	Safety goggles
927	Gloves
927	Gowns
927	Hand sanitizer
927	Disinfecting wipes
927	Thermometers
928	N95s
928	Surgical masks
928	Face shields
928	Safety goggles
928	Gloves
928	Gowns
928	Hand sanitizer
928	Disinfecting wipes
928	Thermometers
929	N95s
929	Surgical masks
929	Disposable booties
929	Gowns
929	Hand sanitizer
929	Thermometers
930	N95s
930	Surgical masks
930	Face shields
930	Safety goggles
930	Gowns
930	Hand sanitizer
931	N95s
931	Surgical masks
931	Face shields
931	Hand sanitizer
931	Disinfecting wipes
932	N95s
932	Surgical masks
932	Face shields
932	Disposable booties
932	Safety goggles
932	Gloves
932	Gowns
932	Hand sanitizer
932	Disinfecting wipes
932	Disposable stethoscopes
933	N95s
933	Surgical masks
933	Face shields
933	Disposable booties
933	Safety goggles
933	Gowns
934	N95s
934	Surgical masks
934	Face shields
934	Disposable booties
934	Safety goggles
934	Gloves
934	Gowns
934	Hand sanitizer
934	Disinfecting wipes
934	Thermometers
935	N95s
935	Surgical masks
935	Face shields
935	Safety goggles
935	Hand sanitizer
935	Disinfecting wipes
936	N95s
936	Surgical masks
936	Face shields
936	Gowns
936	Disinfecting wipes
937	N95s
937	Surgical masks
937	Face shields
937	Safety goggles
937	Gowns
937	Hand sanitizer
937	Disinfecting wipes
937	Thermometers
938	N95s
938	Surgical masks
939	N95s
939	Surgical masks
939	Face shields
939	Disposable booties
939	Safety goggles
939	Gloves
939	Gowns
939	Hand sanitizer
939	Disinfecting wipes
939	Thermometers
940	N95s
940	Surgical masks
940	Face shields
940	Gowns
940	Hand sanitizer
940	Disinfecting wipes
940	Thermometers
941	N95s
941	Surgical masks
941	Face shields
941	Hand sanitizer
941	Disinfecting wipes
942	N95s
942	Surgical masks
942	Face shields
942	Safety goggles
942	Gloves
942	Gowns
942	Hand sanitizer
942	Disinfecting wipes
943	N95s
943	Surgical masks
943	Face shields
943	Disposable booties
943	Safety goggles
943	Gloves
943	Gowns
943	Hand sanitizer
943	Disinfecting wipes
943	Thermometers
944	N95s
944	Surgical masks
944	Face shields
944	Safety goggles
944	Gloves
944	Gowns
944	Hand sanitizer
944	Thermometers
945	N95s
945	Surgical masks
945	Face shields
945	Safety goggles
945	Disinfecting wipes
946	N95s
946	Surgical masks
946	Disinfectant Wipes
946	Gowns
946	Hand Sanitizer
946	8511 Masks
946	Kleenex
946	Coveralls
946	Hand sewn masks in this pattern: https://drive.google.com/file/d/1EwHrnspVWh1Z30P7VkqiIQtXhPhqmRNT/view?usp=sharing
947	N95s
947	Hand sanitizer
947	Disinfecting wipes
947	Thermometers
947	CAPR
947	CAPR shields
948	N95s
948	Surgical masks
948	Face shields
948	Safety goggles
948	Gloves
948	Gowns
948	Hand sanitizer
948	Disinfecting wipes
949	N95s
949	Surgical masks
949	Face shields
950	N95s
950	Surgical masks
950	Gloves
950	Hand sanitizer
950	Disinfecting wipes
951	N95s
951	Gowns
951	Disinfecting wipes
951	Thermometers
952	N95s
952	Surgical masks
952	Face shields
952	Disposable booties
952	Safety goggles
952	Gloves
952	Gowns
952	Hand sanitizer
952	Disinfecting wipes
952	Thermometers
953	N95s
953	Surgical masks
953	Face shields
953	Disposable booties
953	Safety goggles
953	Gloves
953	Gowns
953	Hand sanitizer
953	Disinfecting wipes
954	N95s
954	Face shields
954	Disposable booties
954	Gloves
954	Gowns
954	Thermometers
955	N95s
955	Surgical masks
955	Face shields
955	Disposable booties
955	Safety goggles
955	Gloves
955	Gowns
955	Hand sanitizer
955	Disinfecting wipes
955	Thermometers
955	non-ICU nurses are being floated to aid in the fight against COVID-19
955	so they should be protected since this is not their normal area of work.
956	N95s
956	Surgical masks
956	Gloves
956	Gowns
956	Hand sanitizer
956	Disinfecting wipes
956	Thermometers
957	N95s
957	Face shields
958	N95s
958	Surgical masks
958	Face shields
958	Disposable booties
958	Gloves
958	Gowns
958	Hand sanitizer
958	Disinfecting wipes
958	Thermometers
959	N95s
959	Surgical masks
959	Face shields
959	Gowns
959	Hand sanitizer
959	Disinfecting wipes
961	N95s
961	Surgical masks
961	Face shields
961	Gloves
962	N95s
962	Surgical masks
962	Face shields
962	Safety goggles
962	Disinfecting wipes
962	CAPR/PAPR machines and disposables
962	flocked swabs
963	N95s
963	Surgical masks
963	Face shields
963	Disposable booties
963	Safety goggles
963	Gloves
963	Gowns
963	Hand sanitizer
963	Disinfecting wipes
963	Thermometers
964	N95s
964	Surgical masks
964	Face shields
964	Disposable booties
964	Safety goggles
964	Gloves
964	Gowns
964	Hand sanitizer
964	Disinfecting wipes
965	N95s
965	Surgical masks
965	Face shields
965	Disposable booties
965	Safety goggles
965	Gloves
965	Gowns
965	Hand sanitizer
965	Disinfecting wipes
965	Thermometers
965	Whatever you can spare. Our healthcare providers are our soldiers
965	and we need to protect them the way we would protect the military.
966	N95s
966	Surgical masks
966	Face shields
966	Disposable booties
966	Safety goggles
966	Gloves
966	Gowns
966	Hand sanitizer
966	Disinfecting wipes
966	Thermometers
967	N95s
967	Surgical masks
967	Face shields
967	Gloves
967	Hand sanitizer
967	Disinfecting wipes
968	N95s
968	Surgical masks
968	Face shields
968	Safety goggles
968	Gowns
968	Hand sanitizer
968	Disinfecting wipes
968	CAPR/PAPR machines and disposables
968	flocked swabs
969	N95s
969	Surgical masks
969	Face shields
969	Safety goggles
969	Gowns
970	Surgical masks
970	Face shields
970	Disposable booties
970	Gowns
971	N95s
971	Surgical masks
971	Face shields
971	Disposable booties
971	Safety goggles
971	Gloves
971	Gowns
971	Hand sanitizer
971	Disinfecting wipes
971	Homemade masks
972	N95s
972	Gloves
972	Hand sanitizer
972	Disinfecting wipes
972	Thermometers
973	N95s
973	Surgical masks
973	Gloves
973	Gowns
973	Hand sanitizer
973	Disinfecting wipes
973	Thermometers
974	N95s
974	Face shields
974	Disposable booties
974	Gloves
974	Gowns
974	Hand sanitizer
974	Disinfecting wipes
975	N95s
975	Surgical masks
975	Face shields
975	Safety goggles
975	Gowns
975	Hand sanitizer
975	Disinfecting wipes
976	N95s
976	Surgical masks
976	Face shields
976	Disposable booties
976	Safety goggles
976	Gloves
976	Gowns
976	Hand sanitizer
976	Disinfecting wipes
976	Thermometers
977	N95s
977	Surgical masks
977	Face shields
977	Disinfecting wipes
978	N95s
978	Disposable booties
978	Gloves
978	Gowns
978	Hand sanitizer
978	Disinfecting wipes
979	N95s
979	Surgical masks
979	Face shields
979	Disposable booties
979	Safety goggles
979	Gloves
979	Gowns
979	Hand sanitizer
979	Disinfecting wipes
980	
981	N95s
981	Surgical masks
981	Hand sanitizer
981	Thermometers
982	N95s
982	Surgical masks
982	Gloves
982	Gowns
982	Hand sanitizer
983	N95s
983	Surgical masks
983	Face shields
983	Disposable booties
983	Safety goggles
983	Gloves
983	Gowns
983	Hand sanitizer
983	Disinfecting wipes
983	Thermometers
984	
985	N95s
985	Surgical masks
985	Face shields
985	Disposable booties
985	Safety goggles
985	Gloves
985	Hand sanitizer
985	Disinfecting wipes
985	Thermometers
986	N95s
986	Surgical masks
986	Safety goggles
986	Gowns
986	Hand sanitizer
986	Disinfecting wipes
986	Thermometers
987	N95s
987	Surgical masks
987	Face shields
987	Safety goggles
987	Gloves
987	Gowns
987	Hand sanitizer
987	Disinfecting wipes
988	N95s
988	Surgical masks
988	Face shields
988	Gloves
988	Gowns
988	Hand sanitizer
988	Disinfecting wipes
989	N95s
989	Surgical masks
989	Face shields
989	Safety goggles
989	Gowns
989	Hand sanitizer
989	Disinfecting wipes
990	N95s
990	Surgical masks
990	Face shields
990	Disposable booties
990	Safety goggles
990	Gloves
990	Gowns
990	Hand sanitizer
990	Disinfecting wipes
991	N95s
991	Surgical masks
991	Face shields
991	Disposable booties
991	Safety goggles
991	Gloves
991	Gowns
991	Hand sanitizer
991	Disinfecting wipes
991	Thermometers
992	N95s
992	Face shields
992	Disposable booties
992	Safety goggles
992	Gloves
993	N95s
993	Surgical masks
993	Face shields
993	Disposable booties
993	Safety goggles
993	Gloves
993	Gowns
993	Hand sanitizer
993	Disinfecting wipes
994	N95s
994	Surgical masks
994	Face shields
994	Safety goggles
994	Gloves
994	Gowns
994	Hand sanitizer
994	Disinfecting wipes
995	N95s
995	Surgical masks
995	Face shields
995	Gloves
995	Gowns
995	Hand sanitizer
995	Disinfecting wipes
996	N95s
996	Surgical masks
996	Face shields
996	Safety goggles
996	Gloves
996	Gowns
996	Hand sanitizer
996	Disinfecting wipes
997	N95s
997	Surgical masks
997	Face shields
997	Disposable booties
997	Safety goggles
997	Gowns
997	Hand sanitizer
998	N95s
998	Surgical masks
998	Face shields
998	Disposable booties
998	Safety goggles
998	Gowns
999	N95s
999	Surgical masks
999	Gloves
999	Disinfecting wipes
1000	N95s
1000	Surgical masks
1000	Disposable booties
1000	Safety goggles
1000	Hand sanitizer
1000	Disinfecting wipes
1001	N95s
1001	Surgical masks
1001	Face shields
1001	Disposable booties
1001	Safety goggles
1001	Gloves
1001	Gowns
1001	Hand sanitizer
1001	Disinfecting wipes
1001	Thermometers
1002	N95s
1002	Surgical masks
1002	Face shields
1002	Disposable booties
1002	Safety goggles
1002	Gloves
1002	Gowns
1002	Hand sanitizer
1002	Disinfecting wipes
1002	Phone chargers for patients in isolation
1003	N95s
1003	Surgical masks
1003	Safety goggles
1003	Hand sanitizer
1003	Disinfecting wipes
1004	N95s
1004	Surgical masks
1004	Face shields
1004	Gloves
1004	Gowns
1004	Hand sanitizer
1004	Disinfecting wipes
1004	Thermometers
1005	N95s
1005	Gowns
1006	N95s
1006	Surgical masks
1006	Face shields
1006	Disposable booties
1006	Safety goggles
1006	Gloves
1006	Gowns
1006	Hand sanitizer
1006	Disinfecting wipes
1006	Thermometers
1007	N95s
1007	Surgical masks
1007	Face shields
1007	Disposable booties
1007	Gowns
1007	Disinfecting wipes
1007	Thermometers
1008	Gloves
1008	Hand sanitizer
1008	Thermometers
1009	N95s
1009	Surgical masks
1009	Face shields
1009	Disposable booties
1009	Safety goggles
1009	Gloves
1009	Gowns
1009	Hand sanitizer
1009	Disinfecting wipes
1010	N95s
1010	Surgical masks
1010	Face shields
1010	Disposable booties
1010	Safety goggles
1010	Gloves
1010	Gowns
1010	Hand sanitizer
1010	Disinfecting wipes
1010	Thermometers
1011	N95s
1011	Surgical masks
1011	Face shields
1011	Disposable booties
1011	Safety goggles
1011	Gloves
1011	Gowns
1011	Hand sanitizer
1011	Disinfecting wipes
1011	Phone chargers for patients in isolation
1012	N95s
1012	Face shields
1013	N95s
1013	Surgical masks
1013	Face shields
1013	Gowns
1014	N95s
1014	Surgical masks
1014	Face shields
1014	Disposable booties
1014	Safety goggles
1014	Gloves
1014	Gowns
1014	Hand sanitizer
1014	Disinfecting wipes
1015	N95s
1015	Surgical masks
1015	Face shields
1015	Safety goggles
1015	Gloves
1015	Gowns
1015	Disinfecting wipes
1016	N95s
1016	Face shields
1016	Safety goggles
1016	Gowns
1017	N95s
1017	Surgical masks
1017	Face shields
1017	Disposable booties
1017	Safety goggles
1017	Gloves
1017	Gowns
1017	Hand sanitizer
1017	Disinfecting wipes
1018	N95s
1018	Surgical masks
1018	Face shields
1018	Safety goggles
1018	Gloves
1018	Gowns
1018	Hand sanitizer
1018	Disinfecting wipes
1018	Thermometers
1019	N95s
1019	Surgical masks
1019	Face shields
1019	Gowns
1019	Hand sanitizer
1020	N95s
1020	Surgical masks
1020	Face shields
1020	Safety goggles
1020	Gloves
1020	Gowns
1021	N95s
1021	Hand sanitizer
1021	Disinfecting wipes
1022	N95s
1022	Surgical masks
1022	Face shields
1022	Disposable booties
1022	Safety goggles
1022	Gloves
1022	Gowns
1022	Hand sanitizer
1022	Disinfecting wipes
1022	Thermometers
1023	N95s
1023	Surgical masks
1023	Hand sanitizer
1023	Disinfecting wipes
1024	N95s
1024	Surgical masks
1024	Face shields
1024	Disposable booties
1024	Safety goggles
1024	Gloves
1024	Gowns
1024	Hand sanitizer
1024	Disinfecting wipes
1024	Thermometers
1025	N95s
1025	Surgical masks
1025	Face shields
1027	N95s
1027	Surgical masks
1027	Face shields
1027	Gowns
1027	Hand sanitizer
1027	Disinfecting wipes
1027	Thermometers
1028	Surgical masks
1029	N95s
1029	Surgical masks
1029	Face shields
1029	Safety goggles
1029	Gowns
1029	Hand sanitizer
1029	Disinfecting wipes
1030	N95s
1030	Surgical masks
1030	Face shields
1030	Disposable booties
1030	Safety goggles
1030	Gloves
1030	Gowns
1030	Disinfecting wipes
1031	N95s
1031	Surgical masks
1031	Face shields
1031	Safety goggles
1031	Gloves
1031	Gowns
1031	Hand sanitizer
1031	Disinfecting wipes
1031	Thermometers
1032	N95s
1033	N95s
1034	N95s
1034	Surgical masks
1034	Face shields
1034	Safety goggles
1034	Gowns
1034	Hand sanitizer
1034	Disinfecting wipes
1034	Thermometers
1035	N95s
1035	Surgical masks
1035	Face shields
1035	Safety goggles
1035	Gowns
1035	Disinfecting wipes
1036	N95s
1036	Surgical masks
1036	Face shields
1036	Disposable booties
1036	Safety goggles
1036	Gloves
1036	Gowns
1036	Hand sanitizer
1036	Disinfecting wipes
1036	Thermometers
1037	N95s
1037	Surgical masks
1037	Face shields
1037	Disposable booties
1037	Safety goggles
1037	Gloves
1037	Gowns
1037	Hand sanitizer
1037	Disinfecting wipes
1037	Thermometers
1038	N95s
1038	Surgical masks
1038	Face shields
1038	Disposable booties
1038	Gloves
1038	Gowns
1038	Hand sanitizer
1038	Thermometers
1039	N95s
1039	Surgical masks
1039	Face shields
1039	Disposable booties
1039	Safety goggles
1039	Gloves
1039	Gowns
1039	Disinfecting wipes
1039	Thermometers
1040	N95s
1040	Surgical masks
1040	Gloves
1040	Gowns
1040	Hand sanitizer
1040	Disinfecting wipes
1041	N95s
1041	Surgical masks
1041	Face shields
1041	Disposable booties
1041	Safety goggles
1041	Gloves
1041	Gowns
1041	Hand sanitizer
1041	Disinfecting wipes
1041	Thermometers
1043	N95s
1043	Surgical masks
1043	Face shields
1043	Safety goggles
1043	Gloves
1043	Gowns
1043	Hand sanitizer
1043	Disinfecting wipes
1044	N95s
1044	Surgical masks
1044	Face shields
1044	Disposable booties
1044	Safety goggles
1044	Gloves
1044	Gowns
1044	Hand sanitizer
1044	Disinfecting wipes
1044	Thermometers
1045	N95s
1045	Surgical masks
1045	Face shields
1045	Safety goggles
1045	Gloves
1045	Gowns
1045	Disinfecting wipes
1045	Thermometers
1046	N95s
1046	Surgical masks
1046	Face shields
1046	Safety goggles
1046	Disinfecting wipes
1047	N95s
1047	Surgical masks
1047	Face shields
1047	Disposable booties
1047	Safety goggles
1047	Gloves
1047	Gowns
1047	Hand sanitizer
1047	Disinfecting wipes
1047	Endotracheal tubes
1047	facemasks >N95 protection level (e.g. N99 or above)
1048	N95s
1048	Surgical masks
1048	Face shields
1048	Disposable booties
1048	Safety goggles
1048	Gloves
1048	Gowns
1048	Hand sanitizer
1048	Disinfecting wipes
1048	Thermometers
1049	N95s
1049	Surgical masks
1049	Face shields
1049	Safety goggles
1049	See link
1050	N95s
1050	Surgical masks
1050	Safety goggles
1050	Gowns
1050	Hand sanitizer
1050	Disinfecting wipes
1051	N95s
1051	Surgical masks
1051	Face shields
1051	Disposable booties
1051	Safety goggles
1051	Gloves
1051	Gowns
1051	Hand sanitizer
1051	Disinfecting wipes
1051	Thermometers
1052	N95s
1052	Surgical masks
1052	Face shields
1052	Safety goggles
1052	Gloves
1052	Gowns
1052	Hand sanitizer
1052	Disinfecting wipes
1052	Thermometers
1052	Brown paper lunch bags
1053	N95s
1053	Surgical masks
1053	Face shields
1053	Gloves
1053	Gowns
1053	Disinfecting wipes
1054	N95s
1054	Surgical masks
1055	N95s
1055	Surgical masks
1055	Face shields
1055	Disposable booties
1055	Safety goggles
1055	Gloves
1055	Gowns
1055	Hand sanitizer
1055	Disinfecting wipes
1055	Thermometers
1056	N95s
1056	Surgical masks
1056	Face shields
1056	Disposable booties
1056	Safety goggles
1056	Gloves
1056	Gowns
1056	Hand sanitizer
1056	Disinfecting wipes
1056	Thermometers
1057	N95s
1057	Surgical masks
1057	Face shields
1057	Gowns
1058	N95s
1058	Surgical masks
1058	Face shields
1058	Gowns
1059	N95s
1059	Surgical masks
1059	Face shields
1059	Disposable booties
1059	Safety goggles
1059	Gloves
1059	Gowns
1059	Hand sanitizer
1059	Disinfecting wipes
1059	Any new scrubs or lab coats (including homemade)
1059	Handmade masks (https://chw.org/-/media/files/for-patients-and-families/covid-19/mask-guidelines.pdf?la=en)
1060	N95s
1060	Face shields
1060	Disposable booties
1060	Safety goggles
1060	Hand sanitizer
1060	Disinfecting wipes
1060	Thermometers
1061	N95s
1061	Surgical masks
1061	Face shields
1061	Safety goggles
1061	Gloves
1061	Gowns
1061	Hand sanitizer
1061	Disinfecting wipes
1061	Thermometers
1062	N95s
1062	Surgical masks
1062	Face shields
1062	Disposable booties
1062	Safety goggles
1062	Gloves
1062	Gowns
1062	Hand sanitizer
1062	Disinfecting wipes
1063	N95s
1063	Surgical masks
1063	Face shields
1063	Safety goggles
1063	Hand sanitizer
1064	N95s
1064	Surgical masks
1064	Gowns
1064	Hand sanitizer
1064	Disinfecting wipes
1065	N95s
1065	Surgical masks
1065	Face shields
1065	Disposable booties
1065	Safety goggles
1065	Gloves
1065	Gowns
1065	Hand sanitizer
1065	Disinfecting wipes
1066	N95s
1066	Surgical masks
1066	Face shields
1066	Disposable booties
1066	Safety goggles
1066	Gloves
1066	Gowns
1066	Hand sanitizer
1066	Disinfecting wipes
1067	N95s
1067	Surgical masks
1067	Face shields
1067	Disposable booties
1067	Safety goggles
1067	Gloves
1067	Gowns
1067	Hand sanitizer
1067	Disinfecting wipes
1067	Thermometers
1067	Ventilators
1068	N95s
1068	Face shields
1068	Disposable booties
1068	Safety goggles
1068	Gowns
1068	Disinfecting wipes
1069	N95s
1069	Surgical masks
1069	Face shields
1069	Disposable booties
1069	Safety goggles
1069	Gloves
1069	Gowns
1069	Hand sanitizer
1069	Disinfecting wipes
1069	Thermometers
1070	N95s
1070	Disposable gowns
1071	N95s
1071	Surgical masks
1071	Face shields
1071	Disposable booties
1071	Safety goggles
1071	Gloves
1071	Gowns
1071	Hand sanitizer
1071	Disinfecting wipes
1071	Thermometers
1072	N95s
1072	Surgical masks
1072	Face shields
1072	Safety goggles
1072	Gowns
1072	Hand sanitizer
1072	Disinfecting wipes
1073	N95s
1073	Surgical masks
1073	Face shields
1073	Disposable booties
1073	Safety goggles
1073	Gloves
1073	Gowns
1073	Hand sanitizer
1073	Disinfecting wipes
1074	N95s
1074	Face shields
1074	Gowns
1074	Disinfecting wipes
1075	N95s
1075	Surgical masks
1075	Face shields
1075	Gloves
1075	Gowns
1075	Hand sanitizer
1075	Disinfecting wipes
1076	N95s
1076	Surgical masks
1076	Face shields
1076	Disposable booties
1076	Safety goggles
1076	Gloves
1076	Gowns
1076	Hand sanitizer
1076	Disinfecting wipes
1076	Thermometers
1077	N95s
1077	Surgical masks
1077	Face shields
1077	Safety goggles
1077	Gloves
1077	Gowns
1077	Hand sanitizer
1077	Disinfecting wipes
1078	Hand sanitizer
1079	N95s
1079	Face shields
1079	Gloves
1079	Gowns
1080	N95s
1080	Surgical masks
1080	Face shields
1080	Disposable booties
1080	Safety goggles
1080	Gloves
1080	Gowns
1080	Hand sanitizer
1080	Disinfecting wipes
1080	Disposable surgical caps
1080	PAPRS and PAPR hoods
1080	CAPRs
1080	Ventilators
1081	N95s
1081	Surgical masks
1081	Gowns
1081	Hand sanitizer
1081	Disinfecting wipes
1082	N95s
1082	Face shields
1082	Disposable booties
1082	Safety goggles
1083	N95s
1083	Surgical masks
1083	Face shields
1083	Disposable booties
1083	Safety goggles
1083	Gloves
1083	Gowns
1083	Hand sanitizer
1083	Disinfecting wipes
1083	Thermometers
1084	N95s
1084	Surgical masks
1084	Face shields
1084	Disposable booties
1084	Safety goggles
1084	Gloves
1084	Gowns
1084	Hand sanitizer
1084	Disinfecting wipes
1084	Thermometers
1085	N95s
1085	Surgical masks
1085	Face shields
1085	Gloves
1085	Gowns
1085	Disinfecting wipes
1085	Thermometers
1086	N95s
1086	Surgical masks
1086	Face shields
1086	Safety goggles
1086	Gowns
1086	Hand sanitizer
1086	Disinfecting wipes
1086	Thermometers
1087	Surgical masks
1087	Gloves
1088	N95s
1088	Surgical masks
1088	Face shields
1088	Safety goggles
1088	Gowns
1089	N95s
1089	Surgical masks
1089	Face shields
1089	Disposable booties
1089	Safety goggles
1089	Gloves
1089	Gowns
1089	Hand sanitizer
1089	Disinfecting wipes
1090	N95s
1090	Surgical masks
1090	Face shields
1090	Disposable booties
1090	Safety goggles
1090	Gloves
1090	Gowns
1090	Hand sanitizer
1090	Disinfecting wipes
1090	Thermometers
1091	N95s
1091	Surgical masks
1091	Face shields
1091	Safety goggles
1091	Gloves
1091	Gowns
1091	Hand sanitizer
1091	Disinfecting wipes
1092	N95s
1092	Face shields
1092	Safety goggles
1092	Gowns
1092	Hand sanitizer
1092	Thermometers
1093	N95s
1093	Face shields
1093	Safety goggles
1093	Gowns
1093	Thermometers
1094	N95s
1094	Surgical masks
1094	Face shields
1094	Disposable booties
1094	Safety goggles
1094	Gloves
1094	Gowns
1094	Hand sanitizer
1094	Disinfecting wipes
1094	Thermometers
1095	N95s
1095	Surgical masks
1095	Face shields
1095	Safety goggles
1095	Gloves
1095	Gowns
1095	Disinfecting wipes
1096	N95s
1096	Surgical masks
1096	Face shields
1096	Gloves
1096	Gowns
1096	Disinfecting wipes
1097	N95s
1097	Surgical masks
1097	Face shields
1097	Disposable booties
1097	Safety goggles
1097	Gloves
1097	Gowns
1097	Hand sanitizer
1097	Disinfecting wipes
1097	Thermometers
1098	N95s
1098	Face shields
1098	Safety goggles
1098	Gloves
1098	Thermometers
1099	N95s
1099	Surgical masks
1099	Gloves
1099	Gowns
1099	Hand sanitizer
1099	Disinfecting wipes
1100	N95s
1100	Surgical masks
1100	Face shields
1100	Disposable booties
1100	Safety goggles
1100	Gloves
1100	Gowns
1102	Surgical masks
1102	Face shields
1102	Safety goggles
1102	Gloves
1102	Gowns
1102	Hand sanitizer
1102	Disinfecting wipes
1103	N95s
1103	Surgical masks
1103	Face shields
1103	Disposable booties
1103	Safety goggles
1103	Gloves
1103	Gowns
1103	Hand sanitizer
1104	N95s
1104	Surgical masks
1104	Face shields
1104	Disposable booties
1104	Safety goggles
1104	Gloves
1104	Gowns
1104	Hand sanitizer
1104	Disinfecting wipes
1104	Thermometers
1105	N95s
1105	Surgical masks
1105	Face shields
1105	Safety goggles
1106	N95s
1106	Surgical masks
1106	Face shields
1106	Safety goggles
1106	Gloves
1106	Gowns
1106	Hand sanitizer
1107	N95s
1107	Surgical masks
1107	Face shields
1107	Gowns
1108	N95s
1108	Surgical masks
1108	Gloves
1108	Gowns
1108	Hand sanitizer
1108	Disinfecting wipes
1108	Thermometers
1109	N95s
1109	Surgical masks
1109	Face shields
1109	Gowns
1109	Thermometers
1110	N95s
1110	Surgical masks
1110	Face shields
1110	Disposable booties
1110	Safety goggles
1110	Gloves
1110	Gowns
1110	Hand sanitizer
1110	Disinfecting wipes
1110	Thermometers
1111	Surgical masks
1111	Gloves
1111	Hand sanitizer
1111	Thermometers
1112	N95s
1112	Surgical masks
1112	Face shields
1112	Disposable booties
1112	Safety goggles
1112	Gloves
1112	Gowns
1112	Hand sanitizer
1112	Disinfecting wipes
1112	PAPR
1113	N95s
1113	Surgical masks
1113	Face shields
1113	Disposable booties
1113	Safety goggles
1113	Gloves
1113	Gowns
1113	Hand sanitizer
1113	Disinfecting wipes
1114	N95s
1114	Surgical masks
1114	Face shields
1114	Safety goggles
1114	Gloves
1114	Hand sanitizer
1114	Disinfecting wipes
1114	Thermometers
1115	N95s
1115	Surgical masks
1115	Face shields
1115	Safety goggles
1115	Gloves
1115	Gowns
1115	Hand sanitizer
1115	Disinfecting wipes
1116	N95s
1116	Surgical masks
1116	Face shields
1116	Disposable booties
1116	Safety goggles
1116	Gloves
1116	Gowns
1116	Hand sanitizer
1116	Disinfecting wipes
1117	N95s
1117	Surgical masks
1117	Face shields
1117	Disposable booties
1117	Safety goggles
1117	Gloves
1117	Gowns
1117	Hand sanitizer
1117	Disinfecting wipes
1118	N95s
1118	Surgical masks
1118	Face shields
1118	Safety goggles
1118	Gloves
1118	Gowns
1118	Hand sanitizer
1118	Disinfecting wipes
1119	N95s
1119	Surgical masks
1119	Gloves
1119	Hand sanitizer
1119	Disinfecting wipes
1119	Thermometers
1119	Handmade masks - please follow pattern (https://www.froedtert.com/sites/default/files/files/2020-03/MaskInstructions_V2.pdf)
1120	N95s
1120	Surgical masks
1120	Face shields
1120	Disposable booties
1120	Safety goggles
1120	Gloves
1121	N95s
1121	Surgical masks
1121	Face shields
1121	Disposable booties
1121	Safety goggles
1121	Gowns
1121	Hand sanitizer
1121	Disinfecting wipes
1121	Thermometers
1122	N95s
1122	Surgical masks
1122	Face shields
1122	Disposable booties
1122	Gloves
1122	Gowns
1122	Hand sanitizer
1122	Disinfecting wipes
1122	Thermometers
1123	N95s
1123	Surgical masks
1123	Face shields
1123	Gowns
1123	Hand sanitizer
1124	N95s
1124	Surgical masks
1124	Face shields
1124	Disposable booties
1124	Safety goggles
1124	Gloves
1124	Gowns
1124	Hand sanitizer
1124	Disinfecting wipes
1124	Thermometers
1124	Paper towels
1125	N95s
1125	Surgical masks
1125	Face shields
1125	Disposable booties
1125	Safety goggles
1125	Gloves
1125	Gowns
1125	Hand sanitizer
1125	Disinfecting wipes
1125	Thermometers
1125	Disposable stethoscopes
1125	iPads. To donate iPads
1125	please clear the security and data first. You can follow these instructions to clear security and data: https://support.apple.com/en-us/HT201351
1126	N95s
1126	Surgical masks
1126	Face shields
1126	Gowns
1127	N95s
1127	Surgical masks
1127	Face shields
1127	Disposable booties
1127	Safety goggles
1127	Gloves
1127	Gowns
1127	Hand sanitizer
1127	Disinfecting wipes
1128	N95s
1128	Surgical masks
1128	Face shields
1128	Disposable booties
1128	Safety goggles
1128	Gloves
1128	Gowns
1128	Hand sanitizer
1128	Disinfecting wipes
1128	Thermometers
1129	N95s
1130	N95s
1130	Face shields
1130	Disposable booties
1130	Safety goggles
1130	Gloves
1130	Gowns
1130	Hand sanitizer
1130	Disinfecting wipes
1130	Thermometers
1131	N95s
1131	Face shields
1131	Disposable booties
1131	Safety goggles
1131	Gowns
1131	Thermometers
1132	N95s
1132	Surgical masks
1132	Face shields
1132	Disposable booties
1132	Safety goggles
1132	Gloves
1132	Gowns
1132	Hand sanitizer
1132	Disinfecting wipes
1132	Thermometers
1133	N95s
1133	Surgical Masks
1134	N95s
1134	Surgical masks
1134	Face shields
1134	Safety goggles
1134	Hand sanitizer
1134	Disinfecting wipes
1134	Thermometers
1134	CAPR and/ or CAPR face shields
1135	N95s
1135	Face shields
1135	Gloves
1135	Hand sanitizer
1135	Disinfecting wipes
1135	Thermometers
1136	N95s
1136	Surgical masks
1136	Face shields
1136	Disposable booties
1136	Safety goggles
1136	Gloves
1136	Gowns
1136	Hand sanitizer
1136	Disinfecting wipes
1137	N95s
1137	Surgical masks
1137	Face shields
1137	Gowns
1137	Thermometers
1138	N95s
1138	Surgical masks
1138	Face shields
1138	Disposable booties
1138	Safety goggles
1138	Gloves
1138	Gowns
1138	Hand sanitizer
1138	Disinfecting wipes
1138	Thermometers
1139	N95s
1139	Surgical masks
1139	Gloves
1139	Gowns
1139	Hand sanitizer
1139	Disinfecting wipes
1139	Thermometers
1139	Blood pressure cuffs
1140	N95s
1140	Surgical masks
1140	Face shields
1140	Disposable booties
1140	Safety goggles
1140	Gloves
1141	N95s
1141	Surgical masks
1141	Face shields
1141	Disposable booties
1141	Safety goggles
1141	Gloves
1141	Gowns
1141	Hand sanitizer
1141	Disinfecting wipes
1141	Thermometers
1142	N95s
1142	Surgical masks
1142	Face shields
1142	Disposable booties
1142	Safety goggles
1142	Gloves
1142	Gowns
1142	Hand sanitizer
1142	Disinfecting wipes
1142	Thermometers
1143	N95s
1143	Surgical masks
1143	Face shields
1143	Disposable booties
1143	Safety goggles
1143	Gloves
1143	Gowns
1143	Hand sanitizer
1143	Disinfecting wipes
1143	Thermometers
1144	N95s
1144	Surgical masks
1144	Face shields
1144	Disposable booties
1144	Safety goggles
1144	Gloves
1144	Gowns
1144	Disinfecting wipes
1145	N95s
1145	Surgical masks
1145	Face shields
1145	Gowns
1146	N95s
1146	Surgical masks
1146	Face shields
1147	N95s
1147	Surgical masks
1147	Face shields
1147	Safety goggles
1148	N95s
1148	Surgical masks
1148	Gowns
1149	N95s
1149	Surgical masks
1149	Face shields
1149	Disposable booties
1149	Safety goggles
1149	Gloves
1149	Gowns
1149	Hand sanitizer
1149	Disinfecting wipes
1149	Thermometers
1150	N95s
1150	Surgical masks
1150	Gowns
1150	Disinfecting wipes
1151	N95s
1151	Surgical masks
1151	Face shields
1151	Disposable booties
1151	Safety goggles
1151	Gloves
1151	Gowns
1151	Hand sanitizer
1151	Disinfecting wipes
1151	Thermometers
1152	N95s
1152	Surgical masks
1152	Face shields
1152	Gowns
1152	Hand sanitizer
1152	Disinfecting wipes
1153	N95s
1153	Surgical masks
1153	Face shields
1153	Safety goggles
1153	Hand sanitizer
1153	Disinfecting wipes
1153	Thermometers
1153	CAPR and/ or CAPR face shields
1154	Surgical masks
1154	Gloves
1154	Gowns
1154	Hand sanitizer
1154	Disinfecting wipes
1155	N95s
1155	Surgical masks
1155	Face shields
1155	Disposable booties
1155	Safety goggles
1155	Gloves
1155	Gowns
1155	Hand sanitizer
1155	Disinfecting wipes
1155	Thermometers
1156	N95s
1156	Surgical masks
1156	Face shields
1156	Disposable booties
1156	Safety goggles
1156	Gloves
1156	Gowns
1156	Hand sanitizer
1156	Disinfecting wipes
1156	Thermometers
1157	N95s
1157	Surgical masks
1157	Face shields
1157	Safety goggles
1157	Gloves
1158	N95s
1158	Surgical masks
1158	Face shields
1158	Disposable booties
1158	Safety goggles
1158	Gloves
1158	Gowns
1158	Hand sanitizer
1158	Disinfecting wipes
1159	N95s
1159	Surgical masks
1159	Face shields
1159	Safety goggles
1159	Gloves
1159	Gowns
1159	Hand sanitizer
1159	Disinfecting wipes
1160	N95s
1160	Surgical masks
1160	Face shields
1160	Disposable booties
1160	Safety goggles
1160	Gloves
1161	N95s
1161	Surgical masks
1161	Face shields
1161	Disposable booties
1161	Safety goggles
1161	Gloves
1161	Gowns
1161	Disinfecting wipes
1162	N95s
1162	Surgical masks
1163	N95s
1163	Surgical masks
1163	Face shields
1163	Disposable booties
1163	Safety goggles
1163	Gloves
1163	Gowns
1163	Hand sanitizer
1163	Disinfecting wipes
1164	N95s
1164	Surgical masks
1164	Face shields
1164	Disposable booties
1164	Safety goggles
1164	Gloves
1164	Gowns
1164	Hand sanitizer
1164	Disinfecting wipes
1165	N95s
1165	Surgical masks
1165	Face shields
1165	Safety goggles
1165	Gowns
1165	Hand sanitizer
1165	Disinfecting wipes
1166	N95s
1166	Surgical masks
1166	Face shields
1166	Safety goggles
1167	N95s
1167	Surgical masks
1167	Face shields
1167	Disposable booties
1167	Safety goggles
1167	Gloves
1167	Gowns
1167	Hand sanitizer
1167	Disinfecting wipes
1167	Thermometers
1167	disposable stethoscopes
1168	N95s
1168	Surgical masks
1168	Face shields
1168	Gloves
1168	Gowns
1168	Hand sanitizer
1168	Disinfecting wipes
1168	Hand-Sewn Masks
1169	N95s
1169	Surgical masks
1169	Face shields
1169	Safety goggles
1169	Gowns
1169	Disinfecting wipes
1170	N95s
1170	Surgical masks
1170	Face shields
1170	Disposable booties
1170	Safety goggles
1170	Gloves
1170	Gowns
1170	Hand sanitizer
1170	Disinfecting wipes
1170	Thermometers
1171	N95s
1171	Surgical masks
1171	Face shields
1171	Safety goggles
1171	Gloves
1171	Gowns
1171	Disinfecting wipes
1172	N95s
1172	Surgical masks
1172	Face shields
1172	Safety goggles
1172	Gowns
1172	Hand sanitizer
1172	Disinfecting wipes
1172	Thermometers
1173	N95s
1173	Surgical masks
1173	Face shields
1173	Safety goggles
1173	Gloves
1173	Gowns
1174	N95s
1174	Surgical masks
1174	Gowns
1174	Hand sanitizer
1174	Disinfecting wipes
1175	N95s
1175	Face shields
1175	Gowns
1175	Hand sanitizer
1176	N95s
1176	Surgical masks
1176	Face shields
1176	Disposable booties
1176	Safety goggles
1176	Gloves
1176	Gowns
1176	Hand sanitizer
1176	Disinfecting wipes
1176	Thermometers
1177	N95s
1177	Surgical masks
1177	Face shields
1177	Disposable booties
1177	Safety goggles
1177	Gloves
1177	Gowns
1177	Hand sanitizer
1177	Disinfecting wipes
1177	Thermometers
1178	N95s
1178	Surgical masks
1178	Face shields
1178	Disposable booties
1178	Safety goggles
1178	Gloves
1178	Gowns
1178	Hand sanitizer
1178	Disinfecting wipes
1178	Thermometers
1179	N95s
1179	Surgical masks
1179	Face shields
1179	Safety goggles
1179	Gloves
1179	Gowns
1179	Hand sanitizer
1179	Disinfecting wipes
1180	N95s
1180	Surgical masks
1180	Face shields
1180	Disposable booties
1180	Safety goggles
1180	Gloves
1180	Gowns
1181	N95s
1181	Surgical masks
1181	Face shields
1182	N95s
1182	Surgical masks
1182	Face shields
1182	Disposable booties
1182	Safety goggles
1182	Gloves
1183	N95s
1183	Surgical masks
1183	Face shields
1183	Disposable booties
1183	Safety goggles
1183	Gloves
1184	N95s
1184	Surgical masks
1184	Face shields
1184	Disposable booties
1184	Safety goggles
1184	Gowns
1184	Hand sanitizer
1185	N95s
1185	Surgical masks
1185	Face shields
1185	Disposable booties
1185	Safety goggles
1185	Gloves
1185	Gowns
1185	Hand sanitizer
1185	Disinfecting wipes
1186	N95s
1186	Face shields
1186	Safety goggles
1186	Gowns
1186	Hand sanitizer
1186	Disinfecting wipes
1186	Thermometers
1187	N95s
1187	Surgical masks
1187	Face shields
1187	Disposable booties
1187	Safety goggles
1187	Gowns
1188	N95s
1188	Surgical masks
1188	Face shields
1188	Safety goggles
1189	N95s
1189	Surgical masks
1189	Face shields
1189	Disposable booties
1189	Safety goggles
1189	Gloves
1189	Gowns
1189	Hand sanitizer
1189	Disinfecting wipes
1189	Thermometers
1189	antimicrobial cleaners (Cavicide liquid or wipes)
1190	N95s
1190	Surgical masks
1190	Face shields
1190	Disposable booties
1190	Safety goggles
1190	Gloves
1190	Gowns
1190	Hand sanitizer
1190	Disinfecting wipes
1190	Thermometers
1190	Disposable Stethoscopes
1191	N95s
1191	Surgical masks
1191	Face shields
1191	Disposable booties
1191	Safety goggles
1191	Gloves
1191	Gowns
1191	Hand sanitizer
1191	Disinfecting wipes
1191	Thermometers
1192	N95s
1192	Surgical masks
1192	Face shields
1192	Safety goggles
1192	Gloves
1192	Gowns
1192	Hand sanitizer
1193	N95s
1193	Surgical masks
1193	Face shields
1193	Disposable booties
1193	Safety goggles
1193	Gloves
1193	Gowns
1193	Hand sanitizer
1193	Disinfecting wipes
1193	Thermometers
1194	N95s
1194	Surgical masks
1194	Gloves
1194	Gowns
1195	N95s
1195	Face shields
1195	Safety goggles
1196	N95s
1196	Surgical masks
1196	Safety goggles
1196	Gloves
1196	Hand sanitizer
1197	N95s
1197	I only need one to continue providing care of my patients
1198	N95s
1198	Surgical masks
1198	Gowns
1198	Hand sanitizer
1198	Disinfecting wipes
1199	N95s
1199	Surgical masks
1199	Face shields
1199	Safety goggles
1199	Gowns
1200	N95s
1200	Surgical masks
1200	Face shields
1200	Safety goggles
1200	Gloves
1200	Gowns
1201	N95s
1201	Surgical masks
1201	Face shields
1201	Disposable booties
1201	Safety goggles
1201	Gloves
1201	Gowns
1201	Hand sanitizer
1201	Disinfecting wipes
1202	N95s
1202	Surgical masks
1202	Disinfecting wipes
1202	Non alcohol hand sanitizer
1203	N95s
1203	Surgical masks
1203	Gowns
1203	PAPRs
1204	N95s
1204	Gloves
1204	Hand sanitizer
1205	N95s
1205	Surgical masks
1205	Face shields
1205	Gloves
1205	Gowns
1205	Hand sanitizer
1205	Disinfecting wipes
1206	N95s
1206	Surgical masks
1206	Face shields
1206	Disposable booties
1206	Safety goggles
1206	Gloves
1206	Gowns
1206	Hand sanitizer
1206	Disinfecting wipes
1206	Thermometers
1207	N95s
1207	Surgical masks
1207	Face shields
1207	Disposable booties
1207	Safety goggles
1207	Gloves
1207	Hand sanitizer
1207	disinfectant wipes
1208	N95s
1208	Surgical masks
1208	Face shields
1208	Disposable booties
1208	Safety goggles
1208	Gloves
1208	Gowns
1208	Hand sanitizer
1208	Disinfecting wipes
1208	Thermometers
1209	N95s
1209	Surgical masks
1209	Face shields
1209	Disposable booties
1209	Safety goggles
1209	Gloves
1209	Gowns
1209	Hand sanitizer
1209	Disinfecting wipes
1209	Thermometers
1210	N95s
1210	Surgical masks
1210	Face shields
1210	Safety goggles
1210	Gloves
1210	Gowns
1210	Hand sanitizer
1210	Disinfecting wipes
1211	N95s
1211	Surgical masks
1211	Face shields
1211	Disposable booties
1211	Safety goggles
1211	Gloves
1211	Gowns
1211	Hand sanitizer
1211	Disinfecting wipes
1211	Thermometers
1212	N95s
1212	Gloves
1212	Disinfecting wipes
1213	N95s
1213	Face shields
1213	Safety goggles
1214	N95s
1214	Surgical masks
1214	Face shields
1214	Disposable booties
1214	Safety goggles
1214	Gloves
1214	Gowns
1214	Hand sanitizer
1214	Disinfecting wipes
1214	Thermometers
1215	N95s
1215	Surgical masks
1215	Face shields
1215	Safety goggles
1215	Gowns
1215	Disinfecting wipes
1216	N95s
1216	Surgical masks
1216	Face shields
1217	N95s
1217	Surgical masks
1217	Safety goggles
1217	Gloves
1217	Gowns
1218	N95s
1218	Surgical masks
1218	Face shields
1218	Safety goggles
1218	Gloves
1218	Gowns
1218	PAPR
1218	CAPR
1218	swabs
1219	N95s
1219	Surgical masks
1219	Face shields
1219	Hand sanitizer
1220	N95s
1220	swabs
1220	rapid flu testing kit
1221	Unsure
1221	just saw address on an FB post
1222	N95s
1222	Surgical masks
1222	Face shields
1222	Gowns
1223	N95s
1223	Surgical masks
1223	Safety goggles
1223	Gloves
1224	N95s
1224	Surgical masks
1224	Face shields
1224	Safety goggles
1224	Gloves
1224	Gowns
1224	Hand sanitizer
1224	Disinfecting wipes
1224	Thermometers
1225	N95s
1225	Disposable booties
1225	Gloves
1225	Gowns
1225	Hand sanitizer
1225	Disinfecting wipes
1225	Thermometers
1226	N95s
1226	Surgical masks
1226	Face shields
1226	Disposable booties
1226	Safety goggles
1226	Gloves
1226	Gowns
1226	Disinfecting wipes
1227	N95s
1227	Surgical masks
1227	Face shields
1227	Gowns
1228	N95s
1228	Surgical masks
1228	Face shields
1228	Safety goggles
1228	Gowns
1228	Hand sanitizer
1228	Disinfecting wipes
1229	Surgical masks
1229	Face shields
1229	Gowns
1230	Surgical masks
1231	N95s
1231	Surgical masks
1231	Face shields
1231	Gloves
1231	Gowns
1231	Thermometers
1232	N95s
1232	Safety goggles
1232	Gowns
1233	N95s
1233	Surgical masks
1233	Safety goggles
1233	Gloves
1233	Gowns
1233	Hand sanitizer
1233	Thermometers
1234	N95s
1234	isolation gown
1235	N95s
1235	Surgical masks
1235	Face shields
1235	Disposable booties
1235	Safety goggles
1235	Gloves
1236	N95s
1236	Surgical masks
1236	Gowns
1236	Disinfecting wipes
1236	Maxair CAPR shields
1237	N95s
1237	Surgical masks
1237	Safety goggles
1237	Gowns
1237	Hand sanitizer
1238	N95s
1238	Safety goggles
1238	Gowns
1239	N95s
1239	Surgical masks
1239	Face shields
1239	Disposable booties
1239	Safety goggles
1239	Gloves
1240	N95s
1240	Surgical masks
1240	Face shields
1240	Gloves
1240	Gowns
1240	Hand sanitizer
1240	Disinfecting wipes
1240	Thermometers
1241	N95s
1241	Surgical masks
1241	Face shields
1241	Disposable booties
1241	Safety goggles
1241	Gloves
1241	Gowns
1241	Hand sanitizer
1241	Disinfecting wipes
1242	Surgical masks
1242	Face shields
1242	Disposable booties
1242	Gloves
1242	Hand sanitizer
1242	Disinfecting wipes
1242	Thermometers
1243	N95s
1243	Safety goggles
1243	Gowns
1244	N95s
1244	Face shields
1244	Gowns
1245	N95s
1245	Surgical masks
1245	Face shields
1245	Gloves
1245	Gowns
1246	N95s
1246	Surgical masks
1246	Gowns
1247	N95s
1247	Surgical masks
1247	Face shields
1247	Disposable booties
1247	Safety goggles
1247	Gloves
1247	Gowns
1247	Hand sanitizer
1247	Disinfecting wipes
1248	N95s
1248	Gloves
1248	Hand sanitizer
1248	Disinfecting wipes
1248	Thermometers
1250	N95s
1250	Surgical masks
1250	Gloves
1250	Gowns
1251	N95s
1251	Surgical masks
1251	Safety goggles
1251	Gowns
1251	Hand sanitizer
1251	Disinfecting wipes
1251	Thermometers
1252	Surgical masks
1252	Gloves
1252	Hand sanitizer
1252	Disinfecting wipes
1253	N95s
1253	Face shields
1253	Gowns
1254	N95s
1254	Surgical masks
1254	Gloves
1254	Gowns
1254	Hand sanitizer
1254	Thermometers
1255	N95s
1255	Surgical masks
1255	Face shields
1255	Gloves
1255	Gowns
1255	Hand sanitizer
1255	Disinfecting wipes
1256	N95s
1256	Surgical Masks
1256	Safety Goggles
1257	N95s
1257	Gloves
1257	Gowns
1257	Hand sanitizer
1257	Disinfecting wipes
1257	Thermometers
1258	N95s
1258	Surgical masks
1258	Face shields
1258	Disposable booties
1258	Safety goggles
1258	Gloves
1258	Hand sanitizers
1258	wipes & infrared thermometers
1259	Surgical masks
1259	Gloves
1259	Hand sanitizer
1259	Disinfecting wipes
1259	Thermometers
1260	Surgical masks
1260	Gowns
1260	Hand sanitizer
1260	Disinfecting wipes
1260	Thermometers
1261	N95s
1261	Surgical masks
1261	Face shields
1261	Disposable booties
1261	Safety goggles
1261	Gloves
1261	Gowns
1261	Hand sanitizer
1261	Disinfecting wipes
1261	Thermometers
1262	N95s
1262	Surgical masks
1262	Face shields
1262	Disposable booties
1262	Safety goggles
1262	Gloves
1262	Gowns
1262	Hand sanitizer
1262	Disinfecting wipes
1262	Thermometers
1262	Disposable stethoscopes
1263	N95s
1263	Surgical masks
1263	Gowns
1264	N95s
1265	N95s
1265	Surgical masks
1265	Face shields
1265	Disposable booties
1265	Safety goggles
1265	Gloves
1265	Gowns
1266	N95s
1266	Gowns
1267	N95s
1267	Surgical masks
1267	Face shields
1267	Disposable booties
1267	Safety goggles
1267	Gloves
1267	Gowns
1268	N95s
1268	Surgical masks
1268	Face shields
1268	Gloves
1268	Gowns
1268	Hand sanitizer
1268	Disinfecting wipes
1268	Thermometers
1269	Surgical masks
1269	Gloves
1269	Hand sanitizer
1269	Disinfecting wipes
1269	Thermometers
1270	N95s
1270	Surgical masks
1270	Face shields
1270	Disposable booties
1270	Safety goggles
1270	Gloves
1270	Gowns
1270	Hand sanitizer
1270	Disinfecting wipes
1270	Thermometers
1271	N95s
1271	Surgical masks
1271	Face shields
1271	Disposable booties
1271	Safety goggles
1271	Gloves
1271	Gowns
1271	Hand sanitizer
1271	Disinfecting wipes
1271	Thermometers
1272	N95s
1272	Disposable booties
1272	Gloves
1272	Hand sanitizer
1272	Disinfecting wipes
1272	Thermometers
1273	N95s
1273	Face shields
1273	Gloves
1273	Gowns
1273	Hand sanitizer
1273	Disinfecting wipes
1273	Thermometers
1274	N95s
1274	Face shields
1274	Gowns
1274	Disinfecting wipes
1275	N95s
1275	Surgical masks
1275	Face shields
1275	Gowns
1275	Hand sanitizer
1275	Thermometers
1276	N95s
1276	Surgical masks
1276	Face shields
1276	Safety goggles
1276	Gloves
1276	Gowns
1276	Hand sanitizer
1276	Disinfecting wipes
1277	N95s
1277	Surgical masks
1277	Face shields
1277	Safety goggles
1277	Gowns
1277	Hand sanitizer
1277	Disinfecting wipes
1278	N95s
1278	Surgical masks
1278	Face shields
1278	Disposable booties
1278	Safety goggles
1278	Gloves
1278	Gowns
1278	Hand sanitizer
1278	Disinfecting wipes
1278	Thermometers
1278	We primarily work in assisted living and with 65+. Any PPE available to keep them safe PLEASE
1279	N95s
1279	Thermometers
1280	N95s
1280	Gowns
1281	N95s
1281	Gloves
1281	Hand sanitizer
1281	Disinfecting wipes
1281	Thermometers
1282	N95s
1282	Face shields
1282	Gowns
1283	N95s
1283	Face shields
1283	Gloves
1283	Hand sanitizer
1283	Disinfecting wipes
1283	Thermometers
1284	N95s
1284	Surgical masks
1284	Face shields
1284	Disposable booties
1284	Safety goggles
1284	Gloves
1284	Gowns
1284	Hand sanitizer
1284	Disinfecting wipes
1284	Thermometers
1285	N95s
1285	Surgical masks
1285	Face shields
1285	Disposable booties
1285	Safety goggles
1285	Gloves
1285	Gowns
1285	Hand sanitizer
1285	Disinfecting wipes
1286	N95s
1286	Surgical masks
1286	Face shields
1286	Disposable booties
1286	Safety goggles
1286	Gloves
1286	Gowns
1286	Hand sanitizer
1286	Disinfecting wipes
1286	Thermometers
1287	N95s
1287	Surgical masks
1287	Face shields
1287	Disposable booties
1287	Safety goggles
1287	Gloves
1287	Gowns
1287	Hand sanitizer
1287	Disinfecting wipes
1287	Thermometers
1288	N95s
1288	Surgical masks
1288	Gowns
1288	Thermometers
1289	N95s
1289	Powered
1289	air-purifying respirator (PAPR)
1290	N95s
1290	Surgical masks
1290	Face shields
1290	Safety goggles
1290	Gloves
1290	Gowns
1290	Hand sanitizer
1290	Disinfecting wipes
1290	Thermometers
1290	Thermometer covers
1291	N95s
1291	Surgical masks
1292	Face shields
1292	Gloves
1292	Gowns
1292	Mask with face shield
1293	N95s
1293	Surgical masks
1293	Face shields
1293	Disposable booties
1293	Safety goggles
1293	Gloves
1293	Gowns
1293	Hand sanitizer
1293	Disinfecting wipes
1293	Thermometers
1294	N95s
1294	Face shields
1294	Safety goggles
1294	Surgical masks
1294	Gowns
1295	N95s
1295	Surgical masks
1295	Face shields
1295	Gloves
1295	Gowns
1295	Hand sanitizer
1295	Disinfecting wipes
1296	N95s
1296	We need SIZE SMALL N95s
1297	N95s
1297	Surgical masks
1297	Face shields
1297	Disposable booties
1297	Safety goggles
1297	Gloves
1297	Gowns
1297	Hand sanitizer
1297	Disinfecting wipes
1298	N95s
1298	Surgical masks
1298	Face shields
1298	Safety goggles
1298	Gloves
1298	Gowns
1298	Hand sanitizer
1298	Disinfecting wipes
1299	N95s
1299	Surgical masks
1299	Face shields
1299	Safety goggles
1299	Gloves
1299	Gowns
1299	Hand sanitizer
1299	Disinfecting wipes
1300	N95s
1300	Surgical masks
1300	Hand sanitizer
1300	Disinfecting wipes
1301	Surgical masks
1301	Face shields
1301	Safety goggles
1301	Gowns
1302	N95s
1302	Surgical masks
1302	Face shields
1302	Disposable booties
1302	Safety goggles
1302	Gloves
1302	Gowns
1302	Hand sanitizer
1302	Disinfecting wipes
1302	Thermometers
1303	N95s
1303	Surgical masks
1303	Face shields
1303	Safety goggles
1303	Gloves
1303	Gowns
1303	Hand sanitizer
1303	Disinfecting wipes
1304	N95s
1304	Surgical masks
1304	Face shields
1304	Disposable booties
1304	Safety goggles
1304	Gloves
1304	Gowns
1304	Hand sanitizer
1304	Disinfecting wipes
1305	N95s
1305	Surgical masks
1305	Face shields
1305	Disposable booties
1305	Safety goggles
1305	Gloves
1305	Gowns
1305	Hand sanitizer
1305	Disinfecting wipes
1305	Thermometers
1306	N95s
1306	Disposable booties
1306	Gloves
1306	Hand sanitizer
1307	N95s
1307	Surgical masks
1307	Face shields
1307	Safety goggles
1307	Gloves
1307	Gowns
1308	N95s
1308	Face shields
1308	Gloves
1309	N95s
1309	Surgical masks
1309	Face shields
1309	Disposable booties
1309	Safety goggles
1309	Gloves
1310	N95s
1310	Surgical masks
1310	Face shields
1310	Disposable booties
1310	Safety goggles
1310	Gloves
1310	Other respirators (P100's
1310	PAPR's
1310	and PAPR supplies / parts)
1310	disinfecting wipes
1310	hand sanitizer
1311	N95s
1311	Surgical masks
1311	Face shields
1311	Disposable booties
1311	Safety goggles
1311	Gloves
1311	Gowns
1311	Hand sanitizer
1311	Disinfecting wipes
1312	N95s
1312	Surgical masks
1312	Face shields
1312	Disposable booties
1312	Safety goggles
1312	Gloves
1312	Gowns
1312	Hand sanitizer
1312	Disinfecting wipes
1313	N95s
1313	Surgical masks
1313	Face shields
1313	Gloves
1313	Gowns
1314	N95s
1314	Gloves
1314	Hand sanitizer
1314	Disinfecting wipes
1314	Thermometers
1315	N95s
1315	Gloves
1315	Hand sanitizer
1315	Disinfecting wipes
1315	Thermometers
1316	N95s
1316	Surgical masks
1316	Face shields
1316	Gowns
1316	Hand sanitizer
1316	Disinfecting wipes
1317	N95s
1317	Surgical masks
1317	Face shields
1317	Safety goggles
1317	Hand sanitizer
1317	disinfectant wipes
1318	N95s
1319	N95s
1319	Surgical masks
1319	Face shields
1319	Safety goggles
1319	Gloves
1319	infrared thermometers
1319	sanitizer
1320	N95s
1320	Surgical masks
1320	Face shields
1320	Disposable booties
1320	Safety goggles
1320	Gloves
1320	Gowns
1321	N95s
1321	Surgical masks
1321	Face shields
1321	Safety goggles
1321	Gloves
1321	Gowns
1322	N95s
1322	Surgical masks
1322	Gloves
1322	Gowns
1323	N95s
1324	N95s
1324	Surgical masks
1324	Face shields
1324	Disposable booties
1324	Safety goggles
1324	Gloves
1324	Gowns
1324	Hand sanitizer
1324	Disinfecting wipes
1324	Thermometers
1325	Surgical masks
1325	Face shields
1326	N95s
1326	Face shields
1326	Safety goggles
1326	Gowns
1326	Hand sanitizer
1327	N95s
1327	Surgical masks
1327	Face shields
1327	Disposable booties
1327	Safety goggles
1327	Gloves
1328	N95s
1328	Surgical masks
1328	Face shields
1328	Gowns
1328	Hand sanitizer
1328	Disinfecting wipes
1329	N95s
1329	Surgical masks
1329	Safety goggles
1329	Gloves
1329	Gowns
1329	Hand sanitizer
1329	Disinfecting wipes
1329	Thermometers
1330	N95s
1330	Safety goggles
1330	Gowns
1330	GOWNS ARE TOP PRIORITY
1331	N95s
1331	Gowns
1332	N95s
1332	Hand sanitizer
1332	Disinfecting wipes
1332	Thermometers
1333	N95s
1333	Surgical masks
1333	Face shields
1333	Gowns
1333	Hand sanitizer
1333	Disinfecting wipes
1334	N95s
1334	Face shields
1334	Gowns
1335	N95s
1335	Surgical masks
1335	Face shields
1335	Gowns
1335	Hand sanitizer
1335	Disinfecting wipes
1336	N95s
1336	Surgical masks
1336	Face shields
1336	Disposable booties
1336	Safety goggles
1336	Gloves
1336	Gowns
1336	Hand sanitizer
1336	Disinfecting wipes
1336	Thermometers
1337	N95s
1337	Surgical masks
1337	Face shields
1337	Disposable booties
1337	Safety goggles
1337	Disinfecting wipes
1338	N95s
1338	Surgical masks
1339	N95s
1339	Surgical masks
1339	Face shields
1339	Gowns
1339	Hand sanitizer
1339	Disinfecting wipes
1340	N95s
1340	Surgical masks
1340	Face shields
1340	Disposable booties
1340	Safety goggles
1340	Gloves
1340	Gowns
1340	Hand sanitizer
1340	Disinfecting wipes
1340	Thermometers
1341	N95s
1341	Surgical masks
1341	Face shields
1341	Safety goggles
1341	Gowns
1341	Hand sanitizer
1341	Disinfecting wipes
1342	N95s
1342	Surgical masks
1342	Face shields
1342	Disposable booties
1342	Safety goggles
1342	Gowns
1343	N95s
1343	Surgical masks
1343	Face shields
1343	Gloves
1343	Hand sanitizer
1343	Disinfecting wipes
1343	Thermometers
1344	N95s
1344	Surgical masks
1344	Face shields
1344	Safety goggles
1344	Gloves
1344	Gowns
1344	Hand sanitizer
1345	N95s
1345	Face shields
1345	Safety goggles
1345	Gloves
1345	Gowns
1345	Hand sanitizer
1345	Disinfecting wipes
1345	Thermometers
1346	N95s
1346	Surgical masks
1346	Face shields
1346	Disposable booties
1346	Safety goggles
1346	Gloves
1346	Gowns
1346	Disinfecting wipes
1347	N95s
1347	Surgical masks
1347	Face shields
1347	Gowns
1347	Hand sanitizer
1347	Disinfecting wipes
1348	N95s
1349	N95s
1349	Surgical masks
1349	Face shields
1349	Safety goggles
1349	Gowns
1349	Hand sanitizer
1349	Disinfecting wipes
1350	N95s
1350	Surgical masks
1350	Face shields
1350	Disposable booties
1350	Safety goggles
1350	Gloves
1350	Gowns
1350	Hand sanitizer
1350	Disinfecting wipes
1350	Thermometers
1351	N95s
1351	Surgical masks
1351	Face shields
1351	Disposable booties
1351	Safety goggles
1351	Gloves
1351	Gowns
1351	Hand sanitizer
1351	Disinfecting wipes
1351	Thermometers
1352	N95s
1353	N95s
1353	Surgical masks
1353	Face shields
1353	Safety goggles
1353	Gowns
1354	N95s
1355	N95s
1355	Surgical Masks
1355	Disposable Booties
1355	Safety Goggles
1355	Gloves
1356	N95s
1356	Surgical masks
1356	Face shields
1356	Disposable booties
1356	Safety goggles
1356	Gloves
1356	Gowns
1356	Hand sanitizer
1356	Disinfecting wipes
1356	Thermometers
1357	N95s
1357	Surgical masks
1357	Face shields
1357	Safety goggles
1357	Gloves
1357	PAPPR
1357	CAPRS
1357	gowns
1357	swabs
1357	
1358	N95s
1358	Surgical masks
1358	Face shields
1358	Disposable booties
1358	Safety goggles
1358	Gloves
1358	Gowns
1358	Hand sanitizer
1358	Disinfecting wipes
1358	Thermometers
1359	Surgical masks
1360	N95s
1361	N95s
1361	Surgical masks
1361	Face shields
1361	Disposable booties
1361	Safety goggles
1361	Gloves
1361	Hand sanitizer
1362	N95s
1362	Surgical masks
1362	Gloves
1363	N95s
1363	Surgical masks
1363	Safety goggles
1363	Gloves
1363	Gowns
1363	Swabs to test covid-19
1364	Surgical masks
1364	Gowns
1365	N95s
1365	Surgical masks
1365	Face shields
1365	Disposable booties
1365	Safety goggles
1365	Gloves
1365	Gowns
1365	Hand sanitizer
1365	Disinfecting wipes
1365	Thermometers
1365	Ventilators
1366	N95s
1366	Surgical masks
1366	Face shields
1366	Safety goggles
1366	Gowns
1366	Hand sanitizer
1366	Thermometers
1367	N95s
1368	N95s
1368	Surgical masks
1368	Face shields
1368	Safety goggles
1369	N95s
1369	Surgical masks
1369	Face shields
1369	Safety goggles
1369	Gloves
1369	disposable rain ponchos
1370	N95s
1370	Surgical masks
1370	Face shields
1370	Safety goggles
1370	Gloves
1370	Gowns
1370	Hand sanitizer
1370	Disinfecting wipes
1370	Thermometers
1371	N95s
1371	Surgical masks
1371	Face shields
1371	NEED N95's Yesterday!!!! Please get them here ASAP
1372	N95s
1372	Surgical masks
1372	Face shields
1372	Disposable booties
1372	Safety goggles
1372	Gloves
1372	Gowns
1372	Hand sanitizer
1372	Disinfecting wipes
1372	Thermometers
1373	N95s
1373	Surgical masks
1373	Face shields
1373	Safety goggles
1373	Gloves
1373	Gowns
1374	N95s
1374	Surgical masks
1374	Face shields
1374	Disinfecting wipes
1375	N95s
1375	Surgical masks
1375	Safety goggles
1375	Gloves
1375	Hand sanitizer
1375	Disinfecting wipes
1376	N95s
1377	N95s
1377	Surgical masks
1377	Face shields
1377	Gowns
1378	N95s
1378	Surgical masks
1378	Face shields
1378	Safety goggles
1378	Gloves
1378	Gowns
1379	N95s
1379	Surgical masks
1379	Face shields
1379	Disposable booties
1379	Safety goggles
1379	Gloves
1379	Gowns
1379	Hand sanitizer
1379	Disinfecting wipes
1380	N95s
1380	Surgical masks
1380	Face shields
1380	Disposable booties
1380	Safety goggles
1380	Gloves
1380	Gowns
1380	Hand sanitizer
1380	Disinfecting wipes
1380	Thermometers
1381	N95s
1382	N95s
1383	N95s
1383	Face shields
1383	Gowns
1384	N95s
1384	Face shields
1384	Gowns
1385	N95s
1385	Surgical masks
1385	Face shields
1386	N95s
1386	Surgical masks
1386	Face shields
1386	Safety goggles
1386	Gloves
1386	Gowns
1386	Hand sanitizer
1387	Surgical masks
1388	N95s
1388	Surgical masks
1388	Face shields
1388	Disposable booties
1388	Safety goggles
1388	Gloves
1388	Gowns
1389	N95s
1389	Surgical masks
1389	Face shields
1389	Safety goggles
1389	Gloves
1389	Gowns
1389	Hand sanitizer
1389	Disinfecting wipes
1390	N95s
1390	Surgical masks
1390	Gloves
1390	Hand sanitizer
1390	Disinfecting wipes
1390	Thermometers
1391	N95s
1391	Face shields
1391	Gowns
1392	N95s
1392	Surgical masks
1392	Gloves
1393	N95s
1393	Surgical masks
1393	Face shields
1393	Safety goggles
1393	Gloves
1393	Gowns
1394	N95s
1394	Gowns
1395	N95s
1395	Surgical masks
1395	Face shields
1395	Disposable booties
1395	Gloves
1395	Gowns
1395	Hand sanitizer
1395	Disinfecting wipes
1395	Thermometers
1396	N95s
1396	Surgical masks
1396	Face shields
1396	Disposable booties
1396	Safety goggles
1396	Gloves
1396	Gowns
1396	Hand sanitizer
1396	Disinfecting wipes
1396	Thermometers
1397	N95s
1397	Surgical masks
1397	Safety goggles
1397	Gloves
1397	hand sanitizer
1397	nasalpharyngeal swabs
1398	N95s
1398	Surgical masks
1398	Face shields
1398	Safety goggles
1398	Gowns
1398	N99 Masks. Home-made masks
1399	N95s
1399	Gowns
1400	N95s
1400	Surgical masks
1400	Face shields
1400	Safety goggles
1400	Gloves
1400	Gowns
1400	Hand sanitizer
1401	N95s
1401	Surgical masks
1401	Face shields
1401	Disposable booties
1401	Hand sanitizer
1401	Disinfecting wipes
1401	Thermometers
1402	Unsure
1403	N95s
1404	N95s
1404	Surgical masks
1404	Face shields
1404	Disposable booties
1404	Safety goggles
1404	Gloves
1404	Gowns
1404	Hand sanitizer
1404	Disinfecting wipes
1404	PAPR masks
1405	N95s
1405	Gowns
1406	N95s
1406	Surgical masks
1406	Face shields
1406	Gloves
1406	Gowns
1406	Hand sanitizer
1406	Thermometers
1407	N95s
1407	Surgical masks
1407	Face shields
1408	N95s
1408	Face shields
1408	Gowns
1409	N95s
1409	Surgical masks
1410	N95s
1410	Surgical masks
1410	Face shields
1410	Safety goggles
1410	Gloves
1410	Hand sanitizer
1410	Disinfecting wipes
1411	N95s
1411	Surgical masks
1411	Face shields
1411	Gowns
1412	N95s
1412	Face shields
1412	Gowns
1413	Surgical masks
1414	N95s
1414	Surgical masks
1414	Face shields
1414	Safety goggles
1414	Gloves
1414	Gowns
1414	Hand sanitizer
1414	Disinfecting wipes
1415	N95s
1415	Surgical masks
1415	Face shields
1415	Gloves
1415	Gowns
1415	Hand sanitizer
1415	Disinfecting wipes
1416	N95s
1416	Surgical masks
1416	Face shields
1416	Disposable booties
1416	Safety goggles
1416	Gloves
1416	Hand sanitizer
1417	N95s
1417	Surgical masks
1417	Face shields
1417	Safety goggles
1417	M4 viral media
1417	PAPRs
1417	hand sanitizer
1417	gowns
1417	testing swabs
1418	N95s
1418	Face shields
1418	Safety goggles
1418	Gowns
1419	N95s
1419	Surgical masks
1419	Face shields
1419	Safety goggles
1419	Gowns
1419	Hand sanitizer
1420	N95s
1421	N95s
1421	Surgical masks
1421	Face shields
1421	Disposable booties
1421	Safety goggles
1421	Gowns
1422	N95s
1422	Safety goggles
1422	Gloves
1422	Gowns
1422	Hand sanitizer
1423	N95s
1423	Surgical masks
1423	Face shields
1423	Disposable booties
1423	Safety goggles
1423	Gloves
1423	Gowns
1423	Hand sanitizer
1423	Disinfecting wipes
1424	N95s
1424	Surgical masks
1424	Disposable booties
1424	Safety goggles
1424	Gowns
1424	Disinfecting wipes
1425	N95s
1425	Surgical masks
1425	Face shields
1425	Gowns
1426	N95s
1426	Surgical masks
1426	Gloves
1426	Hand sanitizer
1426	Disinfecting wipes
1426	Thermometers
1427	N95s
1427	Surgical masks
1427	Face shields
1427	Safety goggles
1427	Gloves
1427	Gowns
1427	Hand sanitizer
1427	Disinfecting wipes
1428	N95s
1428	Surgical masks
1428	Face shields
1428	Disposable booties
1428	Safety goggles
1428	Hand sanitizer
1428	Disinfecting wipes
1428	Thermometers
1429	N95s
1429	Surgical masks
1429	Face shields
1429	Disposable booties
1429	Safety goggles
1429	Gowns
1429	Disinfecting wipes
1430	N95s
1430	Surgical masks
1432	N95s
1432	Surgical masks
1432	Face shields
1432	Gloves
1432	Gowns
1432	Hand sanitizer
1433	N95s
1433	Safety goggles
1433	Thermometers
1434	N95s
1434	Face shields
1434	Safety goggles
1434	Gloves
1434	Gowns
1434	Hand sanitizer
1434	We have NO GOWNS or MASKS N95
1435	N95s
1436	N95s
1436	Face shields
1437	N95s
1437	Face shields
1437	Gowns
1438	N95s
1438	Surgical masks
1438	Face shields
1438	Disposable booties
1438	Gloves
1438	Gowns
1439	N95s
1439	Surgical Masks
1439	Face shields
1440	N95s
1440	Surgical masks
1440	Gowns
1441	N95s
1441	Gloves
1441	Gowns
1441	Chemical impervious gloves
1442	N95s
1442	Gloves
1443	N95s
1443	Surgical masks
1443	Safety goggles
1443	Hand sanitizer
1444	N95s
1444	Surgical masks
1444	Face shields
1444	Gloves
1444	gowns
1445	N95s
1446	Surgical masks
1446	Gloves
1446	Gowns
1446	Hand sanitizer
1446	rubbing alcohol
1447	Bouffant style surgical caps
1448	N95s
1449	N95s
1449	Surgical masks
1449	Face shields
1449	Disposable booties
1449	Safety goggles
1449	Gloves
1449	Gowns
1449	Hand sanitizer
1449	Disinfecting wipes
1449	Thermometers
1450	N95s
1450	Surgical masks
1450	Hand sanitizer
1451	N95s
1451	Surgical masks
1451	Safety goggles
1451	Gloves
1451	Gowns
1452	N95s
1452	Gowns
1453	N95s
1454	Long gloves (nitrile or other)
1455	N95s
1455	Surgical masks
1456	N95s
1456	Surgical masks
1456	Face shields
1456	Disposable booties
1456	Safety goggles
1456	Gloves
1456	Gowns
1456	Hand sanitizer
1456	Disinfecting wipes
1456	Thermometers
1457	Face shields
1457	Safety goggles
1457	Gowns
1457	Disinfecting wipes
1458	Yes
1459	N95s
1459	Surgical masks
1459	Face shields
1459	Disposable booties
1459	Safety goggles
1459	Gloves
1459	Gowns
1459	Hand sanitizer
1459	Disinfecting wipes
1459	Thermometers
1460	Face shields
1461	N95s
1461	Surgical masks
1461	Face shields
1462	N95s
1463	N95s
1463	Surgical masks
1463	Gowns
1464	
1465	N95s
1465	Gowns
1466	N95s
1466	Surgical masks
1466	Face shields
1466	Gowns
1467	N95s
1468	N95s
1468	Surgical masks
1468	Face shields
1468	Disposable booties
1468	Safety goggles
1469	N95s
1469	Surgical masks
1469	Gowns
1469	Hand sanitizer
1469	Disinfecting wipes
1469	Sani-Wipes
1469	Lysol Spray
1470	Face shields
1470	Gowns
1471	N95s
1471	Surgical masks
1471	Face shields
1471	Disposable booties
1471	Safety goggles
1471	Gloves
1471	Gowns
1472	Gowns
1472	Isolation or Surgical Gowns
1473	Hand sanitizer
1474	Surgical masks
1474	hand sanitizer
1475	N95s
1475	Face shields
1475	Gowns
1475	Health grade N95 Masks
1476	N95s
1476	PAPR
1477	N95s
1477	Surgical masks
1477	Face shields
1477	Safety goggles
1477	Gloves
1477	Gowns
1477	Handmade sewn masks
1478	N95s
1478	Surgical masks
1478	Face shields
1478	Gloves
1479	Surgical masks
1479	Gowns
1480	N95s
1481	N95s
1481	Surgical masks
1481	Face shields
1481	Safety goggles
1481	Gowns
1481	Disinfecting wipes
1481	bleach wipes
1481	hydrogen peroxide wipes
1482	N95s
1483	N95s
1483	Surgical masks
1483	Face shields
1483	Safety goggles
1483	Gowns
1483	Disinfecting wipes
1483	PAPR
1483	Clorox wipes
1483	transparency sheets
1484	N95s
1484	Surgical masks
1484	Face shields
1484	Disposable booties
1484	Safety goggles
1484	Gloves
1484	Gowns
1484	Hand sanitizer
1484	Disinfecting wipes
1484	Thermometers
1485	N95s
1485	Face shields
1485	Safety goggles
1485	gown
1486	N95s
1487	N95s
1487	Surgical masks
1487	Face shields
1487	Disposable booties
1487	Safety goggles
1487	Gloves
1487	Gowns
1487	Hand sanitizer
1487	Disinfecting wipes
1488	N95s
1489	N95s
1490	N95s
1491	N95s
1491	Surgical masks
1491	Face shields
1491	Safety goggles
1491	Gowns
1491	Hand sanitizer
1491	Disinfecting wipes
1492	N95s
1492	Surgical masks
1492	Face shields
1492	Disposable booties
1492	Safety goggles
1492	Gloves
1492	Gowns
1493	N95s
1493	Hand sanitizer
1493	Disinfecting wipes
1493	N95 masks x 4
1494	N95s
1494	Gowns
1495	N95s
1495	Face shields
1495	Gowns
1496	N95s
1496	Face shields
1496	Small N95 Mask
1497	N95s
1497	Surgical masks
1498	N95s
1498	Safety goggles
1498	Hand sanitizer
1499	N95s
1499	Surgical masks
1499	Face shields
1499	Disposable booties
1499	Safety goggles
1499	Gloves
1499	Gowns
1499	Hand sanitizer
1499	Disinfecting wipes
1499	Thermometers
1500	N95s
1500	Face shields
1500	Disposable booties
1500	Safety goggles
1500	Gowns
1500	shoe covers (need sizes medium-large)
1500	head covers
1501	N95s
1501	Gowns
1501	medical long sleeve gowns
1502	N95s
1502	PAPR
1503	N95s
1503	Surgical masks
1503	Face shields
1503	Disposable booties
1503	Safety goggles
1503	Gloves
1504	N95s
1504	Surgical masks
1504	Safety goggles
1504	Gowns
1505	N95s
1505	Surgical masks
1505	Gowns
1506	N95s
1506	Face shields
1506	Gowns
1507	N95s
1507	Surgical masks
1507	Face shields
1507	Disposable booties
1507	Safety goggles
1507	Gloves
1507	Gowns
1507	Hand sanitizer
1507	Disinfecting wipes
1507	Thermometers
1508	N95s
1508	Face shields
1508	Safety goggles
1509	N95s
1509	Face shields
1509	Safety goggles
1509	Gowns
1509	Hand sanitizer
1509	Disinfecting wipes
1510	N95s
1511	N95s
1511	Surgical masks
1511	Face shields
1511	Disposable booties
1511	Safety goggles
1511	Gowns
1512	N95s
1512	Surgical masks
1512	Face shields
1512	Disposable booties
1512	Safety goggles
1512	Gloves
1512	MAXAIR CAPR
1513	N95s
1513	Surgical masks
1513	Face shields
1513	Disposable booties
1513	Safety goggles
1513	Gloves
1513	Gowns
1513	Hand sanitizer
1513	Disinfecting wipes
1513	Thermometers
1514	N95s
1514	Surgical masks
1514	Face shields
1514	Safety goggles
1514	Gloves
1514	Gowns
1515	N95s
1515	Surgical masks
1515	Gowns
1516	N95s
1516	Surgical masks
1516	Gowns
1517	N95s
1517	Surgical masks
1517	Gloves
1517	Gowns
1517	(the PPE received from the state were covered in rat urine
1517	and chewed)
1518	N95s
1518	Surgical masks
1518	Safety goggles
1519	N95s
1519	Surgical masks
1519	Gowns
1520	N95s
1521	N95s
1522	N95s
1522	Surgical masks
1522	Face shields
1522	Disposable booties
1522	Safety goggles
1522	Gloves
1522	Gowns
1522	Hand sanitizer
1522	Disinfecting wipes
1522	Thermometers
1523	N95s
1523	Surgical masks
1523	Gowns
1524	N95s
1525	N95s
1525	Face shields
1525	Gowns
1526	N95s
1526	Surgical masks
1526	Face shields
1526	Gowns
1527	N95s
1527	Surgical masks
1527	Safety goggles
1527	Gloves
1527	Gowns
1527	Hand sanitizer
1527	Eye protection
1528	N95s
1528	Surgical masks
1529	Surgical masks
1529	Face shields
1529	Safety goggles
1529	Gloves
1529	Gowns
1529	Hand sanitizer
1529	Disinfecting wipes
1529	Thermometers
1530	Surgical masks
1530	Level 2 face masks
1531	N95s
1531	Safety goggles
1531	Gowns
1531	Protective Eye Wear
1532	N95s
1532	Surgical masks
1532	Face shields
1532	Disposable booties
1532	Safety goggles
1532	Gloves
1533	N95s
1533	Surgical masks
1533	Gloves
1534	N95s
1534	Surgical masks
1534	Gowns
1535	N95s
1535	Surgical masks
1536	N95s
1536	Surgical masks
1536	Safety goggles
1536	Gowns
1536	eye protection
1537	N95s
1537	Surgical masks
1538	N95s
1538	Surgical masks
1538	Gloves
1539	N95s
1539	Surgical masks
1539	Face shields
1539	Disposable booties
1539	Safety goggles
1539	Gloves
1539	Gowns
1540	N95s
1540	Surgical masks
1540	Face shields
1540	Gloves
1540	Gowns
1540	Hand sanitizer
1541	N95s
1541	Surgical masks
1541	Face shields
1541	Safety goggles
1541	Gloves
1541	Gowns
1541	EYE PROTECTION
1541	WHATEVER ELSE IS AVAILABLE
1542	N95s
1542	Face shields
1542	Safety goggles
1542	Gowns
1542	protective plastic scrubs
1543	N95s
1544	N95s
1544	Gowns
1545	N95s
1545	Surgical masks
1545	Safety goggles
1545	Gowns
1545	Hand sanitizer
1546	N95s
1546	Surgical masks
1546	Face shields
1546	Disposable booties
1546	Safety goggles
1547	N95s
1547	Gowns
1548	N95s
1548	Surgical masks
1548	Gowns
1548	Hand sanitizer
1549	N95s
1549	Surgical masks
1549	Face shields
1549	Gloves
1549	Gowns
1549	Hand sanitizer
1550	N95s
1550	Surgical masks
1550	Face shields
1550	Safety goggles
1550	Gloves
1550	Gowns
1550	Hand sanitizer
1550	Disinfecting wipes
1550	nitrile gloves
1550	caps
1551	N95s
1551	Surgical masks
1551	Face shields
1551	Gowns
1552	N95s
1552	Surgical masks
1552	Face shields
1552	Disposable booties
1552	Safety goggles
1552	Gloves
1552	Gowns
1552	Hand sanitizer
1552	Disinfecting wipes
1552	Thermometers
1553	N95s
1553	Surgical masks
1553	Face shields
1553	Disposable booties
1553	Safety goggles
1553	Gloves
1553	Gowns
1554	N95s
1554	Surgical masks
1554	Gowns
1554	Masks & Gowns - Anything will do
1555	N95s
1555	Surgical masks
1555	Face shields
1555	Disposable booties
1555	Safety goggles
1555	Gloves
1555	Gowns
1555	Hand sanitizer
1555	Disinfecting wipes
1555	Thermometers
1556	N95s
1556	Surgical masks
1556	Face shields
1556	Disposable booties
1556	Safety goggles
1556	Gloves
1556	Gowns
1556	Hand sanitizer
1556	Disinfecting wipes
1556	Thermometers
1556	bleach wipes
1557	N95s
1557	PAPR
1558	N95s
1558	Surgical masks
1558	Face shields
1558	Gowns
1558	Hand sanitizer
1558	sani cloths
1558	barrier towels
1559	N95s
1559	Surgical masks
1560	N95s
1560	Surgical masks
1561	N95s
1561	Surgical masks
1562	N95s
1562	Surgical masks
1563	N95s
1563	Surgical masks
1563	Gloves
1563	Gowns
1564	N95s
1564	Surgical masks
1564	Gloves
1564	Gowns
1565	N95s
1565	Surgical masks
1565	Face shields
1566	N95s
1566	Surgical masks
1566	Face shields
1566	Disposable booties
1566	Safety goggles
1566	Gloves
1566	Gowns
1566	Hand sanitizer
1566	Disinfecting wipes
1566	Thermometers
1567	N95s
1567	Surgical masks
1567	Face shields
1567	Gloves
1567	gloves (SM/MD/LG)
1568	N95s
1568	Surgical masks
1568	Face shields
1568	Disposable booties
1568	Safety goggles
1568	Gloves
1568	Gown
1569	N95s
1569	Surgical masks
1569	Face shields
1569	Hand sanitizer
1570	N95s
1570	Surgical masks
1570	Face shields
1570	Disposable booties
1570	Safety goggles
1570	Hand sanitizer
1570	Disinfecting wipes
1571	Gowns
1572	N95s
1573	N95s
1573	Surgical masks
1573	Face shields
1573	Level 1 masks
1574	N95s
1574	Surgical masks
1574	Face shields
1574	Safety goggles
1574	Gowns
1575	N95s
1575	Face shields
1575	Gloves
1575	Gowns
1575	yellow gowns
1576	N95s
1577	N95s
1577	Surgical masks
1577	Face shields
1577	Disposable booties
1577	Safety goggles
1577	Gloves
1577	Gowns
1577	Hand sanitizer
1577	Disinfecting wipes
1577	We are actively doing COVID testing and we are down to zero PPE
1578	N95s
1579	N95s
1579	Surgical masks
1579	Gloves
1579	Gowns
1580	N95s
1580	Surgical masks
1580	Face shields
1580	Gowns
1581	N95s
1581	Surgical masks
1581	Face shields
1581	Gowns
1581	Hand sanitizer
1581	Disinfecting wipes
1581	Cleaning wipes hospital grade
1581	Citrace
1581	Lysol
1581	Alcohol
1582	N95s
1582	Surgical masks
1582	Face shields
1582	Safety goggles
1582	Gowns
1582	Hand sanitizer
1582	Disinfecting wipes
1583	N95s
1583	Surgical masks
1583	Safety goggles
1583	Gowns
1583	Hand sanitizer
1583	thermometer caps for scanning temps
1584	N95s
1584	Surgical masks
1584	Face shields
1584	Gowns
1584	Hand sanitizer
1585	N95s
1585	Surgical masks
1585	Face shields
1585	Safety goggles
1585	Gloves
1586	N95s
1586	Face shields
1586	Gowns
1587	N95s
1587	Face shields
1587	Gowns
1587	CAPR face shields
1588	N95s
1588	Surgical masks
1588	Gloves
1588	Gowns
1588	size small nitrile gloves
1589	N95s
1589	Surgical masks
1590	N95s
1590	Surgical masks
1591	N95s
1591	Surgical masks
1591	Gowns
1592	N95s
1592	Surgical masks
1592	Face shields
1592	Disposable booties
1592	Safety goggles
1592	Gloves
1592	Gowns
1592	Hand sanitizer
1592	Disinfecting wipes
1593	N95s
1593	Surgical masks
1593	Gowns
1594	N95s
1594	Surgical Masks
1594	Gloves
1594	Face Shields
1595	N95s
1595	Surgical masks
1595	Face shields
1595	Gowns
1596	N95s
1596	Face shields
1596	Safety goggles
1596	Eye Protection (reusable or single use eye shields)
1597	N95s
1597	Surgical masks
1597	Gowns
1598	N95s
1598	N95 fit and face masks.
1599	N95s
1599	Surgical masks
1599	Hand sanitizer
1600	Gowns
1601	N95s
1601	Surgical masks
1601	Gowns
1601	eye guards
1602	N95s
1602	Surgical masks
1602	Safety goggles
1602	Gowns
1602	Hand sanitizer
1603	N95s
1603	Surgical masks
1603	Gowns
1603	sanitize
1604	N95s
1604	Surgical masks
1604	Gloves
1604	Hand sanitizer
1604	Disinfecting wipes
1605	N95s
1605	Hand sanitizer
1605	Disinfecting wipes
1605	Hands Soap
1605	Paper Towels
1605	Negative Isolation room
1605	PPE Uniforms
1606	N95s
1606	Surgical masks
1606	Face shields
1606	Gowns
1607	N95s
1607	Surgical masks
1607	Face shields
1607	Disposable booties
1607	Safety goggles
1607	Gloves
1609	N95s
1609	Surgical masks
1609	Gowns
1610	N95s
1610	Surgical masks
1610	Face shields
1610	Safety goggles
1610	Gloves
1610	Gowns
1610	Hand sanitizer
1610	Disinfecting wipes
1610	Thermal scanners
1611	N95s
1611	Surgical masks
1611	Face shields
1611	Safety goggles
1611	Gloves
1611	Hand sanitizer
1612	N95s
1612	Surgical masks
1612	Face shields
1612	Gowns
1612	Standard Precaution Mask
1613	N95s
1613	Surgical masks
1613	Face shields
1613	Disposable Gowns
1614	N95s
1614	Surgical masks
1614	Face shields
1614	Disposable booties
1614	Safety goggles
1614	Gloves
1614	Gowns
1614	Hand sanitizer
1614	Disinfecting wipes
1615	N95s
1615	Surgical masks
1615	Thermometers
1616	N95s
1616	Face shields
1616	Safety goggles
1616	Gloves
1616	Gowns
1616	Hand sanitizer
1616	Disinfecting wipes
1616	Thermometers
1617	N95s
1617	Surgical masks
1617	Face shields
1617	Disposable booties
1617	Safety goggles
1617	Gloves
1617	Gowns
1617	Hand sanitizer
1617	Disinfecting wipes
1617	Thermometers
1618	N95s
1618	Surgical masks
1618	Face shields
1618	Safety goggles
1618	Hand sanitizer
1618	Disinfecting wipes
1618	Thermometers
1619	N95s
1619	Surgical masks
1619	Face shields
1619	Disposable booties
1619	Safety goggles
1619	Gloves
1619	Gowns
1619	Hand sanitizer
1619	Disinfecting wipes
1619	Thermometers
1620	N95s
1620	Face shields
1620	Disposable booties
1620	Safety goggles
1620	Gowns
1620	Hand sanitizer
1620	Disinfecting wipes
1620	Thermometers
1621	N95s
1621	Surgical masks
1621	Safety goggles
1621	Gowns
1621	Thermometers
1622	N95s
1622	Surgical masks
1622	Face shields
1622	Disposable booties
1622	Safety goggles
1622	Gloves
1622	Gowns
1622	Hand sanitizer
1622	Disinfecting wipes
1622	Thermometers
1623	N95s
1623	Disposable booties
1623	Gowns
1623	Hand sanitizer
1623	Disinfecting wipes
1624	N95s
1624	Face shields
1624	Gowns
1625	N95s
1625	Surgical masks
1625	Face shields
1625	Gloves
1625	Gowns
1625	Hand sanitizer
1625	Disinfecting wipes
1626	N95s
1626	Surgical masks
1626	Face shields
1626	Safety goggles
1626	Gloves
1626	Gowns
1626	Hand sanitizer
1626	Disinfecting wipes
1627	N95s
1627	Surgical masks
1627	Face shields
1627	Disposable booties
1627	Gowns
1628	N95s
1628	Surgical masks
1628	Face shields
1628	Disposable booties
1628	Safety goggles
1628	Gowns
1628	Disinfecting wipes
1629	N95s
1629	Surgical masks
1629	Face shields
1629	Disposable booties
1629	Safety goggles
1629	Gowns
1629	Disinfecting wipes
1630	N95s
1631	N95s
1631	Surgical masks
1631	Face shields
1631	Disposable booties
1631	Safety goggles
1631	Gloves
1631	Gowns
1631	Hand sanitizer
1631	Disinfecting wipes
1631	Thermometers
1632	Gloves
1632	Hand sanitizer
1632	Disinfecting wipes
1633	N95s
1633	Surgical masks
1633	Face shields
1633	Safety goggles
1633	Gloves
1633	Gowns
1633	Hand sanitizer
1633	Disinfecting wipes
1633	Thermometers
1634	N95s
1634	Surgical masks
1634	Gowns
1635	N95s
1635	Surgical masks
1635	Disposable booties
1635	Gloves
1635	Gowns
1635	Hand sanitizer
1635	Disinfecting wipes
1635	Thermometers
1636	N95s
1636	Surgical masks
1636	Face shields
1636	Disposable booties
1636	Safety goggles
1636	Gloves
1637	N95s
1637	Surgical masks
1637	Face shields
1637	Gowns
1637	Hand sanitizer
1637	Disinfecting wipes
1638	N95s
1638	Face shields
1638	Safety goggles
1638	Gowns
1638	Hand sanitizer
1638	Disinfecting wipes
1639	N95s
1639	Surgical masks
1639	Face shields
1639	Gloves
1639	Gowns
1639	Hand sanitizer
1639	Disinfecting wipes
1639	Thermometers
1640	N95s
1640	Surgical masks
1640	Face shields
1640	Hand sanitizer
1640	Disinfecting wipes
1640	Thermometers
1641	N95s
1641	Surgical masks
1641	Face shields
1641	Disposable booties
1641	Safety goggles
1641	Gloves
1641	Gowns
1641	Hand sanitizer
1641	Disinfecting wipes
1642	N95s
1642	Gloves
1642	Gowns
1642	Hand sanitizer
1642	Disinfecting wipes
1642	Thermometers
1643	N95s
1644	N95s
1644	Surgical masks
1644	Face shields
1644	Safety goggles
1644	Gloves
1644	Hand sanitizer
1644	Disinfecting wipes
1645	N95s
1645	Surgical masks
1645	Face shields
1645	Gloves
1645	Gowns
1645	Hand sanitizer
1645	Disinfecting wipes
1646	N95s
1646	hazmat suits
1646	Surgical masks
1646	Disposable booties
1646	Safety goggles
1647	Surgical masks
1647	Hand sanitizer
1647	Disinfecting wipes
1647	Thermometers
1648	N95s
1648	Surgical masks
1648	Face shields
1648	Gowns
1648	Gloves
1648	Disinfecting wipes
1648	Hand sanitizer
1648	thermometers
1649	N95s
1649	Surgical masks
1649	Face shields
1649	Disposable booties
1649	Safety goggles
1649	Gloves
1649	Gowns
1649	Hand sanitizer
1649	Isolation gowns
1649	bleach wipes
1650	N95s
1650	Surgical masks
1650	Hand sanitizer
1650	Disinfecting wipes
1650	gowns
1651	N95s
1651	Surgical masks
1651	Face shields
1651	Gowns
1651	Hand sanitizer
1652	Face shields
1652	Disposable booties
1652	Safety goggles
1652	Gloves
1652	Hand sanitizer
1652	Thermometers
1653	N95s
1653	Surgical masks
1653	Face shields
1653	Disposable booties
1653	Gowns
1654	N95s
1654	Surgical masks
1654	Face shields
1654	Gloves
1654	Gowns
1654	Hand sanitizer
1654	Disinfecting wipes
1655	N95s
1655	Surgical masks
1655	Face shields
1655	Disposable booties
1655	Safety goggles
1655	Gloves
1655	Gowns
1655	Hand sanitizer
1655	Disinfecting wipes
1655	Thermometers
1656	N95s
1656	Surgical masks
1656	Face shields
1657	N95s
1657	Surgical masks
1657	Safety goggles
1657	Gloves
1657	Gowns
1657	Hand sanitizer
1657	Disinfecting wipes
1658	N95s
1658	Surgical masks
1658	Face shields
1658	Disinfecting wipes
1659	N95s
1659	Gowns
1659	Hand sanitizer
1659	Disinfecting wipes
1659	Thermometers
1660	N95s
1660	Surgical masks
1660	Face shields
1660	Gloves
1660	Gowns
1661	Surgical masks
1661	Gloves
1661	Gowns
1662	N95s
1662	Surgical masks
1662	Gowns
1663	N95s
1663	Surgical masks
1663	Face shields
1663	Safety goggles
1663	Gowns
1663	Hand sanitizer
1663	Disinfecting wipes
1664	N95s
1664	Surgical masks
1664	Face shields
1664	Disposable booties
1664	Safety goggles
1664	Gloves
1664	Gowns
1664	Hand sanitizer
1664	Disinfecting wipes
1665	Face shields
1665	Disposable booties
1665	Safety goggles
1665	Gloves
1665	Gowns
1665	Hand sanitizer
1665	Disinfecting wipes
1665	Thermometers
1666	N95s
1666	Surgical masks
1666	Face shields
1666	Safety goggles
1666	Gowns
1666	Disinfecting wipes
1667	N95s
1667	Surgical masks
1667	Face shields
1667	Disposable booties
1667	Safety goggles
1667	Gloves
1667	Gowns
1667	Hand sanitizer
1667	Disinfecting wipes
1668	N95s
1668	Surgical masks
1668	Face shields
1668	Safety goggles
1668	Gloves
1668	Gowns
1669	N95s
1669	Surgical masks
1669	Gloves
1669	Hand sanitizer
1669	Disinfecting wipes
1669	Thermometers
1670	N95s
1670	Surgical masks
1670	Face shields
1670	Disposable booties
1670	Safety goggles
1670	Gowns
1670	Hand sanitizer
1671	N95s
1671	Safety goggles
1671	Gowns
1671	Hand sanitizer
1672	N95s
1672	Surgical masks
1672	Hand sanitizer
1672	Disinfecting wipes
1672	Thermometers
1673	N95s
1673	Surgical masks
1673	Face shields
1673	Safety goggles
1673	Gloves
1673	Gowns
1673	Hand sanitizer
1673	Disinfecting wipes
1673	very much in need of face shields!
1674	N95s
1674	Surgical masks
1674	Face shields
1674	Safety goggles
1674	Gloves
1674	Gowns
1674	Disinfecting wipes
1675	N95s
1675	Surgical masks
1675	Face shields
1675	Disposable booties
1675	Safety goggles
1675	Gloves
1675	Gowns
1675	Hand sanitizer
1675	Disinfecting wipes
1676	N95s
1676	Surgical masks
1676	Face shields
1676	Safety goggles
1676	Gloves
1676	Hand sanitizer
1677	N95s
1677	Surgical masks
1677	Face shields
1677	Safety goggles
1677	Gloves
1677	Gowns
1677	Hand sanitizer
1677	Disinfecting wipes
1678	N95s
1678	Surgical masks
1678	Face shields
1678	Disposable booties
1678	Hand sanitizer
1678	Disinfectant wipes
1679	N95s
1679	Surgical masks
1679	Face shields
1679	Disposable booties
1679	Safety goggles
1679	Gloves
1679	Gowns
1679	Hand sanitizer
1680	Surgical masks
1680	Face shields
1680	Gloves
1680	Gowns
1680	Hand sanitizer
1680	Disinfecting wipes
1680	Thermometers
1681	N95s
1681	Surgical Masks
1681	Face shields
1681	Gloves
1681	Gowns
1681	Hand sanitizer
1681	Disinfecting wipes
1682	N95s
1682	Surgical masks
1682	Face shields
1682	Gloves
1682	Gowns
1682	Hand sanitizer
1682	Disinfecting wipes
1683	N95s
1683	Surgical masks
1683	Face shields
1683	Disposable booties
1683	Safety goggles
1683	Gloves
1683	Gowns
1683	Hand sanitizer
1683	Disinfecting wipes
1683	Thermometers
1683	Tyvek Paint Suits
1684	N95s
1684	Surgical masks
1684	Face shields
1684	Disposable booties
1684	Safety goggles
1684	Gloves
1684	Gowns
1684	Hand sanitizer
1684	Disinfecting wipes
1685	N95s
1685	Surgical masks
1685	Face shields
1685	Gowns
1686	N95s
1686	Surgical masks
1686	Gloves
1686	Hand sanitizer
1686	Disinfecting wipes
1687	N95s
1687	Surgical masks
1687	Face shields
1687	Disposable booties
1687	Safety goggles
1687	Gloves
1687	Gowns
1687	Hand sanitizer
1687	Disinfecting wipes
1687	Thermometers
1688	N95s
1688	Face shields
1688	Safety goggles
1688	Disinfecting wipes
1689	N95s
1689	Surgical masks
1689	Face shields
1689	Disposable booties
1689	Safety goggles
1689	Gloves
1689	Gowns
1689	Hand sanitizer
1689	Disinfecting wipes
1689	Thermometers
1690	Surgical masks
1690	Gloves
1690	Hand sanitizer
1690	Disinfecting wipes
1690	Thermometers
1691	Gloves
1691	Hand sanitizer
1691	Disinfecting wipes
1691	Thermometers
1692	N95s
1692	Surgical masks
1692	Face shields
1692	Safety goggles
1692	Gowns
1692	Hand sanitizer
1692	Thermometers
1693	N95s
1693	Surgical masks
1693	Face shields
1693	Disposable booties
1693	Safety goggles
1693	Gloves
1693	Gowns
1693	Hand sanitizer
1694	N95s
1694	Surgical masks
1694	Face shields
1694	Safety goggles
1694	Gloves
1694	Gowns
1694	Hand sanitizer
1695	N95s
1695	Safety goggles
1695	Hand sanitizer
1695	Disinfecting wipes
1695	Thermometers
1696	N95s
1696	Surgical Masks
1696	Disposable Booties
1696	Safety Goggles
1696	Gloves
1696	Face Shields
1696	Isopropyl Alcohol
1697	N95s
1698	N95s
1698	Face shields
1699	N95s
1699	Surgical masks
1699	Hand sanitizer
1699	Disinfecting wipes
1700	N95s
1700	Surgical masks
1700	Face shields
1700	Safety goggles
1700	Gowns
1700	Hand sanitizer
1700	Disinfecting wipes
1700	Thermometers
1701	N95s
1701	Face shields
1701	Gloves
1701	Gowns
1701	Hand sanitizer
1701	Disinfecting wipes
1702	N95s
1702	Surgical masks
1702	Face shields
1702	Gloves
1702	Gowns
1702	Hand sanitizer
1703	N95s
1703	Safety goggles
1703	Hand sanitizer
1704	N95s
1704	Surgical masks
1705	N95s
1705	Face shields
1705	Safety goggles
1705	Gowns
1705	Hand sanitizer
1705	Disinfecting wipes
1705	Thermometers
1706	N95s
1706	Surgical masks
1706	Face shields
1706	Disposable booties
1706	Safety goggles
1706	Gloves
1706	Gowns
1706	Hand sanitizer
1706	Disinfecting wipes
1706	Thermometers
1707	N95s
1707	Surgical masks
1707	Face shields
1707	Safety goggles
1707	Gowns
1707	Hand sanitizer
1708	N95s
1708	Surgical masks
1708	Face shields
1708	Disposable booties
1708	Safety goggles
1708	Gloves
1708	Gowns
1708	Hand sanitizer
1708	Disinfecting wipes
1709	N95s
1709	Surgical masks
1709	Face shields
1709	Disposable booties
1709	Safety goggles
1709	Gloves
1709	Gowns
1709	Hand sanitizer
1709	Disinfecting wipes
1709	Thermometers
1709	toilet paper and paper towels
1710	N95s
1710	Surgical masks
1710	Face shields
1710	Disposable booties
1710	Safety goggles
1710	Gloves
1710	Gowns
1710	Hand sanitizer
1710	Disinfecting wipes
1711	Surgical masks
1711	Disposable booties
1711	Safety goggles
1711	Gowns
1712	N95s
1712	Surgical masks
1712	Face shields
1712	Disposable booties
1712	Safety goggles
1712	Gloves
1712	Gowns
1712	Hand sanitizer
1712	Disinfecting wipes
1712	Thermometers
1713	N95s
1713	Surgical masks
1713	Face shields
1713	Safety goggles
1713	Gloves
1713	Gowns
1713	Hand sanitizer
1713	Disinfecting wipes
1714	N95s
1714	Surgical masks
1714	Face shields
1714	Disposable booties
1714	Safety goggles
1714	Gloves
1714	Gowns
1714	Hand sanitizer
1714	Disinfecting wipes
1714	Thermometers
1715	N95s
1715	Surgical masks
1715	Face shields
1715	Disposable booties
1715	Gloves
1715	Gowns
1715	Hand sanitizer
1715	Disinfecting wipes
1716	N95s
1716	Face shields
1716	Gloves
1716	Gowns
1716	isolation gowns/hoods
1717	N95s
1717	Surgical masks
1717	Face shields
1717	Disposable booties
1717	Safety goggles
1717	Gloves
1717	Gowns
1717	Hand sanitizer
1717	Disinfecting wipes
1717	Thermometers
1717	Any medical-grade supplies
1718	N95s
1718	Surgical masks
1718	Face shields
1718	Disposable booties
1718	Safety goggles
1718	Gloves
1718	Gowns
1718	Hand sanitizer
1718	Disinfecting wipes
1718	Thermometers
1719	N95s
1719	Surgical masks
1719	Face shields
1719	Safety goggles
1719	Gowns
1720	N95s
1720	Surgical masks
1720	Face shields
1720	Gowns
1721	N95s
1721	Surgical masks
1721	Face shields
1721	Gloves
1721	Hand sanitizer
1722	N95s
1722	Surgical masks
1722	Face shields
1722	Hand sanitizer
1723	N95s
1723	Surgical masks
1723	Face shields
1724	N95s
1724	Surgical masks
1724	Face shields
1724	Safety goggles
1724	Gloves
1724	Gowns
1724	Hand sanitizer
1724	Disinfecting wipes
1724	Thermometers
1725	N95s
1725	Surgical masks
1725	Face shields
1725	Safety goggles
1725	Gowns
1725	Hand sanitizer
1725	Disinfecting wipes
1726	N95s
1726	Surgical masks
1726	Face shields
1726	Disposable booties
1726	Safety goggles
1726	Gloves
1726	Gowns
1726	Hand sanitizer
1726	Disinfecting wipes
1726	Thermometers
1727	N95s
1727	Surgical masks
1727	Hand sanitizer
1727	Disinfecting wipes
1728	N95s
1728	Surgical masks
1728	Face shields
1728	Gowns
1728	Hand sanitizer
1728	Disinfecting wipes
1729	N95s
1729	Surgical masks
1729	Face shields
1729	Disposable booties
1729	Safety goggles
1729	Gloves
1729	Gowns
1729	Hand sanitizer
1729	Disinfecting wipes
1730	N95s
1730	Surgical masks
1730	Face shields
1730	Gloves
1730	Gowns
1730	Hand sanitizer
1730	Disinfecting wipes
1731	N95s
1731	Surgical masks
1731	Face shields
1731	Safety goggles
1731	Gowns
1731	Thermometers
1732	N95s
1732	Surgical masks
1732	Face shields
1732	Disposable booties
1732	Safety goggles
1732	Gloves
1732	Gowns
1732	Hand sanitizer
1733	N95s
1733	Surgical masks
1733	Face shields
1733	Disposable booties
1733	Safety goggles
1733	Gloves
1733	Gowns
1733	Hand sanitizer
1733	Disinfecting wipes
1733	Thermometers
1734	N95s
1734	Face shields
1734	Disposable booties
1734	Safety goggles
1734	Gloves
1734	Gowns
1735	Surgical masks
1735	Face shields
1735	Safety goggles
1735	Gowns
1736	N95s
1736	Surgical masks
1736	Face shields
1736	Gloves
1736	Gowns
1736	Hand sanitizer
1736	Disinfecting wipes
1737	N95s
1737	Surgical masks
1737	Face shields
1737	Disposable booties
1737	Safety goggles
1737	Gloves
1737	Gowns
1737	Hand sanitizer
1737	Disinfecting wipes
1737	Thermometers
1738	N95s
1738	Surgical masks
1738	Face shields
1738	Safety goggles
1738	Gloves
1738	Gowns
1739	N95s
1739	Surgical masks
1739	Face shields
1739	Gloves
1739	Gowns
1740	N95s
1740	Surgical masks
1740	Face shields
1740	Disposable booties
1740	Safety goggles
1740	Gloves
1740	Gowns
1740	Hand sanitizer
1740	Disinfecting wipes
1741	N95s
1741	Surgical masks
1741	Face shields
1741	Disposable booties
1741	Safety goggles
1741	Gloves
1741	Gowns
1741	Hand sanitizer
1741	Disinfecting wipes
1741	Thermometers
1741	probe covers for digital oral thermometers
1742	N95s
1742	Surgical masks
1742	Face shields
1742	Safety goggles
1742	Gloves
1742	Gowns
1742	Hand sanitizer
1742	Disinfecting wipes
1742	Thermometers
1743	N95s
1743	Face shields
1743	Gowns
1744	N95s
1744	Surgical masks
1744	Gloves
1744	Gowns
1745	Surgical masks
1746	N95s
1746	Surgical masks
1746	Face shields
1746	Disposable booties
1746	Safety goggles
1746	Gloves
1746	Gowns
1746	Hand sanitizer
1746	Disinfecting wipes
1747	N95s
1747	Surgical masks
1747	Face shields
1747	Disposable booties
1747	Safety goggles
1747	Gloves
1747	Gowns
1747	Hand sanitizer
1747	Disinfecting wipes
1747	Thermometers
1748	Surgical masks
1748	Face shields
1748	Safety goggles
1748	Gowns
1749	N95s
1749	Surgical masks
1749	Face shields
1749	Safety goggles
1749	Gloves
1749	Hand sanitizer
1749	Disinfecting wipes
1750	N95s
1751	N95s
1751	Surgical masks
1751	Gowns
1752	Surgical masks
1752	Hand sanitizer
1753	N95s
1753	Surgical masks
1753	Face shields
1753	Gloves
1753	Gowns
1753	Hand sanitizer
1754	N95s
1754	Surgical masks
1754	Face shields
1754	Disposable booties
1754	Safety goggles
1754	Gloves
1754	Gowns
1754	Hand sanitizer
1754	Disinfecting wipes
1754	Thermometers
1756	N95s
1756	Surgical masks
1756	Face shields
1756	Disposable booties
1756	Safety goggles
1756	Gloves
1756	Gowns
1756	Hand sanitizer
1756	Disinfecting wipes
1757	N95s
1757	Safety goggles
1758	N95s
1758	Surgical masks
1758	Face shields
1758	Safety goggles
1758	Gloves
1758	Gowns
1758	Hand sanitizer
1758	Disinfecting wipes
1758	Thermometers
1759	N95s
1759	Surgical masks
1759	Face shields
1759	Disposable booties
1759	Gloves
1759	Gowns
1760	N95s
1760	Surgical masks
1760	Face shields
1760	Safety goggles
1760	Gowns
1761	N95s
1761	Surgical masks
1761	Gloves
1761	Hand sanitizer
1761	Disinfecting wipes
1762	N95s
1762	Surgical masks
1762	Safety goggles
1762	Gloves
1762	Gowns
1762	Hand sanitizer
1762	Disinfecting wipes
1763	N95s
1763	Surgical masks
1763	Face shields
1763	Safety goggles
1763	Gowns
1763	Hand sanitizer
1763	Disinfecting wipes
1763	Thermometers
1764	N95s
1764	Surgical masks
1764	Gowns
1765	N95s
1765	Gowns
1766	N95s
1766	Surgical masks
1766	Face shields
1766	Gowns
1766	Thermometers
1767	N95s
1767	Face shields
1767	Safety goggles
1767	Gowns
1767	Hand sanitizer
1768	N95s
1768	Surgical masks
1768	Face shields
1768	Disposable booties
1768	Safety goggles
1768	Gloves
1768	Gowns
1768	Hand sanitizer
1768	Disinfecting wipes
1768	Thermometers
1769	N95s
1769	Surgical masks
1769	Hand sanitizer
1770	N95s
1770	Surgical masks
1770	Disinfecting wipes
1771	N95s
1771	Surgical masks
1771	Face shields
1771	Safety goggles
1771	Gloves
1771	Gowns
1771	Hand sanitizer
1771	Disinfecting wipes
1771	Thermometers
1771	PAPR hoods (personal air purifiers) (with batteries
1771	motors
1771	filters)
1771	electronic devices for comfort/communication - Kindles
1771	tablets (ipads
1771	android
1771	etc) with their chargers to help patients in isolation
1772	N95s
1772	Face shields
1772	Safety goggles
1772	Gloves
1773	N95s
1773	Surgical masks
1773	Face shields
1773	Safety goggles
1773	Gloves
1773	Gowns
1774	N95s
1774	Surgical masks
1774	Face shields
1774	Disposable booties
1774	Safety goggles
1774	Gloves
1774	Gowns
1774	Hand sanitizer
1774	Disinfecting wipes
1774	Especially non-latex gloves. Disposable surgical caps.
1775	N95s
1775	Surgical masks
1775	Face shields
1775	Safety goggles
1775	Gowns
1775	Hand sanitizer
1775	Disinfecting wipes
1776	N95s
1776	Surgical masks
1776	Face shields
1776	Safety goggles
1776	Gloves
1776	Gowns
1776	Disinfecting wipes
1777	N95s
1777	Surgical masks
1777	Safety goggles
1777	Gloves
1777	Gowns
1777	Hand sanitizer
1777	Disinfecting wipes
1777	Thermometers
1778	N95s
1778	Surgical masks
1778	Face shields
1778	Safety goggles
1778	Gloves
1778	Gowns
1778	Hand sanitizer
1778	Disinfecting wipes
1779	N95s
1779	Surgical masks
1779	Disinfecting wipes
1780	Surgical masks
1780	Hand sanitizer
1780	Disinfecting wipes
1780	Thermometers
1781	N95s
1781	Surgical masks
1781	Face shields
1781	Safety goggles
1781	Gloves
1781	Hand sanitizer
1782	N95s
1782	Surgical masks
1782	Face shields
1782	Disposable booties
1782	Safety goggles
1782	Gloves
1782	Gowns
1782	Hand sanitizer
1782	Disinfecting wipes
1782	Thermometers
1783	N95s
1783	Face shields
1783	Gowns
1783	Hand sanitizer
1783	Disinfecting wipes
1784	N95s
1784	Surgical masks
1784	Gowns
1785	N95s
1785	Face shields
1785	Gowns
1785	Hand sanitizer
1785	Thermometers
1787	N95s
1787	Surgical masks
1787	Face shields
1787	Safety goggles
1787	Gowns
1787	Thermometers
1788	N95s
1788	Surgical masks
1788	Face shields
1788	Disposable booties
1788	Safety goggles
1788	Gowns
1788	Hand sanitizer
1788	Disinfecting wipes
1788	Thermometers
1789	N95s
1789	Surgical masks
1789	Face shields
1789	Gloves
1789	Gowns
1789	Hand sanitizer
1789	Disinfecting wipes
1790	N95s
1790	Face shields
1790	Gloves
1790	Hand sanitizer
1791	N95s
1791	Surgical masks
1791	Face shields
1791	Disposable booties
1791	Safety goggles
1791	Gloves
1791	Gowns
1791	Hand sanitizer
1791	Disinfecting wipes
1791	hair nets
1792	N95s
1792	Surgical masks
1792	Face shields
1792	Safety goggles
1792	Gloves
1792	Gowns
1792	Hand sanitizer
1792	Disinfecting wipes
1793	N95s
1793	Surgical masks
1793	Face shields
1793	Disposable booties
1793	Safety goggles
1793	Gloves
1793	Gowns
1793	Hand sanitizer
1793	Disinfecting wipes
1793	we are an urgent care with daily exposure to covid 19.  We have zero N95
1793	and very few surgical masks.  Gloves
1793	wipes and sanitizer are all on allocation from our supplier.  Anything you can donate is helpful.
1795	N95s
1795	Surgical masks
1795	Face shields
1795	Hand sanitizer
1795	Disinfecting wipes
1796	N95s
1796	Surgical masks
1796	Face shields
1796	Safety goggles
1796	Gloves
1796	Gowns
1796	Hand sanitizer
1796	Disinfecting wipes
1796	Thermometers
1797	N95s
1797	Surgical masks
1797	Face shields
1797	Gowns
1797	Hand sanitizer
1798	N95s
1798	Surgical masks
1798	Safety goggles
1798	Gloves
1798	Gowns
1798	Thermometers
1799	N95s
1799	Surgical masks
1799	Hand sanitizer
1799	Disinfecting wipes
1800	N95s
1800	Surgical masks
1800	Face shields
1801	N95s
1801	Surgical masks
1801	Face shields
1801	Disposable booties
1801	Safety goggles
1801	Gloves
1801	Gowns
1801	Hand sanitizer
1801	Disinfecting wipes
1801	Thermometers
1802	N95s
1802	Surgical masks
1802	Face shields
1802	Disposable booties
1802	Safety goggles
1802	Gloves
1802	Gowns
1802	Hand sanitizer
1802	Disinfecting wipes
1802	Thermometers
1803	N95s
1803	Surgical Masks
1803	Face Shields
1803	Gowns
1803	Safety Goggles
1803	Disinfectant Wipes
1803	Gloves
1803	Hand Sanitizer
1803	(N95s
1803	surgical/procedural masks
1803	face shield masks
1803	disposable gowns
1803	goggles/eye protection
1803	bleach wipes
1803	non-bleach wipes
1803	nitrile gloves
1803	hand sanitizer)
1804	N95s
1804	Gloves
1804	Hand sanitizer
1804	Disinfecting wipes
1805	N95s
1805	Surgical masks
1805	Face shields
1805	Gowns
1805	Hand sanitizer
1805	Disinfecting wipes
1806	N95s
1806	Surgical masks
1806	Face shields
1806	Gowns
1807	N95s
1808	Surgical masks
1808	Face shields
1808	Safety goggles
1808	Hand sanitizer
1808	Disinfecting wipes
1809	N95s
1809	Surgical masks
1809	Face shields
1809	Disposable booties
1809	Safety goggles
1809	Gloves
1809	Gowns
1809	Hand sanitizer
1809	Disinfecting wipes
1809	Thermometers
1810	N95s
1810	Surgical masks
1810	Face shields
1810	Safety goggles
1810	Gowns
1811	N95s
1811	Surgical masks
1811	Face shields
1811	Disposable booties
1811	Safety goggles
1811	Gloves
1811	Gowns
1811	Hand sanitizer
1811	Disinfecting wipes
1811	Thermometers
1812	N95s
1812	Surgical masks
1812	Face shields
1812	Gowns
1812	Hand sanitizer
1812	Disinfecting wipes
1813	N95s
1813	Surgical masks
1813	Face shields
1813	Gowns
1813	Hand sanitizer
1813	Disinfecting wipes
1814	N95s
1814	Surgical masks
1814	Face shields
1814	Disposable booties
1814	Safety goggles
1814	Gloves
1814	Gowns
1814	Hand sanitizer
1814	Disinfecting wipes
1814	Thermometers
1815	N95s
1815	Surgical masks
1815	Face shields
1815	Disposable booties
1815	Safety goggles
1815	Gowns
1815	Hand sanitizer
1815	Disinfecting wipes
1816	N95s
1816	Surgical masks
1816	Face shields
1816	Gowns
1816	Hand sanitizer
1816	Disinfecting wipes
1817	N95s
1817	Surgical masks
1817	Face shields
1817	Gowns
1817	Hand sanitizer
1817	Disinfecting wipes
1818	N95s
1818	Surgical masks
1818	Face shields
1818	Hand sanitizer
1819	N95s
1819	Surgical masks
1819	Face shields
1819	Gowns
1819	Hand sanitizer
1819	Disinfecting wipes
1820	N95s
1820	Surgical masks
1820	Face shields
1820	Disposable booties
1820	Safety goggles
1820	Gloves
1820	Gowns
1820	Hand sanitizer
1820	Disinfecting wipes
1820	Thermometers
1821	N95s
1821	Surgical masks
1821	Face shields
1821	Gowns
1821	Hand sanitizer
1821	Disinfecting wipes
1822	N95s
1822	Face shields
1822	Disposable booties
1822	Safety goggles
1822	Gloves
1822	Gowns
1822	Hand sanitizer
1822	Disinfecting wipes
1823	N95s
1823	Surgical masks
1823	Face shields
1823	Safety goggles
1823	Gloves
1823	Gowns
1823	Hand sanitizer
1823	Disinfecting wipes
1824	N95s
1824	Surgical masks
1824	Face shields
1824	Disposable booties
1824	Safety goggles
1824	Gloves
1824	Gowns
1824	Hand sanitizer
1824	Disinfecting wipes
1824	Thermometers
1825	N95s
1825	Surgical masks
1825	Face shields
1825	Gowns
1825	Hand sanitizer
1825	Disinfecting wipes
1826	N95s
1826	Surgical masks
1826	Face shields
1826	Disposable booties
1826	Safety goggles
1826	Gloves
1826	Gowns
1826	Hand sanitizer
1826	Disinfecting wipes
1826	Thermometers
1827	N95s
1827	Face shields
1827	Safety goggles
1827	Gloves
1827	Gowns
1827	Hand sanitizer
1827	Disinfecting wipes
1827	Thermometers
1828	N95s
1828	Surgical masks
1828	Face shields
1828	Disposable booties
1828	Safety goggles
1828	Gloves
1828	Gowns
1828	Hand sanitizer
1828	Disinfecting wipes
1828	Thermometers
1829	N95s
1829	Surgical masks
1829	Face shields
1829	Gloves
1830	N95s
1830	Surgical masks
1830	Face shields
1830	Safety goggles
1830	Disinfecting wipes
1830	Will take any PPE as long as new or unused
1830	and not expired. Please enquire.
1831	N95s
1831	Surgical masks
1831	Face shields
1831	Safety goggles
1831	Gowns
1831	Hand sanitizer
1832	N95s
1832	Surgical masks
1832	Face shields
1832	Disposable booties
1832	Safety goggles
1832	Gloves
1832	Gowns
1832	Hand sanitizer
1832	Disinfecting wipes
1832	Thermometers
1833	N95s
1833	Surgical masks
1833	Face shields
1833	Disposable booties
1833	Safety goggles
1833	Gloves
1833	Gowns
1833	Hand sanitizer
1833	Disinfecting wipes
1833	Thermometers
1834	N95s
1834	Surgical masks
1834	Face shields
1834	Disposable booties
1834	Safety goggles
1834	Gloves
1834	Gowns
1834	Hand sanitizer
1834	Disinfecting wipes
1834	Thermometers
1835	N95s
1835	Surgical masks
1835	Face shields
1835	Safety goggles
1835	Gloves
1835	Gowns
1835	Hand sanitizer
1835	Disinfecting wipes
1836	N95s
1836	Surgical masks
1836	Face shields
1836	Disposable booties
1836	Safety goggles
1836	Gloves
1836	Gowns
1836	Hand sanitizer
1836	Disinfecting wipes
1836	Thermometers
1837	N95s
1837	Surgical masks
1837	Face shields
1837	Safety goggles
1837	Gloves
1837	Hand sanitizer
1838	N95s
1838	Surgical masks
1838	Face shields
1838	Disposable booties
1838	Safety goggles
1838	Gloves
1838	Gowns
1838	Hand sanitizer
1838	Disinfecting wipes
1838	Thermometers
1839	N95s
1839	Surgical masks
1839	Face shields
1839	Safety goggles
1839	Gloves
1839	Gowns
1839	Hand sanitizer
1839	Disinfecting wipes
1840	N95s
1840	Surgical masks
1840	Face shields
1840	Safety goggles
1840	Gloves
1840	Gowns
1840	Thermometers
1841	N95s
1841	Surgical masks
1841	Face shields
1841	Disposable booties
1841	Safety goggles
1841	Gloves
1841	Gowns
1841	Hand sanitizer
1841	Disinfecting wipes
1841	Thermometers
1841	Pulse oximeters
1842	N95s
1842	Surgical masks
1842	Face shields
1842	Disposable booties
1842	Safety goggles
1842	Gloves
1842	Gowns
1842	Hand sanitizer
1842	Disinfecting wipes
1843	N95s
1843	Surgical masks
1843	Disposable booties
1843	Safety goggles
1843	Gloves
1843	Gowns
1843	Hand sanitizer
1843	Thermometers
1844	N95s
1844	Surgical masks
1844	Face shields
1844	Disposable booties
1844	Safety goggles
1844	Gloves
1844	Gowns
1844	Hand sanitizer
1844	Disinfecting wipes
1844	Thermometers
1844	alcohol
1844	germicides
1845	N95s
1845	Gloves
1845	Hand sanitizer
1845	Disinfecting wipes
1846	N95s
1846	Surgical masks
1847	N95s
1847	Surgical masks
1847	Face shields
1847	Disposable booties
1847	Safety goggles
1847	Gloves
1847	Gowns
1847	Hand sanitizer
1847	Disinfecting wipes
1847	Thermometers
1848	N95s
1848	Surgical masks
1848	Face shields
1848	Disposable booties
1848	Safety goggles
1848	Gowns
1848	Hand sanitizer
1848	Thermometers
1849	N95s
1849	Surgical masks
1849	Face shields
1849	Disposable booties
1849	Safety goggles
1849	Gloves
1849	Gowns
1849	Hand sanitizer
1849	Disinfecting wipes
1849	Thermometers
1850	N95s
1850	Surgical masks
1850	Face shields
1850	Disposable booties
1850	Safety goggles
1850	Gloves
1850	Gowns
1850	Hand sanitizer
1850	Disinfecting wipes
1850	Thermometers
1851	N95s
1851	Surgical masks
1851	Face shields
1851	Disposable booties
1851	Safety goggles
1851	Gloves
1851	Gowns
1851	Hand sanitizer
1851	Disinfecting wipes
1851	Thermometers
1852	N95s
1852	Surgical masks
1852	Face shields
1852	Disposable booties
1852	Safety goggles
1852	Gloves
1852	Gowns
1852	Hand sanitizer
1852	Disinfecting wipes
1852	Thermometers
1853	N95s
1853	Surgical masks
1853	Face shields
1853	Disposable booties
1853	Safety goggles
1853	Gloves
1853	Gowns
1854	N95s
1854	Surgical masks
1854	Face shields
1854	Safety goggles
1854	Gloves
1854	Gowns
1854	Hand sanitizer
1854	Disinfecting wipes
1854	Thermometers
1855	N95s
1855	Surgical masks
1855	Face shields
1855	Disposable booties
1855	Safety goggles
1855	Gloves
1855	Gowns
1855	Hand sanitizer
1855	Disinfecting wipes
1856	N95s
1856	Surgical masks
1856	Face shields
1856	Disposable booties
1856	Safety goggles
1856	Gloves
1856	Gowns
1856	Hand sanitizer
1856	Disinfecting wipes
1856	Thermometers
1857	N95s
1857	Surgical masks
1857	Face shields
1857	Disposable booties
1857	Safety goggles
1857	Gloves
1857	Gowns
1857	Hand sanitizer
1857	Disinfecting wipes
1857	Thermometers
1857	Respirators
1858	home-made masks
1859	N95s
1859	Surgical masks
1859	Face shields
1859	Safety goggles
1859	Gloves
1859	Gowns
1859	Hand sanitizer
1860	N95s
1860	Surgical masks
1860	Gowns
1861	N95s
1861	Surgical masks
1861	Face shields
1861	Disposable booties
1861	Safety goggles
1861	Gloves
1861	Gowns
1861	Hand sanitizer
1861	Disinfecting wipes
1861	Thermometers
1862	N95s
1862	Surgical masks
1862	Face shields
1862	Disposable booties
1862	Safety goggles
1862	Gloves
1862	Gowns
1862	Hand sanitizer
1862	Disinfecting wipes
1862	Thermometers
1863	N95s
1863	Surgical masks
1863	Face shields
1863	Disposable booties
1863	Safety goggles
1863	Gloves
1863	Gowns
1863	Hand sanitizer
1863	Disinfecting wipes
1863	Thermometers
1864	N95s
1864	Surgical masks
1864	Face shields
1864	Disposable booties
1864	Safety goggles
1864	Gloves
1864	Gowns
1864	Hand sanitizer
1864	Disinfecting wipes
1864	Thermometers
1864	NP SWABS
1865	N95s
1865	Surgical masks
1865	Gloves
1865	Gowns
1866	N95s
1866	Surgical masks
1866	Face shields
1866	Safety goggles
1866	Gloves
1866	Gowns
1866	Disinfecting wipes
1867	N95s
1867	Surgical masks
1867	Face shields
1867	Disposable booties
1867	Safety goggles
1867	Gloves
1867	Gowns
1867	Hand sanitizer
1867	Disinfecting wipes
1868	N95s
1868	Surgical masks
1868	Face shields
1868	Safety goggles
1868	Gloves
1868	Gowns
1868	Hand sanitizer
1868	Disinfecting wipes
1868	Thermometers
1869	N95s
1869	Surgical masks
1869	Face shields
1869	Disposable booties
1869	Gloves
1869	Gowns
1869	Hand sanitizer
1869	Disinfecting wipes
1870	N95s
1870	Surgical masks
1870	Face shields
1870	Disposable booties
1870	Safety goggles
1870	Gloves
1870	Gowns
1871	N95s
1871	Surgical masks
1871	Face shields
1871	Disposable booties
1871	Safety goggles
1871	Gloves
1871	Gowns
1871	Hand sanitizer
1871	Disinfecting wipes
1871	Thermometers
1872	N95s
1872	Surgical masks
1872	Face shields
1872	Disposable booties
1872	Safety goggles
1872	Gloves
1872	Gowns
1872	Hand sanitizer
1872	Disinfecting wipes
1872	Thermometers
1873	N95s
1873	Surgical masks
1873	Face shields
1874	N95s
1874	Surgical masks
1875	N95s
1875	Surgical masks
1875	Face shields
1875	Safety goggles
1875	Gowns
1875	Hand sanitizer
1875	Disinfecting wipes
1875	Thermometers
1876	N95s
1876	Surgical masks
1876	Face shields
1876	Safety goggles
1876	Gloves
1876	Gowns
1876	Disinfecting wipes
1877	N95s
1877	Surgical masks
1877	Face shields
1877	Safety goggles
1877	Gloves
1877	Hand sanitizer
1877	Disinfecting wipes
1878	N95s
1878	Surgical masks
1878	Face shields
1878	Gloves
1878	Gowns
1878	biohazard bags and home-made Deaconess masks
1879	N95s
1880	N95s
1880	Face shields
1880	Gowns
1881	N95s
1881	Surgical masks
1881	Face shields
1881	Disposable booties
1881	Safety goggles
1881	Gloves
1881	Gowns
1881	Hand sanitizer
1881	Disinfecting wipes
1881	Thermometers
1882	N95s
1882	Surgical masks
1882	Face shields
1882	Disposable booties
1882	Safety goggles
1882	Gloves
1882	Gowns
1882	Disinfecting wipes
1882	Thermometers
1883	N95s
1883	Surgical masks
1883	Face shields
1883	Safety goggles
1883	Gowns
1883	Disinfecting wipes
1883	Thermometers
1884	N95s
1884	Surgical masks
1884	Face shields
1884	Safety goggles
1884	Gloves
1884	Hand sanitizer
1885	N95s
1885	Surgical masks
1885	Face shields
1885	Safety goggles
1885	Gloves
1885	Gowns
1885	Hand sanitizer
1885	Disinfecting wipes
1885	Thermometers
1886	N95s
1886	Surgical masks
1886	Face shields
1886	Disposable booties
1886	Safety goggles
1886	Gloves
1886	Gowns
1886	Hand sanitizer
1886	Disinfecting wipes
1886	Thermometers
1887	N95s
1887	Surgical masks
1887	Face shields
1887	Disposable booties
1887	Safety goggles
1887	Gloves
1887	Gowns
1887	Disinfecting wipes
1888	N95s
1888	Surgical masks
1888	Face shields
1888	Disposable booties
1888	Safety goggles
1888	Gloves
1888	Gowns
1888	Hand sanitizer
1888	Disinfecting wipes
1888	Thermometers
1889	N95s
1889	Surgical masks
1889	Face shields
1889	Safety goggles
1889	Gloves
1889	Gowns
1889	Hand sanitizer
1889	Disinfecting wipes
1890	N95s
1890	Gloves
1890	Gowns
1890	Hand sanitizer
1890	Disinfecting wipes
1891	N95s
1891	Surgical masks
1891	Face shields
1891	Disposable booties
1891	Safety goggles
1891	Gloves
1891	Gowns
1891	Hand sanitizer
1891	Disinfecting wipes
1892	N95s
1892	Surgical masks
1892	Face shields
1892	Disposable booties
1892	Safety goggles
1892	Gloves
1892	Gowns
1892	Hand sanitizer
1892	Disinfecting wipes
1892	Thermometers
1893	N95s
1893	Surgical masks
1893	Gloves
1893	Hand sanitizer
1893	Disinfecting wipes
1894	N95s
1894	Surgical masks
1894	Face shields
1894	Disposable booties
1894	Safety goggles
1894	Gloves
1894	Gowns
1894	Hand sanitizer
1894	Disinfecting wipes
1895	N95s
1895	Surgical masks
1895	Face shields
1895	Gloves
1895	Gowns
1896	N95s
1896	Surgical masks
1896	Face shields
1896	Disposable booties
1896	Safety goggles
1896	Gloves
1896	Gowns
1896	Hand sanitizer
1896	Disinfecting wipes
1897	N95s
1897	Surgical masks
1897	Face shields
1897	Safety goggles
1898	N95s
1898	Gowns
1898	Hand sanitizer
1899	N95s
1899	Surgical masks
1899	Face shields
1899	Disposable booties
1899	Safety goggles
1899	Gloves
1899	Gowns
1899	Hand sanitizer
1899	Disinfecting wipes
1899	Thermometers
1900	N95s
1900	Surgical masks
1900	Face shields
1900	Safety goggles
1900	Gloves
1900	Hand sanitizer
1901	N95s
1901	Surgical masks
1901	Face shields
1901	Disposable booties
1901	Safety goggles
1901	Gloves
1901	Gowns
1901	Hand sanitizer
1901	Disinfecting wipes
1901	Thermometers
1902	N95s
1902	Surgical masks
1902	Face shields
1902	Safety goggles
1902	Gowns
1902	Hand sanitizer
1902	Disinfecting wipes
1902	Thermometers
1903	N95s
1903	Surgical masks
1903	Face shields
1903	Safety goggles
1903	Gloves
1903	Gowns
1903	Hand sanitizer
1903	Disinfecting wipes
1904	N95s
1904	Surgical masks
1904	Face shields
1904	Disposable booties
1904	Safety goggles
1904	Gloves
1904	Gowns
1904	Hand sanitizer
1904	Disinfecting wipes
1904	Thermometers
1905	N95s
1905	Surgical masks
1905	Face shields
1905	Disposable booties
1905	Safety goggles
1905	Gloves
1905	Gowns
1905	Hand sanitizer
1905	Disinfecting wipes
1905	Thermometers
1906	N95s
1906	Surgical masks
1906	Face shields
1906	Disposable booties
1906	Safety goggles
1906	Gloves
1906	Gowns
1907	N95s
1907	Surgical masks
1907	Face shields
1907	Safety goggles
1907	Gloves
1907	Gowns
1908	N95s
1908	Surgical masks
1908	Safety goggles
1908	Disinfecting wipes
1909	N95s
1909	Surgical masks
1909	Face shields
1909	Disposable booties
1909	Gowns
1910	N95s
1910	Surgical masks
1910	Face shields
1910	Disposable booties
1910	Safety goggles
1910	Gloves
1910	Gowns
1910	Hand sanitizer
1910	Disinfecting wipes
1910	Thermometers
1911	N95s
1911	Surgical masks
1911	Face shields
1911	Disposable booties
1911	Safety goggles
1911	Gloves
1911	Gowns
1911	Hand sanitizer
1911	Disinfecting wipes
1912	N95s
1912	Surgical masks
1912	Face shields
1912	Safety goggles
1912	Gloves
1912	Gowns
1912	Hand sanitizer
1912	Disinfecting wipes
1912	Thermometers
1913	N95s
1913	Surgical masks
1913	Face shields
1913	Disposable booties
1913	Safety goggles
1913	Gloves
1913	Gowns
1913	Hand sanitizer
1913	Disinfecting wipes
1913	Thermometers
1914	N95s
1914	Surgical masks
1914	Face shields
1914	Safety goggles
1914	Gloves
1914	Gowns
1914	Hand sanitizer
1914	Disinfecting wipes
1914	Thermometers
1915	N95s
1915	Surgical masks
1915	Gloves
1915	Gowns
1915	Hand sanitizer
1915	Disinfecting wipes
1916	N95s
1916	Surgical masks
1916	Face shields
1916	Disposable booties
1916	Safety goggles
1916	Gloves
1916	Gowns
1916	Hand sanitizer
1916	Disinfecting wipes
1916	Respirators (Medical or industrial)
1916	P100
1916	N95
1916	FFP3
1916	FFP2
1916	respirator filters
1917	N95s
1917	Surgical masks
1917	Face shields
1917	Safety goggles
1917	Hand sanitizer
1918	N95s
1918	Surgical masks
1918	Face shields
1918	Disposable booties
1918	Safety goggles
1918	Gloves
1918	Gowns
1918	Hand sanitizer
1918	Disinfecting wipes
1919	N95s
1919	Surgical masks
1919	Gloves
1919	Gowns
1919	Hand sanitizer
1920	N95s
1920	Surgical masks
1920	Face shields
1920	Safety goggles
1920	Gloves
1920	Gowns
1920	Hand sanitizer
1920	Disinfecting wipes
1920	Thermometers
1921	N95s
1921	Surgical masks
1921	Face shields
1921	Disposable booties
1921	Gowns
1922	N95s
1923	N95s
1923	Surgical masks
1923	Face shields
1923	Safety goggles
1923	Gloves
1923	Gowns
1923	Hand sanitizer
1923	Disinfecting wipes
1923	Thermometers
1924	N95s
1924	Surgical Masks
1924	Safety Goggles
1924	Gloves
1924	Face Shields
1925	N95s
1925	Surgical masks
1925	Face shields
1925	Safety goggles
1925	Gloves
1925	Gowns
1926	N95s
1926	Surgical masks
1926	Face shields
1926	Disposable booties
1926	Safety goggles
1926	Gloves
1926	Gowns
1926	Hand sanitizer
1926	Disinfecting wipes
1926	Thermometers
1927	N95s
1927	Surgical masks
1927	Face shields
1927	Safety goggles
1927	Gloves
1927	Gowns
1927	Hand sanitizer
1927	Disinfecting wipes
1928	N95s
1928	Surgical masks
1928	Face shields
1928	Disposable booties
1928	Safety goggles
1928	Gloves
1928	Gowns
1928	Hand sanitizer
1928	Disinfecting wipes
1929	N95s
1929	Surgical masks
1929	Face shields
1929	Disposable booties
1929	Safety goggles
1929	Gloves
1929	Gowns
1929	Hand sanitizer
1929	Disinfecting wipes
1929	Thermometers
1930	N95s
1930	Surgical masks
1930	Face shields
1930	Disposable booties
1930	Safety goggles
1930	Gloves
1930	Gowns
1930	Hand sanitizer
1930	Disinfecting wipes
1930	Thermometers
1931	N95s
1931	Face shields
1931	Disposable booties
1931	Safety goggles
1931	Gloves
1931	Gowns
1931	Hand sanitizer
1931	Disinfecting wipes
1931	Thermometers
1932	N95s
1932	Surgical masks
1932	Face shields
1932	Gowns
1932	Disinfecting wipes
1933	N95s
1933	Surgical masks
1933	Face shields
1933	Disposable booties
1933	Safety goggles
1933	Gloves
1933	Gowns
1934	N95s
1934	Surgical masks
1934	Face shields
1934	Disposable booties
1934	Safety goggles
1934	Gloves
1934	Gowns
1934	Hand sanitizer
1934	Disinfecting wipes
1934	Thermometers
1935	N95s
1935	Surgical masks
1935	Face shields
1935	Disposable booties
1935	Safety goggles
1935	Gloves
1935	Gowns
1936	N95s
1937	N95s
1937	Surgical masks
1937	Face shields
1937	Safety goggles
1937	Hand sanitizer
1938	N95s
1938	Surgical masks
1938	Face shields
1938	Gloves
1938	Gowns
1938	Hand sanitizer
1938	Thermometers
1938	2 pulse oximeters (medical grade) needed
1939	N95s
1939	Surgical masks
1939	Face shields
1939	Disposable booties
1939	Safety goggles
1939	Gloves
1939	Gowns
1939	Thermometers
1940	N95s
1940	Surgical masks
1940	Face shields
1940	Safety goggles
1940	Gloves
1940	Gowns
1940	Hand sanitizer
1941	N95s
1941	Surgical masks
1941	Face shields
1941	Gowns
1941	Hand sanitizer
1942	N95s
1942	Surgical masks
1942	Face shields
1942	Disposable booties
1942	Safety goggles
1942	Gloves
1942	Gowns
1942	Hand sanitizer
1942	Disinfecting wipes
1942	Thermometers
1943	N95s
1943	Surgical masks
1943	Face shields
1943	Safety goggles
1943	Gloves
1943	Gowns
1943	Hand sanitizer
1943	Disinfecting wipes
1943	Thermometers
1944	N95s
1944	Face shields
1944	Hand sanitizer
1944	Disinfecting wipes
1945	N95s
1945	Face shields
1945	Safety goggles
1945	Gloves
1945	Gowns
1945	Hand sanitizer
1945	Disinfecting wipes
1946	N95s
1946	Face shields
1946	Safety goggles
1946	Gloves
1946	Gowns
1946	Disinfecting wipes
1947	N95s
1947	Surgical masks
1947	Face shields
1947	Disposable booties
1947	Safety goggles
1947	Gloves
1947	Gowns
1947	Hand sanitizer
1947	Disinfecting wipes
1948	N95s
1948	Surgical masks
1948	Face shields
1948	Disposable booties
1948	Gowns
1948	Hand sanitizer
1948	Disinfecting wipes
1949	N95s
1949	Surgical masks
1949	Face shields
1949	Safety goggles
1949	Gloves
1949	Gowns
1949	Hand sanitizer
1949	Disinfecting wipes
1950	N95s
1950	Surgical masks
1950	Face shields
1950	Safety goggles
1950	Gloves
1950	Gowns
1951	N95s
1951	Surgical masks
1951	Face shields
1951	Disinfecting wipes
1952	N95s
1952	Surgical masks
1952	Face shields
1952	Gloves
1952	Gowns
1952	Hand sanitizer
1952	Disinfecting wipes
1952	Thermometers
1953	N95s
1953	Surgical masks
1953	Face shields
1953	Disposable booties
1953	Safety goggles
1953	Gloves
1953	Gowns
1953	Hand sanitizer
1953	Disinfecting wipes
1953	Thermometers
1954	N95s
1954	Surgical masks
1954	Face shields
1954	Safety goggles
1954	Gloves
1954	Gowns
1954	Hand sanitizer
1954	Disinfecting wipes
1954	Thermometers
1955	N95s
1955	Surgical masks
1955	Face shields
1955	Safety goggles
1955	Gloves
1955	Gowns
1955	Hand sanitizer
1955	Disinfecting wipes
1955	Thermometers
1956	N95s
1956	Surgical masks
1957	N95s
1957	Surgical masks
1957	Face shields
1957	Disposable booties
1957	Gloves
1957	Gowns
1957	Hand sanitizer
1957	Disinfecting wipes
1957	Thermometers
1957	Thermometer covers
1958	N95s
1958	Surgical masks
1958	Face shields
1958	Safety goggles
1958	Gloves
1958	Gowns
1958	Hand sanitizer
1958	Disinfecting wipes
1958	Thermometers
1959	N95s
1959	Surgical masks
1959	Face shields
1959	Disposable booties
1959	Safety goggles
1959	Disinfecting wipes
1960	N95s
1960	Surgical masks
1960	Face shields
1960	Safety goggles
1960	Gloves
1960	Gowns
1960	Hand sanitizer
1960	Disinfecting wipes
1960	Thermometers
1961	N95s
1961	Face shields
1961	Gloves
1961	Gowns
1961	Hand sanitizer
1961	Disinfecting wipes
1962	N95s
1963	N95s
1963	Surgical masks
1963	Hand sanitizer
1963	Disinfecting wipes
1964	N95s
1964	Surgical masks
1964	Face shields
1964	Safety goggles
1964	Gloves
1964	Gowns
1964	Hand sanitizer
1965	N95s
1965	Surgical masks
1965	Face shields
1965	Disposable booties
1965	Safety goggles
1965	Gloves
1965	Gowns
1965	Hand sanitizer
1965	Disinfecting wipes
1966	N95s
1966	Surgical masks
1966	Face shields
1966	Disposable booties
1966	Safety goggles
1966	Gloves
1966	Gowns
1966	Hand sanitizer
1966	Disinfecting wipes
1966	Thermometers
1967	N95s
1967	Surgical masks
1967	Face shields
1967	Safety goggles
1967	Gloves
1967	Gowns
1967	Hand sanitizer
1967	Disinfecting wipes
1968	N95s
1968	Surgical masks
1968	Face shields
1968	Safety goggles
1968	Gloves
1968	Gowns
1968	Hand sanitizer
1968	Disinfecting wipes
1968	Thermometers
1969	N95s
1969	Face shields
1970	N95s
1970	Surgical masks
1970	Face shields
1970	Disposable booties
1970	Gloves
1970	Gowns
1970	Hand sanitizer
1970	Disinfecting wipes
1970	Thermometers
1971	N95s
1971	Gloves
1971	Gowns
1971	Hand sanitizer
1971	Disinfecting wipes
1972	N95s
1972	Surgical masks
1972	Face shields
1972	Safety goggles
1972	Gloves
1972	Gowns
1973	N95s
1974	N95s
1974	Surgical masks
1974	Face shields
1974	Disposable booties
1974	Safety goggles
1974	Gloves
1974	Gowns
1974	Hand sanitizer
1974	Disinfecting wipes
1974	Thermometers
1975	N95s
1975	Surgical masks
1975	Face shields
1975	Disposable booties
1975	Safety goggles
1975	Gloves
1975	Gowns
1975	Hand sanitizer
1975	Disinfecting wipes
1976	N95s
1976	Surgical masks
1976	Face shields
1976	Disposable booties
1976	Safety goggles
1976	Gloves
1976	Gowns
1976	Hand sanitizer
1976	Disinfecting wipes
1976	Thermometers
1977	N95s
1977	Surgical masks
1977	Face shields
1977	Disposable booties
1977	Safety goggles
1977	Gowns
1977	Hand sanitizer
1977	Disinfecting wipes
1978	N95s
1978	Surgical masks
1978	Face shields
1978	Gloves
1978	Gowns
1978	Hand sanitizer
1978	Disinfecting wipes
1979	N95s
1979	Surgical masks
1979	Face shields
1979	Gowns
1979	Hand sanitizer
1979	Disinfecting wipes
1979	Thermometers
1980	N95s
1980	Face shields
1980	Safety goggles
1980	N95 masks 1870
1981	N95s
1981	Surgical masks
1981	Face shields
1981	Safety goggles
1981	Gowns
1981	Hand sanitizer
1981	Disinfecting wipes
1982	N95s
1982	Surgical masks
1982	Face shields
1982	Safety goggles
1982	Gloves
1982	Gowns
1982	Hand sanitizer
1982	Disinfecting wipes
1983	N95s
1983	Gloves
1983	Hand sanitizer
1983	Disinfecting wipes
1983	Toilet Paper
1984	N95s
1984	Surgical masks
1984	Face shields
1984	Safety goggles
1984	Gloves
1984	Gowns
1984	Hand sanitizer
1984	Disinfecting wipes
1984	Thermometers
1985	N95s
1985	Surgical masks
1985	Face shields
1985	Disposable booties
1985	Safety goggles
1985	Gowns
1985	Hand sanitizer
1985	Disinfecting wipes
1985	Thermometers
1986	N95s
1986	Surgical masks
1986	Face shields
1986	Safety goggles
1986	Gloves
1986	Gowns
1986	Hand sanitizer
1986	Disinfecting wipes
1988	N95s
1988	Surgical masks
1988	Face shields
1988	Disposable booties
1988	Safety goggles
1988	Gloves
1988	Gowns
1988	Hand sanitizer
1989	N95s
1989	Surgical masks
1989	Face shields
1989	Safety goggles
1989	Gloves
1989	Gowns
1989	Hand sanitizer
1989	Disinfecting wipes
1990	N95s
1991	N95s
1991	Surgical masks
1991	Face shields
1991	Disposable booties
1991	Safety goggles
1991	Gowns
1992	N95s
1992	Surgical masks
1992	Face shields
1992	Safety goggles
1992	Gloves
1992	Gowns
1992	Hand sanitizer
1992	Disinfecting wipes
1993	N95s
1993	Surgical masks
1993	Face shields
1993	Disposable booties
1993	Gloves
1993	Gowns
1993	Hand sanitizer
1993	Disinfecting wipes
1994	N95s
1994	Surgical masks
1994	Face shields
1994	Disposable booties
1994	Safety goggles
1994	Gloves
1994	Gowns
1994	Hand sanitizer
1994	Disinfecting wipes
1995	N95s
1995	Surgical masks
1995	Face shields
1995	Safety goggles
1995	Gloves
1995	Gowns
1996	N95s
1996	Surgical masks
1996	Face shields
1996	Gowns
1996	Hand sanitizer
1996	Disinfecting wipes
1997	N95s
1997	Surgical masks
1997	Face shields
1997	Safety goggles
1997	Gowns
1998	N95s
1998	Surgical masks
1998	Face shields
1998	Gloves
1998	Gowns
1998	Hand sanitizer
1999	N95s
1999	Surgical masks
1999	Safety goggles
1999	Gloves
1999	Gowns
1999	Hand sanitizer
1999	Disinfecting wipes
1999	Thermometers
2000	N95s
2000	Disposable booties
2000	Gloves
2000	Gowns
2000	Hand sanitizer
2000	Disinfecting wipes
2001	N95s
2001	Surgical masks
2001	Face shields
2001	Safety goggles
2001	Gloves
2001	Gowns
2001	Hand sanitizer
2001	Disinfecting wipes
2001	Thermometers
2002	N95s
2002	Surgical masks
2002	Face shields
2003	N95s
2003	Surgical masks
2003	Face shields
2003	Gloves
2003	Gowns
2003	Disinfecting wipes
2004	N95s
2004	Surgical masks
2004	Face shields
2004	Disposable booties
2004	Safety goggles
2004	Gloves
2004	Gowns
2005	N95s
2005	Surgical masks
2005	Face shields
2005	Safety goggles
2005	Gowns
2006	Surgical masks
2006	Face shields
2006	Gowns
2007	N95s
2007	Surgical masks
2007	Face shields
2007	Disposable booties
2007	Safety goggles
2007	Gloves
2007	Gowns
2008	N95s
2008	Surgical masks
2008	Face shields
2008	Disposable booties
2008	Safety goggles
2008	Gloves
2008	Gowns
2008	Hand sanitizer
2008	Disinfecting wipes
2009	N95s
2009	Surgical masks
2009	Face shields
2009	Gowns
2010	N95s
2010	Surgical masks
2010	Face shields
2010	Safety goggles
2010	Gloves
2010	Gowns
2010	Hand sanitizer
2011	N95s
2011	Surgical masks
2011	Face shields
2011	Hand sanitizer
2012	Surgical masks
2013	N95s
2013	Surgical masks
2013	Gloves
2013	Hand sanitizer
2013	Disinfecting wipes
2013	Thermometers
2014	N95s
2014	Hand sanitizer
2015	Surgical masks
2016	N95s
2016	Surgical masks
2016	Face shields
2016	Disposable booties
2016	Safety goggles
2016	Gloves
2016	Gowns
2016	Hand sanitizer
2016	Disinfecting wipes
2016	Thermometers
2017	N95s
2017	Surgical masks
2017	Face shields
2017	Safety goggles
2017	Gloves
2017	Gowns
2017	Hand sanitizer
2017	Disinfecting wipes
2017	Thermometers
2018	N95s
2018	Surgical masks
2018	Face shields
2018	Safety goggles
2018	Gloves
2018	Gowns
2018	Hand sanitizer
2018	Disinfecting wipes
2018	Thermometers
2019	Surgical masks
2019	Face shields
2019	Safety goggles
2019	Gowns
2019	Hand sanitizer
2020	N95s
2020	Hand sanitizer
2021	N95s
2021	Surgical masks
2021	Face shields
2021	Gloves
2021	Gowns
2021	Hand sanitizer
2022	N95s
2022	Surgical masks
2022	Face shields
2022	Disposable booties
2022	Safety goggles
2022	Gloves
2022	Gowns
2022	Hand sanitizer
2022	Disinfecting wipes
2022	Thermometers
2023	N95s
2023	Surgical masks
2023	Gowns
2024	N95s
2024	Surgical masks
2024	Face shields
2024	Gloves
2024	Gowns
2024	Hand sanitizer
2024	Thermometers
2025	N95s
2025	Surgical masks
2025	Disposable booties
2025	Hand sanitizer
2025	Disinfecting wipes
\.


--
-- Data for Name: organizations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.organizations (id, name, contact_email, zip_code, description, image_url, latitude, longitude, address, accepts_opened, instructions, city, state) FROM stdin;
1	Swedish Ballard	\N	\N	\N	\N	47.6674625	-122.3795306	5300 Tallman Ave NW Seattle, WA 98107	Yes	Put in donations bin at registration desk or at medical treatment center.	Seattle	WA
2	Zuckerberg San Francisco General Hospital	\N	\N	\N	\N	37.7557265	-122.4047381	1001 Potrero Ave San Francisco, CA 94110	No	For now, call ahead: call the switchboard (628-206-8000), ask for "Donations Medical Equipment" or the front desk to arrange drop-off at the main entrance off 23rd St.	San Francisco	CA
3	Ascension Seton Williamson Medical Center	\N	\N	\N	\N	30.5670699	-97.6512507	201 Seton Parkway Round Rock, TX 78665	Yes	Please leave outside the main entrance and tell security to deliver to the ER	Round Rock	TX
4	Olive View-UCLA Medical Center	\N	\N	\N	\N	34.3259915	-118.4458492	14445 Olive View Dr Sylmar, CA 91342	No	Please call Department of Medicine at 747-210-3205 to arrange drop-off or pick-up	Sylmar	CA
5	Newark Beth Isreal Medical Center 	\N	\N	\N	\N	40.7097992	-74.2125215	201 Lyons Avenue, Newark, NJ 07112	Yes	Can be dropped on at the hospital mailing room.	Newark 	NJ
6	Overlook Medical Center	\N	\N	\N	\N	40.7121248	-74.3536189	99 Beauvoir Ave Summit, NJ 07901	Open boxes yes, but not used	Inside main lobby	Summit	NJ
7	Amed Family Clinic	\N	\N	\N	\N	36.0708766	-86.7220285	​4536 Nolensville Pike, Suite F Nashville, TN 37211	Yes	Drop off, mail, call us directly at 615-454-6986 or email info@amedfamilyclinic.com	Nashville	TN
8	City of Omaha Ne Fire and Police Dept	\N	\N	\N	\N	41.2443236	-95.9460972	1523 S 24th St Omaha, NE 68108	Yes		Omaha	NE
9	180 Direct Primary Care	\N	\N	\N	\N	36.4285497	-97.8890835	3201 N Van Buren St #600 Enid, OK 73703	Yes		Enid	OK
10	Auburn Crest Hospice	\N	\N	\N	\N	43.6440177	-116.3748202	4334 N. Bright Angel Ave. Meridian, ID 83646	Yes	Ring bell at front door for delivery	Meridian	ID
11	Providence Tarzana Medical Center	\N	\N	\N	\N	34.1710084	-118.5320475	18321 Clark St Tarzana, CA 91356	Unsure		Tarzana	CA
12	Fast Pace Health	\N	\N	\N	\N	36.4125164	-89.0790388	1705 W Reelfoot Ave Union City, TN 38261	No	Call 7315991102 for Parking lot or mail 	Union City	TN
13	Legacy Health Cancer Institute	\N	\N	\N	\N	45.6253247	-122.5846665	700 N.E. 87th Ave., Ste. 360 Vancouver, WA 98664	Yes	Curbside Attn: Pharmacy	Vancouver	WA
14	Legacy Good Samaritan Hospital	\N	\N	\N	\N	45.5300915	-122.6975884	1015 NW 22nd Ave Portland, OR 97210	Yes	Large bin at front entrance of hospital. Attn: inpatient pharmacy	Portland	OR
15	Copps Hill Family Medicine	\N	\N	\N	\N	41.2916625	-73.4945506	77 Danbury Rd Ridgefield, CT 06877	Yes	Feel free to come in the office to drop off, or if you'd prefer, you can leave it outside the door during business hours and call the front desk to notify them to pick it up. (203) 431-6342.  If mailing: Copps Hill Family Medicine, 77 Danbury Rd., Ridgefield, CT 06877	Ridgefield	CT
16	St Francis Medical Center	\N	\N	\N	\N	38.9382571	-104.7172707	6001 E Woodmen Rd Colorado Springs, CO 80923	Yes	Care of: ICU	Colorado Springs	CO
17	St. Joseph Health Hospice	\N	\N	\N	\N	33.833508	-117.9158836	200 W. Center Street Promenade, Suite 200B Anaheim, CA 92805	Yes	Contact Lou Cobb: (714) 712-9559. Can be dropped off with front desk	Anaheim	CA
18	North Central Baptist Hospital	\N	\N	\N	\N	29.6205416	-98.4914012	520 Madison Oak Dr. San Antonio, TX 78258	Yes	Bring to the ED entrance   OT  ATTN: NICU	San Antonio	TX
19	Stonebridge Homecare	\N	\N	\N	\N	40.2386549	-111.6591152	373 N University Ave #104 Provo, UT 84601	Yes	Attn: Cynthia Johnson	Provo 	UT
20	Algoma Fire & Rescue	\N	\N	\N	\N	44.60993	-87.4580299	313 Koss Ct Algoma WI. 54201	Yes	We are a volunteer dept and no one mans the station on a steady basis.  Please drop off at: 313 Koss Ct Algoma WI. 54201  That is the home address of our EMS Director.  	Algoma	WI
21	The Queen's Medical Center	\N	\N	\N	\N	21.3084698	-157.8538581	1301 Punchbowl St Honolulu, HI 96813	Yes	Curbside.  Mahalo for protecting our healthcare workers so they can keep protecting you!	Honolulu	HI
22	Lowell General Hospital	\N	\N	\N	\N	42.6477369	-71.3422768	295 Varnum Ave Lowell, MA 01854	Yes	Drop off  or  ATTN: CeCe Lynch, CNO	Lowell	MA
23	Geisinger Medical Center Wyoming Valley	\N	\N	\N	\N	41.2572105	-75.8091288	1000 E Mountain Blvd Wilkes-Barre, PA 18711	Yes	Curbside procedure	Wilkes Barre 	PA
24	Concentra Urgent Care	\N	\N	\N	\N	32.1679656	-110.9567176	 4600 S Park Ave Ste 5 Tucson, AZ 85714	Yes	curbside procedure	Tucson	AZ
25	Robeson Family Practice Associate 	\N	\N	\N	\N	34.804892	-79.166908	1002 E 4th Ave Red Springs, NC 28377	No	ATTN: Annette Jones (Nursing)	Red Springs 	NC
26	Rose Court Assisted Living and Memory Care 	\N	\N	\N	\N	33.4814793	-112.0412096	2935 N 18th Place Phoenix, AZ 85016	Yes	Attn: Wellness	Phoenix	AZ
27	HCR Homecare	\N	\N	\N	\N	43.0970998	-77.6168279	85 Metro Park Rochester, NY 14623	Yes	ATTN: Jessica Northrup	Rochester	NY
28	Ben Archer Health Center, attn to : Dr. McCarthy	\N	\N	\N	\N	32.6669788	-107.1632686	255 NM-187 Hatch, NM 87937	Yes	attn to : Dr. McCarthy	Hatch	NM
29	St. John's Riverside Hospital	\N	\N	\N	\N	40.9688196	-73.8864694	967 N Broadway Yonkers, NY 10701		Attn: Medication Education, 6West Resident Wing	Yonkers	NY
30	Alpha Home Health and Hospice	\N	\N	\N	\N	47.9017239	-122.2080404	10530 19th Ave SE #201 Everett, WA 98208	Yes	Curbside or mail. Mailing address, Attn: Chris Boettcher	Everett	WA
31	Terry Reilly Health Services 	\N	\N	\N	\N	43.5854739	-116.5703559	207 1st St S,  Nampa, ID 83651	Open boxes only with labeling/identifying information to confirm integrity of product	May drop off with screening staff located outside of entrance. Mail should be addressed  ATTN: Cindy Miller	Nampa	ID
32	Premier Urgent Care and Occ-Health Center	\N	\N	\N	\N	41.8090447	-87.5941033	1301 E 47th St Building #2 Chicago, IL 60653	Yes	Please drop inside the CSO Complex (2nd Building).  Let Receptionist at front desk know this PPE is for Premier Urgent Care or Call Chris prior to drop off at 219-805-2083. 	Chicago 	IL
33	Cedars-Sinai Medical Center	\N	\N	\N	\N	34.075232	-118.3801756	8700 Beverly Blvd Los Angeles, CA 90048	No	See guidelines and fill out form at https://giving.cedars-sinai.edu/gifts-in-kind-covid-19 to arrange donation | Drop off at residential address inside front porch at 22724 Brandywine Dr, Calabasas, CA 91302 | ATTN: 6 North West	Los Angeles	CA
34	Foothill Regional Medical Center	\N	\N	\N	\N	33.7305509	-117.8283481	14662 Newport Ave Tustin, CA 92780	Yes	Curbside front of ER. Call the ICU and ask for Charge Nurse (714) 619-7790	Tustin	CA
35	Metropolitan Hospital	\N	\N	\N	\N	40.7852328	-73.945029	1901 1st Avenue New York, NY 10029	TBD	In between 1st and 2nd ave is the entrance to the ER. Pull into there around back where the ambulances go and someone will come meet you outside. Please call 415-307-1562 for further information or to schedule donations. 	New York - Manhattan	NY
36	Phelps Health 	\N	\N	\N	\N	37.9526051	-91.7853512	1000 W 10th St Rolla, MO 65401	Unused only	Call (573)458-8899	Rolla	MO
37	Quest Diagnostics 	\N	\N	\N	\N	38.8762091	-77.4391808	14225 Newbrook Dr Chantilly, VA 20151	No	Front desk, attention to virology	Chantilly 	VA
38	Brookside Healthcare	\N	\N	\N	\N	34.0441046	-117.2111125	105 Terracina Blvd Redlands, CA 92373	Yes	At the front desk	Redlands 	CA
39	City of Hope Cancer Center	\N	\N	\N	\N	34.1308315	-117.9722589	1500 E Duarte Rd Duarte, CA 91010	Yes		Duarte	CA
40	Lincoln Meadows Care Center	\N	\N	\N	\N	38.8896841	-121.3047441	1550 3rd St Lincoln, CA 95648	Yes	By front entrance 	Lincoln	CA
41	California Rehabilitation Institute	\N	\N	\N	\N	34.0591737	-118.411809	2070 Century Park E Los Angeles, CA 90067	Yes	Lobby	Century City	CA
42	Life Care Center of Melbourne	\N	\N	\N	\N	28.0891411	-80.6116166	 606 E Sheridan Rd Melbourne, FL 32901	Yes	Curbside	Melbourne	FL
43	Boyd County EMS	\N	\N	\N	\N	38.4719045	-82.6245882	2758 Greenup Ave Ashland, KY 41101	Yes	2758 Greenup Ave.  Ashland KY 41101	Ashland	KY
44	Life Care Skagit Valley	\N	\N	\N	\N	48.4982347	-122.2651584	1462 Cascade Hwy, WA-20 Sedro-Woolley, WA 98284	Yes	At front door/lobby	Sedro Woolley 	WA
45	Adventist Health Tillamook	\N	\N	\N	\N	45.4565613	-123.8545494	1000 3rd St Tillamook, OR 97141	Yes		Tillamook	OR
46	Sanctuary Hospice	\N	\N	\N	\N	41.858253	-87.621907	1727 S. Indiana Ave Suite G02 Chicago, IL 60616	Yes		Chicago	IL
47	Community Provider Network RI	\N	\N	\N	\N	41.7450149	-71.4365498	110 Jefferson Blvd, Suite A Warwick, RI 02888	No	Call 401-684-4694	Warwick	RI
48	Vimi Bajaj MD Obstetrics and Gynecology	\N	\N	\N	\N	41.766535	-88.1479796	640 S Washington St Suite 220 Naperville, IL 60540	Yes	Bring up to office on second floor	Naperville	IL
49	New York Presbyterian- Morgan Stanley Children's Hospital	\N	\N	\N	\N	40.8398048	-73.9414011	3959 Broadway New York, NY 10032	Yes	ATTN: 8 Central PCU  Christian Madrazo	New York - Manhattan	NY
50	Preceptor Home Health and Hospice	\N	\N	\N	\N	43.2195706	-88.1275177	W175 N11117 Stonewood Drive, Suite 100 Germantown, WI 53022	Yes	Attn: Clinical Director	Germantown	WI
51	Clinton County Nursing Home	\N	\N	\N	\N	44.6812061	-73.4571043	16 Flynn Ave Plattsburgh, NY 12901	No	Back loading dock	Plattsburgh	NY
52	Gold Cross Ambulance	\N	\N	\N	\N	44.2266004	-88.4221368	1055 Wittmann Dr Menasha, WI 54952	Yes	Mail to ATTN: John Kuehl, 1055 Wittmann Dr, Menasha, WI 54952; or call dispatch center at 920-727-3034 for in-person drop off at Wittmann Dr. headquarters. 	Menasha	WI
53	Capsule Pharmacy	\N	\N	\N	\N	40.7500975	-73.9849826	20 W 36th St New York, NY 10018	Yes	Attn: Jeff Garlewicz	New York - Manhattan	NY
54	Glenwood Care Center	\N	\N	\N	\N	34.2148405	-119.1799921	1300 North C Street Oxnard, CA 93030	Yes	Drop off with front office	Oxnard	CA
55	Chandler Regional 	\N	\N	\N	\N	33.2702709	-111.8639617	1308 W Lark Dr Chandler, AZ 85286	Yes	Residence. Outside front door	Chandler	AZ
56	Claremont Care Center	\N	\N	\N	\N	34.1078362	-117.7458587	219 E Foothill Blvd Pomona, CA 91768	Yes	Drop off at front entrance	Pomona	CA
57	The Citadel Assisted Living	\N	\N	\N	\N	33.4061065	-111.7202439	520 S Higley Rd Mesa, AZ 85206	Yes	Attn: David LaForest	Mesa	AZ
58	Sagepoint Nursing and Rehab	\N	\N	\N	\N	38.5377966	-76.9302113	10990 Smithfield Pl Waldorf, MD 20602	Yes	Drop off on porch, residence. Attn: Donna Dash	La Plata	MD
59	Orwell Fire Dept. / Orwell Rescue Squad	\N	\N	\N	\N	43.8036622	-73.302705	400 Main Street Orwell, VT 05760	Yes	400 Main Street	Orwell	VT
60	Stonebridge Homecare	\N	\N	\N	\N	40.7232686	-111.9317087	1385 W 2200 S Suite 201 West Valley City, UT 84119	Yes	Attn: Rebecca	West Valley City	UT
61	Impact Healthcare 	\N	\N	\N	\N	40.32385	-111.7252511	1443 N 1200 W Orem, UT 84057	Yes	ATTN: DONNA LINEBAUGH	Orem	UT
62	Mount Sinai Hospital, Madison Ave. NYC	\N	\N	\N	\N	40.7485393	-73.9793102	108 E 37th St New York, NY 10016	Yes	Residential address. Drop off with Doorman for Dr. Daryl Goldman or Dr. Ram Posham	New York	NY
63	Wilson County Jail Medical Department	\N	\N	\N	\N	29.147764	-98.15763	800 10th St Floresville, TX 78114	Yes	ATTN: Medical	Floresville 	TX
64	Palo Pinto General Hospital	\N	\N	\N	\N	32.7996209	-98.1450007	400 SW 25th Ave Mineral Wells, TX 76067	Yes	Drop off or mail, ATTN: Judy Lowe	Mineral Wells	TX
65	Galveston County Health District	\N	\N	\N	\N	29.404246	-95.0170814	9850 Emmett F Lowry Expy A114 Texas City, TX 77591	No	Back of building and ring buzzer	Texas City	TX
66	Boston Children's Hospital	\N	\N	\N	\N	42.3376005	-71.1065611	53 Binney St Boston, MA 02115	No	ATTN: Receiving - PPE Donations	Boston	MA
67	UnityPoint Trinity	\N	\N	\N	\N	41.5660801	-90.5198013	4500 Utica Ridge Rd Bettendorf, IA 52722	Yes	Front entrance of hospital	Bettendorf 	IA
68	Idaho Gastroenterology	\N	\N	\N	\N	43.615023	-116.1983739	425 W Bannock St Boise, ID 83702	Yes	ATTN: Carol Lugar 	Boise	ID
69	Spectrum Health Systems	\N	\N	\N	\N	42.1510435	-71.4984089	200 E Main St Milford, MA 01757	Yes	ATTN: Jane Reardon 	Milford	MA
70	O'Connor Hospital	\N	\N	\N	\N	37.3277552	-121.9383789	2105 Forest Ave San Jose, CA 95128	No	We are able to accept individual or small community organization donations at O'Connor Hospital at the loading dock in back of the hospital building: M-F 6am-5pm (Dock) or Sat-Sun 10am-3pm (Front Lobby)	San Jose	CA
71	Rheumatology Associates of Southern California	\N	\N	\N	\N	34.3790626	-118.5384873	23206 Lyons Ave #106 Newhall, CA 91321	Yes		Santa Clarita	CA
72	Central EMS	\N	\N	\N	\N	34.0554925	-84.3168675	205 Hembree Park Dr Ste 100 Roswell, GA 30076	Yes	ATTN: Darren Dale, Supply Manager, or call (678) 273-2124. Drop off 24/7 around rear at loading dock, mail, or contact for pick-up arrangements. Can also drop off in Buford, Savannah, or Macon, contact for addresses. 	Roswell	GA
73	UnityPoint Health	\N	\N	\N	\N	41.4332299	-91.0544985	1518 Mulberry Ave Muscatine, IA 52761	Yes	Front entrance	Muscatine 	IA
74	Kadlec Clinic Hematology & Oncology	\N	\N	\N	\N	46.2133569	-119.2216457	7360 W Deschutes Ave Kennewick, WA 99336	Yes	Attn: Karen DuBois	Kennewick	WA
75	Community Options New York, Inc.	\N	\N	\N	\N	43.0646073	-76.0737733	216 W Manlius St East Syracuse, NY 13057	Yes	216 West Manlius Street	East Syracuse	NY
76	Monument Avenue Pediatrics	\N	\N	\N	\N	37.5665462	-77.4805936	3602 Monument Ave Richmond, VA 23230	Yes	If delivering in person, please knock on door during business hours (m-f 830-5, ok to mail as well)	Richmond	VA
77	Beverly Hospital	\N	\N	\N	\N	34.015015	-118.100636	309 W Beverly Blvd Montebello, CA 90640	Yes	https://www.beverly.org/ppedonate/	Montebello	CA
78	Voices for Independence 	\N	\N	\N	\N	42.0785232	-80.2024131	1432 Wilkins Rd Erie, PA 16505	Yes	Front door drop off please. 	Erie	PA
79	Mercy Hospital of Buffalo	\N	\N	\N	\N	42.8475501	-78.8125785	565 Abbott Rd Buffalo, NY 14220	Yes	Respiratory Therapist Department Attn: Kristen Friend	Buffalo	NY
80	Sentara Obici Hospital	\N	\N	\N	\N	36.7727954	-76.5812482	2800 Godwin Blvd Suffolk, VA 23434	Yes	We can pick up from your car outside the hospital. Please call 757-934-4147 to coordinate.	Suffolk	VA
81	Lancaster Health Center	\N	\N	\N	\N	40.0428672	-76.3095638	304 N Water St Lancaster, PA 17603	Yes	Email james.reichenbach@lanchc.org to arrange curbside handoff	Lancaster	PA
82	Northern Light Health	\N	\N	\N	\N	44.7895722	-68.8358536	70 Bennett St Bangor, ME 04401	Yes	Contact Tim Plossay AVP Supply Chain 207-620-0364  for drop off at Warehouse  or pick up instructions	Bangor	ME
83	Transitions LifeCare William Dunlap Center for Caring/Hospice Home	\N	\N	\N	\N	35.8074456	-78.7418081	250 Hospice Cir Raleigh, NC 27607	No	Pull up outside of our Administrative Building at 250 Hospice Circle, then call 919-828-0890, and someone will come out. If you are unable to reach someone, you may leave the donation beside the front door. Thank you for your donation!	Raleigh	NC
84	Westside Family Health	\N	\N	\N	\N	39.7481444	-75.5710177	1802 W 4th St Wilmington, DE 19805	Yes	Please leave at front desk ATTN: RN - Bethany Schiller	Wilmington	DE
85	Capital Caring Adler Hospice Inpatient Center	\N	\N	\N	\N	38.9379292	-77.552717	24419 Millstream Dr Aldie, VA 20105	Yes	Bring to front desk in lobby	Aldie	VA
86	Jefferson City Medical Group	\N	\N	\N	\N	38.570238	-92.2143669	1241 W Stadium Blvd Jefferson City, MO 65109	Yes	Curbside drop off or mail	Jefferson City	MO
87	Gonzales Healthcare Systems	\N	\N	\N	\N	29.5171506	-97.4316356	1110 N Sarah Dewitt Dr Gonzales, TX 78629	Yes	Loading dock in back.  ATTN: Steven Ackermann	Gonzales	TX
88	Maggie's Hospice and Palliative Care	\N	\N	\N	\N	34.5456882	-112.4621843	306 N Virginia St Prescott, AZ 86301	Yes	At front door or via mail Attn Michael Berlowe	Prescott	AZ
89	UnityPoint Trinity	\N	\N	\N	\N	41.4681104	-90.530915	500 John Deere Rd Moline, IL 61265	Yes	Front entrance doors	moline 	IL
90	Kaiser Morse	\N	\N	\N	\N	38.6015925	-121.3931543	2025 Morse Ave Sacramento, CA 95825	Yes	Mail Attn: Emergency Dept, 2025 Morse Ave, Sacramento, CA 95825	Sacramento	CA
91	Maxim Healthcare Services	\N	\N	\N	\N	40.3428287	-76.0033453	2211 Quarry Dr Suite E-58B West Lawn, PA 19609	Yes	We have a team working within the office Monday-Friday 8am-5:30 pm. Please ring our doorbell and a team member will be available to assist.	Reading	PA
92	Skyland Care Center	\N	\N	\N	\N	35.3773891	-83.2140412	193 Asheville Hwy Sylva, NC 28779	Yes	At front door under awning	Sylva	NC
93	Lehigh Valley Hospital - Cedar Crest	\N	\N	\N	\N	40.5667553	-75.5241629	1200 S Cedar Crest Blvd Allentown, PA 18103	Yes	Curbside main entrance. More details at https://www.lvhn.org/join-fight-against-covid-19  | Contact Lori Belton, Contract & Product Manager, Supply Chain Mgmt Division, Lehigh Valley Health Network, at P: 484-884-1393 or F: 484-884-0515 or lori.belton@lvhn.org | Suppliers Visit: http://supplychain.lvhn.org	Allentown 	PA
94	THE BEECHWOOD HOME	\N	\N	\N	\N	39.1361029	-84.4598441	2140 Pogue Ave Cincinnati, OH 45208	Yes	We would graciously accept donations by mail or drop-off (rear entrance between doors).  Please call 513-702-8301 if you have any questions. 	CINCINNATI	OH
95	Rio at Las Estancias	\N	\N	\N	\N	35.0172953	-106.712877	3620 Las Estancias Dr Albuquerque, NM 87121	Opened is fine if unused!	Please call so we can meet you in the parking lot- 505-253-9600	Albuquerque	NM
96	Vasona Creek Healthcare Center	\N	\N	\N	\N	37.2302961	-121.9649966	16412 Los Gatos Blvd Los Gatos, CA 95032	Yes		Los Gatos	CA
97	San Angelo Community Medical Center 	\N	\N	\N	\N	31.4194045	-100.4710499	3901 Knickerbocker Rd San Angelo, TX 76904	Yes	Courtney Dean	San Angelo 	TX
98	UnityPoint Health Trinity 	\N	\N	\N	\N	41.4813627	-90.5705719	2701 17th St Rock Island, IL 61201	Yes	Front Entrance to Hospital	Rock Island 	IL
99	Princeton Place	\N	\N	\N	\N	35.0839876	-106.5676412	500 Louisiana Blvd NE Albuquerque, NM 87108	Open is fine if unused!	Please call so we can meet you outside- 505-255-1717	Albuqerque	NM
100	Detroit Recieving Hospital 	\N	\N	\N	\N	42.3537669	-83.0555359	4201 St Antoine Detroit, MI 48201	Yes	Attn:  Emergency Department; you can drop them off at the ambulance bay doors	Detroit	MI
101	Gateway Hospice	\N	\N	\N	\N	42.7336141	-93.7325208	103 2nd Ave NE Clarion, IA 50525	No	Bring donations to our office M-F from 8:00am to 4:30pm. Knock on the door and someone will gladly retrieve your donation. Thank you.	Clarion 	IA
102	Mills-Peninsula Medical Center	\N	\N	\N	\N	37.5923598	-122.3824811	1501 Trousdale Drive Burlingame, CA 94010	No	Drop off at ER triage desk.  650-696-5446 (ER Main Line) | Drop off at hospital front door 9AM-5PM M-F, 9AM-12PM S-Su. | For larger donations, email Dr. Ching at bching@mpema.com or Dr. Alexander Ding at dinga@sutterhealth.org to coordinate pick-up or delivery. 	Burlingame	CA
103	The Moorings of Arlington Heights	\N	\N	\N	\N	42.0647456	-87.9729106	811 E Central Rd Arlington Heights, IL 60005	No	Attn:  Healthcare Administrator	Arlington heights	IL
104	Westminster Place	\N	\N	\N	\N	42.0575625	-87.722592	3200 Grant St Evanston, IL 60201	No	Attn:  healthcare administrator	Evanaton	IL
105	Rio at Mainland Center	\N	\N	\N	\N	29.3922265	-94.9885923	1011 Mainland Center Dr Texas City, TX 77591	As long as it's unused we'll take it!	Please call to coordinate drop off in parking lot- 713-358-0700	Texas City	TX
106	Brightpointe at Rivershire	\N	\N	\N	\N	30.284443	-95.4731118	604 Conroe Medical Dr Conroe, TX 77304	Yes if unused!	Please call to coordinate drop off in the parking lot- 936-494-6600	Conroe	TX
107	Hospice of the Piedmont	\N	\N	\N	\N	38.0236661	-78.4376251	675 Peter Jefferson Pkwy #300 Charlottesville, VA 22911	No	Drop on third floor	Charlottesville	VA
108	Office of Emergency Mgmt at Old Bridge NJ	\N	\N	\N	\N	40.4039481	-74.2975933	1 Old Bridge Plaza Old Bridge, NJ 08857	Yes	Curbside	Old Bridge	NJ
109	OnPointe Dallas	\N	\N	\N	\N	32.8811	-96.762478	8200 Walnut Hill Lane Main 5 Dallas, TX 75231	Yes if unused!	Please call to coordinate drop off in parking lot: 214-345-7500	Dallas	TX
110	Puget Sound Home Health	\N	\N	\N	\N	47.2203874	-122.4671903	4002 Tacoma Mall Blvd #204 Tacoma, WA 98409	Yes	Drop off with receptionist	Tacoma	WA
111	St. Clare Hospital	\N	\N	\N	\N	47.1545124	-122.5019772	11315 Bridgeport Way S.W. Lakewood, WA 98499	Yes	Please deliver donations to ER security desk	Lakewood	WA
112	Brandywine Counseling and Community Services	\N	\N	\N	\N	39.7504955	-75.5827508	2713 Lancaster Ave Wilmington, DE 19805	Yes	Mail them here attn: Nicole Manelski and David Loose	Wilmington 	DE
113	Weston Volunteer EMS	\N	\N	\N	\N	41.2021727	-73.3797187	52 Norfield Rd Weston, CT 06883	Yes	Mail:  Attention: Supplies	Weston	CT
114	Around the Clock Home Care	\N	\N	\N	\N	35.365529	-119.060677	5251 Office Park Dr Bakersfield, CA 93309	Yes		Bakersfield	CA
115	East Hampton Village Ambulance Association	\N	\N	\N	\N	40.9693839	-72.1831234	1 Cedar St East Hampton, NY 11937	Yes	1 Cedar Street	East Hampton	NY
116	Logistics Health, Inc. (LHI) Veterans Exams	\N	\N	\N	\N	30.0173568	-95.4465778	17030 Nanes Dr #111 Houston, TX 77090	Yes	Call to arrange drop off - Shawn De La Garza 713-208-7226 or mail to LHI Veterans Exams, ATTN: Christine, 17030 Nanes Road, Suite 111, Houston, Texas 77090	Houston, Texas	TX
117	Kinder Hearts Home Health and Hospice	\N	\N	\N	\N	32.4586665	-99.7583715	842 N Mockingbird Ln Abilene, TX 79603	Yes	Please call 325-672-6135 and curbside procedures will take place.	Abilene	TX
118	Dr Pelton's Office Internal Medicine	\N	\N	\N	\N	44.7081604	-73.4679869	164 Boynton Ave #103 Plattsburgh, NY 12901	Yes	Attn Dr Pelton	Plattsburgh	NY
119	Lake Forest Place	\N	\N	\N	\N	42.2602452	-87.867793	1101 Pembridge Dr Lake Forest, IL 60045	No	Attn:  Healthcare Administrator	Lake Forest	IL
120	The Lodge at Bear Creek	\N	\N	\N	\N	32.9132796	-97.1282402	3729 Ira E Woods Ave Grapevine, TX 76051	We'll take it if it's unused!	Please call to coordinate dropping it off in the parking lot- 817-527-7500	Grapevine	TX
121	Delphi Drug & Alcohol Council, Inc.	\N	\N	\N	\N	43.1495492	-77.6346847	835 W Main St Rochester, NY 14611	Yes	Curbside or mailing address	Rochester	NY
122	DuPage Medical Group	\N	\N	\N	\N	41.8771945	-88.0711199	430 Pennsylvania Ave Glen Ellyn, IL 60137	Yes	To receiving dock around the building, Jose Sanchez	Glen Ellyn	IL
123	UK Healthcare	\N	\N	\N	\N	38.031102	-84.5076352	1000 S Limestone Lexington, KY 40506	Yes		Lexington	KY
124	One Medical 	\N	\N	\N	\N	40.686131	-73.9906895	165 Smith St Brooklyn, NY 11201	No	No Weekend Deliveries, Attn: One Medical 	New York - Brooklyn 	NY
125	Kettering Health Network	\N	\N	\N	\N	39.6975779	-84.1910137	3535 Southern Blvd Dayton, OH 45429	Not sure... need to check with Infectious Disease.  Thank you for doing this!	Kettering Medical Center, Attn: Dr. Robert Smith	Dayton	OH
126	United Community Health Center	\N	\N	\N	\N	42.6479037	-95.209827	715 W Milwaukee Ave Storm Lake, IA 50588	Yes	Call 712 213 0109 and let us know you have PPE to donate and we'll meet you in the parking lot. Thank you!	Storm Lake	IA
127	Massachusetts General Hospital 	\N	\N	\N	\N	42.36333	-71.0698799	 255 Charles St. Boston, MA 02114		Drop-off:  Lunder Loading Dock, Attn: ED |  Or mail to: Dr. Kathy May Tran 55 Fruit St Blake 1500 Hospital Medicine Unit Command Center Massachusetts General Hospital  Boston, MA 02114 |  Please contact coviddonations@partners.org to coordinate donation. See  https://www.partners.org/Newsroom/Articles/Partners-HealthCare-Coronavirus-Announcement.aspx	Boston	MA
128	Omni Home Care - Carnegie	\N	\N	\N	\N	40.4164643	-80.0893284	600 N Bell Ave Bldg 2 Suite 130 Carnegie, PA 15106	Yes	ATTN:  Lisa Demko. May leave at door of office or we can come curbside to pick up.	Carnegie	PA
129	VITAS Healthcare	\N	\N	\N	\N	38.926837	-77.2469992	1604 Spring Hill Rd #450 Vienna, VA 22182	Yes, if new and in original packaging; no to loose surgical masks	Mail can be addressed to ATTN: Matineh Noblitt	Vienna	VA
130	Honor Community Health	\N	\N	\N	\N	42.6826975	-83.3023094	1701 Baldwin Ave Pontiac, MI 48340	Yes	Please email wstricklin@honorcommunityhealth.org when shipments will occur and we will pick up at the curb.	Pontiac	MI
131	Bayfront Hospital	\N	\N	\N	\N	27.7634827	-82.642014	701 6th St S St. Petersburg, FL 33701	Yes	ER circle drop off. Ask for Bill Pierce. 	St. Petersburg 	FL
132	Boulder Community Health Foothills	\N	\N	\N	\N	40.0163695	-105.2363882	4747 Arapahoe Ave Boulder, CO 80303	No	Dropoff is at main entrance, not ER/emergency department entrance	Boulder	CO
133	Midwest Medical Transport Company	\N	\N	\N	\N	41.2200022	-96.1425087	4020 S 147th St Omaha, NE 68137	No	4020 S 147th St, ATTN: Matt M	Omaha	NE
134	Montefiore - Jack D. Weiler Hospital	\N	\N	\N	\N	40.8491013	-73.8461857	1825 Eastchester Road Bronx, NY 10461	Yes	1825 Eastchester Road 	New York - Bronx	NY
135	Arizona Behavioral Health Associates, P.C	\N	\N	\N	\N	35.2047144	-111.6468138	710 N Beaver St bldg 4 Flagstaff, AZ 86001	Yes	Mail slot, or door when open 9-5	Flagstaff	AZ
136	Peritech Home Health	\N	\N	\N	\N	41.1234754	-78.7504104	375 Beaver Dr DuBois, PA 15801	Yes		DuBois 	PA
137	SSM Health St. Mary's Care Center	\N	\N	\N	\N	43.0112906	-89.4970662	3401 Maple Grove Dr Madison, WI 53719	Yes		Madison	WI
138	Signature Healthcare	\N	\N	\N	\N	42.0874616	-70.989651	25 Libby St Brockton, MA 02302	Yes	Attention: Janelle Mangiante	Brockton	MA
139	Legacy Transitional Care and Rehab	\N	\N	\N	\N	33.7557678	-84.3725364	460 Auburn Ave NE Atlanta, GA 30312	Yes	Attn: Erica Wells	Atlanta	GA
140	Immokalee Family Doctor's Clinic, LLC	\N	\N	\N	\N	26.4273163	-81.4342721	555 N 15th St Suite A Immokalee, FL 34142	Yes	deliver inside and we are closed for lunch from 12:00pm-1:15pm	Immokalee	FL
141	Virginia Interventional and Vascular Associates	\N	\N	\N	\N	38.2427845	-77.4962767	10401 Spotsylvania Ave #203 Fredericksburg, VA 22408	Yes	Attn Dr. Darden	Fredericksburg	VA
142	Virginia Endoscopy Group	\N	\N	\N	\N	37.5904629	-77.49216	2369 Staples Mill Rd Richmond, VA 23230	No		Richmond	VA
143	Rural Health Clinic of Neodesha	\N	\N	\N	\N	37.4172512	-95.6830643	709 Main St Neodesha, KS 66757	Yes	May be dropped off or mailed to PO Box 180 Neodesha, KS 66757	Neodesha	KS
144	McLaren Hospital Foundation	\N	\N	\N	\N	42.7043198	-84.5568609	407 W Greenlawn Ave Lansing, MI 48910	Yes	Please call (517) 975-7100 to notify us of the person/people who is/are going to drop off prior to drop.  We will come out to the vehicle to unload the supplies so the person/people delivering the items does/do not need to come inside the building.	Lansing	MI
145	Frontier Hospice	\N	\N	\N	\N	35.3400387	-97.4934657	221 N I- 35 Service Rd Suite D Moore, OK 73160	Yes	At the door	Moore	OK
146	Middlesex hospital	\N	\N	\N	\N	41.5544714	-72.6470639	28 Crescent St Middletown, CT 06457	Yes	Security department 	Middletown 	CT
147	React Physical Therapy	\N	\N	\N	\N	41.8782525	-87.6504831	225 S Sangamon St Chicago, IL 60607	Yes	Please email (eolson@bereact.com) with drop off timing; can leave with front desk through the revolving door; mailing ATTN is React Physical Therapy	Chicago	IL
148	Community Options, Inc.	\N	\N	\N	\N	40.1539035	-75.0108369	950 Pennsylvania Blvd Feasterville-Trevose, PA 19053	No	Front door of the building	Feasterville-Trevose	PA
149	Nuestra Clinica Del Valle	\N	\N	\N	\N	26.1949607	-98.1650549	801 W 1st St San Juan, TX 78589	No	Mail or Drop off 	San Juan	TX
150	Columbia NYP	\N	\N	\N	\N	40.844768	-73.9426465	104 Haven Ave New York, NY 10032	Yes	Jaharis Simulation Center Attn: David Deitsch 	New York - Manhattan	NY
151	OnPointe Arlington	\N	\N	\N	\N	32.7490985	-97.1159177	800 W Randol Mill Rd 6th floor Arlington, TX 76012	If unopened we'll take it!	Please call to coordinate drop off in parking lot- 682-276-8700	Arlington	TX
152	Concord Hospital	\N	\N	\N	\N	43.1975246	-71.5619313	250 Pleasant St Concord, NH 03301	Unclear	We're urgently requesting new N95 masks and hand sanitizer. Community members may deliver their contributions of masks and sanitizer to our Hospital's Visitor Entrance daily from 5:30 am to 8 pm.	Concord	NH
153	Superior Ambulance Service	\N	\N	\N	\N	35.1095067	-106.7256293	7600 La Morada Pl NW Albuquerque, NM 87120	Yes	Please call from the parking space in front of the lobby.  505 247 8840 ext. 4 someone will come out to assist you.	Albuquerque	NM
154	Affinity Living Group (senior housing)	\N	\N	\N	\N	35.735453	-81.3455209	400 2nd Ave NW Hickory, NC 28601	Yes	Attention: Stephanie Presley (PPE supplies)	Hickory	NC
155	Sutter Roseville Hospital	\N	\N	\N	\N	38.765635	-121.2495341	1 Medical Plaza Dr Roseville, CA 95661	Yes	You may leave at mailing address   OR  Emergency Department 	Roseville	CA
156	Franciscan Health Indianapolis	\N	\N	\N	\N	39.7738921	-86.082778	421 N Emerson Ave Indianapolis, IN 46219	Yes	Deliver curbside to 421 N Emerson Ave, Indpls 46143. Questions: email steven.daudy@franciscanalliance.org	Indianapolis	IN
157	Farragut Medical And Travel Care	\N	\N	\N	\N	38.9008384	-77.0386806	818 Connecticut Ave NW, Suite #501 Washington, DC 20006	Yes	Please send to the mailing address (Attn: Bonnie) or drop off.	Washington	DC
158	One Medical	\N	\N	\N	\N	41.917109	-87.6482703	1931 N Halsted St Chicago, IL 60614	Yes	Drop off in Lobby or Foyer 	Chicago	IL
159	Marcus Daly Memorial Hospital	\N	\N	\N	\N	46.2465843	-114.1740159	1224 W Main St Hamilton, MT 59840	No	Call 406-375-4650 between 8 -5 pm so someone can meet you outside to collect. 	Hamilton	MT
160	Bergen New Bridge Medical Center	\N	\N	\N	\N	40.9565431	-74.0626127	220 E Ridgewood Ave Paramus, NJ 07652	Yes	the Bergen County Annex can be driven to and dropped off. 	Paramus	NJ
161	HealthNeed Medical Urgent Care	\N	\N	\N	\N	40.7359744	-73.8250952	Main St Queens, NY	Yes	Please call to arrange. I can pick up if drop off isn't available.	Flushing	NY
162	Foxhall Ob/Gyn Associates	\N	\N	\N	\N	38.9369997	-77.1074353	5215 Loughboro Rd NW #500 Washington, DC 20016	No	5215 LOUGHBORO ROAD NW Suite 500, Attention KIM	WASHINGTON	DC
163	Meadow Creek Senior Living 	\N	\N	\N	\N	32.6035679	-96.8095202	2400 W Pleasant Run Rd Lancaster, TX 75146	Yes	Ring doorbell, staff will open door, supplies can be dropped off with staff member	Lancaster 	TX
164	Pine Valley Community Village	\N	\N	\N	\N	43.3037108	-90.3525863	25951 Circle View Dr Richland Center, WI 53581	Yes	Drop off.	Richland Center	WI
165	Excell Home Care and Hospice	\N	\N	\N	\N	35.3628867	-97.5372058	1200 SW 104th St Suite D Oklahoma City, OK 73139	Yes	Leave at front door on east side of the building	Oklahoma City	OK
166	Holy Cross Health	\N	\N	\N	\N	39.0147079	-77.0347487	1500 Forest Glen Rd Silver Spring, MD 20910	No		Silver Spring	MD
167	Emblem Healthcare	\N	\N	\N	\N	33.3183636	-111.8977843	3205 W Ray Rd #2 Chandler, AZ 85226	Yes	drop off or mail is fine	Chandler	AZ
168	Siouxland Community Health Center	\N	\N	\N	\N	42.5011671	-96.4044915	1021 Nebraska St Sioux City, IA 51105	Yes	mailing address ATTN: Kerry Patterson	Sioux City	IA
169	Sawyer County Ambulance Service	\N	\N	\N	\N	46.0185502	-91.4877143	10676 Nyman Ave Hayward, WI 54843	Yes	10676 Nyman Ave	Hayward	WI
170	Emory University Hospital Midtown	\N	\N	\N	\N	33.769688	-84.3858485	550 Peachtree St NE Atlanta, GA 30308	Yes	Drop off at front of hospital. Tell them it is for 71 ICU	Atlanta 	GA
171	Elliot at River's Edge	\N	\N	\N	\N	42.9743441	-71.4684319	185 Queen City Ave Manchester, NH 03101	Unclear	Hours are from 8 a.m. to 4 p.m. beginning Sunday. Donations will be accepted on Monday through Wednesday after Sunday, until further notice.	Manchester	NH
172	Sturdy Memorial Hospital	\N	\N	\N	\N	41.94183	-71.2756732	211 Park St Attleboro, MA 02703	Yes	ATTN;: ddenneno@sturdymemoria.org	Attleboro	MA
173	Home Instead Senior Care 	\N	\N	\N	\N	41.1101315	-73.4074921	158 East Ave Norwalk, CT 06851	Yes	Attn: Client Care Manager	Norwalk	CT
174	Saint Francis Hospital	\N	\N	\N	\N	39.7497948	-75.5666519	701 N Clayton St Wilmington, DE 19805	Yes	Loading Dock would be preferred	Wilmington	DE
175	The Hearts & Hands Clinic	\N	\N	\N	\N	32.4536889	-81.7856441	127 North College Street Statesboro, GA 30458	Yes	Free medical clinic for low income, uninsured adults. Please come to the backdoor	Statesboro	GA
176	University of Maryland Medical Center (Baltimore Campus)	\N	\N	\N	\N	39.2916414	-76.6246107	620 W Lexington St Baltimore, MD 21201	Yes	You can drop off PPE between the hours of 8 AM-12:30 PM, Monday - Friday.  The building door will be locked, but there is a receptionist. You will need to ring the bell to get access. To maximize social distancing, please leave donations in the lobby, on entry.	Baltimore	MD
177	Lions Gate (nursing home, assisted living)	\N	\N	\N	\N	39.8488857	-74.9733892	1100 Laurel Oak Rd Voorhees Township, NJ 08043	Case by case	Come to lobby and use lobby phone to request instructions	Voorhees	NJ
178	Seton Hays Medical Center	\N	\N	\N	\N	30.0084463	-97.8529453	6001 Kyle Pkwy Kyle, TX 78640	No	Emergent dept	Kyle	TX
179	Methodist Charlton 	\N	\N	\N	\N	32.6453975	-96.8764968	3500 W Wheatland Rd Dallas, TX 75237	Yes	Come to the ER entrance	Dallas	TX
180	A Plus Home Health & Hospice	\N	\N	\N	\N	40.323891	-111.725242	1447 1200 W Orem, UT 84057	Yes	Knock and drop at glass front door, receptionist will see you	Orem	UT
181	Sequoia Home Health and Hospice	\N	\N	\N	\N	37.4362733	-121.892281	830 Hillview Ct #225 Milpitas, CA 95035	Yes	Call 408-966-9480 when at door.	MILPITAS	CA
182	Boston Mountain Rural Health Center Inc.	\N	\N	\N	\N	36.2261815	-92.6848876	358 East Valley St. Yellville, AR 72687	No	Attn: Andrea	Yellville	AR
183	Comfort HealthCare, LLC	\N	\N	\N	\N	41.481241	-81.7418299	8310 Detroit Ave Cleveland, OH 44102	Yes	8310 Detroit Avenue - Inside Front Door	Cleveland	OH
184	Sarah D. Culbertson Memorial Hospital	\N	\N	\N	\N	40.118099	-90.564367	238 S Congress St Rushville, IL 62681	Yes	ATTN:  Leah Wilson	Rushville	IL
185	Androscoggin Valley Hospital	\N	\N	\N	\N	44.4876103	-71.1568452	59 Page Hill Rd Berlin, NH 03570	Yes	Rear entrance of the hospital. AVH 59 Page Hill Road	Berlin	NH
186	Crossroads Home Health & Hospice	\N	\N	\N	\N	37.7389664	-122.4790533	1109 Vicente St #101 San Francisco, CA 94116	Yes	Call 415-682-2111 and you can drop and a staff member will grab from you. Thanks!	San Francisco	CA
187	Dartmouth-Hitchcock Medical Center	\N	\N	\N	\N	43.6567726	-72.2407851	Green Warehouse 50 N LaBombard Road North Lebanon, NH 03766	Unclear	Dartmouth-Hitchcock request for https://www.dartmouth-hitchcock.org/patient-education/sewing-masks.html	Lebanon	NH
188	Whitman-Walker Health	\N	\N	\N	\N	38.9104721	-77.0315736	1525 14th St NW Washington, DC 20005	No	Please put to the ATTN of Jessica, 2nd Floor; Drop-offs at the front door or mailings are both welcome!	Washington DC	DC
189	Healthcare California	\N	\N	\N	\N	36.8287582	-119.7832487	6327 N Fresno St #104 Fresno, CA 93710	Yes	Call 559-243-9990 and a staff member can coordinate w/ you	Fresno	CA
190	Boston Mountain Rural Health Center Inc.	\N	\N	\N	\N	35.8901411	-92.1045475	322 Dogwood Hollow Rd Mountain View, AR 72560	No		Mountain View 	AR
191	Boston Mountain Rural Health Center Inc.	\N	\N	\N	\N	36.3369821	-93.4506309	1103 W Main St Green Forest, AR 72638	No		Green Forest	AR
192	Boston Mountain Rural Health Center Inc.	\N	\N	\N	\N	36.0047032	-93.1922454	609 W Clark St Jasper, AR 72641	No		Jasper	AR
193	Lifespan - The Miriam Hospital	\N	\N	\N	\N	41.850533	-71.398247	164 Summit Ave Providence, RI 02906	Yes	Lifespan Donation Instructions: https://www.lifespan.org/covid-donations	Providence 	RI
194	Boston Mountain Rural Health Center Inc.	\N	\N	\N	\N	36.2392589	-93.110002	1002 N Spring St Harrison, AR 72601	No		Harrison	AR
195	Boston Mountain Rural Health Center Inc.	\N	\N	\N	\N	35.5589409	-92.4547255	465 Medical Center Pkwy Clinton, AR 72031	Yes	Attn: Kim Bramlett	Clinton 	AR
196	Boston Mountain Rural Health Center Inc.	\N	\N	\N	\N	36.0945777	-93.7427893	934 N Gaskill St Huntsville, AR 72740	No	Attn: Cassandra	Huntsville	AR
197	CHOC Children's Hospital	\N	\N	\N	\N	33.7804929	-117.8662537	1201 W La Veta Ave Orange, CA 92868	Yes	TBD	Orange	CA
198	Boston Mountain Rural Health Center, Inc.	\N	\N	\N	\N	35.5626568	-92.4503048	2263 Hwy 65 N Marshall, AR 72650	Yes	305 South Glade St W Main St	Marshall	AR
199	Community Health Centers of the Central Coast	\N	\N	\N	\N	34.9226521	-120.45333	2050 S Blosser Rd Santa Maria, CA 93458	Yes	2050 S Blosser Rd, drop off to the back of the building. There is a open gate on the left side of the building that anyone can access. 	Santa Maria	CA
200	Sunset Estates of Purcell	\N	\N	\N	\N	35.0244153	-97.369028	915 N 7th Ave Purcell, OK 73080	Yes	Drop off at the front door.  Ring the doorbell and it will be taken care of by staff.	Purcell	OK
201	Nazareth Hospital	\N	\N	\N	\N	40.0588411	-75.0421637	2601 Holme Ave Philadelphia, PA 19152	Open box as, but item should be bagged or secured uncompromised or used.  THANK YOU!	Security desk  OR  Contact Gary Catts, Gary.catts@mercyhealth.org	Philadelphia	PA
202	Southern New Hampshire Medical Center	\N	\N	\N	\N	42.7564074	-71.4620781	8 Prospect St Nashua, NH 03060	Unclear	Hours are from 8 a.m. to 4 p.m. beginning Sunday. Donations will be accepted on Monday through Wednesday after Sunday, until further notice.	Nashua	NH
203	South Shore Pulmonary	\N	\N	\N	\N	40.6795411	-73.6318897	11 Vanderveer Ct Rockville Centre, NY 11570	Yes	Curbside is fine, this is the home address of one of the doctors in the practice because curbside is not allowed at the office.	Rockville Centre	NY
204	Tomorrow's Hope	\N	\N	\N	\N	43.6164562	-116.3911495	1404 N Main St #200 Meridian, ID 83642	Yes	Drop off during business hours or by mail	Meridian	ID
205	J&K Healthcare 	\N	\N	\N	\N	41.1921365	-73.7278985	332 E Main St Mt Kisco, NY 10549	Yes		Mt. Kisco 	NY
206	Bethel Lutheran Home 	\N	\N	\N	\N	43.9949073	-97.1149063	1001 Egan Ave S Madison, SD 57042	No	1001 S Egan Ave	Madison	SD
207	Maxim Healthcare Services - Exton, PA Branch	\N	\N	\N	\N	40.0289501	-75.6046683	748 Springdale Dr #120 Exton, PA 19341	Yes	Either mail in attention to Julie Dimino or can drop off curbside in front of building	Exton	PA
208	GenieHealth LLC	\N	\N	\N	\N	39.0838656	-76.5836344	479 Jumpers Hole Rd #304A Severna Park, MD 21146	Yes	Mail to Attn: Rose, or call office 410-544-0053 to donate/drop off	Severna Park	MD
209	1st Choice Healthcare	\N	\N	\N	\N	36.4208996	-90.5863304	1001 N Missouri Ave Corning, AR 72422	Yes	1001 N Missouri Ave	Corning	AR
210	Mazzoni Center	\N	\N	\N	\N	39.9426271	-75.1650829	1348 Bainbridge St Philadelphia, PA 19147	Yes	give to the front desk for the health center	Philadelphia	PA
211	happy Sun Care Services LLC	\N	\N	\N	\N	38.9711142	-94.7010787	9957 W 87th St Overland Park, KS 66212	No	9957 W. 87th street	Ovrland Park	KS
212	Saint Ages Medical Center	\N	\N	\N	\N	36.8352022	-119.7655278	1303 E Herndon Ave Fresno, CA 93720	No	Back of the hospital at the warehouse.	Fresno	CA
213	East Texas Community Health Services, Inc.	\N	\N	\N	\N	31.5883295	-94.646609	1401 S University Dr Nacogdoches, TX 75961	Yes	Contact Ray Hillhouse in the Administration building for exact drop off location 	Nacogdoches	TX
214	Monmouth Medical Center, Southern Campus	\N	\N	\N	\N	40.0731927	-74.218758	600 River Ave Lakewood, NJ 08701	Yes	600 River Avenue	Lakewood	NJ
215	Yale New Haven Hospital	\N	\N	\N	\N	41.3044229	-72.9355663	20 York St New Haven, CT 06510	No	Email DonationsPPE@ynhh.org with instructions as to how hospital staff may contact you, or Attn: Gina Siddiqui	New Haven	CT
216	Priority Urgent Care	\N	\N	\N	\N	35.3714472	-119.1461357	1345 Allen Rd #300 Bakersfield, CA 93314	Yes	Drop off at entrance or mail w/ Attn: Dr. Kiran Loewen	Bakersfield	CA
217	Hospice of Missoula	\N	\N	\N	\N	46.8531579	-114.0391094	1900 S Reserve St Missoula, MT 59801	Yes	Contact hospice staff or leave at front door	Missoula	MT
218	Gateway-Longview	\N	\N	\N	\N	42.966965	-78.7162657	6350 Main St Williamsville, NY 14221	Yes	mailing address	Williamsville	NY
219	York Hospital	\N	\N	\N	\N	43.142537	-70.6522577	15 Hospital Dr York, ME 03909	Yes	Curbside 	York 	ME
220	Dartmouth-Hitchcock Manchester	\N	\N	\N	\N	43.010453	-71.4235355	100 Hitchcock Way Manchester, NH 03104	Unclear	Dartmouth-Hitchcock request for https://www.dartmouth-hitchcock.org/patient-education/sewing-masks.html	Manchester	NH
221	St Francis Medical Center	\N	\N	\N	\N	40.2166342	-74.741205	601 Hamilton Ave Trenton, NJ 08629	Yes	Mail in,  or deliver to Chambers Street Lobby Security Desk	Trenton	NJ
222	Palmetto General Hospital 	\N	\N	\N	\N	25.8847708	-80.3285219	2001 W 68th St Hialeah, FL 33016	Yes	2001 W 68th St Suite 202 Medical Education building  ATTENTION: DR NATALIE DONN	Hialeah	FL
223	One Medical	\N	\N	\N	\N	37.7947881	-122.3984101	Two Embarcadero Center 2 Embarcadero Center, San Francisco, CA 94111	Yes	At Front Desk Open M-F 8am-6pm	San Francisco	CA
224	Providence Sunnyside Clinic	\N	\N	\N	\N	45.4293242	-122.569141	9290 SE Sunnybrook Blvd Suite 120 Clackamas, OR 97015	Yes	Leave at front desk	Clackamas	OR
225	Medical City Arlington, Neurotrauma ICU	\N	\N	\N	\N	32.6931143	-97.1130553	3301 Matlock Rd Arlington, TX 76015	Yes	ATTN: Deliver to NEUROTRAUMA ICU unit	Arlington	TX
226	Burke Rehabilitation Hospital	\N	\N	\N	\N	41.0165329	-73.7521048	785 Mamaroneck Ave White Plains, NY 10605	No	Attn: Nursing Office, Burke Rehabilitation Hospital, 785 Mamaroneck Ave, White Plains, NY 10605	White Plains	NY
227	Mohawk Valley Orthopedics, P.C.	\N	\N	\N	\N	42.9581773	-74.187203	5010 NY-30 #205 Amsterdam, NY 12010	Yes	Knock and someone will come to door. 	Amsterdam	NY
228	Emory Hospital	\N	\N	\N	\N	33.8018318	-84.252755	3539 Church St Clarkston, GA 30021	Yes		Clarkston	GA
229	Richboro Rehabilitation and Nursing Center 	\N	\N	\N	\N	40.2274999	-75.0002322	253 Twining Ford Rd Richboro, PA 18954	Yes		Richboro	PA
230	Namaste Home Health and Hospice	\N	\N	\N	\N	39.6778921	-104.9178682	6000 E Evans Ave Suite 2-400 Denver, CO 80222	Yes	Our office is only staffed with one person daily. If the door is closed please leave just outside the door. We have a secure premise that is safe and we occupy our entire floor. 	Denver	CO
231	Keystone Health	\N	\N	\N	\N	39.9443493	-77.6410454	111 Chambers Hill Dr #200 Chambersburg, PA 17201	No	Drop off can be made at the white tent outside of the building or shipped to our Admin office - 111 Chambers Hill Drive, Suite 200 Attn:  Purchasing Dept. Chambersburg, PA 17201	Chambersburg	PA
232	Medical Arts Associates	\N	\N	\N	\N	47.6253357	-122.1849257	1632 116th Ave NE Suite C Bellevue, WA 98004		Attention Bryton	Bellevue	WA
233	Maternity at Miami Valley Hospital South 	\N	\N	\N	\N	39.6524128	-84.1140877	2400 Miami Valley Dr Centerville, OH 45459	No	Drop off at Maternity at back of hospital or mail in care of maternity if a donation, in care of Maternity RNs	Centerville 	OH
234	Brattleboro Retreat	\N	\N	\N	\N	42.8587059	-72.5626366	Anna Marsh Ln Brattleboro, VT 05301	Yes	Anna Marsh Lane	Brattleboro	VT
235	Orchardview Villa	\N	\N	\N	\N	41.7902534	-71.3553207	135 Tripps Ln Riverside, RI 02915	Yes		Riverside 	RI
236	Waterview Villa Nursing Home	\N	\N	\N	\N	41.8070772	-71.3734082	1275 S Broadway East Providence, RI 02914	Yes		East Providence	RI
237	Mercy Medical Center	\N	\N	\N	\N	40.6859597	-73.6334305	1000 N Village Ave Rockville Centre, NY 11570	Yes	Ask to speak to charge nurse in ED	Rockville Center	NY
238	Grays Harbor Community Hospital	\N	\N	\N	\N	46.9792794	-123.8469526	915 Anderson Dr Aberdeen, WA 98520	Yes	Front desk	Aberdeen	WA
239	Prairieville Family Hospital	\N	\N	\N	\N	30.3177735	-90.978589	37358 Market Place Drive Prairieville, LA 70769		drop off	Prairieville	LA
240	Mercy Gilbert Medical Center	\N	\N	\N	\N	33.3108595	-111.715749	3451 E Tyson St Gilbert, AZ 85295	No	Residential address. Alternate residential address: 1018 Osprey Ct., Gilbert, AZ 85234	GILBERT	AZ
241	Aloha Kona Urgent Care 	\N	\N	\N	\N	19.6267654	-155.9815826	75-5995 Kuakini Hwy #213 Kailua-Kona, HI 96740	Yes	75-5995 Kuakini Highway WE are open 1130-9 M-F and 1-9 Weekends. 808-365-2297	Kailua-Kona	HI
242	Hospice Savannah	\N	\N	\N	\N	32.0050283	-81.0922373	1352 Eisenhower Dr Savannah, GA 31406	No	Please drop off at the front desk area	Savannah	GA
243	Mountain View Retirement Village	\N	\N	\N	\N	32.3500767	-110.994899	7900 N La Cañada Dr Tucson, AZ 85704	Yes	Drop off at front door.  Attention: Tim Nelson Executive Director	Tucson	AZ
244	Seton Medical Center	\N	\N	\N	\N	37.6801347	-122.4740564	1900 Sullivan Ave Daly City, CA 94015	No	Please drop off in front lobby! Thanks <3	Daly City	CA
245	Pinnacle Senior Living	\N	\N	\N	\N	33.4079715	-111.9651975	1600 W Broadway Rd Tempe, AZ 85282	Yes	Suite #100 drop off or mail to the attention of : Liz Billett CML	Tempe	AZ
246	Eating Recovery Center	\N	\N	\N	\N	39.7214805	-104.8936925	98 Spruce St Denver, CO 80230	No	Please mail to Dr. Anne O'Melia, Eating Recovery Center, 98 Spruce St. Denver, Colorado	Denver	CO
247	Prairie Ridge Health, Inc.	\N	\N	\N	\N	43.322528	-89.035324	1515 Park Ave Columbus, WI 53925	Yes	ATTN: MELISSA MANGAN	COLUMBUS	WI
248	Post Acute Medical North Clear Lake	\N	\N	\N	\N	29.5478299	-95.117639	655 E Medical Center Blvd Webster, TX 77598	Yes		Webster	TX
249	One Medical	\N	\N	\N	\N	33.0830322	-117.2669227	7740 El Camino Real Suite F Carlsbad, CA 92009	Yes	Meet outside for delivery. 	Carlsbad	CA
250	Health Alliance Clinton Hospital	\N	\N	\N	\N	42.5410183	-71.761278	60 Hospital Rd Leominster, MA 01453	Yes	60 Hospital Road	Leominster	MA
251	Unity Point St. Lukes	\N	\N	\N	\N	41.9853036	-91.6604322	1026 A Ave NE Cedar Rapids, IA 52402	Yes	Main Entrance of the hospital	Cedar Rapids	IA
252	Willow Brooke Point Senior Living	\N	\N	\N	\N	44.5505899	-89.5739358	1800 Bluebell Ln Stevens Point, WI 54481	Yes	Please ring doorbell	Stevens Point	WI
253	Waimea Smiles	\N	\N	\N	\N	20.0232419	-155.6653736	67-1125 Hawaii Belt Rd Waimea, HI 96743	Yes	I can meet you in front of north Hawaii hospital and pick up from a distance - thanks you! - Dr. Spivak 	Waimea 	HI
254	Summit Commons	\N	\N	\N	\N	41.856175	-71.394771	99 Hillside Ave Providence, RI 02906	Yes	Drop off in between double doors, ring buzzer	Providence 	RI
255	San Ramon Regional Medical 	\N	\N	\N	\N	37.7759705	-121.9582426	6001 Norris Canyon Rd San Ramon, CA 94583	No	Please call 925-275-8312 before dropping off	San Ramon	CA
256	Holy Cross Hospital 	\N	\N	\N	\N	26.1881825	-80.1180915	4896 NE 20th Ave Fort Lauderdale, FL 33308	No	Look for the tan building with blue awning. Ring doorbell and drop off at office.  OR  Call Community Outreach at 954-542-1651.	Fort Lauderdale	FL
257	Heatherwood Skilled Nursing	\N	\N	\N	\N	41.4771452	-71.3073263	398 Bellevue Ave Newport, RI 02840	Yes		Newport	RI
258	Mercy Care Hospital	\N	\N	\N	\N	41.9780945	-91.6557271	701 10th St SE Cedar Rapids, IA 52403	Yes	10th Street Entrance	Cedar Rapids	IA
259	Neighborhood Health	\N	\N	\N	\N	38.773524	-77.0805047	6677 Richmond Hwy Alexandria, VA 22306	Yes	please call 980-322-1050 	Alexandria	VA
260	Courtyard Care Center	\N	\N	\N	\N	37.3220968	-121.9681513	340 Northlake Dr San Jose, CA 95129	Yes	Just bring it to the door, will take care of it from there	San Jose	CA
261	Virginia Head and Neck Surgeons	\N	\N	\N	\N	39.0771466	-77.4764034	19455 Deerfield Ave # 301 Leesburg, VA 20176	Yes	Mail or drop off please!!!! we are in a high risk profession with exposure to the nose and throat and patients with a high viral load. Virginia Head and Neck Surgeons--19455 Deerfield Ave Suite 301--Leesburg, VA 20176. Phone 703 858-4439	Leesburg	VA
262	Intermountain medical center 	\N	\N	\N	\N	40.6590658	-111.891794	5121 S Cottonwood St Murray, UT 84107			Murray	UT
263	Santa Rosa Community Health	\N	\N	\N	\N	38.4290368	-122.7420462	711 Stony Point Rd #17 Santa Rosa, CA 95407	Yes	Best to drop off outside front door around 8am when clinic opens (but anytime between 8a-5p is okay)	Santa Rosa	CA
264	One Medical	\N	\N	\N	\N	37.7888907	-122.3981003	535 Mission St San Francisco, CA 94105	Yes	Leave at front desk, ATTN James Flannagan	San Francisco	CA
265	American Mercy Home Care	\N	\N	\N	\N	39.1509986	-84.4457297	4000 Smith Road, Suite 200 Cincinnati, OH 45209	Yes	Amy Owens	Cincinnati 	OH
651	Excel Urgent Care of Astoria	\N	\N	\N	\N	40.6612306	-73.8408268	157-40 Cross Bay Blvd Howard Beach, NY 11414	Yes		Howard Beach	NY
266	Manatee Memorial Hospital	\N	\N	\N	\N	27.4972631	-82.5621778	206 2nd St E Bradenton, FL 34208	Yes	Main Entrance at North/River side of building	Bradenton	FL
267	New Milford VNA and Hospice	\N	\N	\N	\N	41.5987092	-73.4064548	68 Park Lane Rd New Milford, CT 06776	If boxes are open but equipment is sealed, yes	We have a table outside our front door for drop offs	New Milford	CT
268	Kokua Kalihi Valley Comprehensive Family Services	\N	\N	\N	\N	21.3406635	-157.8745368	2239 N School St Honolulu, HI 96819	Yes	2239 North School Street	Honolulu	HI
269	Baylor University Medical Center	\N	\N	\N	\N	32.7901014	-96.7801012	Wadley Tower 3600 Gaston Ave #656, Dallas, TX 75246	Yes	Please bring to 5th floor of the Wadley building & ring doorbell, or call (214) 800-7974 to ask office manager to pick up from you on ground level. 	Dallas	TX
270	Chesapeake Regional Medical Center	\N	\N	\N	\N	36.8810114	-76.152152	1277 Lambeth Ln Virginia Beach, VA 23455	Yes	This is the home address of the doctor in charge of distribution, please leave on the front porch.	Virginia Beach	VA
271	Salud Family Health Center	\N	\N	\N	\N	40.0776278	-104.8058375	203 S Rollie Ave Fort Lupton, CO 80621	Yes	Attn: Elaine Quintana	Ft. Lupton	CO
272	La Porte Hospital Company LLC	\N	\N	\N	\N	41.6106426	-86.7251334	1007 Lincolnway La Porte, IN 46350	Yes	ATTN: Accounting/Finance	La Porte	IN
273	Porter Adventist Hospital	\N	\N	\N	\N	39.6700386	-104.9748195	2525 S Downing St Denver, CO 80210	No	Drop off at ED entrance 	Denver	CO
274	Hancock County Health System	\N	\N	\N	\N	43.0982377	-93.8080765	532 1st St NW Britt, IA 50423	Yes	Donation box is located just inside the doors at the front entrance.	Britt	IA
275	NYU Winthrop Hospital	\N	\N	\N	\N	40.7374096	-73.6559204	250 Fulton Ave New Hyde Park, NY 11040	Yes	Mail only. NYU COVID-19 Donations Attention: Bulk Warehouse. See https://nyulangone.org/give/funds/covid-19 for more details and signup form.	New Hyde Park	NY
276	AtlantiCare	\N	\N	\N	\N	39.4083341	-74.53873	1406 Doughty Rd Egg Harbor Township, NJ 08234	Yes	Please call 609-272-2400 prior. 	Egg Harbor Township 	NJ
277	Dr. Marian Mele- Health Coaching	\N	\N	\N	\N	40.7352797	-74.0012674	15 Charles St New York, NY 10014	Yes	mail to address above please	ny	NY
278	New York Proton Cancer Treatment Center	\N	\N	\N	\N	40.8040797	-73.9340747	225 E 126th St New York, NY 10035	Yes	In the lobby	New York	NY
279	Mercy Home Care	\N	\N	\N	\N	42.0045649	-91.6352158	2740 1st Ave NE Cedar Rapids, IA 52402	Yes	can drop off at entry	Cedar Rapids	IA
280	Bethel Visiting Nurse Association 	\N	\N	\N	\N	41.4147131	-73.3797648	70 Stony Hill Rd Bethel, CT 06801	Yes	70 Stony Hill Road	Bethel	CT
281	Shenandoah Community Health	\N	\N	\N	\N	39.4738902	-77.966459	99 Tavern Rd Martinsburg, WV 25401	Yes		Martinsburg	WV
282	Angelic Healthcare	\N	\N	\N	\N	40.4690456	-74.4523566	637 Georges Rd North Brunswick Township, NJ 08902	No		North Brunswick	NJ
283	Kaiser Permanente Santa Clara Medical Center	\N	\N	\N	\N	37.3362374	-121.998538	700 Lawrence Expy Santa Clara, CA 95051		Drop off items at the Hospital Main Entrance or call (408) 851-5622   OR   To the ED Main Lobby	Santa Clara	CA
284	AMITA Saint Joseph Hospital Chicago	\N	\N	\N	\N	41.9340062	-87.6390023	2845 N Sheridan Rd Chicago, IL 60657	Yes	Please contact Dr. Garcia at 812-320-0912 or 773-665-9920	Chicago	IL
285	The Ohio State University Wexner Medical Center	\N	\N	\N	\N	40.0188871	-83.0306051	660 Ackerman Rd Columbus, OH 43202	No	Drop off at 610 Ackerman Rd between 8a-5p daily.  Please stay in your car and we will unload for you.  Check https://wexnermedical.osu.edu/features/coronavirus/ways-to-help/donate-supplies">https://wexnermedical.osu.edu/features/coronavirus/ways-to-help/donate-supplies or 614-366-8000 for more information.	Columbus	OH
286	St Cloud hospital Centra Care 	\N	\N	\N	\N	45.3402548	-93.4201836	20400 Potassium St NW Nowthen, MN 55303	Yes	20400 potassium st nw	nowthen	MN
287	Maryland Health and Wellness Center	\N	\N	\N	\N	39.631576	-77.760133	1571 Wesel Blvd Hagerstown, MD 21740	Yes	1571 Wesel Blvd, Hagerstown, MD 21740	Hagerstown	MD
288	Primary Care of Hudson & Immediate Care	\N	\N	\N	\N	42.8153524	-71.419964	300 Derry Rd Hudson, NH 03051	Yes	Front entrance please	Hudson 	NH
289	Sherwood Village Assisted Living	\N	\N	\N	\N	32.2193717	-110.8219506	102 S Sherwood Village Dr Tucson, AZ 85710	Yes	Ring bell at front door	Tucson	AZ
290	Registered Nurses Professional Association	\N	\N	\N	\N	37.3091862	-121.9312227	950 S Bascom Ave #2120 San Jose, CA 95128	Yes	Please drop off donations in the donation box in front of our office. The office building is open Monday -Friday 8am -5pm. Please call 408-292-6061 or e-mail info@rnpa.net once you make your donation as we are in and out of the office, working remotely. Thank You!	San Jose 	CA
291	SUN Behavioral Health	\N	\N	\N	\N	40.088993	-82.9935215	900 E Dublin Granville Rd Columbus, OH 43229	Yes	Jeremy Miller	Columbus	OH
292	Sacramento Native American Health Center	\N	\N	\N	\N	38.5761075	-121.4790916	2020 J St Sacramento, CA 95811	Yes	We have a receiving door in alley with a doorbell. 	Sacramento	CA
293	Branford Hills Homecare Services	\N	\N	\N	\N	41.2956443	-72.7720117	29 Business Park Dr Suite A Branford, CT 06405	Yes	Mailing address Attn:  Patti Fisher	Branford 	CT
294	Cayuga Medical Center	\N	\N	\N	\N	42.490971	-76.4668825	767 Warren Rd Ithaca, NY 14850	Yes	Items can be dropped off at the rear of the building under the gazebo.	Ithaca	NY
295	COMPASSIONATE HOME HEALTH CARE, INC	\N	\N	\N	\N	41.0239683	-80.3545111	2305 Wilmington Rd #3 New Castle, PA 16105	Yes	2305 WILMINGTON RD STE 3	NEW CASTLE	PA
296	DHS: Indiana Department of Homeland Security District 1	\N	\N	\N	\N	41.6177844	-87.4083934	Gary/Chicago International Airport 6001 Airport Rd, Gary, IN 46406	No	Call for pickup 219-576-2786	Gary	IN
297	One Medical	\N	\N	\N	\N	42.3592454	-71.0574839	28 State Street 28 State St #2860, Boston, MA 02109	Yes	Attn: Katie Noyes 	Boston	MA
298	Family Care Network	\N	\N	\N	\N	48.7784856	-122.4809493	709 W. Orchard Drive, Suite 4  Bellingham, WA 98225	Unknown		Bellingham	WA
299	Greater Elgin Family Care Center	\N	\N	\N	\N	42.046053	-88.2776705	373 Summit St Elgin, IL 60120	Yes	Front door	Elgin	IL
300	Ascentria Care Alliance	\N	\N	\N	\N	42.262885	-71.7900927	14 E Worcester St #300 Worcester, MA 01604	Yes	AttN: Neal Wynne , Ascentria Care Alliance ,14 East Worcester St., Suite 300, Worcester MA 01604	Worcester	MA
301	Mount Sinai Beth Israel	\N	\N	\N	\N	40.7330663	-73.9819259	281 1st Avenue New York, NY 10003	Yes	Please email us at ppebethisrael@gmail.com to coordinate drop off/shipments. Thank you for all your help! - Mount Sinai Beth Israel Internal Medicine Residents	New York	NY
302	Kona Community Hospital	\N	\N	\N	\N	19.6123058	-155.9525039	76-940 Hualalai Rd #2 Kailua-Kona, HI 96740	Yes	ATTN: Anne Broderson. No special instructions	Kailua-Kona	HI
303	Home Care Associates 	\N	\N	\N	\N	39.9489949	-75.1663033	1500 Walnut St #1000 Philadelphia, PA 19102	Yes	Suite is on 10th floor	Philadelphia 	PA
304	Methodist Hospital of Sacramento	\N	\N	\N	\N	38.463412	-121.4169329	7500 Hospital Dr Sacramento, CA 95823	Yes		Sacramento	CA
305	Esperanza Health Centers	\N	\N	\N	\N	41.8080441	-87.6947718	4700 S California Ave Chicago, IL 60632	Yes	Curbside	Chicago	IL
306	Loyola University Medical Center	\N	\N	\N	\N	41.8600176	-87.8333511	2160 S 1st Ave Maywood, IL 60153	No	Dock 1, located North side of campus, mailing addressed to Wil Gonzalez	Maywood	IL
307	Medical Management Plus, LLC (Home Health Care Agency)	\N	\N	\N	\N	41.6875658	-72.6557265	1233 Silas Deane Hwy 2nd Fl Wethersfield, CT 06109	Yes	Drop off is on second floor	Wethersfield 	CT
308	THE BROOKLYN HOSPITAL CENTER	\N	\N	\N	\N	40.691265	-73.9777743	121 Dekalb Ave Brooklyn, NY 11201	No	ATTN: RECEIVING---PAM/MAHESH	New York - Brooklyn 	NY
309	Lake Charles Memorial	\N	\N	\N	\N	30.2046906	-93.1975818	1701 Oak Park Blvd Lake Charles, LA 70601	Yes	Drop off at Emergency Department 	Lake charles	LA
310	Methodist North Hospital	\N	\N	\N	\N	35.2338797	-89.8921771	3960 New Covington Pike Memphis, TN 38128	Yes		Memphis 	TN
311	Waveny Home healthcare Inc.	\N	\N	\N	\N	41.1443657	-73.4999128	21 Grove St 2nd Floor New Canaan, CT 06840	Yes	2nd Floor drop off please.	New Canaan	CT
312	University Health System	\N	\N	\N	\N	29.5078141	-98.5774288	4502 Medical Drive San Antonio, TX 78229	Will need to confirm, depending on product.	ValueAnalysis@uhs-Sa.com	San Antonio	TX
313	Franciscan Health Olympia Fields	\N	\N	\N	\N	41.5232407	-87.710796	20201 Crawford Ave Olympia Fields, IL 60461	No	Donated items may be shipped or dropped off at the hospital's receiving dock. Operating hours for the loading dock are between 7am-3pm. Any items dropped off after that time can be left with security.	Olympia Fields 	IL
314	Adventist Health Glendale Emergency Dept	\N	\N	\N	\N	34.1502139	-118.2304591	1509 Wilson Terrace Glendale, CA 91206	No	Enter ED waiting room; Attn: Donovan Stewart	Glendale	CA
315	Maimonides Medical Center	\N	\N	\N	\N	40.6395577	-73.9975109	1025 48th St Brooklyn, NY 11219	Yes	Drop off Monday thru Friday or Shipped	New York - Brooklyn 	NY
316	All Pointe HomeCare	\N	\N	\N	\N	41.5567332	-72.9126044	675 W Johnson Ave Cheshire, CT 06410	Yes	675 West Johnson Ave	Cheshire	CT
317	One Medical	\N	\N	\N	\N	37.4477109	-122.1554384	590 Forest Ave Palo Alto, CA 94301	Yes	Curbside procedure	Palo Alto	CA
318	Monmouth Medical Center South Campus	\N	\N	\N	\N	40.2425697	-74.3491706	56 Oakland Mills Rd Manalapan Township, NJ 07726	Yes	Dropping off at Physician address to disperse to colleagues to avoid hospital exposure of donors. Call 732-939-5224 and curbside exchange can be arranged	Manalapan	NJ
319	Center for Nursing and Rehabilitation 	\N	\N	\N	\N	42.909881	-73.346691	21 Danforth St Hoosick Falls, NY 12090	Yes	Mailing is same as above	Hoosick Falls 	NY
320	Medicaid Personal Providers, LLC	\N	\N	\N	\N	38.9961477	-77.0357066	8555 16th St #105 Silver Spring, MD 20910	Yes	Please call 240-355-3101	Silver Spring	MD
321	Arbor Place Assisted Living for Seniors	\N	\N	\N	\N	38.1444493	-121.2726061	17 Louie Ave Lodi, CA 95240	Yes	Drop off front door we will pick up from there	Lodi	CA
322	Kaiser Permanente Woodland Hills California 	\N	\N	\N	\N	34.1709445	-118.5896036	5601 De Soto Ave Woodland Hills, CA 91367	Yes	Pediatric department Jonathan Reid/Maryam Ghavami 	Woodland Hills	CA
323	Visiting Nurse Services Inc. of Southern CT	\N	\N	\N	\N	41.3485119	-72.9337838	24 Scott St Hamden, CT 06514	Yes	Attn: tracy hailey	Hamden	CT
324	St. Edna Subacute and Rehabilitation Center	\N	\N	\N	\N	33.7637393	-117.9022435	1929 N Fairview St Santa Ana, CA 92706	Yes	Parking Lot - South west corner of parking lot	Santa Ana	CA
325	Waikiki Health	\N	\N	\N	\N	21.2755668	-157.8204885	277 ʻŌhua Ave Honolulu, HI 96815	Yes	Items may be dropped off at 277 Ohua Avenue, Honolulu, HI 96815.  If you will call ahead we are happy to meet you curbside.  808 922-4787.  You can also mail to this address to the attention of Phyllis. Thank you! 	Honolulu	HI
326	Signature Healthcare Brockton Hospital	\N	\N	\N	\N	42.0874254	-70.991421	680 Centre Street Brockton, MA 02302	Yes	Deliver to ER at Brockton Hospital (have only 1 wk's supplies)	Brockton	MA
327	Heritage Manor	\N	\N	\N	\N	42.3670748	-83.1342833	9500 Grand River Ave Detroit, MI 48204	Yes	mailing address ATTN:  Valerie Craig	Detroit	MI
328	Elmhurst Hospital	\N	\N	\N	\N	40.7450814	-73.8857797	79-01 Broadway Flushing, NY 11373	Yes	If you are dropping off curbside between the hours of 9am and 4pm, you can contact Donna Adames at 718-334-5058. At any time of the day or night, you can call the CCU at 718-334-3360 and ask if someone can come pick up your delivery. You may have to explain the situation ("Hi, I'm so-and-so and I'm at the front of the hospital at 79-01 Broadway to drop off some PPE") since they won't be expecting your call!  You can also mail items to: Elmhurst Hospital Center 79-01 Broadway Cardiology Dept D4-54 Elmhurst, NY 11373  I have provided the contact information for the Cardiology Dept, but we intend to distribute any personal protective equipment to everyone at the hospital who needs it (Emergency Dept, Internal Medicine, Medical Intensive Care Unit, etc). If you'd like to donate to a specific group of people, please include a note!	Elmhurst	NY
329	Silver Hills Healthcare Center	\N	\N	\N	\N	36.2232409	-115.2590781	3450 N Buffalo Dr Las Vegas, NV 89129	Yes	Call 702-952-2273 to coordinate drop off at facility vestibule. 	Las Vegas	NV
330	Schoenbrunn Healthcare	\N	\N	\N	\N	40.4546185	-81.4010239	2594 E High Ave New Philadelphia, OH 44663	No	Front door lobby	New Philadelphia	OH
331	NewYork-Presbyterian Weill Cornell Medical Center	\N	\N	\N	\N	40.7643316	-73.9542559	525 E 68th St New York, NY 10065	Yes	To donate supplies, email masks@nyp.org. Please call, we will have a cart for you to drop off supplies thanks! | Mail to F24 | Mail Attn: Justin M720 in OBGYN	New York -  Manhattan	NY
332	DanielCare, LLC - Home Health Agency	\N	\N	\N	\N	41.2579868	-73.1453713	1077 Bridgeport Ave Shelton, CT 06484	Yes	First Floor, Suite 101	Shelton	CT
333	One Medical - Pac Heights	\N	\N	\N	\N	37.7890972	-122.4344283	2410 California St San Francisco, CA 94115	Yes	closes at 5p	San Francisco	CA
334	Health Transport Partners Ambulance	\N	\N	\N	\N	39.9116628	-76.6798467	150 Farm Ln York, PA 17402	Yes	https://healthtransport.net/contact-us/	York	PA
335	Abington-Jefferson Hospital 	\N	\N	\N	\N	40.1184339	-75.1188592	1235 Old York Rd Abington, PA 19001	No	Beginning Wednesday, March 25, donations for Abington – Jefferson Health can be brought to a drop-off location at Levy Medical Plaza. Donations will be accepted Monday to Friday from 9 a.m. to 4 p.m. All products should be in their original packaging -- unopened and unexpired. These products will be reviewed before distribution by Supply Chain staff. https://www.jeffersonhealth.org/coronavirus-covid-19/medical-supply-donation.html	Abington 	PA
336	Methodist Le Bonheur Germantown Hospital	\N	\N	\N	\N	35.0901073	-89.8086713	7691 Poplar Ave Germantown, TN 38138	Yes		Germantown 	TN
337	Josephine Caring Community	\N	\N	\N	\N	48.24441	-122.367296	9901 272nd Pl NW Stanwood, WA 98292	Yes		Stanwood	WA
338	Reedsburg Area Ambulance Service	\N	\N	\N	\N	43.5298585	-90.0068855	230 Railroad St Reedsburg, WI 53959	Yes	230 Railroad Street	Reedsburg	WI
339	ConvenientMD - Brunswick location 	\N	\N	\N	\N	43.9078629	-69.9164585	193 Bath Rd Brunswick, ME 04011	Yes	193 Bath Rd	BRUNSWICK	ME
340	Evans Memorial Hospital	\N	\N	\N	\N	32.1661913	-81.8987728	200 N River St Claxton, GA 30417	Yes	Drop off with staff at ER entrance.  ATTN: Nikki NeSmith	Claxton	GA
341	One Medical	\N	\N	\N	\N	37.386812	-121.9889431	1299 Oakmead Pkwy Sunnyvale, CA 94085	Yes	ATTN: Alainna Mapanao 	Sunnyvale	CA
342	VA Palo Alto Veterans Healthcare	\N	\N	\N	\N	37.4054073	-122.1400089	3801 Miranda Ave Palo Alto, CA 94304	Yes		Palo alto	CA
343	UMass memorial medical center	\N	\N	\N	\N	42.2856074	-71.7901354	281 Lincoln St Worcester, MA 01605	Yes		Worcester	MA
344	Montefiore New Rochelle Hospital	\N	\N	\N	\N	40.9128806	-73.7873586	16 Guion Pl New Rochelle, NY 10801	we will accept an open box but contained items must be wrapped/sealed tight.		New Rochelle	NY
345	Fireside Health Care Center	\N	\N	\N	\N	34.0214063	-118.5024079	947 3rd St Santa Monica, CA 90403	Yes	ATTN: Administrator Janees Nunez	Santa Monica	CA
346	Sutter California Pacific Medical Center (CPMC)	\N	\N	\N	\N	37.7859397	-122.4221856	1101 Van Ness Ave San Francisco, CA 94109	Yes	Emergency Department Security, unless donation in pallet quantity.  OR  Call 844-987-6099 for instructions	San Francisco 	CA
347	West Hills Hospital 	\N	\N	\N	\N	34.2995612	-118.7001883	4786 Summit Ave Simi Valley, CA 93063	Yes	Please drop off to mailbox 	Simi Valley 	CA
348	Fairlane Gardens Nursing and Rehab	\N	\N	\N	\N	40.3041946	-75.8522606	21 Fairlane Rd Reading, PA 19606	Yes	21 Fairlane Road	Reading	PA
349	Century Center for Rehabilitation and Healing (Century Health and Rehab Center)	\N	\N	\N	\N	30.971315	-87.273087	6020 Industrial Blvd Century, FL 32535	Yes	Drop off at the front lobby	Century	FL
350	Allegro Pediatrics - Bothell	\N	\N	\N	\N	47.7711358	-122.187867	19801 North Creek Parkway, Suite # 201 Bothell, WA 98011	Yes	TBD	Bothell	WA
351	Sharp HealthCare	\N	\N	\N	\N	32.8143395	-117.1246369	4000 Ruffin Rd Suite A San Diego, CA 92123	Yes	ATTN: Christina Yates	San Diego	CA
352	Coast Plaza Hospital	\N	\N	\N	\N	33.9127726	-118.0988257	13100 Studebaker Rd Norwalk, CA 90650	No	Deliver to admitting lobby staff	Norwalk	CA
353	Hearthstone at Murrayhill	\N	\N	\N	\N	45.4418377	-122.8203157	10880 SW Davies Rd Beaverton, OR 97008	Yes		Beaverton	OR
354	Suburban Medical and Wellness Center	\N	\N	\N	\N	42.0432013	-88.0594581	800 Woodfield Rd #102 Schaumburg, IL 60173	Yes	Mailing address	Schaumburg 	IL
355	Gundersen Health System	\N	\N	\N	\N	43.791313	-91.2472178	2101 Sims Pl La Crosse, WI 54601	Yes	Contact the Gundersen medical foundation at (608) 775-6600 or gmf@gundersenhealth.org 	LaCrosse	WI
356	Sunrise Hospital	\N	\N	\N	\N	36.1323404	-115.1332383	3131 La Canada St Suite 107 Las Vegas, NV 89169	Yes	Drop off at above address | MAIL IN to sunrise medical center, ATTN: Tracy Szymanski, 3186 S Maryland PKWY, Las Vegas, NV 89131	Las Vegas	NV
357	Canandaigua Emergency Squad, Inc.	\N	\N	\N	\N	42.8925867	-77.295063	233 N Pearl St Canandaigua, NY 14424	Yes	Please ring door bell, and stand 6 feet from door please.  Mail will deliver to our base.	Canandaigua	NY
358	Diamond Ridge Health and Rehabilitation	\N	\N	\N	\N	28.9038014	-82.47976	2730 W Marc Knighton Ct Lecanto, FL 34461	Yes	May be brought to the front door or mailed to the physical address	Lecanto	FL
359	Summit Care	\N	\N	\N	\N	30.4752772	-84.2391989	2123 Centre Pointe Blvd Tallahassee, FL 32308	Yes	Attn: Josh Byers	Tallahassee	FL
360	Care Finders Total Care 	\N	\N	\N	\N	40.8696471	-74.0623163	611 US-46 #200 Teterboro, NJ 07608	Yes		Hasbrouck Heights	NJ
361	Mountain Terrace Senior Living	\N	\N	\N	\N	44.9569448	-89.6783518	3312 Terrace Ct Wausau, WI 54401	Yes	Please ring the doorbell and someone will help you.  	Wausau	WI
362	Primary Care Partners, Family Medical Center at Dover	\N	\N	\N	\N	40.8899088	-74.5440854	375 E McFarlan St Dover, NJ 07801	Yes	Please call before delivery so as supplies not taken by neighborhood residents	Dover	NJ
363	One Medical	\N	\N	\N	\N	34.0590031	-118.418866	10250 Santa Monica Blvd #1280 Los Angeles, CA 90067	Yes	located in the Westfield Century City mall, use delivery loading docks. Attn: Michelle A.	Century City	CA
364	Orthopedic Partners	\N	\N	\N	\N	41.5723279	-72.1233783	82 New Park Ave North Franklin, CT 06254	Yes		North Franklin	CT
365	Sandy Ridge Center for Rehabiliation and Healing	\N	\N	\N	\N	30.6301619	-87.063636	5360 Glover Ln Milton, FL 32570	Yes	ATTN:  Administrator	Milton	FL
366	Summit Community Care Clinic 	\N	\N	\N	\N	39.5702044	-106.0760504	360 Peak One Dr #100 Breckenridge, CO 80424	Yes	ATTN:  Margarita Wong.  PO BOX 4337 Frisco, CO 80443 via mail. Or drop off on site.  	Frisco	CO
367	Methodist University Hospital	\N	\N	\N	\N	35.1450995	-90.0170625	221 N Claybrook St Memphis, TN 38104	Yes	This is the dock for the main Hospital - main entrance is 1265 Union Ave.  	Memphis 	TN
368	Children's Hospital at Montefiore	\N	\N	\N	\N	40.7449717	-73.9770424	222 E 34th St #2420 New York, NY 10016	Yes	Residential address of doctor. Give to doorman. 	NEW YORK	NY
369	Blue Ridge Mountain Recovery Center	\N	\N	\N	\N	34.3349507	-84.3776146	255 Depot Street, Suite 200 Ball Ground, GA 30107	Yes	Please call 678-454-6403 to arrange mailing or drop off.	Ball Ground	GA
370	Avamere Rehabilitation of Hillsboro	\N	\N	\N	\N	45.5183706	-122.9794217	650 SE Oak St Hillsboro, OR 97123	No	Please place items inside the double doors on the Walnut St. entrance NOT the Oak St entrance. 	Hillsboro	OR
371	ER Near Me	\N	\N	\N	\N	32.9562615	-96.8204458	15240 Dallas Pkwy Dallas, TX 75248	Yes	Call 214-566-6871 to arrange for drop off 	Dallas	TX
372	Buena Vista Hospice, Home Health and Palliative Care	\N	\N	\N	\N	34.1887369	-118.9326911	2545 W Hillcrest Dr #130A Thousand Oaks, CA 91320	No	Please go to double doors and ring door buzzer for assistance. 	Thousand Oaks	CA
373	Legacy Hospice	\N	\N	\N	\N	38.0219325	-78.4349601	650 Peter Jefferson Pkwy #310 Charlottesville, VA 22911	new & unused items only please		Charlottesville 	VA
374	La Jolla Nursing and Rehabilitation Center	\N	\N	\N	\N	32.8513226	-117.2486179	2552 Torrey Pines Rd La Jolla, CA 92037	Yes	Attn: Administrator	La Jolla	CA
375	One Medical 	\N	\N	\N	\N	45.4427792	-122.8010863	12180 SW Scholls Ferry Rd Tigard, OR 97223	Yes	Please deliver to front desk staff inside the office. 	Tigard	OR
376	Vintage Faire Nursing and Rehabilitation	\N	\N	\N	\N	37.6915818	-121.0486047	3620 Dale Rd Building B Modesto, CA 95356	Yes	Central Supply	Modesto	CA
377	Edward Hospital	\N	\N	\N	\N	41.7606589	-88.1534222	801 S Washington St Naperville, IL 60540	No	ICU: Accepting donations between 9 a.m. and 3 p.m. at our Loading Docks at Edward Hospital (Osler Dr. west of the South Parking Garage)  OR  Pull up to ER entrance and staff will receive it.  	Naperville	IL
378	Good Samaritan Medical Center 	\N	\N	\N	\N	42.0978285	-71.0615518	235 N Pearl St Brockton, MA 02301	Yes	6am-8pm, 7-days a week: bring PPE donations to main lobby (blue awning/HoneyDew entrance). Ask for security guard assistance or follow signage indicating donation drop off area.   After hours: please bring to main ER entrance, security or registration will assist you  If any questions can call during normal business hours, you can ask for Wayne A. (Director of Security) 	Brockton 	MA
379	Avamere at Chestnut Lane Assisted Living	\N	\N	\N	\N	45.5016133	-122.4195674	1219 NE 6th St Gresham, OR 97030	No	Attn: Renee Vairora	Gresham	OR
380	Catered Manor Nursing Center	\N	\N	\N	\N	33.8311209	-118.1900656	4010 N Virginia Rd Long Beach, CA 90807	Yes	drop off curbside-call - 562.426.0394 to guarantee someone will be available -ask for administrator or director of nursing OR mail to address above-OR email nsaulietis@covenantcare.com -Thank you	Long Beach	CA
381	Johnson County Developmental Supports	\N	\N	\N	\N	38.9389717	-94.7595278	10501 Lackman Rd Lenexa, KS 66219	Yes	Please call first, 913-826-2626 and arrange drop off, or mail	Lenexa	KS
382	Kaiser Los Angeles Medicine Center	\N	\N	\N	\N	34.0977074	-118.2978822	4950 Sunset Blvd 6th Floor Los Angeles, CA 90027	No	ATTN: Dr. Khang	Los Angeles	CA
383	Geisinger Health System 	\N	\N	\N	\N	40.9677777	-76.6053472	100 N Academy Ave Danville, PA 17822	Yes	Shipping/Receiving areas at each of our hospital facilities across Pennsylvania	Danville	PA
384	Franciscan Children's 	\N	\N	\N	\N	42.3501528	-71.1433908	30 Warren St Boston, MA 02135		Please email jfexis@franciscanchildrens.org with detailed information including the brand and the quantity of the items you wish to donate. Thank you!	Brighton	MA
385	Bowie Health Center	\N	\N	\N	\N	38.9494063	-76.7459566	15001 Health Center Drive Bowie, MD 20716	Yes	In the ER lobby	Bowie	MD
386	UPMC Mercy	\N	\N	\N	\N	40.4362085	-79.9856207	1400 Locust St #2192 Pittsburgh, PA 15219	Yes	If mailed use above address.  If curbside, please contact Bryce Bernard at 412.944.3486 or brycebernard@icloud.com to coordinate someone meeting you	Pittsburgh	PA
387	Rush University Medical Center	\N	\N	\N	\N	41.87241	-87.668694	711 S Paulina St Chicago, IL 60612	Yes	Donations can be dropped off at the receiving dock at the above address. Thank you so much.	Chicago	IL
388	Denton family dental care	\N	\N	\N	\N	33.1590166	-97.1046907	3969 Teasley Ln #1500 Denton, TX 76210	Yes	VFD 	Denton	TX
389	Arbor Rehabilitation & Nursing Center	\N	\N	\N	\N	38.1445346	-121.2734555	900 N Church St Lodi, CA 95240	Yes	Drop Off Outside Front Door or Mail to above address	Lodi	CA
390	John Shaw, MD	\N	\N	\N	\N	36.1558065	-86.8018296	1916 Patterson St #300 Nashville, TN 37203	Yes	call office at 615-915-2206	Nashville	TN
391	Overlake Hospital	\N	\N	\N	\N	47.6210873	-122.1860501	1231 116th Ave NE #25 Bellevue, WA 98004	No	If you have items on the list above that you wish to donate, please call the Overlake Foundation at 425.688.5525. You will be directed to drive up to the Starbucks entrance on Swistak Drive on the Overlake campus and call the Foundation number (425.688.5525) from your car. Foundation staff will meet you there to take your donation. 	Bellevue	WA
392	Cascade Behavioral Hospital	\N	\N	\N	\N	47.4871907	-122.2962775	12844 Military Rd S Tukwila, WA 98168	Yes	12844 Military Road South, Attn:  Don Stenzel, Central Supply	Tukwila	WA
393	Memorial Hospital Of Texas County	\N	\N	\N	\N	36.6912257	-101.4757109	520 Medical Dr Guymon, OK 73942	No	Mailing Address Attn Admin	Guymon	OK
394	Hampton Emergency Squad 	\N	\N	\N	\N	40.706685	-74.955897	9 Wells Ave Hampton, NJ 08827	Yes	Call (908)763-7618 to schedule drop off 	Hampton	NJ
395	Pacific Hills Manor	\N	\N	\N	\N	37.124018	-121.6592796	370 Noble Ct Morgan Hill, CA 95037	No	Drop off at Front Door	Morgan HIll	CA
396	Community Clinic	\N	\N	\N	\N	36.185448	-94.1228329	614 E Emma Ave #300 Springdale, AR 72764	Yes	ATTN: Ashley Hardin, COVID-19	Springdale	AR
397	DOC-AID	\N	\N	\N	\N	27.6070169	-99.4746044	2438 Monarch Dr A375 Laredo, TX 78045	Yes	2438 Monarch Drive A375	Laredo	TX
398	Holy Name Hospital 	\N	\N	\N	\N	40.8840542	-74.0111227	88 Chadwick Rd Teaneck, NJ 07666	Yes	Bring to drop off 	Teaneck 	NJ
399	Encinitas Nursing and Rehabilitation Center	\N	\N	\N	\N	33.0368993	-117.2725257	900 Santa Fe Dr Encinitas, CA 92024	Yes	infront of our building entrance	Encinitas	CA
400	River Oaks Treatment Center	\N	\N	\N	\N	27.8553342	-82.2967911	12012 Boyette Rd Riverview, FL 33569	Yes	Administration Office.  Shipping preferred	Riverview	FL
401	D&S Community Services	\N	\N	\N	\N	30.2093184	-97.8151247	6800 West Gate Blvd #102 Austin, TX 78745	Yes	Ring door bell, someone will pick up from outside. Or mail. 	Austin	TX
402	Valle Vista Convalescent Hospital	\N	\N	\N	\N	33.1118125	-117.0931525	1025 W 2nd Ave Escondido, CA 92025	Yes	Front door or mail	Escondido 	CA
403	Grassroots Crisis Intervention Center	\N	\N	\N	\N	39.1864323	-76.8788971	6700 Freetown Rd Columbia, MD 21044	Yes	Donations can be dropped off at the main front entrance of the building.  There is a table set up for donation drop-offs.	Columbia	MD
404	Care Dimensions Hospice & Palliative Care	\N	\N	\N	\N	42.547008	-70.9450544	75 Sylvan St Suite B-102 Danvers, MA 01923	Yes	Please contact Phil Cibelli at pcibelli@caredimensions.org to make arrangements to drop off or have items picked up. Or you can mail them to Care Dimensions, 75 Sylvan St. Suite B-102, Danvers MA 01923. If you have questions, please call 978-750-9362 and leave a message. We will return your call as soon as possible. 	Danvers	MA
405	Pacific Coast Manor	\N	\N	\N	\N	36.9773376	-121.9579316	1935 Wharf Rd Capitola, CA 95010	No	We have our facility locked. There is an employee at the front door 6am - 6:30 pm Please knock and they will accept the PPE.	Capitola	CA
406	Flowers Hospital	\N	\N	\N	\N	31.2379068	-85.456757	4370 W Main St Dothan, AL 36305	Unsure	Drop off or mail	Dothan	AL
407	Windsor Gardens Care Center of Fullerton	\N	\N	\N	\N	33.8726619	-117.9205979	245 E Wilshire Ave Fullerton, CA 92832	Yes	Lindsey Mason	Fullerton	CA
408	Gilroy Healthcare and Rehabilitation Center	\N	\N	\N	\N	37.0179644	-121.5665234	8170 Murray Ave Gilroy, CA 95020	Yes	Drop off at the door of the front lobby	Gilroy	CA
409	Joyal Health Care Services Inc	\N	\N	\N	\N	30.1969498	-81.6125944	9905 Old St Augustine Rd STE 503 Jacksonville, FL 32257	Yes	Office	Jacksonville 	FL
410	The Magnolia of Millbrae	\N	\N	\N	\N	37.5977108	-122.3903556	201 Chadbourne Ave Millbrae, CA 94030	Yes	Drop off inside the first set of double doors	Millbrae	CA
411	Newton-Wellesley Hospital	\N	\N	\N	\N	42.3306338	-71.2464373	2014 Washington St Newton, MA 02462	Unsure	Please contact coviddonations@partners.org to coordinate donation. See https://www.partners.org/Newsroom/Articles/Partners-HealthCare-Coronavirus-Announcement.aspx	Newton	MA
412	Perry Community Hospital 	\N	\N	\N	\N	35.5921462	-87.8637988	2718 Squirrel Hollow Dr Linden, TN 37096	Yes	ER staff will accept	Linden	TN
413	Wagner Heights Nursing and Rehabilitation Center	\N	\N	\N	\N	38.0342961	-121.3475513	9289 Branstetter Pl Stockton, CA 95209	Yes	ATTN: Maxine Niel	Stockton, CA 95209	CA
414	Family Health Center of San Diego 	\N	\N	\N	\N	32.7517207	-117.1619983	4094 Fourth Avenue San Diego, CA 92103	No		San Diego	CA
415	UC Davis Health Supply Chain Management	\N	\N	\N	\N	38.5404485	-121.417929	7301 14th Ave Sacramento, CA 95820	Currently accepting new and unused supplies as of 3/25/20	Central Processing Attention: Danielle Wilkerson	Sacramento	CA
416	Bronson Battle Creek Hospital	\N	\N	\N	\N	42.3309466	-85.1782306	363 Fremont St Battle Creek, MI 49017	No		Battle Creek	MI
417	Mission Hospital 	\N	\N	\N	\N	33.5610153	-117.6653937	27700 Medical Center Rd Mission Viejo, CA 92691	Yes	Attn: Christina Dodge in the Emergency Department	Mission Viejo	CA
418	Children's Hospital Los Angeles	\N	\N	\N	\N	34.097817	-118.2898677	4650 Sunset Blvd Los Angeles, CA 90027	No	Email Covid19Donations@chla.usc.edu to get started. 	Los Angeles	CA
419	Royal Care Skilled Nursing Center	\N	\N	\N	\N	33.8066557	-118.1940414	2725 Pacific Ave Long Beach, CA 90806	Yes	Front Door: Director of Nursing	Long Beach	CA
420	Wise River MT Volunteer Ambulance Service	\N	\N	\N	\N	45.7928187	-112.9570339	64795 MT-43 Wise River, MT 59762	Yes	Leave supplies 	Wise River 	MT
421	Avamere Court at Keizer	\N	\N	\N	\N	45.0009467	-123.0258105	5210 River Rd N Keizer, OR 97303	Yes	Drop off items at the entrance of building 2, facing River Rd.	Keizer	OR
422	White Oak of Waxhaw 	\N	\N	\N	\N	34.9257925	-80.7317283	700 Howie Mine Rd Waxhaw, NC 28173	Yes	Once you get to the front door let them know you are there to give materials. 	Waxhaw 	NC
423	Wesley Health Centers	\N	\N	\N	\N	34.0432489	-118.2437768	522 San Pedro St Los Angeles, CA 90013	Yes	Attn: Paul Cha	Los Angeles	CA
424	Ronald Reagan UCLA Medical Center	\N	\N	\N	\N	34.0664764	-118.4465738	757 Westwood Plaza Los Angeles, CA 90024	contact email	covid19PPEsupport@mednet.ucla.edu	Los Angeles	CA
425	Courtyard Health Care	\N	\N	\N	\N	38.5525235	-121.7285408	1850 E 8th St Davis, CA 95616	Yes	Receptionist will accept at door., Ring Doorbell after 8 p.m.	Davis	CA
426	Trinity Treatment Center	\N	\N	\N	\N	32.8032347	-83.6623333	1221 Newberg Ave Macon, GA 31206	Yes	Clinic hours 6:30 am - 11:30 am	Macon	GA
427	Hands On Medicine 	\N	\N	\N	\N	45.5618342	-122.6688944	5311 N Vancouver Ave Portland, OR 97217	Yes	If during clinic hours, to clinic. 7-5 M-F.	Portland	OR
428	Dixie Vital Care Infusion Clinic	\N	\N	\N	\N	36.519657	-87.3015161	311 Landrum Pl Clarksville, TN 37043	No	311 Landrum Place Suite 600	Clarksville	TN
429	Avery OBGYN	\N	\N	\N	\N	41.1440943	-73.3610542	12 Avery Pl Westport, CT 06880	Yes		Westport	CT
430	Stanford Health Care	\N	\N	\N	\N	37.4514017	-122.1157407	820 Quarry Rd. Extension Palo Alto, CA 94304	No	By mail ONLY. Attn: Supply Donations Center. Details at https://bit.ly/StanfordPPENeeds. Donations must be unopened, original packaging, in accordance with hospital standards. Not accepting homemade supplies at this time.	Palo Alto	CA
431	Methodist Hospital	\N	\N	\N	\N	44.9373898	-93.3446376	3601 Park Center Blvd #901 Minneapolis, MN 55416	No	Please call 612-810-3541	St. Louis Park	MN
432	Cherokee County Fire & Emergency Services	\N	\N	\N	\N	34.1939544	-84.4975556	884 Univeter Rd Canton, GA 30115	Yes	Loading dock if needed. Can travel if necessary.	Canton	GA
433	UCLA Medical Center - Santa Monica	\N	\N	\N	\N	34.0270998	-118.4863064	1250 16th St Santa Monica, CA 90404	unknown, contact email 	covid19PPEsupport@mednet.ucla.edu	Santa Monica	CA
434	Mercy Fitzgerald	\N	\N	\N	\N	39.9266094	-75.2693679	1500 Lansdowne Ave Darby, PA 19023	Yes, but products need to be unused	Drop off at donation center (1500 Lansdowne Avenue Darby, Pennsylvania 19023; West Lobby entrance near security desk)	Philadelphia	PA
435	North Central Bronx Hospital	\N	\N	\N	\N	41.0273952	-73.7778007	121 Westmoreland Ave #611 White Plains, NY 10606	Yes	ivan.cexp@gmail.com	White Plains 	NY
436	Sutter Medical Center Sacramento	\N	\N	\N	\N	38.5709021	-121.4694505	2825 Capitol Ave Sacramento, CA 95816	Unsure	Unused masks only. Mail to Emergency Department, C/o Noel Hastings. For dropoff at Emergency Department, ask for Dr. Hastings, Dr. Montoya, or charge nurse. | For questions, contact Joseph Daly, Head Nurse Admin for the ER at DalyJW@sutterhealth.org	Sacramento	CA
437	Heartland Hospice	\N	\N	\N	\N	39.8242539	-75.0463754	1385 Chews Landing Rd Clementon, NJ 08021	Yes	Drop off at office 	Laure springs	NJ
438	Brookdale Hospital	\N	\N	\N	\N	40.845946	-73.9050838	1767 Clay Ave The Bronx, NY 10457	Yes	1767 Clay Ave	Bronx	NY
439	Presentation Rehabilitation 	\N	\N	\N	\N	42.3547685	-71.1682919	10 Bellamy St Brighton, MA 02135	Yes	Please bring to front desk or mail.  We appreciate you!	Brighton	MA
440	Premier Pediatrics of Manassas	\N	\N	\N	\N	38.7662486	-77.4857694	8713 Digges Rd Manassas, VA 20110	Yes		Manassas	VA
441	Tampa Lakes Health and Rehabilitation	\N	\N	\N	\N	28.0990001	-82.4544358	750 Hayes Rd Lutz, FL 33549	Yes	Drop off outside of front entry door	Lutz	FL
442	Mount Sinai Brooklyn	\N	\N	\N	\N	40.6187604	-73.9428238	3201 Kings Hwy Brooklyn, NY 11234	Yes		New York - Brooklyn 	NY
443	NHC HomeCare Hendersonville	\N	\N	\N	\N	36.3251108	-86.5954672	112 Saundersville Rd Hendersonville, TN 37075	Yes		Hendersonville	TN
444	VNA HOSPICE 	\N	\N	\N	\N	33.9382004	-117.2928698	6235 River Crest Dr Suite L Riverside, CA 92507	Yes	Leave with front desk 	Riverside 	CA
445	San Joaquin General Hospital	\N	\N	\N	\N	37.8867135	-121.2826314	500 W Hospital Rd French Camp, CA 95231	Yes	Attn: Spencer Wong, Family Medicine, Clinic 2	French Camp	CA
446	Mayhill Hospital	\N	\N	\N	\N	33.175862	-97.0866238	2809 S Mayhill Rd Denton, TX 76208	Yes	Drop off at front reception desk.	Denton	TX
447	Watchung Pediatrics 	\N	\N	\N	\N	40.6456196	-74.4744977	76 Old Stirling Rd Warren, NJ 07059	If new, open boxes are fine 	Front door 	Warren 	NJ
448	Windom Family Medical Center	\N	\N	\N	\N	43.879134	-95.113921	2170 Hospital Dr Windom, MN 56101	Yes	Curbside	Windom	MN
449	Saint Luke's Hospital of Kansas City	\N	\N	\N	\N	39.0474343	-94.5907899	4401 Wornall Road Kansas City, MO 64111	Yes	Go through Emergency Dept (ask for security)	Kansas City	MO
450	Trinitas Regional Medical Center	\N	\N	\N	\N	40.6597934	-74.2141265	225 Williamson St Elizabeth, NJ 07202	Yes	225 Williamson St.	Elizabeth	NJ
451	Pediatric and Medicine Inc	\N	\N	\N	\N	33.6881808	-84.2553445	4153 Flat Shoals Pkwy #300B Decatur, GA 30034	Yes	4153 Flat Shoals Pkwy Ste 300B, Decatur, Ga 30034	Decatur 	GA
452	Landmark Medical Center 	\N	\N	\N	\N	42.0087518	-71.1700556	5 Cedar Ridge Ln Mansfield, MA 02048	Yes	Text 617-794-8243 or Attn: Marianna	Mansfield	MA
453	San Jorge Children's and Women's Hospital	\N	\N	\N	\N	18.3318048	-66.0729297	6 Amatista St, Senderos de Montehiedra San Juan, PR 00926	Yes	Contact Dr. Pedro Escobar at 216-501-2142. Used masks ok.	San Juan	PR
454	Redmond Heights Senior Living	\N	\N	\N	\N	47.6756316	-122.1360636	7950 Willows Rd Redmond, WA 98052	No		Redmond	WA
455	Chippenham Hospital	\N	\N	\N	\N	37.513886	-77.5263617	7101 Jahnke Rd Richmond, VA 23225	Yes		Richmond	VA
456	Ben taub General Hospital 	\N	\N	\N	\N	29.7109781	-95.3940865	1504 Ben Taub Loop Houston, TX 77030	No	1504 Ben Taub loop 	Houston	TX
457	Grant Cuesta Sub-Acute and Rehabilitation Center 	\N	\N	\N	\N	37.3736851	-122.0769619	1949 Grant Rd Mountain View, CA 94040	Yes	Front patio 	Mountain View 	CA
458	The Brooklyn Hospital Center	\N	\N	\N	\N	40.6892617	-73.9857155	45 Hoyt St #5Q Brooklyn, NY 11201	Yes	 Attn: Mudita Patel	New York - Brooklyn	NY
459	Overlake Medical Center	\N	\N	\N	\N	47.6208736	-122.1868731	1035 116th Ave NE Bellevue, WA 98004	No	We take any and all donations, you can utilize our Foundation Department to help organize your generous donations.  425-688-5000 	Bellevue	WA
460	Lighthouse Behavioral Health Hospital 	\N	\N	\N	\N	33.7873851	-78.9977317	152 Waccamaw Medical Park Dr Conway, SC 29526	Yes	Front door only	Conway	SC
461	St. Vincent's Hospital 	\N	\N	\N	\N	33.5083434	-86.7886005	810 St Vincents Dr Birmingham, AL 35205	Yes	QUARANTINE ICU, 3rd floor, main hospital	Birmingham	AL
462	OhioHealth	\N	\N	\N	\N	39.9715722	-83.1101064	711 Distribution Dr Columbus, OH 43228	No	The collection center is located at a partner warehousing facility located at 711 Distribution Drive.  The hours of operation are 9:00 am to 3:00 pm.  When you arrive use the front door and someone will greet you and assist with bringing supplies inside.	Columbus	OH
463	Hosparus Health	\N	\N	\N	\N	38.2307461	-85.6381111	6200 Dutchmans Ln Louisville, KY 40205	Yes	Call Kim Kochersperger at (502)456-6200 to arrange drop off	Louisville 	KY
464	Riverwood Health and Rehbilitation	\N	\N	\N	\N	29.9363019	-82.1016026	808 Colley Rd Starke, FL 32091	Yes	Call ahead and Drop off at the door, ring doorbell. Or mail to 808 colley road, with attention to central supplies	Starke	FL
465	Memorial Health University	\N	\N	\N	\N	32.0311034	-81.0891667	4700 Waters Ave Savannah, GA 31404	Yes	Mail or drop off Karyn Clements ICU Director	Savannah	GA
466	Greater El Monte Community Hospital	\N	\N	\N	\N	34.0480516	-118.0434003	1701 Santa Anita Ave South El Monte, CA 91733	No		South El Monte	CA
467	Allegheny general hospital 	\N	\N	\N	\N	40.4574469	-80.0032706	320 E North Ave Pittsburgh, PA 15212	Yes	Cancer center, 2nd floor fellows room. Please call 4124172324, in case of difficulty to figure out address 	Pittsburgh 	PA
468	Chinatown Service Center	\N	\N	\N	\N	34.0626606	-118.2400077	767 N Hill St #200A Los Angeles, CA 90012	No	767 N Hill St Ste 200A	Los Angeles	CA
469	ID Consultants Inc	\N	\N	\N	\N	26.50739	-80.089415	2300 S Congress Ave #100 Boynton Beach, FL 33426	No	Drop off or mailing	Boynton Beach. 	FL
470	Mountain Medical Services 	\N	\N	\N	\N	44.294495	-74.0123913	1927 Saranac Ave Lake Placid, NY 12946	Yes	None 	Lake Placid	NY
471	Rearden Internal Medicine and Geriatrics LLC	\N	\N	\N	\N	32.9018769	-80.666916	121 S Jefferies Blvd Walterboro, SC 29488	No	121 S Jefferies Blvd	Walterboro	SC
472	Scotland Memorial Hospital	\N	\N	\N	\N	34.752905	-79.4677923	500 Lauchwood Dr Laurinburg, NC 28352	Yes	Attn: Bridgette Bowen	Laurinburg 	NC
473	Hollywood Presbyterian Medical Center 	\N	\N	\N	\N	34.2266634	-118.5476415	19019 Napa St Northridge, CA 91324	Yes		Northridge 	CA
474	Cyril W. Rebel MD	\N	\N	\N	\N	36.9453232	-120.0503188	550 E Almond Ave suite a Madera, CA 93637	Yes	Office address	Madera	CA
475	Parkland Hospital	\N	\N	\N	\N	32.814266	-96.835288	5223 Tex Oak Ave Dallas, TX 75235	Yes		Dallas	TX
476	Bryan Fire Department	\N	\N	\N	\N	30.6462335	-96.3585795	414 Lawrence St Bryan, TX 77801	Yes	In front of bay door by flag pole	Bryan	TX
477	Palo Alto Medical Foundation - Fremont Urgent Care and now COVID Respiratory Clinic	\N	\N	\N	\N	37.54818	-121.973592	3200 Kearney St Fremont, CA 94538	Yes	Drop off at 7688 Balmoral Way, Fremont, CA | Contact Raya Elias-Petros at 650-853-4808 or Eliaspr@sutterhealth.org	Fremont 	CA
478	St. Francis Medical Center	\N	\N	\N	\N	33.930826	-118.203228	3630 E Imperial Hwy Lynwood, CA 90262	Yes	Mike Arellano- ICU 	Lynwood	CA
479	Chino Valley Smile Center 	\N	\N	\N	\N	34.020112	-117.6870003	12850 10th St B1 Chino, CA 91710	Yes	Tareq Afifi	Chino	CA
480	Columbia st Mary's Milwaukee hospital 	\N	\N	\N	\N	43.0601221	-87.8806228	2394 E North Ave Milwaukee, WI 53211	Yes	There are screeners at the ER entrance who can take the package	Milwaukee 	WI
481	Hawkeye Care Center	\N	\N	\N	\N	42.5004542	-90.7568747	5575 Pennsylvania Ave Asbury, IA 52002	Yes		Asbury	IA
482	Providence Life Services	\N	\N	\N	\N	41.5538675	-87.7970055	18601 N Creek Dr Tinley Park, IL 60477	Yes	Mailing would work m-f 8-5:00pm	Tinley Park	IL
483	Texas Health Presbyterian Hospital of Flower Mound	\N	\N	\N	\N	33.0456562	-97.0675146	4400 Long Prairie Rd Flower Mound, TX 75028	Yes	Call 469-322-7609 days ahead to arrange dropoff at front entrance	Flower Mound	TX
484	Saint Barnabas Medical Center	\N	\N	\N	\N	40.7631494	-74.3047629	94 Old Short Hills Rd Livingston, NJ 07039	Yes	Deliver to respiratory department | Attn: Julianne Spizzoucco RN 4th floor Cooperman Pavilion  Float Pool unit	Livingston 	NJ
485	Katahdin Valley Health Center	\N	\N	\N	\N	45.9586967	-68.4525914	529 S Patten Rd Patten, ME 04765		529 S. Patten Rd	Patten	ME
486	Spring Valley Hospital (Universal Health Services)	\N	\N	\N	\N	36.0900057	-115.2402308	5400 South Rainbow Blvd Las Vegas, NV 89118	Yes	Used masks ok. Delivery only, no visitors allowed so please call unit manager 702-853-3200	Las Vegas	NV
487	Family Doctor Clinic of Thibodaux	\N	\N	\N	\N	29.7840005	-90.8122163	804 S Acadia Rd Thibodaux, LA 70301	Only if unused.	Unused masks only. Drop off or mail	Thibodaux	LA
488	Banner Physical Therapy	\N	\N	\N	\N	33.6092068	-112.2612215	9401 W Thunderbird Rd #190 Peoria, AZ 85381	Yes		Peoria	AZ
489	Omni medical center 	\N	\N	\N	\N	33.0936014	-96.7936582	4666 McDermott Rd Plano, TX 75024	Yes	Mail	Plano	TX
490	Colorado River Medical Center (CRMC)	\N	\N	\N	\N	34.8331484	-114.6175395	1401 Bailey Ave Needles, CA 92363	Yes	Inside front hospital entrance 	Needles 	CA
491	Shadyside Medical Center	\N	\N	\N	\N	40.57267	-79.8934699	3689 Saxonburg Blvd Pittsburgh, PA 15238	Yes	Drop off by the garage please.  	Pittsburgh 	PA
492	Amita Adventist Hinsdale Hospital	\N	\N	\N	\N	41.8056094	-87.9206935	120 N Oak St Hinsdale, IL 60521	Yes	120 N Oak St. Hinsdale , IL Attn Diagnostic Radiology Dept.	Hinsdale	IL
493	Mendota Mental Health Clinic	\N	\N	\N	\N	43.132012	-89.3977261	301 Troy Dr Madison, WI 53704	Yes	Admin building	Madison	WI
494	Garland Behavioral Hospital 	\N	\N	\N	\N	32.9193446	-96.6616404	2300 Marie Curie Blvd 5th floor Garland, TX 75042	Yes	2300 Marie Curie Blvd, 5th floor, Garland, TX ATTN: Victoria Tortorelli 	Garland	TX
495	Glengariff Rehabilitation	\N	\N	\N	\N	40.885881	-73.6320507	141 Dosoris Ln Glen Cove, NY 11542	No	Attention Director of Admissions 	Glencove 	NY
496	St John's Regional Medical Center	\N	\N	\N	\N	34.216734	-119.1558831	1600 N Rose Ave Oxnard, CA 93030	Yes	Attention ICU/CCU	Oxnard	CA
497	MercyOne North Iowa Medical Center	\N	\N	\N	\N	43.1500243	-93.2165482	1000 4th St SW Mason City, IA 50401	No	Mail, only new masks.	Mason City	IA
498	Saint John Vianney Center	\N	\N	\N	\N	40.0119964	-75.6833269	151 Woodbine Rd Downingtown, PA 19335	Yes	Call for instructions 610-518-2000	Downingtown 	PA
499	Troy Pediatrics,LLP	\N	\N	\N	\N	42.7375259	-73.6717372	258 Hoosick St #106 Troy, NY 12180	Would prefer unopened but would take open if needed	Attn :Dr. Marci Reynolds	Troy	NY
500	Clear lake specialties 	\N	\N	\N	\N	29.4758979	-95.0918589	1543 Sara Ln League City, TX 77573	Yes	Front door	League city 	TX
501	Grady Hospital	\N	\N	\N	\N	33.7531159	-84.382008	49 Jesse Hill Jr Dr SE Atlanta, GA 30303	Yes	Drop off from 7A-7P, please call building security in advance at (404-557-8106)  Pickup available for large orders, email for more information: ATLStudentCOVIDResponse@gmail.com  Mailing address ATTN: Personal Protective Equipment Emory Dean's Office Room 102	Atlanta	GA
502	SNF	\N	\N	\N	\N	41.564471	-83.5335465	28546 Starbright Blvd Perrysburg, OH 43551	Yes	To front door and to remain outside.  Notify receptionist (ring bell)	perrysburg	OH
503	Northwestern Specialists for Women	\N	\N	\N	\N	41.8987937	-87.6447457	900 N Kingsbury St, Suite 130 N Chicago, IL 60610	No	In our glass enclosed vestibule or by mail	Chicago	IL
504	Doylestown Hospital	\N	\N	\N	\N	40.3056669	-75.1463292	595 W State St Doylestown, PA 18901	Yes	Shipping ATTN: DONATIONS; on-site drop-off at RECEIVING	Doylestown	PA
505	SCDDSN Coastal Center	\N	\N	\N	\N	32.9853915	-80.1489846	9995 Miles Jamison Rd Summerville, SC 29485	Yes	Drop off at Switchboard	Summerville	SC
506	Valencia Hills Health and Rehabilitation 	\N	\N	\N	\N	28.0964074	-81.9787505	1350 Sleepy Hill Rd Lakeland, FL 33810	Please ensure items are unused/clean, thank you. 	Please call 618-615-2604 to schedule pick-up, delivery, mailing etc.  	Lakeland	FL
507	The Doctors Office of New Jersey	\N	\N	\N	\N	40.9844468	-74.1392715	85 Godwin Ave Midland Park, NJ 07432	Yes		MIDLAND PARK	NJ
508	Raleigh General Hospital 	\N	\N	\N	\N	37.787635	-81.2017897	1710 Harper Rd Beckley, WV 25801	Yes		Beckley	WV
509	OhioHealth Berger Hospital	\N	\N	\N	\N	39.6103822	-82.9362382	600 N Pickaway St Circleville, OH 43113	No	Please come to the main entrance and contact Kara Justice at 740-703-1469	Circleville	OH
510	Dynamic Mobile Imaging	\N	\N	\N	\N	37.5950343	-77.5675059	1100 Welborne Dr #300 Richmond, VA 23229	Yes	Attn: Rob Goode	Henrico	VA
511	St. Mary's Hospital	\N	\N	\N	\N	41.5525708	-73.0364301	56 Franklin St Waterbury, CT 06706	Yes	Curbside or mail.	Waterbury	CT
512	St Marys Hospital	\N	\N	\N	\N	37.5842894	-77.5126186	5801 Bremo Rd Richmond, VA 23226	No	Glen Allen	Richmond	VA
513	Questcare Medical Clinic 	\N	\N	\N	\N	33.2945103	-96.5704356	3591 McKinney St #100 Melissa, TX 75454	Yes	Prefer Mail to Questcare ATTN:  Sheri Morris 3591 McKinney Street Suite 100 Melissa, TX 75454 - May do drop off at the front door during business hours.  	Melissa	TX
514	OhioHealth O'Bleness Hospital	\N	\N	\N	\N	39.3279197	-82.1156224	55 Hospital Dr Athens, OH 45701	No	Come to the main entrance and call Sydney Webber at 646-284-3103	Athens	OH
515	Oklahoma City Veterans Affairs Healthcare Systems Medical Center	\N	\N	\N	\N	35.4829077	-97.4963849	921 NE 13th St Oklahoma City, OK 73104	Yes	Oklahoma City	Oklahoma City	OK
516	St. Luke's University Health Network 	\N	\N	\N	\N	40.6596937	-75.4443959	1650 E Race St Allentown, PA 18109	Yes	Curbside or 1650 East Race Street Allentown PA, 180109	Allentown 	PA
517	Sistersville General Hospital	\N	\N	\N	\N	39.5586939	-81.0041568	314 S Wells St Sistersville, WV 26175	Yes	Deck door access with door bell on South Wells St Sistersville WV 26175	Sistersville	WV
518	Women's Health Consulting	\N	\N	\N	\N	41.8793168	-87.6249224	200 S Michigan Ave #1550 Chicago, IL 60604	No	Mail (ATTN: Teresa Jackson PPE) or Drop-off OK	Chicago	IL
519	Rhea Medical Center	\N	\N	\N	\N	35.5292587	-84.9818353	9400 Rhea County Hwy Dayton, TN 37321	Unsure	Unused masks only. Mail to Attn: Mark Pollard. Possible to pick it up depending on location. 	Dayton	TN
520	Seashore Eye Associates O.D., PLLC	\N	\N	\N	\N	34.2063255	-77.9266098	1612 Doctors Cir Wilmington, NC 28401	No	curbside procedure or leave by back door. 	WILMINGTON	NC
521	Conifer Park OTP	\N	\N	\N	\N	43.0895705	-76.1890522	526 Old Liverpool Rd Liverpool, NY 13088	Yes	Waiting room / front desk. Workers are present. 	Liverpool	NY
522	Virginia Hospital Center	\N	\N	\N	\N	38.8890755	-77.1274832	1701 N George Mason Dr Arlington, VA 22205	Not sure. Can ask	Loading dock 	Arlington 	VA
523	Olathe Medical Center	\N	\N	\N	\N	38.852603	-94.8229695	20333 W 151st St Olathe, KS 66061	Yes	Olathe	Olathe	KS
524	Lifespring Home Health and Hospice	\N	\N	\N	\N	35.2054832	-97.4778028	2411 Springer Dr Norman, OK 73069	Yes		Norman	OK
525	OhioHealth Marion Hospital	\N	\N	\N	\N	40.5712085	-83.1289155	1000 McKinley Park Dr Marion, OH 43302	No	Please come to the main entrance and contact Beth Meadows at 740-360-1060	Marion	OH
526	Summa Health, Lake Health West	\N	\N	\N	\N	40.8467684	-81.4357319	4535 Dressler Rd NW Canton, OH 44718	Unsure	Unused masks only. Address to "US Acute Care Solutions, Dr. Mark Slabinski." Can locally pick up or arrange for shipment. 	Canton	OH
527	Conifer Park, Inc	\N	\N	\N	\N	42.7404519	-73.6834775	2435 6th Ave Troy, NY 12180	Yes	 mailing attn joe lacoppola	Troy	NY
528	Mercyhealth Javon Bea Hospital	\N	\N	\N	\N	42.2983388	-89.0994064	2400 N Rockton Ave Rockford, IL 61103	Yes	Front entrance. someone will assist so you don't have to go in to the hospital	Rockford	IL
1061	Activa Home Health	\N	\N	\N	\N	26.513477	-80.0780951	1501 Corporate Dr STE 230 Boynton Beach, FL 33426	Yes		Boynton beach	FL
529	OhioHealth Mansfield Hospital	\N	\N	\N	\N	40.7525748	-82.5280879	335 Glessner Ave Mansfield, OH 44903	No	Please come to the main entrance and contact Kyle Martin at 419-571-4763	Mansfield	OH
530	Tufts Medical Center	\N	\N	\N	\N	42.2991786	-71.0748852	25 Harvard St Boston, MA 02121	No	Drop off M-F 7am-3pm at loading dock, located near the bend in Harvard St. Donation instructions and details at: https://www.tuftsmedicalcenter.org/Giving-Support/Give/COVID-19-Support  Contact savePPE@tuftsmedicalcenter.org with questions.	Boston	MA
531	OhioHealth Dublin Hospital	\N	\N	\N	\N	40.1013876	-83.1646727	7500 Hospital Dr Dublin, OH 43016	No	Please come to the main entrance and contact Marlena Thomas at 330-502-6041	Dublin	OH
532	sahara health care	\N	\N	\N	\N	29.6257824	-95.6176635	140 Eldridge Rd Sugar Land, TX 77478	Yes	sahara health care, 140 eldridge rd suite B	sugar land	TX
533	Dr Daniel A DelCastillo DMD PA	\N	\N	\N	\N	25.8136498	-80.134855	925 Arthur Godfrey Rd #302 Miami Beach, FL 33140	Yes	At office door 3rd floor	Miami Beach	FL
534	CONIFER PARK OUTPATIENT	\N	\N	\N	\N	44.7829819	-73.549124	399 Seymour Rd West Chazy, NY 12992	Yes	JUST CALL CLINIC 518-561-1447 AND SOMEONE WILL GO OUT TO GRAB	WEST CHAZY	NY
535	Lake Miriam Clinic ( Lakeland Regional Health System )	\N	\N	\N	\N	27.9799157	-81.9566765	4710 Florida Ave S Lakeland, FL 33813	Yes	Attn: Dr. Melantha Aye	Lakeland	FL
536	Temple University Hospital	\N	\N	\N	\N	40.0054237	-75.1507198	3401 N Broad St Philadelphia, PA 19140	Yes	ATTN: Emergency department - Nancy Politarhos  |  ATTN: TUH Admin Suite - David Fleece	Philadelphia	PA
537	Saint Barnabas Medical Center	\N	\N	\N	\N	40.7637469	-74.3012795	95 Old Short Hills Rd West Orange, NJ 07052	Yes	Please leave at security desk 	West Orange 	NJ
538	Sutter Medical Center Sacramento 	\N	\N	\N	\N	37.0321977	-95.6160703	Email for local drop off sites	Yes	Email jengriffith.ppe@gmail.com	Sacramento	CA
539	Chase Brexton Health Services, Inc.	\N	\N	\N	\N	39.3029758	-76.6155614	1111 N Charles St Baltimore, MD 21201	Yes	Drop off at the front entrance of the address listed above.	Baltimore	MD
540	OhioHealth Shelby Hospital	\N	\N	\N	\N	40.882361	-82.6740811	199 W Main St Shelby, OH 44875	No	Please come to the main entrance and contact Kyle Martin at 419-571-4763	Shelby	OH
541	St Anthony Health Center	\N	\N	\N	\N	44.8358614	-93.5989097	1107 Hazeltine Blvd #200 Chaska, MN 55318	Yes	leave at door of suite #200	Chaska	MN
542	Queen of the Valley Medical Center	\N	\N	\N	\N	38.324482	-122.2971094	1000 Trancas St Napa, CA 94558	Yes	PPE FOR STAFF 	Napa	CA
543	West Virginia University Hospital 	\N	\N	\N	\N	39.6539117	-79.9577486	1 Medical Center Dr Morgantown, WV 26505	Yes	Attention Dept of Anesthesia:Kelly Meyers CRNA, Clinical Coordinator Anesthesiology WVU Hospital  1 Med Center Drive   Morgantown WV 26505	Morgantown 	WV
544	Hillside Health & Rehab	\N	\N	\N	\N	46.8275642	-114.034209	4720 23rd Ave Missoula, MT 59803	Yes	leave at front desk	Missoula	MT
545	St Anthony Health Center	\N	\N	\N	\N	45.0362743	-93.2115946	3700 Foss Rd St Anthony, MN 55421	Yes	Leave at front desk	Minneapolis	MN
546	Beacon Memorial South Bend	\N	\N	\N	\N	41.6836909	-86.2519755	615 N Michigan St South Bend, IN 46601	Yes	Att:Vic Wagner	South Bend 	IN
547	Mobile medical response, Covenant 	\N	\N	\N	\N	43.519079	-84.139071	7587 Alex Ct Freeland, MI 48623	Yes	Both 	Freeland	MI
548	OhioHealth Pickerington Health Center	\N	\N	\N	\N	39.9117389	-82.7829064	1010 Refugee Rd Pickerington, OH 43147	No	Please come to the main entrance and contact Nikki Lyons at 614-202-4210	Pickerington	OH
549	All kids pediatrics 	\N	\N	\N	\N	30.5417467	-92.0801678	920 N Main St Opelousas, LA 70570	Yes	Employers are sitting outside 	Opelousas	LA
550	OhioHealth Westerville Medical Center	\N	\N	\N	\N	40.1473563	-82.9381396	300 Polaris Pkwy Westerville, OH 43082	No	Please come to the main entrance and contact Emilee Palmer at 740-507-6242	Westerville	OH
551	Mount Sinai Hospital - Klingenstein Pavilion	\N	\N	\N	\N	40.7895169	-73.9540616	1176 5th Ave New York, NY 10029	No	Have front desk security call KP4	New York - Manhattan	NY
552	Saint Alphonsus Regional Medical Center	\N	\N	\N	\N	43.6132915	-116.2558421	1055 N Curtis Rd Boise, ID 83706	No	Receiving Dock ATTN: Donations	Boise	ID
553	Ripley Medical Clinic	\N	\N	\N	\N	35.7427938	-89.5387797	202 Tucker Ave Ripley, TN 38063	Yes	Attn:Cynthia	Ripley	TN
554	Dominican Hospital	\N	\N	\N	\N	36.989473	-121.9844119	1555 Soquel Dr  Santa Cruz, CA 95065	Unknown	Drop off with waiting room receptionist	Santa Cruz	CA
555	CharDonnay Dialysis 	\N	\N	\N	\N	29.6369979	-98.4899703	21006 Las Lomas Blvd San Antonio, TX 78258	Yes	Administrator's house. Please drop there. Our nurses work in the prison and will pick up from her so that they can take their PPE into the prison with them. 	San Antonio 	TX
556	Florida Comprehensive Pain and Wellness	\N	\N	\N	\N	26.1275192	-80.246551	7390 NW 5th St #4 Plantation, FL 33317	Yes	Deliver to address listed. We can also pick up from a local site	Plantation	FL
557	Noxubee General Hospital	\N	\N	\N	\N	33.1220867	-88.5588576	78 Hospital Dr Macon, MS 39341	No		Macon	MS
558	Riverside Resources, Inc.	\N	\N	\N	\N	39.3181747	-94.9322935	1124 Shawnee St Leavenworth, KS 66048	Yes	ATTN:  Michelle Hill   Please mail if at all possible, if not, curbside by mailbox is okay	Leavenworth	KS
559	WNC Baptist Retirement Home: Rickman Nursing Care Center	\N	\N	\N	\N	35.613225	-82.583049	213 Richmond Hill Dr Asheville, NC 28806	Yes	Mail or drop off: 828-254-9675: call ahead and drop off at back of facility, by loading dock	Asheville 	NC
560	The Village Health & Rehab	\N	\N	\N	\N	46.8480892	-114.0449892	2651 South Ave W Missoula, MT 59804	Yes	leave at front desk	Missoula	MT
561	Miramont Pointe	\N	\N	\N	\N	45.4311381	-122.5455571	11520 SE Sunnyside Rd Clackamas, OR 97015	Yes	leave at front door	Portland	OR
562	Pacific Gardens Nursing and Rehab Center	\N	\N	\N	\N	36.7369939	-119.7174015	577 S Peach Ave Fresno, CA 93727	Yes	Attn: Damian Etzler, Pacific Gardens Nursing and Rehab. Center 577 South Peach Ave, Fresno, California  93727	Fresno	CA
563	OhioHealth Grove City Hospital	\N	\N	\N	\N	39.8769064	-83.0332417	1375 Stringtown Rd Grove City, OH 43123	No	Please come to the main entrance and contact Heather Miller at 614-560-6161	Grove City	OH
564	Cancer Treatment Centers of America	\N	\N	\N	\N	42.4488878	-87.8275365	2520 Elisha Ave Zion, IL 60099	No		Zion	IL
565	Frederick Health	\N	\N	\N	\N	39.4224195	-77.4149715	400 West 7th St Frederick, MD 21701	Unsure	New masks only. Drop off or mail. 	Frederick	MD
566	Excel Urgent Care of NJ - Iselin	\N	\N	\N	\N	40.5617695	-74.3001795	740 US-1 #2 Iselin, NJ 08830	Yes		Iselin	NJ
567	Excel Urgent Care of NJ - Chester	\N	\N	\N	\N	40.7887847	-74.6807187	2 North Rd Chester, NJ 07930	Yes		Chester	NJ
568	Westchester Gardens Health & Rehab	\N	\N	\N	\N	28.0413711	-82.7069206	3301 McMullen Booth Rd Clearwater, FL 33761	Yes	lease at front door	Clearwater	FL
569	Dutchess County Children and Family Services	\N	\N	\N	\N	41.7022868	-73.9300578	60 Market St Poughkeepsie, NY 12601	Yes	Mail to Colleen Maher 1 Peters Pass Port Ewen NY 12466 or call 845-594-9360 to set up pickup	Poughkeepsie	NY
570	The Doctors Office of West Caldwell	\N	\N	\N	\N	40.8490192	-74.296653	556 Passaic Ave West Caldwell, NJ 07006	Yes		West Caldwell	NJ
571	Kaiser Permanente - Walnut Creek	\N	\N	\N	\N	37.8924348	-122.058953	1425 S Main St Walnut Creek, CA 94596	Unclear	2 options:  (1) Entrance to hospital in Palm Conference Room.  (2) Administration department off campus at 1450 Maria Lane	Walnut Creek	CA
572	UT Henderson Respiratory Clinic	\N	\N	\N	\N	32.1619097	-94.7948507	317 Wilson St Henderson, TX 75652	No	Supplies can be dropped off at the back door	Henderson	TX
573	The Residence at Timber Pines	\N	\N	\N	\N	28.4758338	-82.6120006	3140 Forest Rd Spring Hill, FL 34606	Yes	leave at front door	Spring Hill	FL
574	Excel Urgent Care of NJ - Old Bridge	\N	\N	\N	\N	40.4040669	-74.321963	2624 County Rd 516 Old Bridge, NJ 08857	Yes		Old Bridge	NJ
575	Autumn Glen	\N	\N	\N	\N	45.1818631	-93.3605659	3715 Coon Rapids Blvd NW Minneapolis, MN 55433	Yes	Leave at front desk	Coon Rapids	MN
576	Alamitos West Health & Rehab	\N	\N	\N	\N	33.8027011	-118.0646213	3902 Katella Ave Los Alamitos, CA 90720	Yes	lease at front door	Los Alamitos	CA
577	Charles House Association	\N	\N	\N	\N	35.9662997	-79.0346882	7511 Sunrise Rd Chapel Hill, NC 27514	Yes	In front of door near benches under the awning is fine.	Chapel Hill	NC
578	Laurels of Hendersonville	\N	\N	\N	\N	35.3430234	-82.4565738	290 Clear Creek Rd Hendersonville, NC 28792	Yes	Mail or come by front door and ring bell.  Open 24/7	Hendersonville	NC
579	West Hills Health & Rehab	\N	\N	\N	\N	45.4679405	-122.7365649	5701 SW Multnomah Blvd Portland, OR 97219	Yes	lease at front door	Portland	OR
580	The Peaks	\N	\N	\N	\N	35.2339813	-111.6593679	3150 N Winding Brook Rd Flagstaff, AZ 86001	Yes	lease at front door	Flagstaff	AZ
581	Old Main Village	\N	\N	\N	\N	44.161698	-93.9998826	301 S 5th St Mankato, MN 56001	Yes	Leave at front desk	Mankata	MN
582	One Medical	\N	\N	\N	\N	33.3113566	-111.7423688	2196 E Williams Field Rd #116 Gilbert, AZ 85296	Yes	ATTN: Troy Birmingham	Gilbert	AZ
583	Valley View Estates Health & Rehab	\N	\N	\N	\N	46.248236	-114.1668253	225 N 8th St Hamilton, MT 59840	Yes	lease at front door	Hamilton	MT
584	Mission Skilled Nursing and Subacute Center	\N	\N	\N	\N	37.3344677	-121.9511328	410 N Winchester Blvd Santa Clara, CA 95050	Yes	curbside	Santa Clara	CA
585	Sabal Palms Health Care Center	\N	\N	\N	\N	27.9215868	-82.7693677	499 Alt Keene Rd Largo, FL 33771	Yes	lease at front door	Largo	FL
586	Saint Alphonsus Medical Center	\N	\N	\N	\N	44.0250261	-116.9767263	351 SW 9th St Ontario, OR 97914	No	Receiving Dock - ATTN: Donations	Ontario	ID
587	Excel Urgent Care of Paramus	\N	\N	\N	\N	40.9709383	-74.0886658	110 W Ridgewood Ave Paramus, NJ 07652	Yes		Paramus	NJ
588	Riverside Health & Rehab	\N	\N	\N	\N	46.8639548	-113.9738273	1301 E Broadway St Missoula, MT 59802	Yes	lease at front door	Missoula	MT
589	The Commons on Marice	\N	\N	\N	\N	44.8364073	-93.1651806	1380 Marice Dr Eagan, MN 55121	Yes	Leave at front desk	Eagan	MN
590	NYU Winthrop Hospital	\N	\N	\N	\N	40.7406366	-73.6430449	259 1st St Mineola, Ny 11501	Yes	Limited to 2 boxes only for in-person dropoffs. Drop off is adjacent to ED entrance outside of East Campus Station Rd. and 4th Ave. M-F 9AM-5PM.  See https://nyulangone.org/give/funds/covid-19 for more details and signup form.	Mineola	NY
591	Baylor Scott and White	\N	\N	\N	\N	31.0776472	-97.3639792	2401 S 31st St Temple, TX 76508	Yes		Temple 	TX
592	Saint Alphonsus Medical Center	\N	\N	\N	\N	43.5974489	-116.517392	4300 E Flamingo Ave Nampa, ID 83687	Yes	Supply Chain Receiving Dock - ATTN: Donations	Nampa	ID
593	Heart Land Supports, LLC	\N	\N	\N	\N	38.0398839	-97.3402207	313 Muse St Newton, KS 67114	Yes	On deck	Newton	KS
594	Millwood Hospital	\N	\N	\N	\N	32.7509201	-97.1124275	1011 N Cooper St Arlington, TX 76011	No	Attn: Raymond Wieck	Arlington	TX
595	Community health Center FQHC	\N	\N	\N	\N	40.4056206	-80.5894516	3158 West St Weirton, WV 26062	Yes	3158 West St	Weirton	WV
596	HealthCore Clinic	\N	\N	\N	\N	37.7224141	-97.3051436	2707 E 21st St N Wichita, KS 67214	Yes	Mail to: HealthCore Clinic 2707 E. 21st St. N., Wichita, KS 67214  ATTN: Davna Gould	Wichita	KS
597	Los Angeles Christian Health Centers	\N	\N	\N	\N	34.0456776	-118.2447133	311 Winston St Los Angeles, CA 90013	Yes	Drop off at Curbside: ATTN Jesse Wu	Los Angeles	CA
598	The Doctors Office of Brick	\N	\N	\N	\N	40.0622421	-74.1435165	686 NJ-70 Brick Township, NJ 08723	Yes		Brick Township	NJ
599	The Doctors Office of Manalapan	\N	\N	\N	\N	40.2863875	-74.2964668	120 Craig Rd Manalapan Township, NJ 07726	Yes		Manalapan Township	NJ
600	The Bridge, Inc. - Clinical HQ	\N	\N	\N	\N	40.8025117	-73.9669362	248 W 108th St New York, NY 10025	Yes	Mail to: 248 West 108th Street, 6th Floor, NYC NY 10025 ATTN: Jenna Tine, LCSW, SVP	New York - Manhattan	NY
601	Mercy Medical Center 	\N	\N	\N	\N	39.293785	-76.613337	345 St Paul Place Baltimore, MD 21202	Yes	Used masks ok. Mail w/Attn: Dr. Robert Alas, Chair of OB/Gyn. Dropoff at Bunting Building security desk.	Baltimore	MD
602	Excel Urgent Care of Goshen	\N	\N	\N	\N	41.3925151	-74.3369073	1 Hatfield Ln #2b Goshen, NY 10924	Yes		Goshen	NY
603	Virginia Mason	\N	\N	\N	\N	47.6094886	-122.327968	1100 9th Ave Seattle, WA 98101	No	There is a Drop Box inside of the Buck Pavilion entrance near the security guard.  	Seatte	WA
604	Sparta Community Hospital 	\N	\N	\N	\N	38.1239588	-89.6915364	818 E Broadway St Sparta, IL 62286	Yes		Sparta	IL
605	Kaiser Permanente - Urology Department	\N	\N	\N	\N	33.9181784	-118.1263107	9449 E Imperial Hwy D231 Downey, CA 90242	Yes	curbside in front of building 'D' stairwell	Downey	CA
606	Sinai Hospital	\N	\N	\N	\N	39.3527548	-76.6619418	2401 W Belvedere Ave Baltimore, MD 21215	Only if new.	Unused masks only. Mail or drop off.	Baltimore	MD
607	Excel Urgent Care of Wantagh	\N	\N	\N	\N	40.6724786	-73.5047435	3430 Sunrise Hwy Wantagh, NY 11793	Yes		Wantagh	NY
608	New York Doctors Primary and Pulmonary Care	\N	\N	\N	\N	40.7451661	-73.9802632	205 Lexington Ave New York, NY 10016	Yes		New York - Manhattan	NY
609	Primary Health Medical Group	\N	\N	\N	\N	43.6811373	-116.311923	10482 W Carlton Bay Dr Garden City, ID 83714	Yes	ATTN: Tracy Morris - tracy.morris@primaryhealth.com; 208-340-2843. Please call for drop-off/delivery instructions. 	Garden City	ID
610	Crisis Center of Tampa Bay	\N	\N	\N	\N	28.0871866	-82.4622548	1 Crisis Center Plaza Tampa, FL 33613	No	1 crisis center plaza Crisis Center	Tampa	FL
611	UC Irvine Medical Center	\N	\N	\N	\N	33.6391699	-117.8499649	4600 Health Sciences Rd building 41 Irvine, CA 92617	Yes	Building 41 follow the signs for EHS parking 	Irvine 	CA
612	Summer Hill	\N	\N	\N	\N	48.2930846	-122.6597353	165 SW 6th Ave Oak Harbor, WA 98277	Yes	leave at front door	Oak Harbor	WA
613	East Georgia Regional Medical Center	\N	\N	\N	\N	32.064019	-81.0934065	310 E Park Ave Savannah, GA 31401	Only if new.	Ship or drop off. Attn: Dr. Jeffrey Millard	Savannah	GA
614	Lyngblomsten Care Center	\N	\N	\N	\N	44.9797808	-93.1606973	1415 Almond Ave W St Paul, MN 55108	no open boxes of gloves	Drop off your PPE donation in the bin just inside our main entry at 1415 Almond Avenue in St. Paul.  Once you drop off your donation, please exit our facility immediately.  Please enclose your donation in a sealed plastic bag.	St. Paul	MN
615	Woodhull Hospital	\N	\N	\N	\N	40.6996948	-73.9425116	760 Broadway Brooklyn, NY 11206	Unknown	Drop off at front desk and tell them the donations are for the Emergency Department	New York - Brooklyn	NY
616	Good Samaritan hospital	\N	\N	\N	\N	37.2517475	-121.9466889	2425 Samaritan Dr San Jose, CA 95124	No	By the main entrance, security guard will take them	San Jose	CA
617	Los Angeles Council District 6 Office	\N	\N	\N	\N	34.2383467	-118.410149	9300 Laurel Canyon Blvd Arleta, CA 91331	Yes	Through into the gate or leave by door. 	Sun Valley	CA
618	Alfano Oral Surgery - Verber Dental Group	\N	\N	\N	\N	40.2890894	-76.9720921	2250 Millennium Way #101 Enola, PA 17025	Yes	Leave Outside Front Office Door	Enola	PA
619	Excel Urgent Care of New Hyde Park	\N	\N	\N	\N	40.7431107	-73.6932164	900 Hillside Avenue New Hyde Park, NY 11040	Yes		New Hyde Park	NY
620	Kaiser Permanente Panorama City Medical Center	\N	\N	\N	\N	34.062601	-118.432301	10550 Wilshire Blvd Los Angeles, CA 90024	Yes	Residential address. 	Panorama City	CA
621	Garden at Terracina Grand	\N	\N	\N	\N	26.139851	-81.7293295	6825 Davis Blvd Naples, FL 34104	Yes	leave at front door	Naples	FL
622	LIFE Pittsburgh	\N	\N	\N	\N	40.4652751	-80.0563896	130 Chartiers Ave McKees Rocks, PA 15136	Yes	Attention: Stephanie McElroy	McKees Rocks	PA
623	Unity Care Northwest	\N	\N	\N	\N	48.7536186	-122.4746486	1616 Cornwall Ave #101 Bellingham, WA 98225	Yes	Please knock on internal glass door and leave donation on the floor and we will pick it up. M-F 8:30-4pm	Bellingham	WA
624	Excel Urgent Care of Nesconset	\N	\N	\N	\N	40.8333919	-73.1467158	465 Smithtown Blvd Nesconset, NY 11767	Yes		Nesconset	NY
625	Hospital of the University of Pennsylvania	\N	\N	\N	\N	39.9505413	-75.1951088	Maloney Bldg Philadelphia, PA 19104	Yes		Philadelphia	PA
626	Coalition of Orange County Community Health Centers	\N	\N	\N	\N	33.7498638	-117.8392936	515 Cabrillo Park Dr #225 Santa Ana, CA 92701	No	Call to arrange delivery or drop off	Santa Ana	CA
627	Throgs Neck Urgent Medical Care	\N	\N	\N	\N	40.8288988	-73.8249514	3594 E Tremont Ave The Bronx, NY 10465	Yes		New York - Bronx	NY
628	Orange Urgent Care	\N	\N	\N	\N	41.4484964	-74.362138	75 Crystal Run Rd G40 Middletown, NY 10940	Yes		Middletown	NY
629	Excel Urgent Care of East Northport	\N	\N	\N	\N	40.858359	-73.3198848	558 Larkfield Rd East Northport, NY 11731	Yes		East Northport	NY
630	Ventura County Medical Center	\N	\N	\N	\N	34.2772969	-119.2529839	300 Hillmont Ave Ventura, CA 93003	Yes	Central Supply Dock: ATTN Bob Tumpane 	Ventura	CA
631	Conifer Park	\N	\N	\N	\N	43.1464801	-77.6018275	556 S Clinton Ave Rochester, NY 14620	Yes		Rochester	NY
632	Urgent Care for Kids	\N	\N	\N	\N	30.1674402	-95.4595157	1640 Lake Woodlands Dr Ste E The Woodlands, TX 77380	Yes	Office Manager	The Woodlands	TX
633	Urgent Care for Kids	\N	\N	\N	\N	30.498959	-97.614882	3750 Gattis School Rd #900 Round Rock, TX 78665	Yes	Office Manager	Round Rock	TX
634	Pulmonary Associates PA	\N	\N	\N	\N	33.6122706	-112.1820963	5750 W Thunderbird Rd Bldg E Ste 500 Glendale, AZ 85306	Yes	None	Glendale	AZ
635	UNC Rex Hospital	\N	\N	\N	\N	35.8158562	-78.7010717	4200 Lake Boone Trail Raleigh, NC 27607	Yes	Drop off at wellness center March 23-27 9AM-4PM	Raleigh	NC
636	Rea Clinic	\N	\N	\N	\N	37.9780505	-89.0738157	4241 IL-14 Mulkeytown, IL 62865	Yes	Come to the double doors on the northwest corner of building.	Chrisotpher	IL
637	West Florida Emergency room 	\N	\N	\N	\N	30.5156353	-87.2190381	8383 N Davis Hwy Pensacola, FL 32514	Yes	To triage in the ER	Pensacola	FL
638	Excel Urgent Care of CT	\N	\N	\N	\N	41.1391891	-73.328838	1045 Post Rd E Westport, CT 06880	Yes		Westport	CT
639	Westpark Village	\N	\N	\N	\N	45.7876209	-108.5753811	2351 Solomon Ave Billings, MT 59102	Yes	leave at front door	Billings	MT
640	Corner Project	\N	\N	\N	\N	40.8762229	-73.8477415	3376 Fenton Ave #3C The Bronx, NY 10469	Yes	Attn: Jason Beltre 	Bronx	NY
641	Cameron Regional Medical Center	\N	\N	\N	\N	39.7304455	-94.2180385	1600 E Evergreen St Cameron, MO 64429	Yes	Can mail to my attention, Tami Easton @ 1600 East Evergreen  Cameron, MO 64429 or drop off at the Emergency Room entrance.  	Cameron 	MO
642	El Proyecto del Barrio	\N	\N	\N	\N	34.2006098	-118.5864904	20800 Sherman Way Winnetka, CA 91306	Yes	Front desk	Canoga park	CA
643	Pasadena rehab institute 	\N	\N	\N	\N	34.1281784	-118.1505768	1017 S Fair Oaks Ave Pasadena, CA 91105	Yes	Attn:  Dr Eric Lai	Pasadena 	CA
644	The Bridge at Westside Garden Plaza	\N	\N	\N	\N	39.7788724	-86.3133646	8614 W 10th St Indianapolis, IN 46234	Yes	"Door 12"  ATTN: Director of Nursing; Hilanie Hauk or Christina White	Indianapolis	IN
645	Alternative Home Health Care	\N	\N	\N	\N	42.7333975	-71.1359848	160 Merrimack St Methuen, MA 01844	Yes	Andrea Surette	Methuen	MA
646	Emanate Health - Inter-Community Hospital	\N	\N	\N	\N	34.0895805	-117.8912493	150 W San Bernardino Rd Covina, CA 91723	Yes	Attn: ER Department	Covina	CA
647	Nebraska Medicine	\N	\N	\N	\N	41.2530369	-95.9771441	4230 Leavenworth St Omaha, NE 68105	No	Address is the business services center. Dropoff is on the NORTH side of the building from 7 am to 3 pm, Monday thru Friday. Access to this location is from 42nd Street only.	Omaha	NE
648	Bayfront Health ER Pinellas Park	\N	\N	\N	\N	27.8470911	-82.6771605	3070 Grand Ave Pinellas Park, FL 33781	Only if new.	Unused masks only. Ship w/Attn: Dr. Vanessa Velazquez-Ruiz.	Pinellas Park	FL
649	Greenwich Hospital	\N	\N	\N	\N	41.0222988	-73.629268	28 Woodland Dr. Unit B Greenwich, CT 06830	No	Unused masks only. Mail w/Attn: Marc Gurny. Can also pick up locally, call 914-523-0723.	Greenwich	CT
650	Emanate - Foothill Presbyterian Hospital	\N	\N	\N	\N	34.1327654	-117.8713435	250 S Grand Ave Glendora, CA 91741	Yes	Attn: ER Department 	Glendora	CA
652	Brush Country Nursing and Rehab	\N	\N	\N	\N	30.2248841	-97.8417674	6500 Brush Country Rd Austin, TX 78749	No	Drop off to the front door. Please and thank you!	Austin	TX
653	Martin Luther king Jr. Community Hospital	\N	\N	\N	\N	33.9231768	-118.2437996	1680 E 120th St Los Angeles, CA 90059	Yes	Please drop off at the ED entrance	Los Angeles	CA
654	Emanate Health - Queen of the Valley Hospital	\N	\N	\N	\N	34.0642264	-117.9453122	1115 S Sunset Ave West Covina, CA 91790	Yes	Attn: ER Department	West Covina	CA
655	Vincentian Home	\N	\N	\N	\N	40.5590409	-80.0265294	111 Perrymont Rd Pittsburgh, PA 15237	Yes	Please contact Nathan Doherty at 412-297-3347	Pittsburgh	PA
656	S.T.A.R. - Stand Together and Recover Centers, Inc.	\N	\N	\N	\N	33.4485876	-112.027563	2502 E Washington St Phoenix, AZ 85034	Open shipping boxes yes, but not opened individual boxes	We are open 8-4 PM Monday through Friday.	Phoenix	AZ
657	NYU Langone Brooklyn	\N	\N	\N	\N	40.6466634	-74.0209235	150 55th St Brooklyn, NY 11220	No	Att. EMS department 	New York - Brooklyn	NY
658	Karmanos Cancer Hospital	\N	\N	\N	\N	42.3522105	-83.0571962	4100 John R St Detroit, MI 48201	Yes	Any way you can get it to us 	Detroit 	MI
659	Silver Ridge Health Care Center	\N	\N	\N	\N	36.157903	-115.2356925	1151 S Torrey Pines Dr Las Vegas, NV 89146	Yes	Southside entrance	Las Vegas	NV
660	Silver Cross Hospital 	\N	\N	\N	\N	41.5444716	-87.9828584	1900 Silver Cross Blvd New Lenox, IL 60451	No	Silver Cross Foundation @ 8153007105	New Lenox	IL
661	Community Hospice & Palliative Care	\N	\N	\N	\N	30.2044872	-81.6054835	4266 Sunbeam Rd Jacksonville, FL 32257	Yes	Earl B. Hadlow Center for Caring Attn: Steven Choate 4266 Sunbeam Road Jacksonville FL 32257 	Jacksonville	FL
662	Mobile Medical Care (MobileMed)	\N	\N	\N	\N	39.008252	-77.1126723	9309 Old Georgetown Rd Bethesda, MD 20814	No	Please contact giving@mobilemedicalcare.org regarding your donation being mailed or dropped off.	Bethesda	MD
663	Mount Sinai West 	\N	\N	\N	\N	40.7699982	-73.9874797	1000 10th Ave New York, NY 10019	Yes	Call us at 347-295-9998 or delivery for medical ICU	New York - Manhattan	NY
664	New York Doctors Primary and Pulmonary Care	\N	\N	\N	\N	40.7444198	-73.9110806	53-14 Roosevelt Ave 3rd floor Flushing, NY 11377	Yes		Woodside	NY
665	Carson Nursing and Rehab. Center	\N	\N	\N	\N	39.1766864	-119.7357661	2898 US-50 Carson City, NV 89701	Yes	Linda Dale/Central Supply	Carson City	NV
666	Mare Island Home Health Inc	\N	\N	\N	\N	38.1095877	-122.2393178	1555 Tennessee St Vallejo, CA 94590	Yes	Home Health Agency can use additional supplies 	Vallejo	CA
667	Northern Michigan Surgical Suites	\N	\N	\N	\N	45.2004417	-84.9735251	825 Moll Dr Boyne City, MI 49712	Yes	Mailing address	Boyne City	MI
668	BayCare Medical Group	\N	\N	\N	\N	28.0386135	-82.7069436	3231 McMullen Booth Rd, FL1 Safety Harbor, FL 34695	Only if new.	Unused masks only. Mail or drop off, Attn: Moeen Khalil, Mease Countryside Hospital BMG Hospitalists.	Safety Harbor	FL
669	Cleveland Clinic	\N	\N	\N	\N	41.5028671	-81.6268667	2035 E 86th St Cleveland, OH 44106	Yes	Attention Jeff Gates (Donations)	Cleveland	OH
670	Hospital del Maestro	\N	\N	\N	\N	18.4137095	-66.0682476	550 Calle Sergio Cuevas Bustamante Esq. Ave Domenech San Juan, PR 00918	Yes	Attn: Jorge Malave	Hato Rey	PR
671	Norwalk Hospital	\N	\N	\N	\N	41.111322	-73.420307	24 Stevens St Norwalk, CT 06856	No	Unused masks only. Drop off.	Norwalk	CT
672	UCHealth Greeley Emergency and Surgery Center	\N	\N	\N	\N	40.4198355	-104.7910209	6906 W 10th St Greeley, CO 80634	No	Curbside procedure 	Greeley	CO
673	Excel Urgent Care of Fishkill	\N	\N	\N	\N	41.5321123	-73.9053749	1004 Main St Fishkill, NY 12524	Yes		Fishkill	NY
674	The Montefiore Home 	\N	\N	\N	\N	41.4964599	-81.4866799	1 David Myers Pkwy Beachwood, OH 44122	No	1 David Myers Parkway	Beachwood	OH
675	Broadview Multi-Care Center	\N	\N	\N	\N	41.4115536	-81.6941791	5520 Broadview Rd Parma, OH 44134	Yes	front door 8-5pm	Parma	OH
676	Providence St. Vincent Hospital	\N	\N	\N	\N	45.5027014	-122.6308023	2755 SE 33rd Pl Portland, OR 97202	Yes	Front porch of a house.	Portland	OR
677	Urgent Care for Kids	\N	\N	\N	\N	32.7081224	-97.3891183	3000 S Hulen St #180 Fort Worth, TX 76109	Yes	Office Manager	Fort Worth	TX
678	Bethesda Lutheran Communities	\N	\N	\N	\N	39.6084068	-105.0351736	5941 Middlefield Rd #100 Littleton, CO 80123	No	5941 Middlefield Rd. Suite 100 May drop off outside the front door.  Attn: Regional Director	Littleton	CO
679	The Crossroads Center	\N	\N	\N	\N	39.1347623	-84.5017919	311 Martin Luther King Dr E Cincinnati, OH 45219	Yes	Attn: Jaculin	Cincinnati	OH
680	Los Altos Sub-Acute And Rehabilitation Center	\N	\N	\N	\N	37.3565779	-122.091476	809 Fremont Ave Los Altos, CA 94024	Yes	Attn: ERIKA FUENTES or hand off at front door. 	Los Altos	CA
681	Benson Hospital	\N	\N	\N	\N	31.9649438	-110.3084953	450 S Ocotillo Ave Benson, AZ 85602	Yes	Drop off on south side of building.	Benson	AZ
682	Minden Medical Center	\N	\N	\N	\N	32.6172391	-93.2863556	1 Medical Plaza Pl Minden, LA 71055	Yes	 ATTN: Respiratory Therapy Department	Minden	LA
683	Westchester Medical Center	\N	\N	\N	\N	41.086676	-73.8060649	100 Woods Rd Valhalla, NY 10595	Yes	Email me; will pick up in front of hospital at anyway anytime Thank you! 	Valhalla	NY
684	Greater Baltimore Medical Center	\N	\N	\N	\N	39.3952133	-76.627243	6701 N Charles St Baltimore, MD 21204	No	Main entrance: call Dr. Stark 	Towson	MD
685	One Medical (DC)	\N	\N	\N	\N	38.923447	-77.043176	1827 Adams Mill Rd NW suite C Washington, DC 20009	Yes	Drop off between 12-1pm! Or Mail to 1627 I st NW  Washington DC 	Washington	DC
686	Urgent Care for Kids	\N	\N	\N	\N	29.736433	-95.7769575	23730 Westheimer Pkwy Suite N Katy, TX 77494	Yes	Office Manager	Katy	TX
687	Copper Queen Community Hospital	\N	\N	\N	\N	31.4175897	-109.8827933	101 Cole Ave Bisbee, AZ 85603	Yes	101 Cole Ave	Bisbee	AZ
688	Urgent Care for Kids	\N	\N	\N	\N	32.6453749	-97.1328464	6109 S Cooper St Arlington, TX 76001	Yes	Office Manager	Arlington	TX
689	Urgent Care for Kids	\N	\N	\N	\N	32.979747	-96.6612228	7150 N President George Bush Hwy Garland, TX 75044	Yes	Office Manager	Garland	TX
690	Bethesda Lutheran Communities	\N	\N	\N	\N	38.9249669	-94.7502714	14150 W 113th St Lenexa, KS 66215	No	Attn:  Regional Director; can drop off outside of the front entrance door.	Lenexa	KS
691	Urgent Care for Kids	\N	\N	\N	\N	33.1741767	-96.8459385	11550 Legacy Dr Suite #420 Frisco, TX 75034	Yes	Office Manager	Frisco	TX
692	Enders Fire Company	\N	\N	\N	\N	39.151257	-77.983372	9 S Buckmarsh St Berryville, VA 22611	Yes		Berryville	VA
693	Bethesda Lutheran Communities	\N	\N	\N	\N	45.4996605	-122.9648073	1846 SE Tanager Cir Hillsboro, OR 97123	Yes	Please leave on front porch of the home. mailing address is above with ATTN to Chantel Losey 	Hillsboro	OR
694	East Jefferson General Hospital	\N	\N	\N	\N	30.0130374	-90.1817668	4200 Houma Blvd Metairie, LA 70006	Yes	"we ask that you pull up to the front circular entrance of the Hospital, call 504-503-3278, and let the caller know the color and make of your vehicle. You will remain in your car and a masked EJGH team member will come retrieve the masks and/or hospital gowns. Donations are being accepted Monday through Friday from 7:30 a.m. to 4:00 p.m."	Metairie	LA
695	Unity Health Care, Inc.	\N	\N	\N	\N	38.9107611	-77.0483054	2122 Massachusetts Ave, NW, Apt 701 Washington, DC 20010	Only if new.	Unused masks only. Mail or dropoff. Coordinate w/Sarah Meyers, sarahmeyersppe@gmail.com.	Washington	DC
696	Capital Transitional Care	\N	\N	\N	\N	38.5023198	-121.4819475	6821 24th St Sacramento, CA 95822	Yes	Front door ring bell	Sacramento	CA
697	Urgent Care for Kids	\N	\N	\N	\N	32.9116976	-97.3080618	3400 Texas Sage Trail Fort Worth, TX 76177	Yes	Office Manager	Fort Worth	TX
698	Urgent Care for Kids	\N	\N	\N	\N	32.9072019	-96.804916	11661 Preston Rd Suite 120 Dallas, TX 75230	Yes	Office Manager	Dallas	TX
699	Havasu Regional Medical Center	\N	\N	\N	\N	34.4803821	-114.3388668	101 Civic Center Ln Lake Havasu City, AZ 86403		101 Civic Center Lane Havasu Regional Medical Center Attn: Dr. Scott or Dr. Preston	Lake Havasu City	AZ
700	Georgetown ER	\N	\N	\N	\N	30.6335281	-97.6992875	1210 W University Ave Georgetown, TX 78628	Yes	1210 w. university blvd	Georgetown	TX
701	Urgent Care for Kids	\N	\N	\N	\N	32.5957526	-97.1092318	2251 Matlock Rd Mansfield, TX 76063	Yes	Office Manager	Mansfield	TX
702	Virginia Emergency Medicine Associates at Inova Fair Oaks Hospital	\N	\N	\N	\N	38.8878198	-77.3802472	3600 Joseph Siewick Dr Fairfax, VA 22033	Only if new.	Unused masks only. Mail or dropoff. Pickup is possible, call Emergency at 703-391-3842 to coordinate.	Fairfax	VA
703	Sentara Northern Virginia Medical Center	\N	\N	\N	\N	38.6369926	-77.286438	2300 Opitz Blvd Woodbridge, VA 22191	Yes	Please contact Patient Advocate to arrange curbside drop off 703-523-1369	Woodbridge	VA
704	Urgent Care for Kids	\N	\N	\N	\N	33.2166908	-96.6786395	1872 N Lake Forest Dr McKinney, TX 75071	Yes	Office Manager	McKinney	TX
705	Urgent Care for Kids	\N	\N	\N	\N	33.0741773	-96.7496833	7212 Independence Pkwy Plano, TX 75025	Yes	Office Manager	Plano	TX
706	Shands Jacksonville Hospital 	\N	\N	\N	\N	30.3460975	-81.6631774	580 8th St W #9009 Jacksonville, FL 32209	Yes	Drop it off at the front desk. 	Jacksonville 	FL
707	Medical City Arlington Emergency Room	\N	\N	\N	\N	32.6959788	-97.114827	3001 Matlock Rd Arlington, TX 76014	No	Drop off at the Emergency Department front desk 	Arlington 	TX
708	Morristown EMS	\N	\N	\N	\N	44.5545491	-72.5907502	539 Washington Hwy Morrisville, VT 05661	Yes	Leave with duty crew, or by door if crew is not available	Morrisville	VT
709	The Emergency Clinic at La Vernia	\N	\N	\N	\N	29.3561696	-98.1349226	202 FM 1346 #2 La Vernia, TX 78121	Yes	Leave at front desk	La Vernia	TX
710	Coastal obgyn 	\N	\N	\N	\N	41.0601378	-73.5401795	999 Summer St Stamford, CT 06905	Yes	Contact me sghofrany@gmail.com and I will arrange! TIA	Stamford 	CT
711	Bethesda Lutheran Communities	\N	\N	\N	\N	47.5000364	-122.1730247	1025 Olympia Ave NE Renton, WA 98056	Yes	Porch drop off  mailed to address ATTN Zola Sheehan 	Renton	WA
712	MedCare Associates	\N	\N	\N	\N	29.615841	-98.4914573	1343 E Sonterra Blvd #206 San Antonio, TX 78258	Yes	1434 E Sonterra Blvd, Suite 206 San Antonio Tx, 78258  Attn Ruby	San Antonio	TX
713	Well Care Behavioral and Medical Clinic	\N	\N	\N	\N	39.5253212	-119.799359	850 Mill St #100 Reno, NV 89502	Yes	850 Mill Street Suite 100	Reno	NV
714	Kaiser Permanente - San Francisco	\N	\N	\N	\N	37.7825037	-122.4399561	2130 O'Farrell St San Francisco, CA 94115		Please mail or drop off donations at the address stated above. For mail, please indicate ATTN: Hospital Command Center. For drop offs, please drop off at the loading dock Mon to Fri 6 am to 2:30 pm. If you are dropping off, please contact (415) 833-2593 and a staff member will come to accept the donation.	San Francisco	CA
715	Columbia Lutheran Home 	\N	\N	\N	\N	47.6631431	-122.3531435	4700 Phinney Ave N Seattle, WA 98103	Yes	ATTN: Ellie Brown 	Seattle	WA
716	Friends of Firefighters, Inc	\N	\N	\N	\N	40.6815387	-74.007548	199 Van Brunt St Brooklyn, NY 11231	No	Text first (917) 940-4407; curbside delivery	New York - Brooklyn	NY
717	Jewish Home for the Aging 	\N	\N	\N	\N	34.2005491	-118.5530298	7150 Tampa Ave Reseda, CA 91335	Yes	Security gate 	Reseda	CA
718	AtlantiCare Regional Medical Center City Campus	\N	\N	\N	\N	39.3583314	-74.4342891	1925 Pacific Ave Atlantic City, NJ 08401	Yes	Attention Ria Abadinas (Emergency Department)	Atlantic City	NJ
719	MHealth Faiirview	\N	\N	\N	\N	44.9539028	-93.1715336	1700 University Ave W St Paul, MN 55104	?	7 a.m.-5 p.m. All items should be placed in a box labeled “Donation” and put in your trunk or non-passenger storage area of your vehicle. Drive up to any of the three delivery sites. Remain in your vehicle. A staff member will come to you to retrieve the box. The staff member will ask you for the following information: https://umn.qualtrics.com/jfe/form/SV_9XifmHCuCykmOyh  Large donations: 30 pounds or more,  Items should be dropped off at either of the two loading docks (located off Pierce Street) Press the buzzer by the door and security will let you in. Place the items on the racks labeled “Donation” located on the loading dock.	Saint Paul	MN
720	UHS Wilson Medical Center	\N	\N	\N	\N	42.1142391	-75.9583893	33 Harrison St Johnson City, NY 13907	Yes	ATT Kristina Smith, kristina.smith@ny.uhs.org	Johnson City 	NY
721	Union General Hospital	\N	\N	\N	\N	32.7877365	-92.3919305	901 James Ave Farmerville, LA 71241	Yes	Drop off at Purchasing loading dock	Farmerville	LA
722	Rush Oak Park Hospital	\N	\N	\N	\N	41.878649	-87.8031698	520 S Maple Ave Oak Park, IL 60304	Yes	Drop off at front door or loading dock	Oak Park	IL
723	Chris Jensen Health and Rehab	\N	\N	\N	\N	46.819007	-92.126518	2501 Rice Lake Rd Duluth, MN 55811	No	Drop on loading dock	Duluth	MN
724	Women's HIV Program at UCSF	\N	\N	\N	\N	37.7510519	-122.408256	1306 York St San Francisco, CA 94110	Yes	On my porch- I direct the clinic and will bring them to clinic right away 	San Francisco	CA
725	Fresno Community Regional Medical Centers 	\N	\N	\N	\N	36.7453419	-119.7820079	215 N Fresno St Fresno, CA 93701	No	North Medical Plaza CRMC	Fresno 	CA
726	University Medical Center - New Orleans	\N	\N	\N	\N	29.9593865	-90.0804657	200 S Roman St New Orleans, LA 70112	Depends on product 	Curbside dropoff at S Roman Street entrance of the hospital	New Orleans	LA
727	Kaiser Permanente Los Angeles Medical Center	\N	\N	\N	\N	34.0250147	-118.4717062	2211 Michigan Ave Santa Monica, CA 90404	No	Attn: Christian Paredes, Department Administrator, 2 North Observation Unit 	Los Angeles (Zip 90027)	CA
728	Allegro Pediatrics - Issaquah Highlands	\N	\N	\N	\N	47.5442341	-122.0156879	1011 NE High St, #200 Issaquah, WA 98029	Yes	TBD	Issaquah	WA
729	Berkshire Medical Center	\N	\N	\N	\N	42.459638	-73.2492284	725 North St Pittsfield, MA 01201	Yes	Curbside  OR  Delivery to ER  OR   Resident's Room  OR  To internal medicine department 	Pittsfield	MA
730	Allegro Pediatrics - Redmond	\N	\N	\N	\N	47.67152	-122.1212544	7530 164th AVE NE , Suite A215 Redmond, WA 98052	Yes	TBD	Redmond	WA
731	Austin Oaks Hospital	\N	\N	\N	\N	30.2113495	-97.7926913	1407 W Stassney Ln Austin, TX 78745	Yes	Call 512-745-1492 the supervisor will pick it up curbside 	Austin	TX
732	Beaumont Hospital, Dearborn 	\N	\N	\N	\N	42.2901468	-83.2140457	18101 Oakwood Blvd Dearborn, MI 48124	No	Emergency Department 	Dearborn 	MI
733	Teton Valley Hospital	\N	\N	\N	\N	43.726374	-111.1081462	120 E Howard Ave Driggs, ID 83422	Yes	Drop off at ER entrance or mail to: Teton Valley Hospital  Attn: Materials 120 E Howard st Driggs Idaho 83422	Driggs	ID
734	University of Alabama at Birmingham (UAB)	\N	\N	\N	\N	33.4999764	-86.8172346	801 5th Ave S Birmingham, AL 35233	unknown	Donations of approved items can be made on the UAB campus Monday-Friday from 9 am to 4 pm at the address above. **Note: the previous entry for this hospital was someone's personal address - this info reflects the official dropoff location.**  Donations can also be made to the Jefferson County Department of Health though the JCDH Coordination Center (Monday-Friday from 10 am to 2 pm, phone number 205.254.2550).	Birmingham	AL
735	Saint francis medical center	\N	\N	\N	\N	33.930826	-118.203228	3630 E Imperial Hwy Lynwood, CA 90262	Yes	Icu department 	Lynnwood 	CA
736	Advanced Asthma and Allergy of NNY	\N	\N	\N	\N	43.947467	-75.9147344	19316 US-11 Watertown, NY 13601	Yes	Mail to: Attn: Tina Gerstenschlager (facility address listed above)	Watertown 	NY
737	La Casa Via Transitional Care Center	\N	\N	\N	\N	37.9121803	-122.0443899	1449 Ygnacio Valley Rd Walnut Creek, CA 94598	Yes	Items can be dropped off at the front door.	Walnut Creek	CA
738	Kaiser Permanente Panorama City	\N	\N	\N	\N	34.2189257	-118.4302294	13651 Willard St Panorama City, CA 91402	Yes	2nd Floor Main Hospital Anesthesia Department	Panorama City	CA
739	Annunciation House	\N	\N	\N	\N	31.7619485	-106.4809653	815 Myrtle Ave El Paso, TX 79901	Yes	Attention: Ruben Garcia Casa Teresa 815 Myrtle Avenue El Paso, TX 79901	El Paso	TX
740	East Central District Health Department	\N	\N	\N	\N	41.4308989	-97.3360515	822 15th St Columbus, NE 68601	Yes	Please call (402) 562-8960 prior to drop off	Columbus	NE
741	Sky Ridge Medical Center	\N	\N	\N	\N	39.529099	-104.871212	10101 RidgeGate Parkway Lone Tree, CO 80124	No	Drop off at main entrance	Lone Tree	CO
742	Allegro Pediatrics - Redmond Ridge	\N	\N	\N	\N	47.694091	-122.0368795	22635 N.E. Marketplace Dr. , Suite #120 Redmond, WA 98053	Yes	TBD	Redmond	WA
743	Share Our Selves	\N	\N	\N	\N	33.6326494	-117.9260444	1550 Superior Ave Costa Mesa, CA 92627	Yes	Drop off at food pantry warehouse	Costa Mesa	CA
744	The Brooklyn Hospital Center 	\N	\N	\N	\N	40.691265	-73.9777743	121 Dekalb Ave Brooklyn, NY 11201	Yes	Drop off in Main Lobby and contact myself at (609) 668 7303	New York - Brooklyn	NY
745	Advisacare Home Health rebound therapies	\N	\N	\N	\N	42.3835183	-84.3384906	325 Dolores Dr Pleasant Lake, MI 49272	Yes	Curbside ATTN : Emily Walther	Pleasant Lake	MI
746	Children's Hospital of Georgia Operating Room	\N	\N	\N	\N	33.5646619	-82.0986364	333 Pump House Rd Evans, GA 30809	Yes		Evans	GA
747	Allegro Pediatrics - Sammamish	\N	\N	\N	\N	47.6061726	-122.0374304	22620 SE 4th Street, Suite #200 Sammamish, WA 98074	Yes		Sammamish	WA
748	St. Francis Hospital	\N	\N	\N	\N	33.930826	-118.203228	3630 E Imperial Hwy Lynwood, CA 90262	Yes	ATTN: Linda Woo	Lynwood	CA
749	Providence Little Company of Mary San Pedro	\N	\N	\N	\N	33.7382583	-118.305098	1300 W 7th St San Pedro, CA 90732	Yes	Bring to Emergency Department	San Pedro	CA
750	Allegro Pediatrics - Factoria	\N	\N	\N	\N	47.5722577	-122.1684705	4122 Factoria Blvd. S.E., Suite #101 Bellevue, WA 98006	Yes	TBD 	Bellevue	WA
751	Allegro Pediatrics - Totem Lake	\N	\N	\N	\N	47.7176832	-122.17851	13030 121st Way N.E., Suite #100 Kirkland, WA 98034	Yes	TBD	Kirkland	WA
752	West Infusion Nurses' Network LLC	\N	\N	\N	\N	46.2131878	-119.1653753	320 N Johnson St #300 Kennewick, WA 99336	Yes	Front door 	Kennewick	WA
753	Delhi Hospital	\N	\N	\N	\N	32.453167	-91.4937101	407 Cincinnati St Delhi, LA 71232	Yes	Attn: purchasing Deliveries to “deliveries” sign 	Delhi	LA
754	Riverside Medical Center	\N	\N	\N	\N	41.1240078	-87.8830805	350 N Wall St Kankakee, IL 60901	Yes	350 North Wall Street	Kankakee	IL
755	OU-Physicians, St John's Medical Center-Tulsa	\N	\N	\N	\N	36.1344178	-95.9643652	Bernsen Medical Plaza 1919 S Wheeling Ave #600, Tulsa, OK 74104	Yes	ATTN: ROBERT Lim	Tulsa	OK
756	KCS Health Center	\N	\N	\N	\N	33.8346052	-117.9189431	451 W Lincoln Ave #100 Anaheim, CA 92805	Yes		Anaheim	CA
757	Kaiser Permanente San Diego medical center 	\N	\N	\N	\N	32.8297116	-117.1251884	9455 Clairemont Mesa Blvd San Diego, CA 92123	Yes		San Diego 	CA
758	Kaiser SDMC  ER	\N	\N	\N	\N	32.8297116	-117.1251884	9455 Clairemont Mesa Blvd San Diego, CA 92123	Yes	San Diego	San Diego	CA
759	St. Francis Hospital, The Heart Center	\N	\N	\N	\N	40.804269	-73.6704524	100 Port Washington Blvd Roslyn, NY 11576	Yes		Roslyn	NY
760	Avery Heights Home Health Agency	\N	\N	\N	\N	41.7291821	-72.7067751	705 New Britain Ave Hartford, CT 06106	Yes	705 New Britain Ave -ATTN: Kerrie Palumbo , bring to Heights Building	Hartford	CT
761	ALWAYS THERE HOME CARE	\N	\N	\N	\N	41.6660962	-72.8617609	35 Tomlinson Ave Plainville, CT 06062	Yes	 35 TOMLINSON AVE PLAINVILLE CT 06062 LEAVE AT FRONT DOOR 	Plainville	CT
762	PM Pediatrics 	\N	\N	\N	\N	39.0566709	-77.1205666	12254 Rockville Pike North Bethesda, MD 20852	No	Attn: office manager 	Rockville	MD
763	Hackensack University Medical Center	\N	\N	\N	\N	40.8840335	-74.0565417	30 Prospect Ave Hackensack, NJ 07601	Yes	ATTN: COMMAND CENTER OR INPATIENT OPERATING ROOM 551-996-2426 PLEASE CALL BEFOREHAND	Hackensack 	NJ
764	ManorCare Health Service- Kingston	\N	\N	\N	\N	41.255735	-75.8843223	200 2nd Ave Kingston, PA 18704	Yes	supplies can be dropped off in foyer of facility.	Kingston	PA
765	Macedonia Fire Department	\N	\N	\N	\N	41.3117491	-81.5039625	9691 Valley View Rd Macedonia, OH 44056	Yes	Call department at (330) 468-8339, city building is closed	Macedonia	OH
766	M Health Fairview Lakes Hospital main entrance	\N	\N	\N	\N	45.321702	-93.0003869	5200 Fairview Blvd Wyoming, MN 55092	?	Monday-Friday, 7 a.m.-3 p.m.  All items should be placed in a box labeled “Donation” and put in your trunk or non-passenger storage area of your vehicle. Drive up to any of the three delivery sites. Remain in your vehicle. A staff member will come to you to retrieve the box. The staff member will ask you for the following information: https://umn.qualtrics.com/jfe/form/SV_9XifmHCuCykmOyh	Wyoming	MN
767	BronxCare Health System	\N	\N	\N	\N	40.8434675	-73.9110798	1650 Grand Concourse The Bronx, NY 10457	Yes	In the back of the hospital, which is actually on Selwyn Avenue, there is a receiving loading dock that receives all packages.	Bronx	NY
768	Bon Secour Health System 	\N	\N	\N	\N	37.0870821	-76.4730122	Newport News VA	Unknown	Email or call for instructions: APRush@bshsi.org with subject line: DONATION  PHONE: 888-383-8000	Newport News	VA
769	Virginia Mason 	\N	\N	\N	\N	47.6103807	-122.3279897	Lindeman Pavilion 1201 Terry Ave, Seattle, WA 98101	No	There is a drop off bin just inside the Lindeman Pavilion Entrance	Seattle	WA
770	Meadowood Health and Rehabilitation Center	\N	\N	\N	\N	38.0314061	-121.3564414	3110 Wagner Heights Rd Stockton, CA 95209	Yes	Drop off at address listed or mail	Stockton	CA
771	West Suburban Medical Center 	\N	\N	\N	\N	41.8913716	-87.7761143	3 Erie St Oak Park, IL 60302	Yes		Oak park 	IL
772	Hospital 	\N	\N	\N	\N	33.897404	-117.186026	27300 Iris Ave Moreno Valley, CA 92555	Yes	Curbside, Loading dock, or mail. 	Moreno Valley	CA
774	Jackson Memorial Hospital 	\N	\N	\N	\N	25.9950305	-80.211979	6230 Pembroke Rd Miramar, FL 33023	Yes	Call 305-332-0359	Miramar	FL
775	Ascension saint michael's emergency department 	\N	\N	\N	\N	44.5268222	-89.5665679	900 Illinois Ave Stevens Point, WI 54481	Yes	Emergency department 	Stevens point 	WI
776	Wilshire Surgery Center	\N	\N	\N	\N	34.0660228	-118.3808454	8670 Wilshire Blvd #300 Beverly Hills, CA 90211	No	mailing address ATTN Dr Ross Ravin	beverly hills	CA
777	St John Emergency Department 	\N	\N	\N	\N	42.4192825	-82.9145646	22101 Moross Rd Detroit, MI 48236	No	Call 313-995-8886 and drop off to the ED Administration Office. Ask for Patricia.	Detroit	MI
778	NYP-Brooklyn Methodist ED	\N	\N	\N	\N	40.6683276	-73.9798349	506 6th St Brooklyn, NY 11215	Yes	Enter Miner Pavilion call 718-780-3148	New York - Brooklyn 	NY
779	Kaweah Delta Medical Center	\N	\N	\N	\N	36.3286094	-119.2985562	216 S Johnson St Visalia, CA 93291	Yes	Mailing address: ATTN: Kaweah Delta Medical Foundation c/o Liz Wynn 	Visalia	CA
780	Lawrence+Memorial Hospital 	\N	\N	\N	\N	41.3363078	-72.1056047	365 Montauk Ave New London, CT 06320	No	Kristy Onorato 	New London	CT
781	Southeast Nebraska Cancer Center	\N	\N	\N	\N	40.7395686	-96.6642714	3901 Pine Lake Rd #111 Lincoln, NE 68516	Yes	Xin Wang/Caley Carlson	Lincoln	NE
782	Swedish Issaquah Emergency Department	\N	\N	\N	\N	47.536237	-122.0220539	751 NE Blakely Dr Issaquah, WA 98029	Yes	Drop off at Emergency Department and leave with registration. Please mark "For Swedish Issaquah ED workers." Feel free to leave a note of encouragement. If anyone is unsure have them get one of the emergency room doctors.	Issaquah	WA
783	Flushing hospital medical center	\N	\N	\N	\N	40.755891	-73.8179907	146-06 Delaware Ave Flushing, NY 11355	Yes	Side entrance on Burling Street this is EMS HOUSE where we keep gear	Flushing	NY
784	Pediatric Care Associates, Springfield, MA	\N	\N	\N	\N	42.1158277	-72.5932991	299 Carew St STE 210 Springfield, MA 01104	No	Please call our office at 413 732 5580 and one of our office staff will meet you outside the physicians office building 299 Carew Street	Springfield	MA
785	UVM Health Network Porter Medical Center	\N	\N	\N	\N	43.9997267	-73.1684387	115 Porter Dr Middlebury, VT 05753	Yes	ATTN: Porter Emergency Room : Kathryn Samuel	Middlebury 	VT
786	Kaiser Zion ER	\N	\N	\N	\N	32.7916133	-117.0954049	4647 Zion Ave San Diego, CA 92120	Yes	San Diego	San Diego	CA
787	Sunrise Senior Living in Peabody 	\N	\N	\N	\N	42.5373758	-70.917109	73 Margin St Peabody, MA 01960	Yes	Drop off box in the back of building 	Peabody 	MA
788	Scripps mercy San Diego 	\N	\N	\N	\N	32.7515656	-117.16039	4077 Fifth Ave San Diego, CA 92103	Yes	Unsure currently. 	San Diego 	CA
789	The Brooklyn Hospital Center	\N	\N	\N	\N	40.691265	-73.9777743	121 Dekalb Ave Brooklyn, NY 11201	Yes	Cardiac Pulmonary Care Unit (CPCU) - 6B 	New York - Brooklyn	NY
790	Nhan Hoa Comprehensive Health Care Clinic (FQHC)	\N	\N	\N	\N	33.7742038	-117.996696	7761 Garden Grove Blvd Garden Grove, CA 92841	No	ATTN: Jenny Nguyen	Garden Grove	CA
791	Regents Point	\N	\N	\N	\N	33.6522739	-117.832295	19191 Harvard Ave Irvine, CA 92612	Yes	Drop off at Windcrest SNF building	Irvine	CA
792	New Haven In-Home Care Inc 	\N	\N	\N	\N	37.6667243	-122.4668185	333 Gellert Blvd #227 Daly City, CA 94015	Yes	Office in 2nd floor. Please deliver in the unit. Thank you 	Daly City	CA
793	Riverside Regional Medical Center	\N	\N	\N	\N	37.0634596	-76.4833383	500 J Clyde Morris Blvd Newport News, VA 23601	No	Riverside welcomes donations of certain medical supplies that are difficult to obtain. These items must be new and in unopened boxes and clearly labeled. They should be dropped off at any Riverside hospital location on Wednesdays between 10 a.m. and 2 p.m.  Note: They have the main hospital in NN, but also have 3 others: Doctors Hospital Williamsburg, Shore Memorial Hospital, and Riverside Tappahanock Hospital. 	Newport News	VA
794	M Health Fairview Northland Hospital main entrance:	\N	\N	\N	\N	45.558484	-93.5900941	911 Northland Dr Princeton, MN 55371	?	Monday-Friday, 7 a.m.-3 p.m. All items should be placed in a box labeled “Donation” and put in your trunk or non-passenger storage area of your vehicle. Drive up to any of the three delivery sites. Remain in your vehicle. A staff member will come to you to retrieve the box. The staff member will ask you for the following information: https://umn.qualtrics.com/jfe/form/SV_9XifmHCuCykmOyh	Princeton	MN
795	Home Health Agencies	\N	\N	\N	\N	34.1859865	-118.4504111	14545 Friar St Van Nuys, CA 91411	Yes	At suite 103	Van Nuys	CA
796	Advocate Lutheran General Hospital	\N	\N	\N	\N	42.0384783	-87.847611	1775 Dempster Street Park Ridge, IL 60068	Yes	Main Lobby Entrance	Park Ridge	IL
797	Saint Mary of Nazareth 	\N	\N	\N	\N	41.9020876	-87.6829261	2233 W Division St Chicago, IL 60622	Yes	Leave with greeter at ER entrance (located on Leavitt Street) 	Chicago	IL
799	Thrive support and Advocacy 	\N	\N	\N	\N	42.3404954	-71.5845424	65 Boston Post Rd W #220 Marlborough, MA 01752	Yes	Please call Melissa Kapulka 5086675070 I can be readily available for curbside at our office space if needed. 	Marlborough 01752	MA
800	St. Croix Hospice	\N	\N	\N	\N	44.9501156	-92.9470804	7755 3rd St N #200 Oakdale, MN 55128	Yes	Come in and ring the bell.  	OAKDALE	MN
801	Brookdale Medical Center	\N	\N	\N	\N	40.6549132	-73.9126971	1 Brookdale Plaza Brooklyn, NY 11212	Yes	Call to schedule dropoff. PPE has been stolen at this site	Brooklyn	NY
802	Kaiser Permanente - Fremont ER	\N	\N	\N	\N	37.5521961	-121.9747793	39400 Paseo Padre Pkwy Fremont, CA 94538	Yes	Please drop off to emergency room receptionist. Command Center: 510-248-5617	Fremont	CA
803	St Johns Regional Medical Center	\N	\N	\N	\N	34.216734	-119.1558831	1600 N Rose Ave Oxnard, CA 93030	Yes	Drop off ER entrance	oxnard	CA
804	Escondido Post Acute Rehab	\N	\N	\N	\N	33.1309957	-117.0803736	421 E Mission Ave Escondido, CA 92025	Unsure 	Call and drop off at entrance. Doors remain locked during open hours.	Escondido	CA
805	Mary Washington Hospital	\N	\N	\N	\N	38.2957373	-77.4979344	2300 Fall Hill Ave Fredericksburg, VA 22401	Yes	Drop off from 10am-2pm Mon-Fri. See instructions at https://www.marywashingtonhealthcare.com/COVID-19/COVID-19-Donations.aspx	Fredericksburg	VA
806	North Dakota Drivers License Division	\N	\N	\N	\N	48.2349959	-101.3190397	1600 2nd Ave SW Minot, ND 58701	Yes	Mail to address above or curbside, I am happy to come out and get them	minot	ND
807	Nursingale	\N	\N	\N	\N	45.4485001	-122.7747197	9900 SW Greenburg Rd #290 Tigard, OR 97223	No	Place outside the office door 	Portland 	OR
808	King County Search and Rescue	\N	\N	\N	\N	47.6115901	-122.2017231	c/o Gregg's Cycle 105 Bellevue Way NE Bellevue, WA 98004	Open box N95, 	http://www.KingCountySAR.org, Gregg's Cycle is helping us with a donation site. Call 425-462-1900 (press 0) and a staff member will meet you at the front door to collect the donation.  Daily except  Sunday and Wednesday from 10am – 6pm.	Bellevue	WA
809	Firelands Regional Medical Center	\N	\N	\N	\N	41.4459948	-82.7101312	1111 Hayes Ave Sandusky, OH 44870	Yes	ATTN: Materials	Sandusky	OH
810	Martin Luther King Community Hospital 	\N	\N	\N	\N	33.9231768	-118.2437996	1680 E 120th St Los Angeles, CA 90059	No	Attention ICU 	Los Ángeles 	CA
811	Westside Garden Plaza and The Bridge at Westside Garden Plaza 	\N	\N	\N	\N	39.7788724	-86.3133646	8614 W 10th St Indianapolis, IN 46234	Yes	Hilanie Hauk ( Director of Nursing )	Indianapolis 	IN
812	New River Health Association	\N	\N	\N	\N	37.9406712	-81.160512	908 Scarbro Rd Scarbro, WV 25917	Yes	ATTN: CHRIS BAILEY  OR CAN BRING TO THE FRONT DOOR	Scarbro	WV
813	Citizens Medical Center	\N	\N	\N	\N	32.077444	-92.094571	7939 US-165 Columbia, LA 71418	No	7939 HWY 165	COLUMBIA	LA
814	St Johns Pleasant Valley Hospital	\N	\N	\N	\N	34.2437668	-119.0243506	3809 Antonio Ave Camarillo, CA 93010	Yes	ER entrance	camarillo	CA
815	Glendale Adventist Hospital 	\N	\N	\N	\N	34.2622793	-118.4598209	15031 Germain St Mission Hills, CA 91345	No	15031 GERMAIN ST	MISSION HILLS	CA
816	Inspira Medical Center Vineland	\N	\N	\N	\N	39.5109113	-75.1774065	453 Centerton Rd Bridgeton, NJ 08302	Yes	It will be delivered to my personal address, I'm a worker at inspira. Leave in the mailbox or on the front porch	Bridgeton	NJ
817	The One World Center for Autism	\N	\N	\N	\N	38.991358	-76.8269565	7401 Forbes Blvd Suite A Lanham, MD 20706	No	mailing address	Lanham	MD
818	A Plus Home Care	\N	\N	\N	\N	43.0274042	-88.023512	8903 W Adler St Milwaukee, WI 53214	Yes	Back door	MILWAUKEE	WI
819	Kaiser Permanente Stockton 	\N	\N	\N	\N	38.0174883	-121.2982713	7373 West Ln #135 Stockton, CA 95210	Yes	Pls hand to medical assistant and label box  - TO Critical care MDs 	Stockton 	CA
820	avamere court at keizer	\N	\N	\N	\N	45.0012493	-123.0250049	5300 River Rd N Keizer, OR 97303	Yes	drop off at entrance of building #2, facing River Road	Keizer	OR
821	LAC + USC Medical Center 	\N	\N	\N	\N	34.0596114	-118.2081288	2051 Marengo St Los Angeles, CA 90033	Yes	GH4628	Los angeles	CA
822	Terre Haute Regional Emergency Dept	\N	\N	\N	\N	39.4195116	-87.4089787	3901 S 7th St Terre Haute, IN 47802	Yes		Terre Haute	IN
823	Westside Garden Plaza	\N	\N	\N	\N	39.7846491	-86.3137916	8616 W 10th St Indianapolis, IN 46234	Yes	Please drop off at door 12. ATTN: Christina White, Assisted Living  Director 	Indianapolis 	IN
824	Aurora Medical Center Summit	\N	\N	\N	\N	43.0656747	-88.4674576	36500 Aurora Dr Oconomowoc, WI 53066	No		Oconomowoc	WI
825	Christus Santa Rosa Medical Center 	\N	\N	\N	\N	29.5131098	-98.5900455	2827 Babcock Rd San Antonio, TX 78229	No	Mail 	San Antonio	TX
826	King County Search and Rescue	\N	\N	\N	\N	47.679546	-122.324967	c/o Gregg's Cycle 7007 Woodlawn Ave NE Seattle, WA 98115	Open Box N95	http://www.KingCountySAR.org Gregg's Cycle is helping us with a donation site. At the entry door, a staff member will meet you to collect the donation.  Daily except Sunday and Wednesday from 10am – 6pm.	Seattle	WA
827	Bayshore Medical Center	\N	\N	\N	\N	40.4054853	-74.1917012	727 N Beers St Holmdel, NJ 07733	Yes	ATTN: Rhonda Neal 4South 	Homdel	NJ
828	Secure Donation Drop of site at John A. Burns School of Medicine	\N	\N	\N	\N	21.2964863	-157.8637783	651 Ilalo St Honolulu, HI 96813	Yes	Upon arrival, please notify security that you have a donation— staff members of the Dean's office will receive the donations. Please do not leave any donations at the security desk. Donations will be accepted Monday-Friday 8am-4pm. 	Honolulu	HI
829	Kaiser Santa Clara	\N	\N	\N	\N	37.2761122	-122.0107969	13171 Via Arriba Dr Saratoga, CA 95070	No		Saratoga 	CA
830	Hoboken University Medical Center 	\N	\N	\N	\N	40.7415814	-74.0341491	308 Willow Ave Hoboken, NJ 07030	Yes	drop off at emergency room entrance. ATTN dr melissa enriquez  	hoboken 	NJ
831	Davidson County Jails	\N	\N	\N	\N	36.0901425	-86.6876946	5131 Harding Pl Nashville, TN 37211	Yes	5113 Harding Place, Nashville, 37211	Nashville	TN
832	Reeves Memorial Medical Center	\N	\N	\N	\N	32.8240918	-92.656449	409 1st St Bernice, LA 71222	Yes	409 First Street	Bernice	LA
833	Staten Island University Hospital	\N	\N	\N	\N	40.5847086	-74.086124	475 Seaview Ave Staten Island, NY 10305	No	Loading Dock	Staten Island	NY
834	Conemaugh Memorial Medical Center	\N	\N	\N	\N	40.3052967	-78.9195098	1086 Franklin St Johnstown, PA 15905	Yes	ATTN: Dr. Lusine Mesropyan 	Johnstown 	PA
835	Kaiser Permanente 	\N	\N	\N	\N	37.9371877	-122.3605559	901 Nevin Ave Richmond, CA 94801	Yes	Curbside outside hospital lobby. Coordinate w/ me via text/phone 510-932-3801	Richmond	CA
836	King County Search and Rescue	\N	\N	\N	\N	47.820892	-122.3115103	c/o Gregg's Cycle 5810 196th St SW Lynnwood, WA 98036	Open Box N95	http://www.KingCountySAR.org Gregg's Cycle is helping us with a donation site. At the entry door, a staff member will meet you to collect the donation.  Daily except Sunday and Wednesday from 10am – 6pm.	Lynnwood	WA
837	Hood Memorial Hospital 	\N	\N	\N	\N	30.7325907	-90.5130721	301 Walnut St Amite City, LA 70422	No	Curbside ask for management for drop off. Mailing ATTN: Nursing Floor Manager/House Supervisor/Charge Nurse	Amite	LA
838	Zuckerberg San Francisco General	\N	\N	\N	\N	37.7656301	-122.4029238	350 Rhode Island St #100 San Francisco, CA 94103	Yes	SEIU Local 1021 Call 415 848 3611 and get instructions if no answer call Albert Mejia 415 686 5075	San Francisco	CA
839	Planned Parenthood of Central and Western NY	\N	\N	\N	\N	43.1608693	-77.5994477	114 University Ave Rochester, NY 14605	Yes	114 University Avenue	Rochester	NY
840	Inova Schar Cancer Institute - Pediatric Oncology Infusion	\N	\N	\N	\N	38.8628247	-77.2233473	8081 Innovation Park Dr Fairfax, VA 22031	Not sure		Fairfax	VA
841	Professional Healthcare Resources	\N	\N	\N	\N	38.8315179	-77.2098419	7619 Little River Turnpike #600 Annandale, VA 22003	Yes	ATTN: Susan   8:30 AM - 5:30 PM weekdays	Annandale	VA
842	Northeastern Vermont Regional Hospital	\N	\N	\N	\N	44.3755075	-71.6096784	38 Lancaster Rd Whitefield, NH 03598	Yes	Leave at Whitefield Animal Hospital with receptionist. She will deliver to her relative who is a RN at Northeastern Vermont Regional Hospital	Whitefield	NH
843	Virginia Hospital Center	\N	\N	\N	\N	38.888622	-77.1263891	1625 N George Mason Dr Arlington, VA 22205	Yes	please call first and I will let you know	Arlington	VA
844	Lahey Clinic	\N	\N	\N	\N	42.4848754	-71.2051901	41 Burlington Mall Road Burlington, MA 01803	No	Attn: ER Department	Burlington	MA
845	Lawrence General Hospital	\N	\N	\N	\N	42.7061985	-71.11713	795 Chickering Rd North Andover, MA 01845	Yes	Do not drop off at the hospital. Drop off at North Andover Fire Department, 795 Chickering Road, North Andover MA	North Andover	MA
846	One Medical Group: Emeryville 	\N	\N	\N	\N	37.8394941	-122.2884026	1333 Powell St Suite A103 Emeryville, CA 94608	Yes	Deliveries can be made to the Emeryville Powell st. location. Please call Jen Rodney @707-227-2767 and she will meet you! If you can't get a hold of Jen Rodney please call Jessie Kearse @510-586-5506	Emeryville	CA
848	Maple Park Villiage	\N	\N	\N	\N	40.053801	-86.126803	776 N Union St Westfield, IN 46074	Yes	Front door lobby	Westfield 	IN
849	Sholom Home East, Shirley Chapman	\N	\N	\N	\N	44.919321	-93.138366	740 Kay Ave St Paul, MN 55102	Yes	Drop off at front desk/guest service, or mail ATTN: Karissa Pope, DON	St. Paul	MN
850	St. Joseph Mercy Oakland 	\N	\N	\N	\N	42.6141856	-83.276215	44405 Woodward Ave Pontiac, MI 48341	Yes		Pontiac 	MI
851	Comprehensive Systems, Inc	\N	\N	\N	\N	42.4861514	-92.4469725	5714 Nordic Dr #500 Cedar Falls, IA 50613	Yes	Leave in entry way 	Cedar Falls	IA
852	Regal Medical Group and Lakeside Community Healthcare	\N	\N	\N	\N	34.2245502	-118.50145	8510 Balboa Blvd #150 Northridge, CA 91325	No	8510 BALBOA BLVD STE 150 - if no one there, call Ronnique Crider - 818-810-4628(desk) 818-661-9173(cell)	Northridge	CA
853	A-TEC Ambulance	\N	\N	\N	\N	42.2504806	-88.330156	340 Commerce Dr Crystal Lake, IL 60014	Yes	Please drop off at office door	Crystal Lake	IL
854	UPMC Western Maryland	\N	\N	\N	\N	39.6481502	-78.7325179	12500 Willowbrook Rd Cumberland, MD 21502	No	Mailing address	Cumberland 	MD
855	Sunflower Medical Group and Urgent Care	\N	\N	\N	\N	39.0237651	-94.6498379	5555 W 58th St Mission, KS 66202	Yes	can drop off at the front desk reception	Mission	KS
856	Virtua Our Lady of Lourdes Emergency Department	\N	\N	\N	\N	39.9279261	-75.0949231	1600 Haddon Ave Camden, NJ 08103	Yes	Security desk in ER waiting room is fine-Attn: Paul Eckert	Camden 	NJ
857	St Marys Medical Center Dignity Health	\N	\N	\N	\N	37.7731512	-122.4534157	2250 Hayes St San Francisco, CA 94117	No	M-f 1-430, then call 415-516-5184 so someone can open the gate.	San Francisco	CA
858	Ambulance Inc of Laurel County	\N	\N	\N	\N	37.1271996	-84.0861875	420 W 5th St London, KY 40741	Yes		London	KY
859	UCSF - Mission Bay Campus	\N	\N	\N	\N	37.7672951	-122.3924635	Genentech Hall, 600 16th St, Room N121 San Francisco, CA 94158	No	No dropoffs here. Go to 3 main UCSF collection sites: https://coronavirus.ucsf.edu/help For questions call 415-514-4107 or Elizabeth Lin 909-348-3238. 	San Francisco	CA
860	UCSF - Parnassus Campus	\N	\N	\N	\N	37.7630895	-122.4578144	505 Parnassus Ave, Long Hospital Loading Dock, Room L235G San Francisco, CA 94143 	No	No dropoffs here. Go to 3 main UCSF collection sites: https://coronavirus.ucsf.edu/help For questions call 415-514-4107 or Elizabeth Lin 909-348-3238. 	San Francisco	CA
861	University of Cincinnati Medical Center	\N	\N	\N	\N	39.1374112	-84.5036728	234 Goodman St Cincinnati, OH 45219	Yes		Cincinnati	OH
862	Providence Saint John's Health Center	\N	\N	\N	\N	34.0307739	-118.4796445	2121 Santa Monica Blvd Santa Monica, CA 90404	Yes	Front of hospital	Santa Monica	CA
863	Bexar County Medical Society	\N	\N	\N	\N	29.5964044	-98.5685427	4334 N Loop 1604 W Shavano Park, TX 78249	Yes	Loop 1604 & Lockhill Selma Road, inside the loop; NOT downtown; NOT off i10. 	San Antonio	TX
864	AACI Health Clinic (FQHC)	\N	\N	\N	\N	37.3156923	-121.9370894	2400 Moorpark Ave #319 San Jose, CA 95128	Yes	Mailing address ATTN Helen Wang AACI HC	San Jose	CA
865	Naples Community Hospital	\N	\N	\N	\N	26.2739901	-81.7887262	11190 Health Park Blvd Naples, FL 34110	Yes		Naples	FL
867	Family Guidance Centers, INC	\N	\N	\N	\N	41.8967625	-87.6363993	310 W Chicago Ave Chicago, IL 60654	Yes	Curbside is great!	Chicago	IL
868	Home Health & Hospice Care	\N	\N	\N	\N	42.8443737	-71.4965821	7 Executive Park Dr Merrimack, NH 03054	Yes	7 Executive Park Drive	Merrimack	NH
869	Lakemary Center	\N	\N	\N	\N	38.5689134	-94.8607372	100 Lakemary Dr Paola, KS 66071	No	100 Lakemary Drive	Paola	KS
870	Methodist Hospital	\N	\N	\N	\N	44.9422543	-93.3697365	3251 Louisiana Ave S APT 122 St Louis Park, MN 55426	No	St. Louis Park	St. Louis Park	MN
871	RWJBH New Brunswick 	\N	\N	\N	\N	40.4864958	-74.4155733	1 Robert Wood Johnson Place New Brunswick, NJ 08901	I don't know	Operating room	New Brunswick	NJ
872	Enloe Medical Center	\N	\N	\N	\N	39.7425867	-121.849727	1531 Esplanade Chico, CA 95926	Yes	Any	Chico	CA
873	Bethesda Lutheran Communities	\N	\N	\N	\N	44.8593412	-93.6593497	1600 Arboretum Blvd Victoria, MN 55386	Yes	1600 Arboretum Blvd.	Victoria	MN
874	Rome Memorial Hospital	\N	\N	\N	\N	43.2291604	-75.4423021	1500 N James St Rome, NY 13440	Yes	Call and ask for Julie Chrysler, she is in charge of donations. RMH # 315-338-7000	Rome	NY
875	MEMORIAL HERMANN TMC	\N	\N	\N	\N	29.7140772	-95.3951404	6411 Fannin St Houston, TX 77030	Yes	attn: sarofim 8	Houston 	TX
876	Tulane Medical Center & University Medical Center New Orleans	\N	\N	\N	\N	29.9578373	-90.077761	131 S Robertson St New Orleans, LA 70112	No	1st Floor Innovation Center	New Orleans	LA
877	Saint Francis Health Care system	\N	\N	\N	\N	37.303407	-89.5712971	211 St Francis Dr Cape Girardeau, MO 63703	Yes	Entrance 1	Cape Girardeau 	MO
1098	Decatur Gastroenterlogy 	\N	\N	\N	\N	34.5908106	-86.9690178	1103 15th Ave SE Decatur, AL 35601	No	As above	Decatur	AL
878	Larkin Community Hospital, Larkin Community Hospital Palm Springs Campus 	\N	\N	\N	\N	25.8690179	-80.3128235	1475 W 49th Pl Hialeah, FL 33012	Yes	Hospital entrance, call for Dr Pedram Rad 	Hialeah	FL
879	Apex rehab care	\N	\N	\N	\N	40.8267826	-73.3944927	78 Birchwood Dr Huntington Station, NY 11746	Yes	78  birchwood	Huntington	NY
880	Affinity Urgent Care 	\N	\N	\N	\N	29.4018231	-95.0354361	2600 FM1764 La Marque, TX 77568	Yes	2600 FM 1764	La Marque	TX
881	Sharp Grossmont Hospital	\N	\N	\N	\N	32.7829441	-117.003463	9000 Wakarusa St La Mesa, CA 91942		Drop off at Brier Patch Campus	La Mesa	CA
882	Sonoma Valley Community Health Center	\N	\N	\N	\N	38.2987344	-122.4744453	19270 Sonoma Hwy Sonoma, CA 95476	Yes	Drop off at Health Center. Staff will receive.	Sonoma	CA
884	Sharp Coronado Hospital	\N	\N	\N	\N	32.694447	-117.1686765	250 Prospect Pl Coronado, CA 92118	No		Coronado	CA
885	PPMC EMERGENCY DEPARTMENT 	\N	\N	\N	\N	39.958494	-75.1984936	51 N 39th St Philadelphia, PA 19104	No	ATTN: CHARGE NURSE	Philadelphia 	PA
886	TCMH Medical Complex	\N	\N	\N	\N	37.3159368	-91.9608847	1337 S Sam Houston Blvd Houston, MO 65483	Yes	1337 S. Sam Houston Blvd, Houston, MO, 65483 ATTN: Hope Best	Houston	MO
887	Merit River Oaks Hospital Emergency Dept	\N	\N	\N	\N	32.3254871	-90.1053085	1030 River Oaks Dr Flowood, MS 39232	Yes		Flowood	MS
888	Allegiance Behavioral Health Center of Monroe	\N	\N	\N	\N	32.5782399	-92.0722332	4402 Sterlington Rd Monroe, LA 71203	Yes	Ange Alexander  mail or drop off 4402 Sterlington Road Monroe LA 71203	Monroe	LA
889	Long Island Community Hospital 	\N	\N	\N	\N	40.7799905	-72.9772437	101 Hospital Rd Patchogue, NY 11772	No	Donation to mail lobby 	East Patchogue 	NY
890	Memorial Sloan Kettering Cancer Center 	\N	\N	\N	\N	40.7648883	-73.9567338	417 E 68th St New York, NY 10065	Yes	Accepting donations 24/7 in the lobby of the Zuckerman building.	New York - Manhattan	NY
891	Suburban Hospital	\N	\N	\N	\N	38.9972577	-77.110582	8600 Old Georgetown Rd Bethesda, MD 20814	Yes	Drop off now at McKinley street entrance (curbside)	Bethesda	MD
892	Bear Valley Community Health Care District	\N	\N	\N	\N	34.2465111	-116.8884951	41870 Garstin Dr Big Bear Lake, CA 92315	Yes	Attn: Purchasing/Steve	Big Bear Lake	CA
893	Kaiser Permanente Los Angeles	\N	\N	\N	\N	34.0988382	-118.2954537	1526 N Edgemont St Los Angeles, CA 90027	Yes	1526 Edgemont St. Los Angeles CA 90027	Los Angeles	CA
894	Texas Medical Rehabilitation, located in Southwest Atrium	\N	\N	\N	\N	29.7155473	-95.5020077	6776 Southwest Fwy Houston, TX 77074	Yes	Box in the leasing office, Suite 587	Houston	TX
895	NOELA Community Health Care	\N	\N	\N	\N	30.0304801	-89.931388	13085 Chef Menteur Hwy New Orleans, LA 70129	Yes	13085 Chef Menteur Hwy	NEW ORLEANS	LA
896	Bayfront Medical center 	\N	\N	\N	\N	27.7634827	-82.642014	701 6th St S St. Petersburg, FL 33701	Yes	Ask for Kim hart 	St. Petersburg 	FL
897	Northwest Kidney Centers	\N	\N	\N	\N	47.488616	-122.3080552	1903 South 128th Street SeaTac, WA 98168	No	Drop off at the Logistics Center, 1903 S. 128th between 7am-3pm Monday through Friday. Ring the doorbell at the pedestrian entrance or loading dock. Call 253-905-4574 with questions. 	SeaTac	WA
898	Bexar County Medical Society 	\N	\N	\N	\N	29.5964044	-98.5685427	4334 N Loop 1604 W Shavano Park, TX 78249	Yes	1604 & Lockhill Selma inside the loop (NOT off i10; NOT downtown)	san antonio	TX
899	The Reutlinger Community 	\N	\N	\N	\N	37.7985621	-121.9061522	4000 Camino Tassajara Danville, CA 94506	Yes		Danville	CA
900	Hilaire Rehab and Nursing	\N	\N	\N	\N	40.8685913	-73.4104241	9 Hilaire Dr Huntington, NY 11743	Yes	Please drop all supplies in the vestibule of the facility 	Huntington	NY
901	Kaiser Permanente San Diego Medical Center	\N	\N	\N	\N	32.8297116	-117.1251884	9455 Clairemont Mesa Blvd San Diego, CA 92123	Yes	Emergency Department	San Diego	CA
902	Riverside Community Hospital 	\N	\N	\N	\N	33.9772213	-117.3815694	4445 Magnolia Ave Riverside, CA 92501	No	Mail to  4445 magnolia ave Riverside, CA 92508	Riverside 	CA
903	Sharp Chula Vista Medical Center	\N	\N	\N	\N	32.6187297	-117.0221467	751 Medical Center Ct Chula Vista, CA 91911	No		Chula Vista	CA
904	Veterans Affairs Hospital	\N	\N	\N	\N	29.7001034	-95.3889654	2002 Holcombe Blvd Houston, TX 77030	Yes	Please email barbra.bell@va.gov one day in advance to coordinate drop off.	Houston	TX
905	Norway Hill Adult Family Homes	\N	\N	\N	\N	47.7489406	-122.1999071	16721 107th Pl NE Bothell, WA 98011	Yes	Please drop off at the entrance of the driveway. Not the care home door as we protect the elderly from the virus.	Bothell	WA
906	Heartlands Assisted Living in Severna Park	\N	\N	\N	\N	39.085808	-76.6043993	715 Benfield Rd Severna Park, MD 21146	No	attention: Lisa May bring and leave in front area of the building	Severna Park	MD
907	St. Elizabeth's Medical Center	\N	\N	\N	\N	42.3488724	-71.1473582	736 Cambridge St Brighton, MA 02135	Yes	Please contact us at stelizabethsppe@gmail.com or contact the chief medical resident at 617-789-5089 to coordinate supply drop-off. The chief resident can also be reach at the pager chief pager 49500	Boston	MA
908	Exeter Hospital 	\N	\N	\N	\N	42.9833965	-70.9352553	5 Alumni Dr Exeter, NH 03833	Yes		Exeter 	NH
909	Long Island Community Hospital	\N	\N	\N	\N	40.779671	-72.9789746	100 Hospital Rd East Patchogue, NY 11772	unsure	Emergency Department, Main Lobby	Patchogue	NY
910	Sholom Home Health Care	\N	\N	\N	\N	44.938497	-93.3942299	3610 Phillips Pkwy Minneapolis, MN 55426	Yes	Call 612-508-7970-before arriving, we can pickup curbside	St. Louis Park	MN
911	San Gabriel Valley Medical Center	\N	\N	\N	\N	34.1023234	-118.1055415	438 W Las Tunas Dr San Gabriel, CA 91776	I'm not sure.	Call the ER 6265706514	San Gabriel	CA
912	Bay Area Hospital	\N	\N	\N	\N	43.3835039	-124.2329295	1775 Thompson Rd Coos Bay, OR 97420	Yes	Bring to the visitor screening sites at the ER entrance and Main entrance.  Or call Brian Bowers in materials Managment 541-404-3343	Coos Bay 	OR
913	Clovis Community Medical Center	\N	\N	\N	\N	36.8437954	-119.8069243	7370 N Palm Ave #101 Fresno, CA 93711	No	Drop off at reception ask for Courtney/Renee/Pam for Hospitalist Group	Clovis	CA
914	Valley Health System	\N	\N	\N	\N	40.9839586	-74.1005935	223 N Van Dien Ave Ridgewood, NJ 07450		Donations may be dropped off at the hospital's main entrance at 223 North Van Dien Avenue in Ridgewood, Monday through Friday between 8 a.m. and 5 p.m.	Ridgewood	NJ
915	Alhambra Hospital Medical Center	\N	\N	\N	\N	34.0903051	-118.1440538	100 S Raymond Ave Alhambra, CA 91801		Attn: Emergency Department	Alhambra	CA
916	CaroMont Regional Medical Center	\N	\N	\N	\N	35.2717527	-81.1390362	2525 Court Dr Gastonia, NC 28054	No	Mailing adress	Gastonia	NC
917	Tule River Indian Health Center, Inc	\N	\N	\N	\N	36.0284957	-118.7974015	380 Indian Reservation Dr Porterville, CA 93257	No	380 N Reservation Road	Porterville	CA
918	Vi at Palo Alto - Continuing Care Retirement Community	\N	\N	\N	\N	37.4396062	-122.17544	620 Sand Hill Rd Palo Alto, CA 94304	No	Please mail, ATTN: Justine Dewey	Palo Alto	CA
919	Kaiser San Jose 	\N	\N	\N	\N	37.2398041	-121.8002512	250 Hospital Pkwy San Jose, CA 95119	Yes	Curbside 	San Jose 	CA
920	One Medical 	\N	\N	\N	\N	47.6132195	-122.334337	CenturyLink Plaza 1600 7th Ave #110, Seattle, WA 98101	Yes	Please Mail, Attention Jeremy F.	Seattle 	WA
921	OSI Physical Therapy	\N	\N	\N	\N	45.2811037	-92.9849586	146 Lake St N #200 Forest Lake, MN 55025	Yes	ATTN: Derek Scheevel or drop off by the entrance to the suite if door isn't unlocked	Forest Lake	MN
922	Frederick Health	\N	\N	\N	\N	39.4241873	-77.4145681	405 W 7th St Frederick, MD 21701	No	405 W. 7th St.	Frederick	MD
923	Hendricks Nephrology and Hypertension	\N	\N	\N	\N	39.8442122	-86.3575561	5492 N. Ronald Reagan PKWY, Suite 260\r Brownsburg, IN 46112	No	5492 N Ronald Reagan Pkwy	Brownsburg	IN
924	Santa Rosa Health and Rehab	\N	\N	\N	\N	30.62974	-87.0370118	5386 Broad St Milton, FL 32570	Yes	see receptionist at front desk; mail attn: Melody Hines	Milton	FL
925	Cathedral Square Assisted Living 	\N	\N	\N	\N	44.4796629	-73.2178031	3 Cathedral Square Burlington, VT 05401	No	Curbside	Burlington	VT
926	Santa Rosa Health and Rehabilitation	\N	\N	\N	\N	30.62974	-87.0370118	5386 Broad St Milton, FL 32570	Yes	See receptionist at front door; for mail Attn: Melody Hines	Milton	FL
927	Chatsworth Health Care Center	\N	\N	\N	\N	34.7796818	-84.7856881	102 Hospital Dr Chatsworth, GA 30705	Yes	Administrator	Chatsworth 	GA
928	University of Cincinnati medical center	\N	\N	\N	\N	39.1374112	-84.5036728	234 Goodman St Cincinnati, OH 45219	Yes		Cincinnati	OH
929	Virginia Cancer institute 	\N	\N	\N	\N	37.6030188	-77.5207442	6605 W Broad St Ste.A Richmond, VA 23230	Yes	Attention: Wanda Jeter	Richmond 	VA
930	Pediatric Associates of Savannah	\N	\N	\N	\N	32.03242	-81.091076	4600 Waters Ave Savannah, GA 31404	Yes	Will take any way we can 	Savannah	GA
931	Mobile Medical Associates 	\N	\N	\N	\N	27.1065552	-80.2502691	260 Cardinal Trail Stuart, FL 34997	Yes	260 South East Cardinal Trail	Stuart	FL
932	John H. Stroger Jr. Hospital of Cook County 	\N	\N	\N	\N	41.8727494	-87.6757854	1969 Ogden Ave Chicago, IL 60612	Yes	ER door #2, drop off to ER charge nurse	Chicago	IL
933	Coming Home Hospice	\N	\N	\N	\N	37.7604199	-122.4368815	115 Diamond St San Francisco, CA 94114	Yes	Attn: Liezel/Monica	San Francisco	CA
934	Kaiser Permanente - Vacaville 	\N	\N	\N	\N	38.3882169	-121.9387685	1 Quality Drive Vacaville, CA 95688	Yes		Vacaville 	CA
935	MedStar Washington Hospital Center-Anesthesia Dept	\N	\N	\N	\N	38.9287831	-77.0139308	110 Irving St NW Washington, DC 20010	Yes	Please call to arrange drop off	Washington	DC
936	KidMed - Pediatric Urgent Care	\N	\N	\N	\N	37.6372231	-77.3551887	8356 Bell Creek Rd Mechanicsville, VA 23116	Yes	ATTN: Roxanne Bennett	Mechanicsville	VA
937	Hope Family Care Center	\N	\N	\N	\N	39.0705848	-94.5524094	3027 Prospect Ave Kansas City, MO 64128	Yes		Kansas City	MO
938	Center for Comprehensive Gynecology	\N	\N	\N	\N	41.8936913	-87.620953	259 E Erie St Suite 2450 Chicago, IL 60611	Yes	Please mail: attention to Dr. Milad	Chicago	IL
939	Pennsylvania Ambulance	\N	\N	\N	\N	41.4194464	-75.6008034	1000 Dunham Dr Dunmore, PA 18512	Yes	Attn:  Jennifer Berg	Dunmore	PA
940	Bay Area Hosptial	\N	\N	\N	\N	43.3835039	-124.2329295	1775 Thompson Rd Coos Bay, OR 97420	Yes	Contact Brian Bowers - Logistics Section Chief 541-404-3343	Coos Bay	OR
941	Kaiser Permanente - Fremont	\N	\N	\N	\N	37.553735	-121.9752641	39401 Civic Center Dr Fremont, CA 94538	No	Second floor OR	Fremont	CA
942	University of Arizona Emergency Medicine Doctors-Tucson	\N	\N	\N	\N	32.2430048	-110.9462188	1625 N Campbell Ave Tucson, AZ 85719	Yes	Please drop off at the Emergency Department entrance. Please inform the Emergency Department staff of your donation.	Tucson	AZ
943	The Garrison Geriatric Education and Care Center	\N	\N	\N	\N	33.5933301	-101.893759	3710 4th St Lubbock, TX 79415	Yes		Lubbock	TX
944	Hospital UPR Federico Trilla	\N	\N	\N	\N	18.4178951	-65.9745101	km 8. P.R, 3 Cll 3 Carolina, 00984 PR	Yes	Curbside	Carolina	PR
945	Capital Health	\N	\N	\N	\N	40.2919868	-74.8034535	1 Capital Way Pennington, NJ 08534	Yes		Pennington	NJ
946	Sequoia Hospital - Redwood City	\N	\N	\N	\N	37.479843	-122.2546654	170 Alameda de las Pulgas Redwood City, CA 94062		Please contact the Sequoia Hospital Foundation at 650-367-5657 for more information or drop off items at hospital entrance.	Redwood City	CA
947	Mission Hospital	\N	\N	\N	\N	33.5610153	-117.6653937	27700 Medical Center Rd Mission Viejo, CA 92691	No	Emergency Room  Christina Dodge	Mission Viejo	CA
948	Burgess Square Healthcare and Rehab Centre	\N	\N	\N	\N	41.7822318	-87.9729106	5801 S Cass Ave Westmont, IL 60559	Yes	5801 South Cass Avenue	Westmont	IL
949	 North Willow Grove Pediatrics 	\N	\N	\N	\N	40.1632542	-75.1300015	2510 Maryland Rd #160 Willow Grove, PA 19090	No		Willow Grove	PA
950	Dr.S.Krishna Internal & Cardiology Clinic	\N	\N	\N	\N	35.9970705	-96.0992426	114 S Mission St Sapulpa, OK 74066	Yes	ATTN: DIANNA OFFICE MANAGER /(IF DROPPING OFF HOURS ARE MON-FRI 10 TO 4 CLOSED SAT AND SUN- ASK FOR DIANNA)	Sapulpa	OK
951	Auberge of Orchard Park	\N	\N	\N	\N	42.0352615	-87.7664165	5520 Lincoln Ave Morton Grove, IL 60053	Yes		Morton Grove 	IL
952	Eskenazi Health	\N	\N	\N	\N	39.89719	-86.2491302	5128 W 79th St Indianapolis, IN 46268	No	Donations of unused and unopened PPE are welcomed and would greatly benefit our staff at this time. For obvious reasons we cannot have foot traffic into the main hospital. Thus we have set up a shipping location where these donations can be delivered. The location is Pillow Logistics, 5128 W. 79th Street, Indianapolis, IN 46268. Donation hours are 10 a.m. to 4 p.m. Please ring the doorbell in the back in between dock doors 2 and 3.  At that time a Pillow Logistics employee will direct you to where to leave the product.  We are limiting the number of people that come into our warehouse as well.   	Indianapolis	IN
953	Bryan Medical Center 	\N	\N	\N	\N	40.7894293	-96.6980919	2300 S 16th St Lincoln, NE 68502	Yes	Curbside (business hours) or Visitor Check-in Station (after hours/weekends)	Lincoln	NE
954	De Paul Treatment Centers	\N	\N	\N	\N	45.5221121	-122.68479	1312 SW Washington St Portland, OR 97205	Yes	curbside procedure	Portland	OR
987	Vanderbilt University Medical Center	\N	\N	\N	\N	36.1097425	-86.765348	719 Thompson Ln Nashville, TN 37204		https://www.vumc.org/coronavirus/sites/default/files/COVID%20Documents/OHO%20map%20and%20directions%20English.pdf	Nashville	TN
955	Montefiore Medical Center- Wakefield Campus	\N	\N	\N	\N	40.8937532	-73.8611242	600 E 233rd St The Bronx, NY 10466	not sure, but please give them anyway. everything helps.	I am doing this on behalf of my father, a nurse at this hospital, without his knowledge. I'm sure you can just drop it off at the main entrance for deliveries and they will divide the PPE accordingly. 	New York - Bronx	NY
956	University of Rochester	\N	\N	\N	\N	43.1229458	-77.6235808	601 Elmwood Ave Rochester, NY 14642	Yes	curbside pickup, call 585-455-8635	Rochester	NY
957	CHI Lakeside	\N	\N	\N	\N	41.2375247	-96.1806251	16901 Lakeside Hills Ct Omaha, NE 68130	Yes	Attn: ED, Dr Dreessen 	Omaha	NE
958	Rosemont at Stone Mountain	\N	\N	\N	\N	33.816339	-84.177332	5160 Springview Ave Stone Mountain, GA 30083	Yes	5160 Spring View Circle	Stone Mountain	GA
959	Kensington Healthcare Center 	\N	\N	\N	\N	39.0317121	-77.0616182	3000 McComas Ave Kensington, MD 20895	Yes	Drop off or mail to front desk	Kensington 	MD
961	R0 Labs	\N	\N	\N	\N	42.3856036	-71.1115919	23 Ibbetson St Somerville, MA 02143	Yes.  Prefer open packaging, and a small quantity of a mix of items -- will be used for testing sterilization procedures	Call + leave at the curb	Somerville	MA
962	Stanford Health Care	\N	\N	\N	\N	37.486253	-122.2059536	550 Broadway St. Redwood City, CA 94063	No	Dropoff 7 days a week, 8AM-10AM and 3PM-5PM. Details at https://bit.ly/StanfordPPENeeds. Donations must be unopened, original packaging, in accordance with hospital standards. Not accepting homemade supplies at this time.	Redwood City	CA
963	Kaiser Permanente - West Los Angeles	\N	\N	\N	\N	34.0383728	-118.3750021	6041 Cadillac Ave., Ste 503 Los Angeles, CA 90034	Yes	Drop off at info desk in courtyard or mail ATTN:  Angela Nakamoto (PPE DONATION). Please call 323-853-1412. |   Attn: Carolyn Overman MD, Emergency Department |  Attn: Urgent Care Department	Los Angeles 	CA
964	Ascension SouthEast Michigan	\N	\N	\N	\N	42.4977181	-83.084039	28000 Dequindre Rd Warren, MI 48092	Yes	Donation box located at center building entrance facing Dequindre under the portico	Warren	MI
965	Jacobi Medical Center	\N	\N	\N	\N	40.8556769	-73.8462363	1400 Pelham Pkwy S The Bronx, NY 10461	Not sure, but I would send them because everything helps.	I'm doing this on behalf of my mother, a nurse at Jacobi medical center. She doesn't know that I am doing this. Therefore I do not know exactly where you could drop packages off, but I would use the address given and there should be a person at the front to direct deliveries.	Bronx	NY
966	Arcadia Methodist Hospital	\N	\N	\N	\N	34.1344486	-118.0416623	300 W Huntington Dr Arcadia, CA 91007	Yes	ATTN: Emergency Room	Arcadia 	CA
967	Integris Grove General Hospital	\N	\N	\N	\N	36.5813316	-94.7586391	1001 E 18th St Grove, OK 74344	Yes	Contact the administration office to set up a drop off time. 918-786-2243.	Grove	OK
968	Stanford Health Care - ValleyCare Valley Memmorial Center	\N	\N	\N	\N	37.6783049	-121.7817827	1119 E Stanley Blvd Livermore, CA 94550 	No	Dropoff at LifeStyleRx, Mon-F 8AM-5PM. Details at https://bit.ly/StanfordPPENeeds. Donations must be unopened, original packaging, in accordance with hospital standards. Not accepting homemade supplies at this time.	Livermore	CA
969	Living Life Home Care	\N	\N	\N	\N	45.0585866	-93.3972734	9220 Bass Lake Rd #215 New Hope, MN 55428	Yes	Mailing Address ATTN: Matthew Krebs	New Hope	MN
970	TLC Pediatrics of Frisco	\N	\N	\N	\N	33.109781	-96.8153804	3550 Parkwood Blvd #701 Frisco, TX 75034	Yes	can be dropped at front door or mailed to us ATTN: Trish Echaniz	Frisco	TX
971	Children's Hospital of Philadelphia Attention: Robert Silverstein, PPE Donations 	\N	\N	\N	\N	39.9487265	-75.1943904	Child Guidance Clinic 3401 Civic Center Blvd, Philadelphia, PA 19104	unopened sanitizer, unopened wipes, unopened cleaning products	There is a donation drop box in the Main Lobby of the Hospital (3401 Civic Center Boulevard, Philadelphia PA 19104). You are welcome to drop off your donations between normal business hours (9 a.m. to 4:30 p.m., Monday to Friday).   You can also mail your donations to   Children's Hospital of Philadelphia Attention: Robert Silverstein, PPE Donations  3401 Civic Center Boulevard  Philadelphia, PA 19104	Philadelphia	PA
972	Coastal Bend House Calls	\N	\N	\N	\N	27.7144726	-97.3920951	4444 Corona Dr #130 Corpus Christi, TX 78411	Yes		Corpus Christi	TX
973	Medical Respite & Sobering Center	\N	\N	\N	\N	37.7776385	-122.4123048	1171 Mission St 2nd Floor San Francisco, CA 94103	Yes	1171 Mission St. 2nd Floor	San Francisco	CA
974	Vascular Institute / Advanced Wound Care Institute 	\N	\N	\N	\N	33.5257572	-112.1009942	6036 N 19th Ave #204 Phoenix, AZ 85015	Yes	mailing address 	Phoenix 	AZ
975	Vitas Hospice	\N	\N	\N	\N	38.926837	-77.2469992	1604 Spring Hill Rd #450 Vienna, VA 22182	No	Attn: Bruce Oren, Patient Care Administrator	Vienna	VA
976	Genesis Medical 	\N	\N	\N	\N	41.5416972	-90.5565222	1227 E Rusholme St Davenport, IA 52803	No	Salvation Army is going to Serve as Collection Point for COVID-19 Outbreak Emergency Donations. Donations can be dropped off at the Salvation Army location at 100 Kirkwood Blvd., Davenport, on Monday through Friday from 8 a.m.-4:30 p.m. Anyone wishing to donate supplies is advised to call (563) 324-4808 first. Thank you!! 	Davenport	IA
977	Tucson Medical Center-AIM	\N	\N	\N	\N	32.2573233	-110.9574162	2794 N Tyndall Ave Tucson, AZ 85719	Yes	2794 N Tyndall Ave	Tucson	AZ
978	Syringa Hospital	\N	\N	\N	\N	45.9265605	-116.1271556	607 W Main St Grangeville, ID 83530	Yes	607 W MAIN	Grangeville	ID
979	Midwest Express Clinic 	\N	\N	\N	\N	41.8789317	-87.6470536	779 W Adams St Chicago, IL 60661	Yes	779 W Adams St	Chicago	IL
980	Medical City Weatherford	\N	\N	\N	\N	32.719827	-97.816989	2533 Hadley St Weatherford, TX 76087	Yes	Weatherford	Weatherford	TX
981	Clin-Path Diagnostics	\N	\N	\N	\N	33.4068636	-111.9775932	2105 S 48th St #104 Tempe, AZ 85282	Open boxes ok for sanitizers but not not for masks please.	Drop off in rear of 2105 S. 48th St #104 - Attn: Marla Dorman	Tempe	AZ
982	Professional Healthcare Resources	\N	\N	\N	\N	38.8841308	-77.0191504	501 School St SW Washington, DC 20024	Yes	RING BELL  9AM to 5:30 PM weekdays   	Washington	DC
983	Country View Assisted Living	\N	\N	\N	\N	34.0617851	-117.9329094	824 W Cameron Ave West Covina, CA 91790			West Covina	CA
984	Oroville Hospital	\N	\N	\N	\N	39.5062597	-121.5410928	2767 Olive Hwy Oroville, CA 95966			Oroville	CA
985	Neighborcare Health at 45th Street	\N	\N	\N	\N	47.6611526	-122.3377139	1629 N 45th St Seattle, WA 98103	Yes	At the front door	Seattle	WA
986	Huntington Beach Emergency Services 	\N	\N	\N	\N	33.6780642	-118.0002925	2000 Main St Huntington Beach, CA 92648	Yes		Huntington Beach	CA
1024	Atrium Post Acute Care of Matawan	\N	\N	\N	\N	40.3999019	-74.2379275	38 Freneau Ave Matawan, NJ 07747	Yes	Judy McKeown 	Matawan 	NJ
988	UC Irvine Division of Rheumatology 	\N	\N	\N	\N	33.78728	-117.888284	101 The City Dr S Orange, CA 92868	Yes	Pavilion 1, second floor  Please give to front desk on second floor with attention Dr. Desai 	Orange 	CA
989	Kaiser Walnut Creek 	\N	\N	\N	\N	37.8924348	-122.058953	1425 S Main St Walnut Creek, CA 94596	Yes	Come to the ED triage area	Walnut Creek 	CA
990	Bryan Medical Center	\N	\N	\N	\N	40.7966945	-96.6509997	1600 S 48th St Lincoln, NE 68506	Yes	Curbside (business hours) or Visitor Check-in Station (after hours/weekends)  or  Email Rachel Greene at Rachel.Greene@bryanhealth.org to coordinate drop off.	Lincoln	NE
991	Grandview Medical center - Medical ICU	\N	\N	\N	\N	39.7698344	-84.2026957	405 W Grand Ave Dayton, OH 45405	Yes	Can mail or drop off.  Just list Medical ICU on package.	Dayton	OH
992	Montefiore Medical Center	\N	\N	\N	\N	40.8807854	-73.8794877	111 E 210th St The Bronx, NY 10467	Yes		New York - Bronx	NY
993	Acacia Network/Amanecer Promesa Department 2nd floor	\N	\N	\N	\N	40.8462578	-73.9042458	1776 Clay Ave The Bronx, NY 10457	No	Attn:  Grissel H Reynoso  C/O Stephanie Curry	New York - Bronx	NY
994	University of Arizona Emergency Medicine Doctors-South	\N	\N	\N	\N	32.1763145	-110.9306077	2800 E Ajo Way Tucson, AZ 85714	Yes	Please drop off at the Emergency Department. Please inform staff of your donation, and they will collect it.	Tucson	AZ
995	Aultman Hospital 	\N	\N	\N	\N	40.7967119	-81.4037873	2600 6th St SW Canton, OH 44710	Yes	Please contact Orlando Goncalves via Email for drop off instructions : orlando.goncalves@aultman.com	Canton	OH
996	Hayward Health Care and Wellness Center	\N	\N	\N	\N	37.6452254	-122.1161401	1805 West St Hayward, CA 94545	No	Please address to Alison Chinn ring door bell at front  door or call 510 299 0927	Hayward	CA
997	Avery Heights Assisted Living	\N	\N	\N	\N	41.7316763	-72.7057133	550 Avery Heights Hartford, CT 06106	Yes	ATTN:  Kerrie Palumbo  drop off at The Heights	Hartford 	CT
998	VA Portland Health Care System	\N	\N	\N	\N	45.4969272	-122.6840952	3710 SW US Veterans Hospital Rd Portland, OR 97239	Yes	Curbside drop off: call 214-549-8031 to schedule Mailing address:Lakshmi Mudambi, Mail code: P3Pulm, 3710 SW US Veterans Hospital Rd, Portland, OR 97239	Portland	OR
999	Excela Westmoreland Hospital	\N	\N	\N	\N	40.2992438	-79.5543244	530 South St #380 Greensburg, PA 15601	Yes	Please drop off third floor.  Suite 380.	Greensburg	PA
1000	Brigham and Womens Faulkner Hospital	\N	\N	\N	\N	42.3016411	-71.1287817	1153 Centre St Boston, MA 02130	No	Dropoffs, Attn: Necole, special pathogens unit 7N. | Please contact coviddonations@partners.org to coordinate donation. See https://www.partners.org/Newsroom/Articles/Partners-HealthCare-Coronavirus-Announcement.aspx	Boston	MA
1001	The Valley Hospital	\N	\N	\N	\N	40.9839586	-74.1005935	223 N Van Dien Ave Ridgewood, NJ 07450	Yes	Main Entrance	Ridgewood	NJ
1002	UMASS Medical Center - University Campus 	\N	\N	\N	\N	42.2753066	-71.7626132	55 Lake Avenue North Worcester, MA 01605	No	Drop off at front desk at: UMASS Medical Center - University Campus 55 Lake Avenue North Worcester, MA 01655  |  Or mail/ ship to: COMMAND CENTER Attention: SUPPLY CHAIN DONATIONS UMASS Medical Center 55 Lake Avenue North Worcester, MA 01655	Worcester	MA
1003	Pomona Pediatrics 	\N	\N	\N	\N	41.167216	-74.032667	4 Medical Park Dr Suite C Pomona, NY 10970	Yes	Come to window. 	Pomona	NY
1004	Delmar Gardens of Overland Park	\N	\N	\N	\N	38.9317575	-94.7272276	12100 W 109th St Overland Park, KS 66210	No	You can give it to the Director of Nursing Peter Gitau or nurse Benson	Overland Park	KS
1005	Banner Del Webb Medical Center	\N	\N	\N	\N	33.6599234	-112.3728842	14502 W Meeker Blvd Sun City West, AZ 85375	Yes	Mailing address as listed above, or may drop off. Please make it ATTN: ANESTHESIA DEPARTMENT	Sun City	AZ
1006	Westwood Healthcare and Rehabilitation	\N	\N	\N	\N	32.4575459	-81.7999745	101 Stockyard Rd Statesboro, GA 30458	Yes	101 Stockyard Rd	Statesboro	GA
1007	Fallbrook Woods Residential Care Facility	\N	\N	\N	\N	43.7013891	-70.2815163	60 Merrymeeting Dr Portland, ME 04103	Yes	Curbside or mailing attention: Linda Hanson 	Portland	ME
1008	Paradigm Services	\N	\N	\N	\N	37.690699	-97.3251518	326 N Wabash Ave Wichita, KS 67214	Yes		Wichita	KS
1009	Tacoma General 	\N	\N	\N	\N	47.2593292	-122.4521027	402 S J St Tacoma, WA 98405	No	Drop off 11-2 Mon-Fri	Tacoma	WA
1010	Jackson Hospital 	\N	\N	\N	\N	32.3670831	-86.2853492	1725 Pine St Montgomery, AL 36106	Yes	Attn: Dr Tan OR  Drop off at the mail room in South Building 2nd floor	Montgomery 	AL
1011	UMASS Medical Center - Memorial Campus	\N	\N	\N	\N	42.2729207	-71.7912841	119 Belmont St Worcester, MA 01605	No	Drop off at front desk at: UMASS Medical Center - Memorial Campus 119 Belmont St Worcester, MA 01605  |  Or mail/ ship to: COMMAND CENTER Attention: SUPPLY CHAIN DONATIONS UMASS Medical Center 55 Lake Avenue North Worcester, MA 01655	Worcester	MA
1012	geisinger HolySpirit	\N	\N	\N	\N	40.2558917	-76.9233874	875 Poplar Church Rd #4th Camp Hill, PA 17011	Yes	Attn: Steve or Aissa	Camp Hill	PA
1013	Tri-City Health Centers	\N	\N	\N	\N	37.5342363	-121.9604199	40910 Fremont Blvd Fremont, CA 94538	Yes	Drop upstairs in administrative offices	Fremont	CA
1014	Bridgeport Hospital 	\N	\N	\N	\N	41.1894899	-73.165806	267 Grant St Bridgeport, CT 06610	Yes		Bridgeport	CT
1015	Hubert Humphrey Comprehensive Health Center	\N	\N	\N	\N	33.9883999	-118.273401	5850 S Main St Los Angeles, CA 90003	Yes	Main entrance or call 714-308-3819 and I can bring them inside	Los Angeles	CA
1016	Terrance Cardinal Cook Health Care Center	\N	\N	\N	\N	40.7936028	-73.9505218	1249 5th Ave New York, NY 10029	Yes	Curbside	New York - Manhattan	NY
1017	Physician R. Shah, Internal Medicine Services, PLLC	\N	\N	\N	\N	40.7693093	-73.9279619	30-11 21st St #5D Queens, NY 11102	Yes	ATTN: Dr. Rita Shah (please leave by the mailboxes in the lobby of the building)	Astoria	NY
1018	New Hope Integrated Behavioral Health Care 	\N	\N	\N	\N	40.3451913	-74.227883	80 Conover Rd Marlboro Township, NJ 07746	Yes	Curbside	Marlboro	NJ
1019	Nebraska Medicine	\N	\N	\N	\N	41.2663294	-95.8442237	206 Harmony St Council Bluffs, IA 51503	Yes	Drop off curbside or mailing to 206 Harmony St Council Bluffs IA 51503 (private residence)	Council Bluffs	IA
1020	Oklahoma Heart Hospital	\N	\N	\N	\N	35.6080415	-97.59719	4050 W Memorial Rd Oklahoma City, OK 73120	Yes	Dropoff or mail to 4050 West Memorial Road. OKC, Ok 73132	Oklahoma City	OK
1021	Sunrise Senior Living of Smithtown 	\N	\N	\N	\N	40.8539393	-73.1884766	30 NY-111 Smithtown, NY 11787	Yes	Drop at front door, ring door bell, we are on lockdown. 	Smithtown 	NY
1022	Rochester Manor +Villa	\N	\N	\N	\N	40.7018002	-80.2773569	174 Virginia Ave Rochester, PA 15074	Yes	Just inside first set of doors 	Rochester	PA
1023	M Health Fairview Heart Clinic Saint Joseph Hospital 	\N	\N	\N	\N	44.9490988	-93.1000226	45 W 10th St St Paul, MN 55102	Yes	Please drop off to Lab outreach for Bee 	Saint Paul 	MN
1025	St. Joseph's Medical Center (NJ)	\N	\N	\N	\N	40.9022582	-74.1661378	703 Main St Paterson, NJ 07503	Yes	Please mail it my personal and I will bring them in. 120 Chubb Ave, Apt 413, Lyndhurst, NJ 07071	Paterson	NJ
1027	Nebraska Medical Center	\N	\N	\N	\N	41.2763251	-95.8236198	44 E Ridge Dr Council Bluffs, IA 51503			Council Bluffs	IA
1028	Interim HealthCare	\N	\N	\N	\N	35.1899103	-80.8065471	330 Billingsley Rd Suite 207 Charlotte, NC 28211	Yes	Can mail me petg at 425 white water falls drive Charlotte nc apt 523	Charlotte	NC
1029	West Anaheim Medical Center	\N	\N	\N	\N	33.8252217	-117.9950032	3033 W Orange Ave Anaheim, CA 92804	Yes	ATTN: Jason S, Emergency Department OR Attn: Carolyn Stoddard	Anaheim	CA
1030	Kaiser Permanente Ontario 	\N	\N	\N	\N	34.0320442	-117.6088276	2295 S Vineyard Ave Ontario, CA 91761	Yes	Emergency department please	Ontario	CA
1031	Casa Verde Pediatrics, Inc	\N	\N	\N	\N	37.926465	-122.0296388	301 Lennon Ln STE 203 Walnut Creek, CA 94598	Yes	knock on our door, mail	Walnut Creek	CA
1032	Fox Valley Cardiovascular Group	\N	\N	\N	\N	41.7593466	-88.1912659	2216 Periwinkle Ln Naperville, IL 60540	No	Dr Christy	Naperville	IL
1033	Banner Boswell Medical Center	\N	\N	\N	\N	33.6036764	-112.2842245	10401 W Thunderbird Blvd Sun City, AZ 85351	Yes	Please mail to above listed address. ATTN: Anesthesia Department	Sun City	AZ
1034	Descanso Family Practice	\N	\N	\N	\N	34.2035312	-118.2166403	1818 Verdugo Blvd #200 Glendale, CA 91208	Yes	Suite 200	Glendale	CA
1035	Christus St PATRICK Hospital	\N	\N	\N	\N	30.216108	-93.227808	524 Dr Michael Debakey Dr Lake Charles, LA 70601	Yes	For curbside instructions for delivery  contact Nick Stewart @ (337) 476-6450 or Jamie Service @ 3375409587.  Mailing Instructions- Attn: Central Supply/ Material Managememt - Nick Stewart 	Lake Charles 	LA
1036	NYU Langone Tisch Hospital	\N	\N	\N	\N	40.7421225	-73.9739642	550 1st Avenue New York, NY 10016	Yes	Limited to 2 boxes only for in-person dropoffs. Drop off at Kimmel Loading Dock on FDR Drive near 34th St, M-F 9AM-5PM. See https://nyulangone.org/give/funds/covid-19 for more details and signup form.  Or email smw410@nyumc.org or call 917-547-0050	New York - Manhattan	NY
1037	Nassau University Medical Center 	\N	\N	\N	\N	40.7274346	-73.5535513	2201 Hempstead Turnpike East Meadow, NY 11554	Yes	Main lobby, ATTN: ICU, ATTN: Dept of Rehab - 5th floor	East Meadow 	NY
1038	Cottage Hospital	\N	\N	\N	\N	44.4182885	-72.0253124	102 Highland Ave St Johnsbury, VT 05819	Yes		Saint Johnsbury	VT
1039	Brentwood Primary Care--Vanderbilt University Medical Center	\N	\N	\N	\N	35.9816184	-86.7906842	8121 Wikle Rd E Brentwood, TN 37027	No		Brentwood	TN
1040	Los Angeles County USC	\N	\N	\N	\N	33.628572	-117.8806718	1870 Park Newport #316 Newport Beach, CA 92660	Yes		Newport Beach	CA
1041	St. Francis Medical Center- Lynwood	\N	\N	\N	\N	33.930826	-118.203228	3630 E Imperial Hwy Lynwood, CA 90262	No	Loading dock	Lynwood 	CA
1043	Amita St Joseph's Medical Center	\N	\N	\N	\N	41.5279269	-88.1360016	333 Madison St Joliet, IL 60435	Yes	Front desk	Joliet 	IL
1044	Beebe Healthcare	\N	\N	\N	\N	38.7726305	-75.144277	424 Savannah Rd Lewes, DE 19958	Yes	Please call 302-645-3740 & let us know expected arrival- someone will meet you to accept the delivery. Our manager's name is April and she will gladly accept anything you can offer. Thank you SO MUCH & May God bless you	Lewes	DE
1045	Mount Carmel East	\N	\N	\N	\N	39.9794179	-82.8422191	6001 E Broad St Columbus, OH 43213	Yes	Front of hospital	Columbus	OH
1046	PIH Health Downey Hospital 	\N	\N	\N	\N	33.9350663	-118.131987	11500 Brookshire Ave Downey, CA 90241	Yes	Drop off at ER in back of hospital or mail in	Downey	CA
1047	Ochsner LA State University Health Shreveport - Academic Medical Center	\N	\N	\N	\N	32.4809063	-93.7607332	1541 Kings Hwy Shreveport, LA 71103	Yes	Receiving Dock, ATTN: Olivia Jones, PPE Manager, phone #: (318) 218-1803 Shipping Address: 1541 Kings Hwy, Shreveport, LA 71103	Shreveport	LA
1048	Lakewood Family Health Clinic	\N	\N	\N	\N	39.6808711	-105.0996493	1990 S Garrison St q Lakewood, CO 80227	Yes	Can place outside or inside of clinic. M-T 8-2:3:30, 8-6 T/Fr (close early and work from home if no physical patients)	Lakewood 	CO
1049	Anschutz Medical Campus (University of Colorado)	\N	\N	\N	\N	39.7451472	-104.8348497	Research Building 2 Anschutz Medical Campus 12700 E. 19th Ave Aurora, Colorado 80045​	I do not know	https://www.cuanschutz.edu/coronavirus/research-guidance/reagents-and-supplies-needed	Aurora	CO
1050	North Vista Hospital 	\N	\N	\N	\N	36.1953393	-115.0867655	4011 E Lake Mead Blvd Las Vegas, NV 89115	Yes	Please call above number ahead of time 702-929-4040	Las vegas	NV
1051	Stoughton Meadows Assisted Living (CBRF) 40 Residents	\N	\N	\N	\N	42.9207639	-89.2487242	2321 Jackson St Stoughton, WI 53589	Yes	2321 Jackson St. Stoughton, WI 53589 ATTN: Holly (Executive Director)	Stoughton	WI
1052	Beebe Healthcare	\N	\N	\N	\N	38.7602323	-75.1546521	1307 Savannah Rd Lewes, DE 19958	Yes	Bins available for small quantity drop-off donations Monday - Friday from 8am - 5pm at Beebe Healthcare Population Health office: 1307 Savannah Road, Lewes, DE 19958. The bins are monitored frequently throughout the day and donations are properly stored. For large quantity donations, please call us at 302-645-3337 or email kblanch@beebehealthcare.org. 	Lewes	DE
1053	St Anthony Hospital 	\N	\N	\N	\N	39.7163135	-105.1293633	11600 W 2nd Pl Lakewood, CO 80228	No		Lakewood	CO
1054	The Allergy Center, PA	\N	\N	\N	\N	35.6024853	-77.4084085	2395 Hemby Ln Greenville, NC 27834	Yes	2395 Hemby Ln Greenville NC 27834	Greenville 	NC
1055	University Medical Center	\N	\N	\N	\N	33.6070169	-101.8874567	602 N Indiana Ave Lubbock, TX 79415	Yes,  if sterile and able to use	Mailing,  CAT SCAN DEPT.	Lubbock	TX
1056	Foundation OBGYN	\N	\N	\N	\N	42.7567069	-71.4607795	10 Prospect St #401 Nashua, NH 03060	Yes	Drop off available Monday through Friday in Lobby or Curbside. Call if leaving curbside. Mail is also great!	Nashua	NH
1057	North Central Bronx Hospital 	\N	\N	\N	\N	40.8814395	-73.8813572	3524 Kossuth Ave The Bronx, NY 10467	Yes		Bronx 	NY
1058	Trios Hospital	\N	\N	\N	\N	46.1682337	-119.1708252	4889 S Morain St Kennewick, WA 99337	Yes	4889 S Morain St	KENNEWICK	WA
1059	Children's Wisconsin	\N	\N	\N	\N	43.0419426	-88.0273046	999 N 92nd St Wauwatosa, WI 53226	Not sure	Drop off: Children's Corporate Center lobby (999 N. 92nd St.) from 9 a.m.-noon and from 1-3 p.m., Monday through Friday.	Wauwatosa	WI
1060	PARC Joliet Nursing 	\N	\N	\N	\N	41.5273029	-88.1311977	222 N Hammes Ave Joliet, IL 60435	Yes	Front desk	Joliet 	IL
1289	Legacy Health System	\N	\N	\N	\N	N/A	65	N/A	Unknown	Please contact giving@lhs.org	Portland	OR
1062	Beth Israel Deaconess Hospital - Plymouth	\N	\N	\N	\N	41.9430573	-70.6452871	275 Sandwich St Plymouth, MA 02360	No	Email smahone4@bidmc.harvard.edu with detailed information including the brand and the quantity of the items you wish to donate. Visit https://bilh.org/donations for more information.	Plymouth	MA
1063	Froedtert Hospital	\N	\N	\N	\N	43.0359991	-88.0372916	10000 W Bluemound Rd Wauwatosa, WI 53226	Unsure	Visit the donation box between the hours of 8 a.m. and 4 p.m., Monday through Friday at: Menomonee Falls location Integrated Service Center N86 W12999 Nightingale Way Menomonee Falls, WI 53051  Wauwatosa location 10000 W. Bluemound Rd. Wauwatosa, WI 53226  If you know of a manufacturer looking to support health care providers, or you'd like us to consider other donations, please e-mail E-mail purchasingassistant@froedtert.com	Wauwatosa	WI
1064	Alpha Internal Medicine	\N	\N	\N	\N	33.5394357	-84.3899112	22 Stanebrook Ct Jonesboro, GA 30238	Yes	Place in mailbox if possible or leave on doorstep	jonesboro	GA
1065	Normandy Park ER	\N	\N	\N	\N	30.3079836	-81.7482352	5773 Normandy Blvd Jacksonville, FL 32205	Yes	mailing address: Normandy Park ER ATTN: Emergency Physician 5773 Normandy Blvd. Jacksonville, FL 32205	Jacksonville	FL
1066	Silver Cross Hospital	\N	\N	\N	\N	41.5444716	-87.9828584	1900 Silver Cross Blvd New Lenox, IL 60451	Yes	Front desk drop off	New Lenox 	IL
1067	Franciscan St. Margaret's 	\N	\N	\N	\N	41.6151781	-87.5238812	5454 Hohman Ave Hammond, IN 46320	Yes	Mailing address ATTN: Pam Jones	Hammond	IN
1068	Childrens Hospital of Montefiore 	\N	\N	\N	\N	40.880273	-73.8791699	3415 Bainbridge Ave The Bronx, NY 10467	Yes	Curbside	Bronx 	NY
1069	Lankenau Medical Center	\N	\N	\N	\N	39.9880032	-75.2634923	100 E Lancaster Ave Wynnewood, PA 19096	Yes	Contact email address for specific instructions: covidsupplydonations@mlhs.org	Wynnwood 	PA
1070	Valley Ambulatory Surgery Center 	\N	\N	\N	\N	41.9198289	-88.343744	2475 Dean St St. Charles, IL 60175	Case by case basis 	Front Entrance-please call first 	St. Charles 	IL
1071	Covenant House	\N	\N	\N	\N	40.7586536	-73.9958359	550 10th Ave New York, NY 10018	Yes	Call Nancy (ED of Covenant House - NYC) at (347) 891-2511 or Leslie Abbey (COO) at (917) 991-4540	New York	NY
1072	Littleton Adventist 	\N	\N	\N	\N	39.576102	-104.985752	7700 S Broadway Littleton, CO 80122	Yes	ER	LITTLETON 	CO
1073	Lahey Hospital & Medical Center	\N	\N	\N	\N	42.4848754	-71.2051901	41 Burlington Mall Road Burlington, MA 01803	No	Bring to ER front desk.	Burlington	MA
1074	Orange Family Medicine	\N	\N	\N	\N	33.7855062	-117.8524767	229 S Glassell St Orange, CA 92866	Yes	Knock on front door	Orange	CA
1075	Southwest Orlando Family Medicine 	\N	\N	\N	\N	28.4295712	-81.4808038	7400 Docs Grove Cir Orlando, FL 32819	No	Drop off at tent	Orlando	FL
1076	Saint Clare's Denville	\N	\N	\N	\N	40.894894	-74.4654098	25 Pocono Rd Denville, NJ	Yes	At hospital	Denville	NJ
1077	Montefiore Department of Neurosurgery	\N	\N	\N	\N	40.8787216	-73.8800837	3316 Rochambeau Ave The Bronx, NY 10467	No	Curbside	Bronx	NY
1078	El Cerrito Royale	\N	\N	\N	\N	37.91901	-122.3115932	6510 Gladys Ave El Cerrito, CA 94530	Yes	Leave outside locked front door and ring bell	El Cerrito	CA
1079	New York Presbyterian 	\N	\N	\N	\N	40.7641552	-73.9552558	528 E 68th St New York, NY 10065	Yes	Outside front door	New York	NY
1080	MemorialCare Long Beach Medical Center and Miller Children's & Women's Hospital Long Beach	\N	\N	\N	\N	33.8079735	-118.1882376	2810 Long Beach Blvd Long Beach, CA 90806	"New or Unused" items	https://www.memorialcare.org/donations-needed  Monday through Friday, 10 a.m. to 2 p.m.  Staff will maintain safe physical distance from donors and will wear gloves and regularly clean their hands.  Donors will be asked to provide basic contact information and may request a receipt for their records  Donors who are not feeling well should wait until they feel better to donate.	Long Beach	CA
1081	ManorCare Peters Township	\N	\N	\N	\N	40.2726388	-80.1296862	113 W McMurray Rd Canonsburg, PA 15317	Yes	Drop off between main doors	McMurray	PA
1082	Family Practice Associates of Taos	\N	\N	\N	\N	36.3942674	-105.5814213	630 Paseo Del Pueblo Sur #150 Taos, NM 87571	No	630 Paseo del Pueblo Sur, Suite  150	Taos	NM
1083	Montefiore Medical Center	\N	\N	\N	\N	40.8799745	-73.8782466	3411 Wayne Ave #822 The Bronx, NY 10467	Yes	Please call Asia Nieves at 718-741-2342 prior to drop-off.	Bronx	NY
1084	Memorial Hospital 	\N	\N	\N	\N	30.3672775	-89.1152165	4500 13th St Gulfport, MS 39501	Yes	Attn: Aimee Robertson	Gulfport 	MS
1085	Athens Neighborhood Health Center 	\N	\N	\N	\N	33.9629371	-83.3774782	675 College Ave Athens, GA 30601	Yes	675 College Avenue	Athens	GA
1086	Johnston Memorial Hospital	\N	\N	\N	\N	36.7226195	-81.9117949	16000 Johnston Memorial Dr Abingdon, VA 24211	No	Curbside 	Abingdon	VA
1087	Kaiser Permanente	\N	\N	\N	\N	34.1072006	-117.8315393	1255 W Arrow Hwy San Dimas, CA 91773	Yes	Mail to above address: Attn : Cheryl Chan. (Business hours M-T 8:30am to 6:30pm. Friday 8:30am to 5:30pm)	San Dimas	CA
1088	Valleywise Health	\N	\N	\N	\N	33.4577349	-112.0283148	2601 E Roosevelt St Phoenix, AZ 85008	No	Curbside pickup 	Phoenix	AZ
1089	Winchester Hospital	\N	\N	\N	\N	42.4658868	-71.1224312	41 Highland Avenue Winchester, MA 01890	No	Email smahone4@bidmc.harvard.edu with detailed information including the brand and the quantity of the items you wish to donate. Visit https://bilh.org/donations for more information.	Winchester	MA
1090	Boston Medical Center	\N	\N	\N	\N	42.3364013	-71.072408	72 E Concord St Boston, MA 02118	Yes	Please first fill out form: bmc.org/ppe | If unable to access building, call Public Safety: 617-358-4444 | Questions: BMCneedPPE@gmail.com | Large Donations can be shipped to: 750 Albany St, Boston, MA 02118	Boston	MA
1091	St. Bernardines medical center	\N	\N	\N	\N	34.1348371	-117.2769883	2101 N Waterman Ave San Bernardino, CA 92404	No	2101 N Waterman avenue, San Bernardino, CA 92404 ATTN Dana Molina	San Bernardino	CA
1092	Lake Wales Dental Group	\N	\N	\N	\N	27.8919861	-81.5650627	1 Doctors Ln Lake Wales, FL 33853	Yes	Front door 	Lake Wales 	FL
1093	NYCHHC/Harlem Hospital 	\N	\N	\N	\N	40.8142287	-73.9396101	506 Lenox Ave New York, NY 10037	Yes	6th Floor Nursing Office 	New York	NY
1094	GSEP Emergency Medicine 	\N	\N	\N	\N	29.5552592	-98.5361408	11503 NW Military Hwy #202 San Antonio, TX 78230	No		San Antonio 	TX
1095	Clinic of Family Medicine	\N	\N	\N	\N	40.9332582	-87.1376527	1103 E Grace St Rensselaer, IN 47978	Yes	ATTN: Sharon Johnson FNP	Rensselaer	IN
1096	Associates in Women's Healthcare	\N	\N	\N	\N	38.7664323	-121.2467686	5 Medical Plaza Dr #250 Roseville, CA 95661	Yes	Can do curbside pickup or mail	Roseville	CA
1097	Sentara BelleHarbour 	\N	\N	\N	\N	36.8645947	-76.4499069	3920 Bridge Rd Suffolk, VA 23435	Yes	3920 Bridge Road, Suffolk, VA 23435	Suffolk	VA
1099	UH Twinsburg Health Center - RADIOLOGY DEPT.	\N	\N	\N	\N	41.3088338	-81.4461688	8819 Commons Blvd Twinsburg, OH 44087	Yes	Go to radiology department, drop off at reception desk , In care of Mary	Twinsburg	OH
1100	West Hills Hospital 	\N	\N	\N	\N	34.2029255	-118.6287791	7300 Medical Center Dr West Hills, CA 91307	No	ER curbside  OR  Call cell 818-825-5845 (Marc Lavin MD) to arrange to meet at entrance  OR  West Hills Patient Access  Services Ashlie Scott	West Hills	CA
1102	Boston Healthcare for the Homeless Program	\N	\N	\N	\N	42.3337186	-71.0725726	780 Albany St Boston, MA 02118	Yes	Attn: Meghan Krueger/April Donahue	Boston	MA
1103	Foothill Presbyterian Hospital	\N	\N	\N	\N	34.1327654	-117.8713435	250 S Grand Ave Glendora, CA 91741	Yes	Drop off to ER please	Glendora	CA
1104	Amedisys home health agency	\N	\N	\N	\N	42.0829762	-72.5939804	67 Hunt St Agawam, MA 01001	No	Send email to obtain mailing or drop off instructions. Kristen.howe@amedisys.com	Agawam	MA
1105	Emergency Care Specialists 	\N	\N	\N	\N	42.9164863	-85.5669188	4100 Embassy Dr SE #400 Grand Rapids, MI 49546	Yes	Items could be dropped at our office.    Please call or email me to coordinate. 	Kentwood 	MI
1106	Carepoint Health Hoboken University Medical Center	\N	\N	\N	\N	40.7415814	-74.0341491	308 Willow Ave Hoboken, NJ 07030	Yes	Emergency Room entrance for drop off	Hoboken	NJ
1107	Franciscan Prompt Care 	\N	\N	\N	\N	47.244421	-122.4495477	Northwest Medical Plaza 1812 S J St #120, Tacoma, WA 98405	No	Email me	Tacoma	WA
1108	Rocky Mountain Detox	\N	\N	\N	\N	39.737637	-105.0716255	1348 Pierce St Lakewood, CO 80214	Yes	Mailing address	Lakewood	CO
1109	Mount Sinai Hospital	\N	\N	\N	\N	40.790315	-73.949039	109 E 102nd St #1A New York, NY 10029	Yes	Please email alexander.goel@mountsinai.org	New York	NY
1110	The Heart and Medical Center and Urgent Care	\N	\N	\N	\N	34.0043987	-96.4034932	2701 W University Blvd Durant, OK 74701	Yes		DURANT	OK
1111	A Friend In Need Home Care	\N	\N	\N	\N	38.9055973	-94.7994846	1033 E Pineview St Olathe, KS 66061	Yes	Donations can be left on porch steps. Call 913-289-8849. We are a small business and have  10 Caregivers/CNA that require PPE	OLATHE	KS
1112	Hospitality Health ER	\N	\N	\N	\N	32.5357843	-94.7547196	3111 McCann Rd Longview, TX 75605	Yes	Please call 903-753-1212 before dropping off materials at Hospitality Health ER, 3111 McCann Road, LONGVIEW, TX 75605. Thank you.	Longview	TX
1113	Greater Baltimore Medical Center	\N	\N	\N	\N	39.3902857	-76.6249755	6701 Charles St Towson, MD 21204	Yes	Donation in front of ED tent at GBMC campus	Towson	MD
1114	Notre Dame Health and Rehabilitation Center	\N	\N	\N	\N	41.1336143	-73.4128183	76 West Rocks Road Norwalk, CT 06851	No	Loading Dock at the back of the building	Norwalk	CT
1115	Pueblo Community Health Center	\N	\N	\N	\N	38.2572006	-104.6236682	300 Colorado Ave Pueblo, CO 81001	Yes	Can bring to 1st floor, ask for Dr. Claire Reed, Julie Martinez or Vanessa Becerril	Pueblo	CO
1116	Winter Haven Hospital	\N	\N	\N	\N	28.0279017	-81.7254974	200 Ave F NE Winter Haven, FL 33881	Yes	Take to the ER,security will take it from you at the front door  	Winter Haven	FL
1117	Tacoma General 	\N	\N	\N	\N	47.2593601	-122.4529681	315 M.L.K. Jr Way Tacoma, WA 98405	Yes	Nurse Erika Berger (253) 334-9463	Tacoma	WA
1118	Staten Island University Hospital / Northwell Health	\N	\N	\N	\N	40.5847086	-74.086124	475 Seaview Ave Staten Island, NY 10305	Unsure	Please contact 718-226-9000 (hospital directory) for further direction!	Staten Island	NY
1119	Elevate, Inc.	\N	\N	\N	\N	43.3253471	-88.1691475	N169 W21005 Meadow Ln Jackson, WI 53037	Yes	Please call ahead before dropping off - 262-677-2216	Jackson	WI
1120	Altech Diagnostics - on behalf of local Nurses	\N	\N	\N	\N	26.0723829	-80.2189511	4020 SW 54th Ave Davie, FL 33314	Yes	Drop at front gate. This will be residential area	Davie	FL
1121	St. Joseph's Health Hospital	\N	\N	\N	\N	43.0559585	-76.1495044	301 Prospect Ave Syracuse, NY 13203	No	Please call first to coordinate drop-off: 315-214-6855	Syracuse	NY
1122	Louisiana Urgent Care	\N	\N	\N	\N	30.4144877	-91.2240298	4451 La Hwy 1 S Port Allen, LA 70767	Yes	4451 Hwy 1 South	Port Allen	LA
1123	UT Southwestern General Internal Medicine - Las Colins 	\N	\N	\N	\N	32.8985523	-96.9572899	701 Tuscan Dr #201 Irving, TX 75039	Yes	Please deliver to the clinic address 701 Tuscan Drive #210, Irving Tx 75039. Attention Dr Grasty 214-964-0600	Irving	TX
1124	Home health nurse, Massachusetts RN	\N	\N	\N	\N	42.3203259	-72.1431737	501 Wine Rd New Braintree, MA 01531	Open boxes if items inside are individually wrapped	Please mail to 501 wine rd, New Braintree, MA 01531	New Braintree	MA
1125	ChristianaCare	\N	\N	\N	\N	39.6881852	-75.6083512	1 Reads Way #100 New Castle, DE 19720	Please email Doreen.Dixon@ChristianaCare.org to get answers for this question.	Please email: Doreen.Dixon@ChristianaCare.org before dropping off the donations. 	New Castle	DE
1126	Central Coast Medical Group 	\N	\N	\N	\N	34.6391336	-120.4448382	1101 East Ocean Ave B Lompoc, CA 93436	Yes	Front door	Lompoc	CA
1127	Long Island Community hospital 	\N	\N	\N	\N	2487	undefined	101 Hospital Rd Patchogue, NY 11772	Yes	Long Island Community Hospital  101 Hospital Road, Patchogue, NY 11772 	Patchogue	NY
1128	Providence Tarzana Medical Center	\N	\N	\N	\N	2489	undefined	18321 Clark St Tarzana, CA 91356	Yes	Curbside or mail donations accepted	Tarzana	CA
1129	MD Anderson Cancer Center	\N	\N	\N	\N	29.7444164	-95.4190943	3003 Reba Dr Houston, TX 77019	Yes	Drop off or mail, grateful for anything	Houston	TX
1130	Rufino G Talatala, MD, PA	\N	\N	\N	\N	29.8888838	-97.9430682	4221 Medical Pkwy #250 Carrollton, TX 75010	Yes	Front door	Carrolllton 	TX
1131	Hui No Ke Ola Pono	\N	\N	\N	\N	20.8869248	-156.488301	95 Mahalani St # 21 Wailuku, HI 96793	Yes	Drop off or mail to 95 Mahalani Street, Room 21 Hui No Ke Ola Pono, Inc.	Wailuku	HI
1132	Morris Heights Health Center	\N	\N	\N	\N	40.8549232	-73.9101709	85 W Burnside Ave The Bronx, NY 10453	Yes	Front security Attention Evette Maduro	Bronx	NY
1133	Franciscan Women's Health Associates - Burien	\N	\N	\N	\N	47.4585642	-122.3339504	16045 1st Ave S Burien, WA 98148	Yes	Bring up stairs to the Women's care desk or call and a staff member will come down to get them.	Burien	WA
1134	Laguna Beach Hospital	\N	\N	\N	\N	2490	undefined	31872 Coast Hwy Laguna Beach, CA 92651	Not n95 or CAPR supplies	Please bring to the Emergency Department and place attention Dr. William Dodge	Laguna Beach	CA
1135	Tri-City Health Center	\N	\N	\N	\N	37.5489569	-121.9769483	39500 Liberty Street Fremont, CA 94538	Yes	Attn: Phyllis Pei	Fremont	CA
1136	Beaumont Hospital	\N	\N	\N	\N	42.4834786	-83.272495	26901 Beaumont Blvd Southfield, MI 48033	Yes		Southfield	MI
1137	Sabetha Community Hospital	\N	\N	\N	\N	39.8997686	-95.807109	Oregon St & 14th St Sabetha, KS 66534	No	Drop off at the old ER on the south side. 	Sabetha	KS
1138	Lone Star Family Health Center	\N	\N	\N	\N	30.285503	-95.4713917	605 S, Conroe Medical Dr Conroe, TX 77304	Yes	Curbside drop at building entrance. Staff are stationed outside. 	Conroe	TX
1139	Ability Beyond Disability	\N	\N	\N	\N	41.4187056	-73.4013996	4 Berkshire Boulevard Bethel, CT 06801	No	Drop off curbside or Mail to ATTN: Carrie O'Connell	Bethel	CT
1140	Ochsner Medical Center - Hancock	\N	\N	\N	\N	30.3171242	-89.3555637	429 Drinkwater Blvd  Bay St Louis, MS 39520	No	TBD	Bay St Louis	MS
1141	Mary's Center 	\N	\N	\N	\N	39.0017807	-76.9738022	8908 Riggs Rd Adelphi, MD 20783	No	Front desk entrance	Adelphi	MD
1142	St Joseph Mercy hospital 	\N	\N	\N	\N	42.2650021	-83.6558552	5301 McAuley Dr Ypsilanti, MI 48197	Yes		Ypsilanti 	MI
1143	Physicians Primary Care of SWFL	\N	\N	\N	\N	26.6367562	-81.9459375	1304 SE 8th Terrace #3212 Cape Coral, FL 33990	Yes	Drop off at Buildings 1-4.    	Cape Coral	FL
1144	Norwalk Hospital	\N	\N	\N	\N	41.1102265	-73.4231998	34 Stevens St Norwalk, CT 06850	Yes	Sizzlegirl@optonline.net	Norwalk	CT
1145	Bougainvilleas Care	\N	\N	\N	\N	37.6431057	-122.4275691	201 Alta Vista Dr South San Francisco, CA 94080	Yes	Can ring doorbell and speak in intercom that package is being dropped off or email bougainvilleascarehome@gmail.com	South San Francisco	CA
1146	Kaiser Permanent Los Angeles Medical Center	\N	\N	\N	\N	34.0983524	-118.2948016	4867 Sunset Blvd Los Angeles, CA 90027	No	Mitchblush@yahoo.com	Los Angeles	CA
1147	Alliance Health at Rosewood	\N	\N	\N	\N	42.546416	-70.9928977	22 Johnson St Peabody, MA 01960	No	Either drop off or mail. Call 978-317-4852 and ask for Dr. Lucas.	Peabody	MA
1148	Chapel Hill Children's Clinic	\N	\N	\N	\N	35.8797883	-79.0653442	301 Kildaire Rd #200 Chapel Hill, NC 27516	Yes		Chapel Hill	NC
1149	Southern Hills Hospital and Medical Center	\N	\N	\N	\N	36.0723796	-115.2949636	9300 W Sunset Rd Las Vegas, NV 89148	Please check with screening tent	Drop off to screening tent 	Las Vegas	NV
1150	Paladina Health	\N	\N	\N	\N	40.0428729	-105.0402851	671 McAfee Ct Erie, CO 80516	No	Leave at front door	Erie	CO
1151	Bluebonnet Trails Community Services	\N	\N	\N	\N	29.9126741	-96.8618627	275 Ellinger Road La Grange, TX 78945	Yes	At La Grange Behavioral Health. Curbside or mail 	La Grange	TX
1152	CareOne Internal Medicine 	\N	\N	\N	\N	38.9635177	-77.3648123	1800 Town Center Dr STE 416 Reston, VA 20190	Yes	Office front door is open. Suite 416	Reston 	VA
1153	Laguna Beach Hospital	\N	\N	\N	\N	2488	undefined	31872 Coast Hwy Laguna Beach, CA 92651	Not n95 or CAPR supplies	Please bring to the Emergency Department and place attention Dr. William Dodge	Laguna Beach	CA
1154	Brookdale Conway	\N	\N	\N	\N	28.515222	-81.3137667	5501 E Michigan St Orlando, FL 32822	Unused	Curbside	Orlando	FL
1155	Spotsylvania Regional Medical Center	\N	\N	\N	\N	38.2181996	-77.4961447	4600 Spotsylvania Pkwy Fredericksburg, VA 22408	Unsure	"While we have the supplies we need at this time, we continue our COVID-19 planning by accessing the resources, support and best practices across HCA Healthcare to help ensure we remain able to meet the needs of the communities we serve as the situation continues to evolve. We appreciate your willingness to assist in these efforts, and have placed a mask donation box at the main entrance to the hospital to provide an easy location for drop offs. The main entrance is open between the hours of 5:30AM and 9PM. Thank you for your support!"	Fredericksburg	VA
1156	Beth Israel Deaconess Medical Center (BIDMC)	\N	\N	\N	\N	42.3384259	-71.1096368	Farr Building 185 Pilgrim Road Boston, MA 02215	Yes	Drop off at front desk of Farr Building 6AM to 8PM Mon-Sun	Boston	MA
1157	WhidbeyHealth Medical Center	\N	\N	\N	\N	48.2135646	-122.6845344	101 N Main Street Coupeville, WA 98239	Maybe	Attn: Infection control nurse.  (Or drop off at front desk to give to her)	Coupeville	WA
1158	Marshall Medical Center	\N	\N	\N	\N	38.72467	-120.7916501	1100 Marshall Way Placerville, CA 95667	Yes	sehall@marshallmedical.org	Placerville	CA
1159	Community First Medical Center	\N	\N	\N	\N	41.9455304	-87.7676772	5645 W Addison St Chicago, IL 60634	Yes	Drop Off in Emergency Room Issette Borrego	Chicago	IL
1160	St Charles Healthcare System 	\N	\N	\N	\N	44.0679885	-121.2694821	2500 NE Neff Rd Bend, OR 97701	Yes	Attention to Dr. Campos: hematology oncology entrance through the heart and lung center 	Bend 	OR
1161	Millburn Short Hills Volunteer First Aid Squad	\N	\N	\N	\N	40.7261659	-74.3041671	188 Glen Ave Millburn, NJ 07041	Yes	Please ring doorbell to office door on East side of building and leave supplies near door.	Millburn	NJ
1162	Northwestern Memorial Hospital	\N	\N	\N	\N	41.8946256	-87.6209858	251 E Huron St Chicago, IL 60611	Yes		Chicago	IL
1163	Gottlieb Memorial Hospital	\N	\N	\N	\N	41.910205	-87.8418095	701 W North Ave Melrose Park, IL 60160	Yes	ED main entrance	Melrose Park	IL
1164	Michigan Medicine	\N	\N	\N	\N	42.3008837	-83.706502	2800 Plymouth Road Ann Arbor, MI 48109	No	https://www.uofmhealth.org/news/archive/202003/u-m-asks-community-donate-gear-protect-health-care-workers	Ann Arbor	MI
1165	Orange Coast MemorialCare Hospital	\N	\N	\N	\N	33.7004664	-117.9557452	18111 Brookhurst St Fountain Valley, CA 92708	Yes	Please email me	Fountain Valley	CA
1166	Henry Ford Medical Center - Ford Road	\N	\N	\N	\N	42.325353	-83.2200884	5500 Auto Club Dr Dearborn, MI 48126	No	Eunice Yu, third floor internal medicine	Dearborn	MI
1167	Jamaica Hospital Medical Center	\N	\N	\N	\N	40.7006743	-73.8172316	89-06 135th Street Jamaica, NY 11418	Yes	ATTN: Supply Chain, Materials Management / James Chen / Wayne Bowen	New York - Queens	NY
1168	Jefferson Family Physicians	\N	\N	\N	\N	36.04491	-83.4620427	150 W Price Rd Dandridge, TN 37725	Yes	Drop off at clinic - call 865-475-6161 	Dandridge	TN
1169	Contra Costa Regional Medical Center	\N	\N	\N	\N	38.006764	-122.1327937	2500 Alhambra Avenue Martinez, CA 94553	Ask first	Donations accepted in Receiving, first driveway on the right off C Street (side street to left of hospital), M-F, 8:30a - 4:30p.  Contact Karin Stryker at kstryker@cchealth.org to provide donation type and questions. 	Martinez	CA
1170	St. Rose Hospital	\N	\N	\N	\N	37.6334549	-122.0879165	27200 Calaroga Ave Hayward, CA 94545	No	ER door is the only one open. Please make purchasing department aware, manager: Himanshu Handa, 510-264-4122.	Hayward	CA
1171	St Joseph's Hospital, St Johns Hospital, Woodwinds Hospital	\N	\N	\N	\N	44.9490988	-93.1000226	45 W 10th St St Paul, MN 55102	Yes	We're desperate for everything. We have only 6 days left of gloves and gowns, yet our surge hasn't even hit. 	St Paul	MN
1172	Brockton Hospital and Brockton Neighborhood Health Clinic	\N	\N	\N	\N	42.0874254	-70.991421	680 Centre St Brockton, MA 02302	Yes	Please email or call me first to arrange drop off at 401 316 3076 or a.s.debrito@gmail.com	Brockton	MA
1173	St. Barnabas 	\N	\N	\N	\N	40.9212422	-74.6441832	412 Mt Arlington Blvd Landing, NJ 07850	Yes	Mailing address 	Landing 	NJ
1174	VNA Healthcare 	\N	\N	\N	\N	41.7658861	-88.3297764	400 N Highland Ave Aurora, IL 60506		Katie Darger 	Aurora	IL
1175	Akron Children's Hospital	\N	\N	\N	\N	41.1505682	-81.4074858	3451 Saratoga Blvd Stow, OH 44224	Yes	At doorstep of home, I'm a pediatrician, Dr. Natinder Saini, who will deliver to hospital and make sure it gets there since I work there	Stow	OH
1176	UConn Health 	\N	\N	\N	\N	41.7344559	-72.7956006	263 Farmington Ave Farmington, CT 06030		W Recv Dock	Farmington 	CT
1177	Kaiser Permanente - Tyson's Corner, Anesthesiology Department 	\N	\N	\N	\N	38.9149671	-77.0402744	1753 Swann Street NW unit 2 Washington, DC 20009	Yes	Leave at bottom of the stairs. Zip code 20009	Washington	DC
1178	UPMC Jameson	\N	\N	\N	\N	41.013401	-80.3536706	1211 Wilmington Ave New Castle, PA 16105 	Yes		New Castle 	PA
1179	Children's Hospital of Philadelphia	\N	\N	\N	\N	39.946337	-75.195284	3501 Civic Center Blvd Philadelphia, PA 19104	Yes	Drop off at the Emergency Department with the greeter nurse / security officer at entrance to Emergency Department waiting room	Philadelphia	PA
1180	Carilion Roanoke Memorial Hospital	\N	\N	\N	\N	37.2516794	-79.9410604	1906 Belleview Ave SE Roanoke, VA 24014	No	Ship using UPS, FedEx, USPS. Attn: Jack Perkins, MD	Roanoke	VA
1181	South Shore Women's Health Care	\N	\N	\N	\N	42.0695679	-86.4967724	2690 S Cleveland Ave St Joseph, MI 49085	Yes	Attn: Carol, right side porch door	St Joseph	MI
1182	Providence Saint John's Health Center 	\N	\N	\N	\N	34.0307739	-118.4796445	2121 Santa Monica Blvd 1st Floor Santa Monica, CA 90404	Yes	Drop off or mail to Dr. Paul Natterson's attention. Mailing address: Providence Saint John's Health Center, 2121 Santa Monica Blvd, Santa Monica, CA 90404	Santa Monica	CA
1183	NewYork-Presbyterian/Columbia University Medical Center, Milstein Hospital Building	\N	\N	\N	\N	40.8414368	-73.9430784	Milstein Hospital Building 177 Fort Washington Ave New York, NY 10032	Yes	Please email masks@nyp.org to coordinate.   |  For mailing, please send to: Attn: David Chong, MD, 6th Floor Center 12 at this address  |  For curbside dropoffs: please call Angelica Saada (732-829-9684) or (646-965-4479) and she will arrange for someone to come meet you downstairs in the Milstein Hospital Lobby  |  Label "General Surgery Dept" and can leave with front desk in lobby   |  Drop off, Attn: Internal Medicine Program Office.	New York - Manhattan	NY
1184	UT Health East Texas Rehabilitation Clinic - Pittsburgh	\N	\N	\N	\N	33.0227591	-96.7616741	3612 Cromwell Street Plano, TX 75075	Yes		Plano	TX
1185	OHSU	\N	\N	\N	\N	45.4988717	-122.6712335	3303 SW Bond Ave Portland, OR 97239	No	Drop-off at DOCK: Monday - Friday 9am - 5 pm 	Portland	OR
1186	Kindred Hospice 	\N	\N	\N	\N	25.6331926	-80.3271859	14725 SW 83rd Ave Palmetto Bay, FL 33158	Yes		Miami	FL
1187	Hartford Hospital 	\N	\N	\N	\N	41.7544767	-72.6820975	85 Seymour St Hartford, CT 06106		Main Lobby	Hartford 	CT
1188	EvergreenHealth	\N	\N	\N	\N	47.7160728	-122.1764001	12333 NE 130th Lane Kirkland, WA 98034	No	Call Jennifer at 425-899-1900 when you arrive	Kirkland	WA
1189	West Hawaii Community Health Center 	\N	\N	\N	\N	19.640467	-155.9938797	75-5751 Kuakini Hwy Ste 203 Kailua-Kona, HI 96740	Yes	ATTN: Darlene DuPont 	Kailua-Kona 	HI
1190	Flushing Hospital Medical Center	\N	\N	\N	\N	40.7006743	-73.8172316	89-06 135th Street Jamaica, NY 11418	Yes	ATTN: Supply Chain, Materials Management / James Chen / Wayne Bowen	New York - Queens	NY
1191	Healthcare Partners Nevada	\N	\N	\N	\N	36.0578468	-115.147645	700 E Warm Springs Rd # 302 Las Vegas, NV 89119	Yes	Mail ATTN: COVID19 Task Force	Las Vegas	NV
1192	Advent Health Waterman 	\N	\N	\N	\N	28.8244867	-81.7094941	4000 Waterman Way Tavares, FL 32778	Yes		Tavares 	FL
1193	St. Jude Medical Center	\N	\N	\N	\N	33.8943451	-117.9272201	101 E Valencia Mesa Dr Fullerton, CA 92835	Yes	Please contact mandi.archuleta@stjoe.org to coordinate drop off.	Fullerton	CA
1194	Presbyterian St. Luke's Medical Center	\N	\N	\N	\N	39.746698	-104.9653732	2001 N High Street Denver, CO 80205	Yes	Emergency (corner of 19th Ave & High Street)	Denver	CO
1195	Inova Fairfax Emergency Department	\N	\N	\N	\N	38.8573966	-77.2281251	3300 Gallows Rd Falls Church, VA 22042		Email sakib.motalib@gmail.com prior to drop off to coordinate location and time please.	Falls Church	VA
1196	Coney Island Hospital	\N	\N	\N	\N	40.5856257	-73.9648706	2601 Ocean Pkwy Brooklyn, NY 11235	Yes	Personal hand off  |  Anesthesia Department Attention Dr. Gregory Girshin  |  Mail ATTN: Dr. Alyssa Cocchiara, Emergency Department Suite 1N28 	New York - Brooklyn 	NY
1197	Tribeca Pediatrics	\N	\N	\N	\N	40.7161318	-74.0155571	211 North End Ave #12C New York, NY 10282	Yes	Mailing address	New York - Manhattan	NY
1198	Seasons Largo	\N	\N	\N	\N	27.9158329	-82.7443097	4175 E Bay Dr Clearwater, FL 33764	Yes	Call for curbside 727 330 7898	Largo	FL
1199	Sweetwater Pediatrics 	\N	\N	\N	\N	41.5889347	-109.2448436	1101 Gateway Blvd Rock Springs WY, 82901	Yes		Rock Springs 	WY
1200	Kaiser Permanente - San Rafael, ER 	\N	\N	\N	\N	38.0043293	-122.5546467	99 Montecillo Rd San Rafael, CA 94903	No	Can drop off at ER entrance. Ask for manager or charge RN. 	San Rafael 	CA
1201	Hematology/OncologyConsultants	\N	\N	\N	\N	33.6150011	-117.1670381	28078 Baxter Rd # 140 Murrieta, CA 92563	Yes	Please bring to suite 140	Murrieta	CA
1202	Recovery Works	\N	\N	\N	\N	38.3096932	-84.5608182	3107 Cincinnati Rd	Yes	Drop off or mail at the above address or call 972-824/8595	Georgetown 	KY
1203	Desert Springs Hospital	\N	\N	\N	\N	36.1128825	-115.1249154	2075 E Flamingo Rd Las Vegas, NV 89119	Yes	Attn: Emergency Department	Las Vegas	NV
1204	Family Health Clinic 	\N	\N	\N	\N	41.9466116	-75.5943144	401 Broad Ave Susquehanna, PA 18847	Yes	Warren 	Susquehanna 	PA
1205	Temple University Health System	\N	\N	\N	\N	40.0050435	-75.1507582	TUH Admin Suite 3401 North Broad St. Philadelphia, PA 19140	Yes	ATTN: David Fleece	Philadelphia	PA
1206	Baystate Medical Center	\N	\N	\N	\N	42.1204664	-72.6054707	754 Chestnut St Springfield, MA 01199	Yes	Mailing address ATTN: Dr. Ashwini Poola, General Surgery department	Springfield	MA
1207	Pacific Heart Institute 	\N	\N	\N	\N	34.0290544	-118.4799639	2001 Santa Monica Blvd, Suite 280W Santa Monica, CA 90404	Yes	Call 310-829-7678 and ask for Lan for curbside drop off, or mail to Pacific Heart Institute, 2001 Santa Monica Blvd, Suite 280W, Santa Monica, CA 90404	Santa Monica	CA
1208	Summa Health System	\N	\N	\N	\N	41.0821139	-81.5012108	141 N Forge St Akron, OH 44304	Yes	Emergency dept entrance	Akron	OH
1209	Mount Sinai	\N	\N	\N	\N	40.7930326	-73.9445618	172 East 108th Street New York, NY 10029	Yes	Can pick it up or curbside is fine, just call 646-641-5883	New York - Manhattan	NY
1210	The Miami Foundation for Science & Medicine, Inc.	\N	\N	\N	\N	25.7061121	-80.2852461	6705 Red Road, Suite 516 Coral Gables, FL 33146	Yes	ATTN: Dr Arthur Desrosiers	Miami	FL
1211	St. Joseph's Hospital Grabow Therapy and Wellness Center 	\N	\N	\N	\N	48.7727312	-122.4678056	3217 Squalicum Parkway Bellingham, WA 98225	Yes	Donations can be dropped off during the work week BEGINNING TUESDAY, MARCH 24, 2020 between the hours of 9 a.m. and 3 p.m. at the Grabow Therapy and Wellness Center located on the hospital campus at 3217 Squalicum Parkway, Bellingham, WA 98225. Place your items to be donated in the trunk/back hatch of your vehicle. Do not exit your vehicle. A PeaceHealth caregiver will remove the items and place them in our donation bins.  If you have more than 100 of any item, please take your items to the drop-off location for the Whatcom County Unified Command Center, 4233 Guide Meridian, Suite 101. You can contact Rud Browne, Donation Branch Director for Whatcom County at WUC_Donations@co.whatcom.wa.us with any questions.	Bellingham	WA
1212	Griswold Home Care, PGC	\N	\N	\N	\N	38.8226525	-76.9163435	5211 Auth Rd #200 Camp Springs, MD 20746	Yes	5211 Auth Rd Suite 200	Suitland	MD
1213	Lincoln Hospital Medical Center 	\N	\N	\N	\N	40.8160855	-73.9247762	234 E 149th St The Bronx, NY 10451	Yes	Drop off at the Command center in lobby of the hospital : conference room 4	New York - Bronx	NY
1214	Lakewood Ranch Medical Center	\N	\N	\N	\N	27.390913	-82.435731	8330 Lakewood Ranch Blvd Lakewood Ranch, FL 34202	Yes	Contact Dr. Neil Nahmias (head anesthesiologist) 201-321-8200	Lakewood Ranch	FL
1215	USF Health South Tampa Center	\N	\N	\N	\N	27.9371414	-82.4591743	2 Tampa General Cir Tampa, FL 33606	Yes	Drop off with personnel in the first floor lobby	Tampa	FL
1216	Jefferson Torresdale Hospital	\N	\N	\N	\N	40.0717195	-74.9831245	Jefferson Health Northeast ICU 10800 Knights Road Philadelphia, PA 19114 (shipping)	Unsure	They can be shipped to the hospital at 10800 Knights Road Philadelphia, PA 19114 https://www.jeffersonhealth.org/coronavirus-covid-19/medical-supply-donation.html	Turnersville	NJ
1217	Kaiser Permanente - Downey	\N	\N	\N	\N	33.9191528	-118.1288176	9333 Imperial Hwy Downey, CA 90242	No	Drop off at front desk, ER ambulance entrance.	Downey	CA
1218	Kaiser Permanente - Antioch 	\N	\N	\N	\N	37.9508418	-121.7749286	4501 Sand Creek Rd Antioch, CA 94531	Yes	Drop off at Admin dept, 4th floor. Or at volunteer residence in Berkeley - see Kaiser Permanente Antioch under Berkeley listing	Antioch	CA
1219	TGH Urgent Care powered by Fast Track	\N	\N	\N	\N	27.8940266	-82.4986671	3301 W Gandy Blvd Tampa, FL 33611	Yes	Back door	Tampa	FL
1220	LifeLong Medical Care	\N	\N	\N	\N	37.8640724	-122.2687119	2001 Dwight Way #1388 Berkeley, CA 94704	No	Please mail to address and text Kyle Hui at 206-427-3587 once it is mailed. Other supplies such as surgical masks, gowns, hair caps, hand sanitizer can be sent to our procurement deparmtent.	Berkeley	CA
1221	Kaiser Permanente - Modesto	\N	\N	\N	\N	37.7064351	-121.0525295	4601 Dale Rd Modesto, CA 95356	Unknown	TBD	Modesto	CA
1222	Addison Gilbert Hospital	\N	\N	\N	\N	42.6252401	-70.6806037	298 Washington Street Gloucester, MA 01930	Yes	Drop off at ER	Gloucester	MA
1223	Tacoma General Hospital	\N	\N	\N	\N	47.2593601	-122.4529681	315 M M.L.K. Jr Way Tacoma, WA 98405	No	Drop at the ER	Tacoma	WA
1224	Allergy Partners, PLLC	\N	\N	\N	\N	36.0715987	-80.3126809	1372 Westgate Center Dr Winston-Salem, NC 27103	No	Rear entrance	Winston-Salem	NC
1225	Community Options - Dallas	\N	\N	\N	\N	32.8943419	-96.7527567	8604 Greenville Ave #100 Dallas, TX 75243	Yes	Curbside drop off 	Dallas	TX
1226	John Muir Health - Walnut Creek	\N	\N	\N	\N	37.9128769	-122.0409498	1601 Ygnacio Valley Rd Walnut Creek, CA 94598	Yes	Main Entrance: John Muir Health 	Walnut Creek	CA
1227	LAC+USC Medical Center	\N	\N	\N	\N	34.0590574	-118.2065663	2020 Zonal Ave IRD 114 Los Angeles, CA 90033	No	Mail in	Los Angeles	CA
1228	UnityPoint Health - Allen Hospital 	\N	\N	\N	\N	42.5266507	-92.3395639	1825 Logan Ave Waterloo, IA 50703	Unknown 	Attn: Carrie Wilkinson 	Waterloo 	IA
1229	Mulberry Gardens Memory Care	\N	\N	\N	\N	41.1267139	-81.4411175	47 Steeplechase Ln Munroe Falls, OH 44262	Yes		Munroe Falls	OH
1230	WesTex Urgent Care	\N	\N	\N	\N	32.0179927	-102.1384834	3401 Greenbriar Dr., Suite 200 Midland, TX 79707	unsure	Unknown	Midland	TX
1231	New York Army National Guard 2/106 RTI  	\N	\N	\N	\N	41.2992871	-73.941701	11 Bear Mountain Bridge Rd Cortlandt, NY 10567	No	Attn: SFC Woyasz	Cortlandt Manor	NY
1232	Newport Urgent Care	\N	\N	\N	\N	33.6578047	-117.8669027	1000 Bristol St. North Suite 1B Newport Beach, CA 92660	Unsure	Unsure	Newport Beach	CA
1233	NF Joint Fire District - Station 2	\N	\N	\N	\N	41.1876497	-80.974067	45 E. Broad St. Newton Falls, OH 44444	Yes	Attn: Scott Mccloud	Newton Falls 	OH
1234	i-Care Urgent Care	\N	\N	\N	\N	33.6000782	-117.1765303	27722 Clinton Keith Rd Murrieta, CA 92562	Unsure	mail, drop off, local pick up	Murrieta	CA
1235	Renown Regional	\N	\N	\N	\N	39.52552	-119.7952114	1155 Mill St Reno, NV 89502	Yes	Drop off to ER, or any check in location 	Reno	NV
1236	PIH Health Good Samaritan Hospital	\N	\N	\N	\N	34.054492	-118.2649048	1225 Wilshire Blvd Los Angeles, CA 90017	Yes	Drop off or arrange for pickup, Attn: Donny Talbot 213-977-2206	Los Angeles	CA
1237	Kindred at Home	\N	\N	\N	\N	38.2151298	-84.8321711	1043 Algonquin Trail Frankfort, KY 40601	Yes	By side door under carport	Frankfort 	KY
1238	Boothbay Region Health Center	\N	\N	\N	\N	43.8606798	-69.6256273	185 Townsend Ave., Suite R Boothbay Harbor, ME 04538	Yes	ATTN: Robyn Ham	Boothbay Harbor	ME
1239	Morton Plant Hospital 	\N	\N	\N	\N	27.9533568	-82.8028719	300 Pinellas St Clearwater, FL 33756	Yes		Clearwater 	FL
1240	Encompass Health Rehab Hospital of Dayton	\N	\N	\N	\N	39.7479641	-84.1998303	 1 Elizabeth Pl Dayton, OH 45417	Yes	Attn: Natasha Mumford	Dayton	OH
1241	Garden Grove Hospital and Medical Center	\N	\N	\N	\N	33.7750066	-117.9129079	12601 Garden Grove Blvd Garden Grove, CA 92843	No	Attn: Dr. True McMahen	Garden Grove	CA
1242	Community Options 	\N	\N	\N	\N	40.6546373	-73.9607338	161 Woodruff Ave Brooklyn, NY 11226	Yes	Attn: Tiffany Dacre 	New York - Brooklyn	NY
1243	Brea Urgent Care	\N	\N	\N	\N	33.9324644	-117.9019689	395 W Central Ave Brea, CA 92821	Unsure	Unknown	Brea	CA
1244	It's About Time Urgent Care	\N	\N	\N	\N	33.2801242	-86.8511472	225 Helena Market Place Helena, AL 35080	Unsure	Unknown	Helena	AL
1245	Macneal Hospital Emergency Department 	\N	\N	\N	\N	41.9285019	-87.7164783	3544 W Wrightwood Ave Chicago, IL 60647	Yes	Attention Dr Neesha Patel	Chicago	IL
1246	Faster Care Detroit Urgent Care	\N	\N	\N	\N	42.4898693	-83.1362103	720 E Eleven Mile Rd Royal Oak, MI 48067	Unsure	pick up, drop off	Royal Oak	MI
1247	Mount Carmel East Hospital 	\N	\N	\N	\N	39.9794179	-82.8422191	6001 E Broad St Columbus, OH 43213	Yes	Mailing address: 6001 E Broad St, Columbus OH 43213 	Columbus 	OH
1248	Volunteers of America (Hope for Homes)	\N	\N	\N	\N	34.0548072	-117.7281282	1400 E Mission Blvd Pomona, CA 91766	Yes	Ask for Mary Twadros or Taneisha Antoine at security gate for donation drop off 	Pomona 	CA
1250	Apex Urgent Care Clinic	\N	\N	\N	\N	29.861933	-95.7212824	6111 N Fry Road Katy, TX 77449	Unsure	mail, drop off, local pick up	Katy	TX
1251	Community Options Inc. 	\N	\N	\N	\N	40.1016255	-75.4138505	1010 W 9th Ave King of Prussia, PA 19406	Yes	Curbside drop off 	King of Prussia 	PA
1252	A Better Way Homecare LLC	\N	\N	\N	\N	36.238833	-115.253982	7317 Ribbon Ridge Ave Las Vegas, NV 89129	Yes	Drop off at door	Las Vegas 	NV
1253	Valley Immediate Care	\N	\N	\N	\N	42.3626636	-122.8598628	1600 Delta Waters Road Medford, OR 97504	Unsure	Unknown. Also locations in Ashland & Grants Pass. 	Medford	OR
1254	Community Options	\N	\N	\N	\N	40.765369	-73.722762	55-35 260th Street Queens, NY 11362	Yes		Little Neck	NY
1255	St. Francis Medical Center	\N	\N	\N	\N	32.499658	-92.114495	309 Jackson St Monroe, LA 71201	No	Must call Aimee Kane at 318-966-7833 to schedule drop off 	Monroe	LA
1256	Moab Regional Hospital	\N	\N	\N	\N	38.5751558	-109.5597751	450 Williams Way Moab, UT 84532	Yes	TBD	Moab	UT
1257	Community Options Inc.	\N	\N	\N	\N	40.7613832	-73.7695545	4301 Bell Boulevard Bayside, NY 11361	Yes	Maria Bowles, Executive Director	New York - Queens 	NY
1258	Santa Clara Valley Medical Center	\N	\N	\N	\N	37.3120077	-121.9368473	2400 Clove Drive San Jose, CA 95128	Please call to verify	Please call 408-885-5299 before delivery from 8 to 5.	San Jose	CA
1259	Community Options 	\N	\N	\N	\N	29.4512954	-98.473223	2632 Broadway Suite 101 North San Antonio, TX 78215	Yes	Inside office building  Attn: Mike Martinez	San Antonio	TX
1260	Community Options	\N	\N	\N	\N	40.9165763	-74.3630142	390 Main Road Montville, NJ 07045	Yes	Call 9738727111	Montville 	NJ
1261	Affinity Urgent Care	\N	\N	\N	\N	29.4018231	-95.0354361	2600 FM 1764 Suite 190 La Marque, TX 77568	Yes	Attn: Mike or Ruth	La Marque	TX
1262	Sutter Health Los Gatos Center	\N	\N	\N	\N	37.2455869	-121.9571762	15400 Los Gatos Boulevard Los Gatos, CA 95032	No	Jeanette Oliva / Marisol Doser	Los Gatos	CA
1263	AFC Urgent Care	\N	\N	\N	\N	40.7618061	-74.1589881	276 Passaic Ave Unit A Kearny, NJ 07032	Unsure	Unknown	Kearny	NJ
1264	Kadlec Medical Center	\N	\N	\N	\N	46.2813864	-119.2822234	888 Swift Blvd Richland, WA 99352	Yes	Attn: Emergency Room	Richland	WA
1265	East Orange General Hospital	\N	\N	\N	\N	40.7545333	-74.2138513	300 Central Ave East Orange, NJ 07018	Yes	Drop off or mail to address	East Orange	NJ
1266	Abbottsford Falls Family Practice & Counseling	\N	\N	\N	\N	40.0159527	-75.1724136	4700 Wissahickon Ave Philadelphia, PA 19144	Unsure	Unknown	Philadelphia	PA
1267	Denver Health and Hospital Authority	\N	\N	\N	\N	39.7282404	-104.9910801	777 Bannock St Denver, CO 80204	No	Central Supply	Denver	CO
1268	Community Options Inc.	\N	\N	\N	\N	30.4336982	-97.7662987	12731 Research Blvd Unit C300 Austin, TX 78759	Yes	Community Options Inc  Attn: Greg Thoennes  12731 Research Blvd Unit C300 Austin, TX 78759 Phn: 512-595-1402  Please call 512-595-1402 for questions. We provide residential services for people with Developmental disabilities. Many of these individuals have pre-exisiting conditions that make them vulnerable to COVID-19. We provide 24 hour rotating staff 7 days a week to make sure they stay safe and healthy. We are requesting any PPE items that we can have on hand to help keep our wonderful staff and residents safe!	Austin	TX
1269	Community Options Inc.	\N	\N	\N	\N	33.547646	-101.8686463	2402 52nd Street Suite 12 Lubbock, TX 79412	Yes		Lubbock	TX
1270	Jersey City Medical Center	\N	\N	\N	\N	40.7163016	-74.0503916	355 Grand St Jersey City, NJ 07302	Yes	At the hospital entrance door	Jersey City	NJ
1271	Desert Care Network	\N	\N	\N	\N	N/A	N/A	Email for Instructions	Contact	Contact James Phillips james.phillips2@tenethealth.com	Palm Desert	CA
1272	Community Options 	\N	\N	\N	\N	40.8221825	-73.9436284	24 Bradhurst Avenue 4 New York, NY 10030	Yes	Regina Taylor-Tuck 	New York - Manhattan	NY
1273	Community Options Inc	\N	\N	\N	\N	31.7785381	-106.4640078	2525 E Missouri Ave El Paso, TX 79903	Yes	Mailing Address or we pick up	El Paso	TX
1274	Richmond Ambulance Authority	\N	\N	\N	\N	37.565646	-77.4609862	2400 Hermitage Rd Richmond, VA 23220	Yes		Richmond	VA
1275	The Neighborhood Doctor 	\N	\N	\N	\N	26.1581202	-97.8237187	106 N Main St La Feria, TX 78559	Yes	Please deliver to our lobby. Attention Bobby Sanchez 	La Feria	TX
1276	Yale New Haven Hospital Saint Raphael Campus	\N	\N	\N	\N	41.3101643	-72.9428479	1450 Chapel St New Haven, CT 06511	Yes	Email DonationsPPE@ynhh.org with instructions as to how hospital staff may contact you	 New Haven	CT
1277	Virtua 	\N	\N	\N	\N	39.8844933	-74.9277276	303 Lippincott Dr. Marlton NJ 08053	Yes	Deliver to Security Officer on-site in lobby	Marlton 	NJ
1278	Healthy Living at Home - San Diego	\N	\N	\N	\N	32.9020683	-117.1850183	9444 Waples St #450 San Diego, CA 92121	Yes	office functional for critical service 9-5 M-F 	San Diego	CA
1279	SANA Wellness and Health	\N	\N	\N	\N	29.354344	-98.5314431	2310 SW Military Dr #402 San Antonio, TX 78224	Yes	Mailing	San Antonio 	TX
1280	Detroit Receiving Hospital	\N	\N	\N	\N	42.3535426	-83.055094	4201 St. Antoine Blvd Detroit, MI 48201	Yes	Curbside procedure- please call/text Dr. Phillip Kucab at 734-678-5733	Detroit	MI
1281	Community Options 	\N	\N	\N	\N	40.8387144	-73.9369924	456 West 167th Street 2E New York, NY 10032	Yes	Regina Taylor -Tuck	New York - Manhattan	NY
1282	AFC Urgent Care	\N	\N	\N	\N	40.0747405	-75.1565623	2401 W Cheltenham Ave Wyncote, PA 19095	Unsure	Please either call 732-616-3845 or send to: AFC Urgent Care, 2401 W Cheltenham Ave, Wyncote, PA 19095	Wyncote	PA
1283	Community Options 	\N	\N	\N	\N	40.8163263	-73.9395871	555 Lenox Avenue #2D New York, NY 10037	Yes	Regina Taylor-Tuck	New York - Manhattan	NY
1284	WakeMed Hospital	\N	\N	\N	\N	35.784684	-78.5878628	3000 New Bern Ave Raleigh, NC 27610	Not sure		Raleigh	NC
1285	Kaiser Permanente - Baldwin Park	\N	\N	\N	\N	34.0655652	-117.9859943	1011 Baldwin Park Blvd Baldwin Park, CA 91706	Yes	Drop off to intake nurse or security staff in the Emergency Department parking lot	Baldwin Park	CA
1286	Norman Regional Hospital 	\N	\N	\N	\N	35.2304361	-97.4392801	901 N Porter Ave Norman, OK 73071	Yes	Norman ED drive through 	Norman	OK
1287	CHI St. Alexius Bismarck 	\N	\N	\N	\N	46.8076302	-100.777575	900 East Broadway Bismarck, ND 58501	Yes	Mailing or Bring to the emergency department 	Bismarck	ND
1288	Smoketown Family Wellness Center Pediatric office	\N	\N	\N	\N	38.2423588	-85.7445792	760 S. Hancock St. Ste B100 Louisville, KY 40203	Yes	For drop off, call 502-242-7458	Louisville	KY
1290	OB/Gyn Associates of Hollan	\N	\N	\N	\N	42.772325	-86.11478	 664 Michigan Ave Holland, MI 49423	Yes	Attn: Dawn Dauchy/Sarah Strong DO	Holland	MI
1291	Harborview Emergency Department	\N	\N	\N	\N	47.6039634	-122.3241159	325 9th Ave Seattle, WA 98104	No	Write “masks for emergency department” on package. Drive to ER entrance, there are screeners and security workers outside who can receive them.	Seattle	WA
1292	Healthy Urgent Care	\N	\N	\N	\N	42.4907586	-83.5147044	27204 Beck Rd Novi, MI 48374	Unsure	Pick up or drop off (details unknown)	Novi	MI
1293	Catholic Medical Center 	\N	\N	\N	\N	42.991178	-71.4746693	100 McGregor St Manchester, NH 03102	Yes	Drop off at Main Information Desk during the day; Emergency department in the evening/night. 	Manchester 	NH
1294	Kendall Regional Hospital	\N	\N	\N	\N	25.7309346	-80.3861403	11750 SW 40th St Miami, FL 33175	No	Mailing address or administration	Miami	FL
1295	Yale New Haven Health - Bridgeport Hospital	\N	\N	\N	\N	41.1889873	-73.1664362	267 Grant Street Bridgeport, CT 06610	Yes	Anne Diamond, Hospital President (203) 384-3000 or Email DonationsPPE@ynhh.org with instructions as to how hospital staff may contact you	Bridgeport	CT
1296	Pediatric Services 	\N	\N	\N	\N	44.942681	-93.3406232	4700 Park Glen Rd St Louis Park, MN 55416	Yes	Curbside drop off or mail is acceptable ATTN Dr. Kathryn Harrington	St. Louis Park	MN
1297	Mount Auburn Hospital	\N	\N	\N	\N	42.373977	-71.1334327	330 Mt Auburn St Cambridge, MA 02138	No	Call hospital for instructions	Cambridge	MA
1298	Alden Network	\N	\N	\N	\N	42.0553411	-88.0641934	1337 Basswood Road Schaumburg, IL 60173	Yes	Back building delivery area Attn: Neide Mack 	Schaumburg 	IL
1299	Yale New Haven Health, Park Ave Medical Center	\N	\N	\N	\N	41.2273667	-73.2430537	5520 Park Ave Trumbull, CT 06611	Yes	Email DonationsPPE@ynhh.org with instructions as to how hospital staff may contact you	Trumbull	CT
1300	Mission Home Care	\N	\N	\N	\N	28.258857	-82.18222	38332 Daughtery Rd Zephyrhills, FL 33540	Yes		Zephyrhills	FL
1301	Urgent Care for Children	\N	\N	\N	\N	33.4307422	-86.7064615	500 Cahaba Park Circle Suite 100 Birmingham, AL 35242	Unsure	Mail to: 500 Cahaba Park Circle, Birmingham, AL 35242	Birmingham	AL
1302	Immokalee Family Doctor's Clinic	\N	\N	\N	\N	26.42734	-81.434299	555 North 15th St. A Immokalee, FL 34142	Yes		Immokalee	FL
1303	Hospice by the Bay	\N	\N	\N	\N	37.9451918	-122.5127867	17 E. Sir Francis Drake Blvd Larkspur, CA 94939	Yes	Donations can be mailed or dropped off Monday ­– Friday, 8:30 a.m. to 5 p.m.  Hospice by the Bay Attention: PPE Donation |  If you are dropping off donations, please knock or use the intercom. A staff member will come out to accept your donation. If you have an unusually large donation please call (415) 927.2273.	Larkspur	CA
1304	St David's Round Rock Medical Center	\N	\N	\N	\N	30.5367133	-97.7289188	2508 Arbor Dr Round Rock, TX 78681	Yes	Leave it on the porch. Ring the bell.	Round Rock	TX
1305	New Franklin Center for Rehabilitation and Nursing	\N	\N	\N	\N	40.7571396	-73.8229295	142-27 Franklin Ave Flushing, NY 11355	No	Attn: Debby Tseng	Flushing	NY
1306	At Home Therapy of Crystal Coast	\N	\N	\N	\N	34.7328345	-76.7898831	4915 Arendell St. Ste. J162 Morehead City, NC 28557	No	ATTN: Joshua Stoufflet	Morehead City	NC
1307	Christianacare-GoHealth Urgent Care	\N	\N	\N	\N	39.6649142	-75.7537821	550 S College Ave Ste 115 Newark, DE 19713	unsure	Drop off or pick up locally	Newark	DE
1308	Trillium Family Services, Parry Center for Children	\N	\N	\N	\N	45.4978778	-122.6283887	3415 SE Powell Blvd Portland, OR 97202	Yes	Drop off at main reception building, located just off parking lot. 	Portland	OR
1309	Portland Fire & Rescue	\N	\N	\N	\N	45.5020094	-122.6529073	1300 SE Gideon St Portland, OR 97202	N/A	Between the hours of noon-4 pm Monday - Friday	Portland	OR
1310	Multnomah County Headquarters	\N	\N	\N	\N	45.5126598	-122.6601822	501 SE Hawthorne Blvd Portland, OR 97214	N/A	Loading dock on 6th St.	Portland	OR
1311	Anna Jaques Hospital and Anna Jaques Cancer Center	\N	\N	\N	\N	42.8137385	-70.8908833	25 Highland Ave Newburyport, MA 01950	Yes	Attn: Mary Williamson	Newburyport	MA
1312	Atrium Health Carolinas Medical Center	\N	\N	\N	\N	35.2511798	-80.814075	2828 N Poplar St Charlotte, NC 28206	Unsure	ATTN: PPE Donations	Charlotte	NC
1313	Community Health Alliance	\N	\N	\N	\N	39.5156955	-119.8036683	1055 S Wells Ave Reno, NV 89502	Yes	Attn: Susan Jimenez PA-C or Julie Gwin RN	Reno	NV
1314	Community Options Inc	\N	\N	\N	\N	35.6575815	-105.949875	460 St. Michaels Dr. Suite 504 Santa Fe NM 87505	Yes	Suite 504 	Santa Fe	NM
1315	Community Options Inc	\N	\N	\N	\N	35.112071	-106.5772714	2720 San Pedro N.E. Albuquerque, NM 87110	Yes	ATTN: Kassy Kitchens	Albuquerque 	NM
1316	Midwest Express Clinic	\N	\N	\N	\N	41.9416723	-87.6684164	3301 N. Ashland Ave Chicago, IL 60657	Yes	Stay in your vehicle and call us at 312-429-5725 - we will pick up curbside. Thank you! 	Chicago	IL
1317	Southwestern Medical Center	\N	\N	\N	\N	42.87397	-73.207393	100 Hospital Dr Bennington, VT 05201	Unknown	Contact Ron Keefer, Director of Materials Management at 802-447-5387 or ron.keefer@svhealthcare.org	Bennington	VT
1318	Lansing Urgent Care - West Lansing	\N	\N	\N	\N	42.7414977	-84.6129567	4440 W Saginaw Hwy Lansing, MI 48917	Unsure	Unknown	Lansing	MI
1319	Bay Cove Human Services	\N	\N	\N	\N	42.3636637	-71.059666	66 Canal St Boston, MA 02114	Yes	Call Stacy at 802-274-1771. Drop off at location.	Boston	MA
1320	Albany Urgent Care	\N	\N	\N	\N	31.6162833	-84.2206612	2622 Dawson Rd Albany, GA 31707	Unsure	Unknown	Albany	GA
1321	Dignity Health-GoHealth Urgent Care	\N	\N	\N	\N	37.7647702	-122.4328693	2288 Market St San Francisco, CA 94114	unsure	N/A	San Francisco	CA
1322	Gwinnett Pediatrics and Adolescent Medicine	\N	\N	\N	\N	33.9990815	-84.1630503	3855 Pleasant Hill Rd., Suite 210, Duluth, GA 30096	Yes	We can pickup curbside between 8:15-5pm or you can mail it, ATTn: Dr. Lisa Roberts	Duluth	GA
1323	Consultant Sleep & Pulmonary Medicine	\N	\N	\N	\N	42.4704153	-83.3356451	29275 W 10 Mile Rd Farmington Hills, MI 48336	Yes	Mailing address : P Sinha 	Farmington Hills	MI
1324	Wyckoff Heights Medical Center	\N	\N	\N	\N	40.704082	-73.9177493	374 Stockholm St Brooklyn, NY 11237	Yes, must be unused and clean	ATTN: Call Dr. Lafleur 917-405-1392	New York - Brooklyn	NY
1325	Taos Urgent Care	\N	\N	\N	\N	36.4005624	-105.5766119	330 C Paseo Del Pueblo Sur Taos, NM 87571	Unsure	US Mail, UPS, Fed Ex	Taos	NM
1326	Coffeyville Regional Medical center	\N	\N	\N	\N	37.0409324	-95.6393051	1400 West 4th St Coffeyville, KS 67337	Yes	Call 620 252 1506 Mary for entry to hospital	Coffeyvile	KS
1327	Chesapeake Regional Medical Center	\N	\N	\N	\N	36.746263	-76.2457816	736 N Battlefield Blvd Chesapeake, VA 23320	Unknown	TBD	Chesapeake	VA
1366	Downey Community Health Center	\N	\N	\N	\N	33.9369471	-118.1321091	8425 Iowa St Downey, CA 90241	Yes		Downey	CA
1328	Midwest Express Clinic	\N	\N	\N	\N	41.6918662	-87.7031233	3258 W 111th St Chicago, IL 60655	Yes	Stay in your vehicle and call us at 773-629-8217, we will pick up curbside - Thank you! 	Chicago 	IL
1329	Memorial Hermann Home Health	\N	\N	\N	\N	29.7800339	-95.5484392	909 Frostwood Dr Houston, TX 77024	Yes	Memorial Hermann Home Health Attn: Michelle Sullivan 909 Frostwood Dr Houston TX, 77024 Leave at Security Desk; have security guard to call me when delivered.  	Houston 	TX
1330	Sinai Urgent Care	\N	\N	\N	\N	32.9987735	-96.7990149	18101 Preston Rd. Suite 201 Dallas, TX 75252	Unsure	Mail delivery or pickup works (details unclear)	Dallas	TX
1331	BetterMed Urgent Care	\N	\N	\N	\N	37.5854277	-77.4988866	5215 W Broad St Richmond, VA 23230	Unsure	Any.  Can travel or will pay for shipping	Richmond	VA
1332	Steven J. Waltrip, M.D. inc.	\N	\N	\N	\N	34.0662435	-118.4085994	120 S Spalding Dr #400 Beverly Hills, CA 90212	Yes	120 S Spalding Dr Suite 400	Beverly Hills	CA
1333	Midwest Express Clinic	\N	\N	\N	\N	41.1888142	-87.8499109	2070 N, IL-50 #500 Bourbonnais, IL 60914	Yes	Stay in your vehicle and call us at 779-236-4094, we will pick up curbside - Thank you! 	Bourbonnais	IL
1334	StatMD	\N	\N	\N	\N	40.7364347	-73.6717116	2090 Jericho Turnpike New Hyde Park, NY 11040	unsure		New Hyde Park	NY
1335	Midwest Express Clinic	\N	\N	\N	\N	41.5646287	-87.508456	8135 Calumet Ave Munster, IN 46321	Yes	Stay in your vehicle and call us at 219-513-2000, we will pick up curbside - thank you!	Munster	IN
1336	Suburban Hospital, Johns Hopkins	\N	\N	\N	\N	38.9972577	-77.110582	8600 Old Georgetown Rd Bethesda, MD 20814	Yes	Drop off in emergency room please or Advise nurse in triage of donation	Bethesda 	MD
1337	Christus Spohn Beeville	\N	\N	\N	\N	28.406177	-97.730742	1500 E Houston St Beeville, TX 78102	Yes	Attn: Med Surg Pedi	Beeville	TX
1338	G.V. Sonny Montgomery VA Medical Center	\N	\N	\N	\N	32.3278243	-90.1674953	1500 E Woodrow Wilson Ave Jackson, MS 39216	Yes	ATTN: ENT CLINIC	Jackson	MS
1339	Midwest Express Clinic	\N	\N	\N	\N	41.4742962	-87.401614	5521 Lincoln Hwy #1A Crown Point, IN 46307	Yes	Stay in your vehicle and call us at 219-769-1362 - we will pick up curbside -  Thank you! 	Crown Point	IN
1340	Kaiser Permanente - Roseville	\N	\N	\N	\N	38.7454773	-121.2487405	1600 Eureka Rd Roseville, CA 95661	Yes	Front entrance, security desk	Roseville	CA
1341	Mosaic Health Services 	\N	\N	\N	\N	42.0337352	-97.4057772	105 E Norfolk Ave #200 Norfolk, NE 68701	Yes	Call 402-640-1439 upon arrival/delivery, as doors are currently locked with no outside visitors allowed indoors 	Norfolk 	NE
1342	Frankford Hospital	\N	\N	\N	\N	40.019879	-75.0816014	4900 Frankford Ave Philadelphia, PA 19124	Yes	Main lobby	Philadelphia	PA
1343	Crown Valley Imaging	\N	\N	\N	\N	33.5641192	-117.6660812	 27401 Los Altos #180 Mission Viejo, CA 92691	Yes	Crown Valley Imaging LLC 27401 Los Altos Suite 180, Mission Viejo, CA 92691 Drop off is available at our front desk Also can call 949-367-1010 x20	Mission Viejo	CA
1344	Tucson ER and Hospital	\N	\N	\N	\N	32.2221731	-110.8948742	4575 E Broadway Blvd Tucson, AZ 85711	Yes		Tucson	AZ
1345	Frisco Internal Medicine	\N	\N	\N	\N	33.1101098	-96.8142564	3880 Parkwood Blvd STE 304 Frisco, TX 75034	Yes	Frisco Internal Medicine 3880 Parkwood Boulevard, Suite 304 Frisco, TX 75034	Frisco	TX
1346	Saint Mary's Regional Medical Center	\N	\N	\N	\N	39.5324265	-119.820038	235 W 6th St  Reno NV 89503	Yes	Please drop off at the Arlington entrance. Please direct the masks to the radiology department	Reno	NV
1347	Midwest Express Clinic	\N	\N	\N	\N	41.7528663	-87.9459365	40 75th St Willowbrook, IL 60527	Yes	Stay in your vehicle and call us at 630-581-5372, we will pick up curbside - thank you!	Willowbrook	IL
1348	Saint Clare's Health	\N	\N	\N	\N	40.894894	-74.4654098	25 Pocono Rd Denville, NJ 07834	unsure	Delivery	Denville	NJ
1349	Pacific Anesthesia, Inc	\N	\N	\N	\N	21.3215492	-157.8559229	321 N. Kuakini Street, Suite 306 Honolulu, HI 96817	Yes	Please email Oren Bernstein, Pacific Anesthesia CMO, for any delivery at obernstein@pacificanesthesia.org. Thank you very much!!	Honolulu	HI
1350	Montclair Hospital Medical Center 	\N	\N	\N	\N	34.0787364	-117.6960075	5000 San Bernadino Street Montclair, CA 91763 	Yes	Attn: CNO	Montclair 	CA
1351	St Luke's Hospital - Warren Campus	\N	\N	\N	\N	40.702113	-75.178597	185 Roseberry St Phillipsburg, NJ 08865	Yes	Drop off at ED	Phillipsburg	NJ
1352	Our Lady of Fatima hospital 	\N	\N	\N	\N	41.855558	-71.459817	200 High Service Ave North Providence, RI 02904	Yes		North Providence 	RI
1353	Integrative Emergency Healthcare	\N	\N	\N	\N	32.9281233	-96.8246742	4835 Lyndon B Johnson Fwy #900 Dallas, TX 75244	Yes	Mailing Address 	Dallas	TX
1354	Children's Mercy	\N	\N	\N	\N	38.9300791	-94.6524616	5808 W 110th St Overland Park, KS 66211	No	Unsure	Overland Park	KS
1355	Northern Nevada Medical Center	\N	\N	\N	\N	39.5411157	-119.6973597	2375 E. Prater Way Sparks, NV 89431	Yes	Mail to: Alexa Parker, Emergency Dept.- NNMC, 2375 E Prater Way, Sparks, NV, 89431	Sparks	NV
1356	Interfaith Medical Center 	\N	\N	\N	\N	40.6783744	-73.9374075	1545 Atlantic Ave Brooklyn, NY 11213	Yes	Jack Finkelstein at Jfinkelstein@interfaithmedical.org/929-340-1467; OR email ashapiro@interfaithmedical.org; OR ATTN: Dr. Lawrence Lai, llai@interfaithmedical.org; OR dropoff at Risk Management - East Building	New York - Brooklyn	NY
1357	Kaiser Permanente - Antioch;  Kaiser Permanente - Walnut Creek	\N	\N	\N	\N	37.8787718	-122.2763104	1514 Grant Street Berkeley, CA 94703	Yes	Drop off at private residence of volunteer (hospital staff member).	Berkeley	CA
1358	University Hospital in Newark, NJ	\N	\N	\N	\N	40.740611	-74.1910862	150 Bergen St Newark, NJ 07103	Yes	Please email archana.babu@rutgers.edu regarding drop-off instructions.	Newark	NJ
1359	AppleCare Immediate Care, LLC	\N	\N	\N	\N	30.7864509	-81.6432139	1481 Highway 40 East Kingsland, GA 31548	unsure	Mail	Kingsland	GA
1360	Howard County General Hospital	\N	\N	\N	\N	39.2141113	-76.885968	5755 Cedar Ln Columbia, MD 21044	Unsure	Postal mail	Columbia	MD
1361	Baylor Scott and White (ER)	\N	\N	\N	\N	30.5822251	-96.2795053	700 Scott and White Dr College Station, TX 77845	Not sure but can't imagine not	Dropoff at EMS doors	College Station	TX
1362	Hospitals via City of Berkeley	\N	\N	\N	\N	N/A	69	N/A	Yes	rkesarwani@cityofberkeley.info	Berkeley	CA
1363	Pampa Regional Medical Center	\N	\N	\N	\N	35.5725936	-100.9646286	3023 Perryton Pkwy Pampa, TX 79065	Yes	Inside at front desk 	Pampa	TX
1364	First Med Urgent Care	\N	\N	\N	\N	35.5108518	-97.6023992	4510 NW 39th St Oklahoma City, OK 73122	unsure	Mail or pick up	Oklahoma City	OK
1365	St. Joseph Mercy Brighton Health Center 	\N	\N	\N	\N	42.5679883	-83.8027953	7575 Grand River Ave Brighton, MI 48114	Please keep boxes/bags closed for sanitary purposes. We will accept any donation.	Please drop off or mail to the following address 7575 Grand River Ave, Brighton, MI 48114	Brighton	MI
1367	UF Health	\N	\N	\N	\N	30.348622	-81.6641394	655 8th St W Jacksonville, FL 32209	Unsure		Jacksonville	FL
1368	Brigham and Women's Hospital	\N	\N	\N	\N	42.3350677	-71.1046518	15 Francis St Boston, MA 02115	Unknown	Please contact coviddonations@partners.org to coordinate donation. 15 Francis Street entrance is open from 6am to 8pm. When this entrance is closed, use the 75 Francis Street entrance. Drop off in main lobby. See https://www.partners.org/Newsroom/Articles/Partners-HealthCare-Coronavirus-Announcement.aspx	Boston	MA
1369	Melrose Wakefield Hospital	\N	\N	\N	\N	42.4604103	-71.0610124	585 Lebanon St Melrose, MA 02176	No	Unsure	Melrose	MA
1370	Huntington Hospital	\N	\N	\N	\N	34.1325954	-118.1525463	100 W. California Blvd Pasadena, CA 91105	No	100 W. California Blvd Pasadena, CA 91105	Pasadena	CA
1371	University of Chicago Medicine Comer Children's Hospital	\N	\N	\N	\N	41.7902993	-87.6055693	5721 S Maryland Ave Chicago, IL 60637	Yes	ATTN:  University of Chicago Medicine Comer Children's Hospital  Pediatric Intensive Care Unit  Bring to unit or call 773-702-1000  Explain that you have masks and other PPE to donate to the unit	Chicago	IL
1372	Inland Northwest Behavioral Health	\N	\N	\N	\N	47.6517723	-117.414111	104 W 5th Ave Spokane, WA 99204	Yes		Spokane	WA
1373	Novant Health-GoHealth Urgent Care	\N	\N	\N	\N	36.1502788	-80.2784083	7811 North Point Blvd Winston-Salem, NC 27106	unsure	Drop off or pick up locally	Winston-Salem	NC
1374	Sutter Delta Medical Center 	\N	\N	\N	\N	37.9825348	-121.8029078	3901 Lone Tree Way Antioch, CA 94509	Yes	Anesthesia Department - Henry Liu, M.D.	Antioch	CA
1375	UCSF Benioff Children's Hospital Oakland	\N	\N	\N	\N	37.8371901	-122.2670282	747 52nd Street Oakland, CA 94609	Masks - can be opened, as long as they have not been used. All other must be unopened pls	Will be receiving donations 7 days a week, 8 a.m. to 5 p.m. @ Ambassador Desk. More info https://coronavirus.ucsf.edu/help	Oakland	CA
1376	Fresenius Kidney Care	\N	\N	\N	\N	34.1277561	-118.1476057	1111 S Arroyo Pkwy Ste 150 Pasadena, CA 91105	Yes		Pasadena	CA
1377	Ellenton Urgent Care	\N	\N	\N	\N	27.5213885	-82.5231234	4015 US-301 Ellenton, FL 34222	unsure	Drop off	Ellenton	FL
1378	Mercy-GoHealth Urgent Care	\N	\N	\N	\N	38.6728643	-90.4339883	11445 Olive Blvd Creve Coeur, MO 63141	Unsure	Drop off or pick up locally	Creve Coeur	MO
1379	Kansas City Fire Department	\N	\N	\N	\N	39.1054696	-94.5597263	635 Woodland Ave Kansas City, MO 64106	unsure	Can pick up from anywhere within an hour's drive, or delivery is an option to our facility. 	Kansas City	MO
1380	UCSF Mount Zion Medical Center	\N	\N	\N	\N	37.784695	-122.4392274	1600 Divisadero St San Francisco, CA 94115	Masks - can be opened, as long as they have not been used. All others: unopened	Semicircle driveway; will be receiving donations 7 days a week, 8 a.m. to 5 p.m. More info: https://coronavirus.ucsf.edu/help	San Francisco	CA
1381	Barnes Jewish Hospital	\N	\N	\N	\N	38.6352337	-90.2648651	1 Barnes Jewish Hospital Plaza St. Louis, MO 63110	unsure	Unsure	St. Louis	MO
1382	Hope Medical Clinic	\N	\N	\N	\N	35.574537	-92.453455	145 Shake Rag Rd Clinton, AR 72031	unsure	Mail	Clinton	AR
1383	Metrohealth Medical Center	\N	\N	\N	\N	41.4622606	-81.697669	2500 Metrohealth Dr Cleveland, OH 44109	unsure	Drop off coordinated via Dr. Stager 216.778.2858vg	Cleveland	OH
1384	Armour Family Medicine	\N	\N	\N	\N	35.5556731	-89.6539542	728 W Sherrod Ave Covington, TN 38019	Unsure		Covington	TN
1385	Rush University Medical Center	\N	\N	\N	\N	41.8747095	-87.668452	1653 W Congress Pkwy Chicago, IL 60612	unsure	Shipping or dropoff to 711 S Paulina St, Chicago, IL 60612	Chicago	IL
1386	Saddleback Memorial Hospital 	\N	\N	\N	\N	33.6093252	-117.7089298	24451 Health Center Dr Laguna Hills, CA 92653	Yes	ATTN: Anesthesia Dept. 	Laguna Hills 	CA
1387	AppleCare Immediate Care, LLC	\N	\N	\N	\N	31.2415734	-81.4993313	1111 Glynco Pkwy Building 1 Suite 10 Brunswick, GA 31525	unsure	Mail or pick up	Brunswick	GA
1388	Mount Sinai Medical Center	\N	\N	\N	\N	25.8131425	-80.1414482	4300 Alton Rd Miami Beach, FL 33140	Yes	Emergency Room	Miami Beach	FL
1389	Salem Health Medical Clinic Woodburn	\N	\N	\N	\N	45.1518633	-122.8851445	105 N Arney Rd Ste. 130 Woodburn, OR 97071	Yes	Attn: Darci Hansen	Woodburn	OR
1390	Penn Medicine 	\N	\N	\N	\N	40.0754731	-75.1712394	3600 Spruce Street Philadelphia, PA 19150	Yes		Philadelphia	PA
1391	Circle Health Urgent Care	\N	\N	\N	\N	42.6717828	-71.2949461	9 Loon Hill Rd Dracut, MA 01826	unsure	mail, pick-up	Dracut	MA
1392	Peachtree City Urgent Care	\N	\N	\N	\N	33.4099253	-84.5656614	8 Eastbrook Bend, Suite B Peachtree City, GA 30269	Unsure		Peachtree	GA
1393	Four Corners Docs Durango Colorado	\N	\N	\N	\N	37.2843194	-107.8781722	1874 W 2nd Ave Durango, CO 81301	Yes	Contact Phil 8083498798	Durango	CO
1394	New York Presbyterian/Columbia University Medical Center, Presbyterian Hospital Building	\N	\N	\N	\N	40.841311	-73.94067	Presbyterian Hospital Building 622 W 168th St New York, NY 10032	unsure	Please email masks@nyp.org or reach out to me	New York - Manhattan	NY
1395	Dispatch Health -Atlanta	\N	\N	\N	\N	33.9163987	-84.359093	5885 Glenridge Ave ste 100 Atlanta, GA 30328	Yes	Drop off in front of door in inside hallway 	Atlanta	GA
1396	UCSF Mission Center Building	\N	\N	\N	\N	37.7673395	-122.4150481	1855 Folsom St San Francisco, CA 94103	Masks - can be opened, as long as they have not been used. All other items - unopened only pls	Will be receiving donations 7 days a week, 8 a.m. to 5 p.m. Entrance in the parking lot on Harrison at 15th Street. More info: https://coronavirus.ucsf.edu/help	San Francisco	CA
1397	Kaiser Permanente - Oakland	\N	\N	\N	\N	37.8234923	-122.2581218	3600 Broadway Oakland, CA 94611	Unknown	Email Oakland.HCC@kp.org with "Supplies" in the subject line.	Oakland	CA
1398	Goleta Valley Cottage Hospital	\N	\N	\N	\N	34.4334194	-119.8104104	351 S Patterson Ave Goleta, CA 93111	Yes	Curbside 10-5 until further notice	Goleta	CA
1399	Urgent Care of Westchester	\N	\N	\N	\N	41.0645418	-73.8576194	155 White Plains Rd Tarrytown, NY 10591	Unsure		Tarrytown	NY
1400	Spectrum Health Lakeland 	\N	\N	\N	\N	42.0886172	-86.4783353	1234 Napier Ave. St Joseph, MI 49085	Yes	Central Command station	St Joseph 	MI
1401	Hendricks Regional Heath	\N	\N	\N	\N	39.762559	-86.5015563	1000 E Main St Danville, IN 46122	Yes		Danville	IN
1402	Pam Rehabilitation Hospital	\N	\N	\N	\N	30.563719	-97.6498552	351 Seton Pkwy Round Rock, TX 78665	Unsure	Unsure	Round Rock	TX
1403	Our Lady of Lourdes Memorial Hospital	\N	\N	\N	\N	42.0915013	-75.9362283	169 Riverside Dr Binghamton, NY 13905	Unsure		Binghamton	NY
1404	AdventHealth Hendersonville	\N	\N	\N	\N	35.3897316	-82.4881453	100 Hospital Dr Hendersonville, NC 28792	unsure	delivery or pick up	Hendersonville	NC
1405	Pediatrics On Demand	\N	\N	\N	\N	41.7111893	-87.7782741	9930 SW Hwy Oak Lawn, IL 60453	Unsure	Drop off or shipping	Oak Lawn	IL
1406	Rio Hondo Subacute and Nursing Center	\N	\N	\N	\N	34.0139737	-118.0943183	273 E Beverly Blvd Montebello, CA 90640 	No	Go to receptionist, attn. Dr. Blanca Stella Fajardo 	Los Angeles 	CA
1407	North Kansas City Hospital	\N	\N	\N	\N	39.1495404	-94.551452	2800 Clay Edwards Dr North Kansas City, MO 64116	Unknown	Contact robert.schlicht@nkch.org	North Kansas City	MO
1408	Arizona Asthma and Allergy Institute	\N	\N	\N	\N	33.5108005	-112.0120532	3200 E Camelback Road, Suite 125 Phoenix, AZ 85018		Mail, contact number 312 404-4150	Phoenix	AZ
1409	Durango Urgent Care	\N	\N	\N	\N	37.292538	-107.8746315	2577 Main Avenue Durango, CO 81301			Durango	CO
1410	Valley Medical Center	\N	\N	\N	\N	47.444271	-122.214566	4033 Talbot Road South Renton, WA 98055	Yes	Mon-Fri: 9 am – 3 pm. Parallel parking spots on west side of building. You may also drop-off at any of Valley's four Urgent Care Clinic locations, open 7 days/wk.  For questions, please email donation@valleymed.org or call us at 425.228.3440 ext. 3886	Renton	WA
1411	Express Urgent Care	\N	\N	\N	\N	41.4630284	-75.6539479	449 Scranton Carbondale Hwy Scranton, PA 18508		Delivery or pick up	Dickson City	PA
1412	AFC Urgent Care	\N	\N	\N	\N	39.9638181	-75.5971437	510 E Gay St West Chester, PA 19380			West Chester	PA
1413	Physicians Urgent Care	\N	\N	\N	\N	35.914026	-86.8188379	155 Covey Dr #100 Franklin, TN 37067			Franklin	TN
1414	Penrose-St Francis 	\N	\N	\N	\N	38.866122	-104.8223517	Emergency Dept 2222 N Nevada Ave Colorado Springs, CO 80907	Yes	Deliver to Emergency Department	Colorado Springs 	CO
1415	Marin Family Medicine	\N	\N	\N	\N	26.1626879	-97.6769609	618 Maco Dr Harlingen, TX 78550	Yes	Any	Harlingen	TX
1416	The Nephrology Group 	\N	\N	\N	\N	36.8387255	-119.7774818	568 E Herndon Ave #201 Fresno, CA 93720	No	Mailing address at front door. Attn: Administrative Services, PPE	Fresno	CA
1417	Michigan Medicine -- St. Joseph Mercy	\N	\N	\N	\N	42.2849096	-83.7333623	1500 E Medical Center Dr Ann Arbor, MI 48109	Unknown	Dock 5: Attn: UMH Dock receiving team. Please email umh-dock-receivingteam@medumich.edu that there is inbound product.	Ann Arbor	MI
1418	PromptMed Urgent Care	\N	\N	\N	\N	42.371635	-87.8831656	724 N Green Bay Rd Waukegan, IL 60085		FedEx, UPS, USPS	Waukegan	IL
1419	College Medical Center- Long Beach South Campus	\N	\N	\N	\N	33.788473	-118.194141	1725 Pacific Ave Long Beach, CA 90813	Yes	Curbside 	Long Beach	CA
1420	Broward Health - Imperial Point Hospital	\N	\N	\N	\N	26.1645	-80.123993	1709 Coral Gardens Drive Wilton Manors, FL 33334		Residental address. Mail to my home - ICU NURSE will distribute on unit	Wilton Manors	FL
1421	Providence Holy Cross	\N	\N	\N	\N	34.1418032	-118.4992972	3946 Encino Hills Place Encino, CA 91436	Yes	Encino	Encino	CA
1422	Maimonides Medical Center	\N	\N	\N	\N	40.639262	-73.9981537	4802 10th Ave Brooklyn, NY 11219	unsure	Please coordinate all donations to covid-resources@maimonidesmed.org and cc EDickman@maimonidesmed.org on the email to arrange drop off or delivery. 	New York - Brooklyn	NY
1423	Doctoroo	\N	\N	\N	\N	36.0678345	-115.1376854	1181 Grier Dr Suite C Las Vegas, NV 89119	Yes	Attn: Josh Mayo Mark them as PPEs at the door, or go inside to drop them off in person 	Las Vegas	NV
1424	Barnabas Health	\N	\N	\N	\N	40.7735009	-74.3565479	200 S Orange Ave Livingston, NJ 07039	No	Respiratory department	Livingston 	NJ
1425	Community Health Systems Inc	\N	\N	\N	\N	33.915934	-117.2671064	22675 Alessandro Blvd # 1 Moreno Valley, CA 92553	unsure	delivery	Moreno Valley	CA
1426	Healing House	\N	\N	\N	\N	39.1125672	-94.5283615	 4505 St John Ave Kansas City, MO 64123	Yes	Bring to front desk	Kansas City	MO
1427	St Thomas Moore 	\N	\N	\N	\N	38.4552392	-105.2309998	1338 Phay Ave Cañon City, CO 81212	Yes	Emergency Dept	Canon City	CO
1428	Parkview Hospital Randallia	\N	\N	\N	\N	41.095694	-85.109793	2200 Randallia Dr Fort Wayne, IN 46805	Yes		Fort Wayne	IN
1429	Meher Sultana, MD 	\N	\N	\N	\N	40.6868309	-74.2436139	1308 Morris Ave STE 202 Union, NJ 07083	No	Drop off at the office address	Union	NJ
1430	San Antonio Regional Hospital	\N	\N	\N	\N	34.1019041	-117.6374336	999 San Bernardino Rd Upland, CA 91786		Will collect	Upland	CA
1432	Xpress Wellness Urgent Care	\N	\N	\N	\N	35.53884	-98.6947452	1303 N Washington Ave Weatherford, OK 73096	Yes	Attn: Beverly Aiello	Weatherford 	OK
1433	University of Chicago Medical Center	\N	\N	\N	\N	41.5825872	-87.7445957	5192 Greentree Rd Oak Forest, IL 60452	Yes	Drop off in our mail. Will be delivered to nurses home and she will bring them in	Oak Forest 	IL
1434	Leigh Valley Hospital - Hazleton	\N	\N	\N	\N	40.9491755	-75.9641194	700 East Broad Street Hazleton, PA 18201	No	Curbside Please	Hazleton 	PA
1435	Urgent Care 3D	\N	\N	\N	\N	33.1229358	-117.3049454	6010 Hidden Valley Rd #150 Carlsbad, CA 92011		Will collect	Carlsbad	CA
1436	Palmeira Home + Health	\N	\N	\N	\N	36.1207905	-115.1583917	3763 Howard Hughes Pkwy #150 Las Vegas, NV 89169	Yes	Curbside	Las Vegas	NV
1437	Clinton Family Health Center	\N	\N	\N	\N	43.1695637	-77.6097112	293 Upper Falls Blvd Rochester, NY 14605	Unsure	Email then drop off at site	Rochester	NY
1438	Riverdale Rehab & Care Community of Brighton	\N	\N	\N	\N	39.9876363	-104.7940753	2311 E Bridge St Brighton, CO 80601	Unsure	Will pick up if local, or can drop off.	Brighton	CO
1439	Jackson County Memorial Hospital	\N	\N	\N	\N	34.6369701	-99.3171146	1200 East Pecan St.  Altus, OK 73521	No	Call 580-379-5000 and ask for Mary Jencks	Altus	OK
1440	Righttime Medical Care	\N	\N	\N	\N	39.0556639	-77.119402	12220 Rockville Pike Rockville, MD 20852		Any	Rockville	MD
1441	Saratoga Hospital	\N	\N	\N	\N	43.0862373	-73.7976256	211 Church St Saratoga Springs, NY 12866		Mail	Saratoga Springs	NY
1442	Champion Home HealthCare Inc.	\N	\N	\N	\N	42.4463758	-83.21061	16250 Northland Drive Suite 368 Southfield, MMI 48075	Yes	Drop off at 18083 Wildemere St, Detroit, MI 48221	Southfield 	MI
1443	Valley Urgent Care	\N	\N	\N	\N	34.2401575	-118.5364331	9335 Reseda Blvd. #100 Northridge, CA 91324	Unsure	We are flexible if someone can find us the supplies.	Northridge	CA
1444	PAMF (Sutter Health) Santa Clara	\N	\N	\N	\N	37.3826973	-121.9540086	3544 Bassett St Santa Clara, CA 95054	Unknown	Call (844) 987-6099. Staffed donation windows: M-F: 7AM-4PM Sat/Sun: 9AM-1PM. Call to request staff to come pick up donations curbside. Collection bins/lockers also available for off-hours. This is collection point for all Bay Area PAMFs.	Santa Clara	CA
1445	J.D. McCarty Center	\N	\N	\N	\N	35.2320094	-97.4074666	2002 E Robinson St Norman, OK 73071	unsure		Norman	OK
1446	Joseph's House	\N	\N	\N	\N	38.9249341	-77.0410983	1730 Lanier Pl NW Washington, DC 20009	No	Contact Liz at liz@josephshouse.org or 802-777-2694	Washington	DC
1447	Hunterdon Medical Center	\N	\N	\N	\N	40.5314853	-74.86113	2100 Wescott Dr Flemington, NJ 08822		Call to set up	Flemington	NJ
1448	NYU Langone Hospital - Brooklyn	\N	\N	\N	\N	40.6466634	-74.0209235	150 55th St Brooklyn, NY 11220		Limted to 2 boxes only for in-person dropoffs. Drop off at Loading Dock on 1st Ave between 55th and 56th. M-F 9AM-5PM.  See https://nyulangone.org/give/funds/covid-19 for more details and signup form.	New York - Brooklyn	NY
1449	Legacy Mount Hood Medical Center 	\N	\N	\N	\N	45.5175498	-122.4074572	24800 SE Stark St Gresham, OR 97030	Yes	In main entrance  to hospital 	Gresham 	OR
1450	Finger Lakes Health	\N	\N	\N	\N	42.876489	-76.9883041	196 North St Geneva, NY 14456		Donated supplies can also be dropped off at the Geneva General Hospital loading dock, located behind the hospital. Please mark them Attention Lara Turbide, Community Services. The loading dock is open Monday – Friday from 8:00 a.m. – 3:00 p.m.	Geneva	NY
1451	Encompass Health Rehabilitation Hospital of Braintree	\N	\N	\N	\N	42.197953	-71.0184827	250 Pond St Braintree, MA 02184	Unsure	Drop off or shipping ok	Braintree	MA
1452	Pardee Hospital	\N	\N	\N	\N	35.3207468	-82.4677888	800 N Justice St Hendersonville, NC 28791	Unsure		Hendersonville	NC
1453	AMITA Health Alexian Brothers Medical Center Elk Grove Village	\N	\N	\N	\N	42.0050035	-88.0159974	800 Biesterfield Rd. Elk Grove Village, IL 60007			Elk Grove Village	IL
1454	Martha's Vineyard Hospital	\N	\N	\N	\N	41.4606952	-70.5805954	1 Hospital Road Oak Bluffs, MA 02557		UPS, FedEx | Please contact coviddonations@partners.org to coordinate donation. See https://www.partners.org/Newsroom/Articles/Partners-HealthCare-Coronavirus-Announcement.aspx	Oak Bluffs	MA
1455	The Bridge - Administrative Offices	\N	\N	\N	\N	40.8073914	-73.9452863	290 Lenox Ave., 3rd Fl. New York, NY 10027 	Unsure	Anything that is convenient for you	New York - Manhattan	NY
1456	Alta Bates Summit Medical Center Oakland Campus 	\N	\N	\N	\N	37.821677	-122.2630846	350 Hawthorne Ave Oakland, CA 94609	Yes	ED Dropbox  or  Curbside/Lobby	Oakland	CA
1457	Family Medical Center	\N	\N	\N	\N	40.6400175	-74.0160056	5908 5th Ave Brooklyn, NY 11220	Yes		New York - Brooklyn	NY
1458	Lutheran Medical center	\N	\N	\N	\N	39.7681121	-105.0898988	8300 W 38th Ave Wheat Ridge, CO 80033		Any method.	Wheat Ridge	CO
1459	Adventist Health Bakersfield	\N	\N	\N	\N	35.3833744	-119.0206543	2615 Chester Ave Bakersfield, CA 93301	Yes		Bakersfield 	CA
1460	SBH Health Syste­­­­m	\N	\N	\N	\N	40.853914	-73.8903914	4422 3rd Ave The Bronx, NY 10457		Delivery or pick up	New York - Bronx	NY
1461	Providence Montana	\N	\N	\N	\N	46.8755594	-114.0000297	500 W. Broadway Missoula, MT 59802	No	Contact Anita at anita.nash@providence.org or 406-329-4147	Missoula	MT
1462	Total Access Urgent Care	\N	\N	\N	\N	38.6178478	-90.2872087	2060 Hampton Ave St. Loui, MO 63139	Unsure		St. Louis	MO
1463	Saint Vincent Hospital	\N	\N	\N	\N	42.2647185	-71.7968904	123 Summer St Worcester, MA 01608		Any delivery	Worcester	MA
1464	Robert Wood Johnson University Hospital	\N	\N	\N	\N	40.4958252	-74.4496613	1 Robert Wood Johnson Pl New Brunswick, NJ 08901		Please email the Medical Staff Office at rwjnbma@rwjbh.org and the RWJUH Command Center at rwjnb-command@rwjbh.org with all offers and donation-related questions.	New Brunswick	NJ
1465	Diligent Urgent Care	\N	\N	\N	\N	40.7755362	-74.0268679	3807 Bergenline Ave Union City, NJ 07087	Unsure	Any method (more details needed)	Union City	NJ
1466	Starlight Behavioral Health	\N	\N	\N	\N	38.4159922	-82.3408464	5317 Cherry Lawn Rd Huntington, WV 25705		Dropoff or mail	Huntington	WV
1467	Piedmont Columbus Regional John B. Amos Cancer Center	\N	\N	\N	\N	32.4808354	-84.9867808	1831 5th Ave Columbus, GA 31904		Mail	Columbus	GA
1468	Carrollton Regional Medical Center	\N	\N	\N	\N	33.0283096	-96.8863443	4343 N. Josey Lane Carrollton, TX 75010	Yes	Attn: Mary Lau/Angie Marshall OR Emergency Department 4343 N. Josey Lane Carrollton, TX 75010 	Carrollton	TX
1469	LI Urgent Care	\N	\N	\N	\N	40.7038085	-73.3434443	403 Little E Neck Rd West Babylon, NY 11704	Unsure	Delivery, UPS pick-up	West Babylon	NY
1470	Fort Washington Medical Center	\N	\N	\N	\N	38.7285124	-76.9925925	11711 Livingston Rd Fort Washington, MD 20744	Unsure	central supply	Fort Washington	MD
1471	Millard Fillmore Suburban Hospital	\N	\N	\N	\N	42.9940125	-78.7301425	1540 Maple Rd Williamsville, NY 14221			Buffalo	NY
1472	Eisenhower Medical Center	\N	\N	\N	\N	33.7634956	-116.4054165	39000 Bob Hope Dr Rancho Mirage, CA 92270	Unsure	Please contact me via email dr.naila.javaid@gmail.com or phone (760) 835-3753	Rancho Mirage	CA
1473	Frye Regional Medical Center	\N	\N	\N	\N	35.7375114	-81.3370193	420 N Center St HIckory, NC 28601	Unsure	Mail typically, but willing to consider other options depending on distance	Hickory	NC
1474	St. Luke's Hospital	\N	\N	\N	\N	38.6522289	-90.5028713	232 S Woods Mill Rd Chesterfield, MO 63017	Yes	Curbside	Chesterfield	MO
1475	Morris Hospital	\N	\N	\N	\N	41.3699958	-88.4266323	150 W High St Morris, IL 60450		Direct Shipments, Courier, Direct Pick Up 	Morris	IL
1476	Memorial Hermann Hospital	\N	\N	\N	\N	29.7140772	-95.3951404	6411 Fannin St Houston, TX 77030	Unsure	Literally anything. I'll come to you if needed. We're the tracheostomy team at MHH TMC and don't have access to proper PPE.	Houston	TX
1477	Saint Clare's Dover Hospital	\N	\N	\N	\N	40.8848548	-74.5759522	400 W Blackwell St Dover, NJ 07801	Unsure	Drop off outside ER walk-in doors in a box, clearly marked as "donation"	Dover	NJ
1478	Broken To Better Urgent Care	\N	\N	\N	\N	34.94503	-81.0271354	735 Cherry Rd #3121 Rock Hill, SC 29732	Unsure	Mail or drive and pick up.	Rock Hill	SC
1479	Strive Express Care	\N	\N	\N	\N	31.6330435	-94.6412414	3205 N University Dr Suite E Nacogdoches, TX 75965		USPS mail	Nacogdoches	TX
1480	Terrell Clinic	\N	\N	\N	\N	36.4129998	-89.0508641	701 E Reelfoot Ave #100 Union City, TN 38261	Unsure		Union City	TN
1481	Slidell Memorial Hospital	\N	\N	\N	\N	30.2837269	-89.770201	1001 Gause Blvd Slidell, LA 70458	Unsure		Slidell	LA
1482	Good Samaritan Regional Medical Center	\N	\N	\N	\N	44.6034591	-123.2522802	3600 NW Samaritan Dr Corvallis, OR 97330	Unsure	Whatever works	Corvallis	OR
1483	St. Mary Medical Center	\N	\N	\N	\N	40.2025856	-74.9251811	1201 Langhorne-Newtown Road Langhorne, PA 19047		Conference room drop off	Langhorne	PA
1484	Ann & Robert H. Lurie Children's Hospital of Chicago	\N	\N	\N	\N	41.8962222	-87.6218345	225 E Chicago Ave Chicago, IL 60611	Unsure		Chicago	IL
1527	ConvenientMD Urgent Care	\N	\N	\N	\N	43.5088394	-70.435556	506 Main St Saco, ME 04072	Unsure	Delivery	Saco	ME
1485	Montefiore Medical Center, Emergency Department	\N	\N	\N	\N	40.8799745	-73.8782466	3411 Wayne Ave, Fl 6 The Bronx, NY 10467	Unknown	Please email asanglim@montefiore.org or call 646-477-5635	New York - Bronx	NY
1486	Primary Children's Hospital	\N	\N	\N	\N	40.7717633	-111.8389786	100 Mario Capecchi Dr Salt Lake City, UT 84113	Unsure		Salt Lake City	UT
1487	Dellridge Health & Rehabilitation Center	\N	\N	\N	\N	40.9547844	-74.0570924	532 N Farview Avenue Paramus, NJ 07652	Yes	Mail to: ATTN: Swapna Swadhin, RN	Paramus 	NJ
1488	HSHS St. Joseph's Hospital	\N	\N	\N	\N	38.7546339	-89.6675851	12866 Troxler Ave Highland, IL 62249	Unsure		Highland	IL
1489	Piedmont Henry Hospital	\N	\N	\N	\N	33.510351	-84.2271743	1133 Eagles Landing Parkway Stockbridge, GA 30281	Unsure		Stockbridge	GA
1490	Kaiser Permanente - Manhattan Beach	\N	\N	\N	\N	33.8759718	-118.3956055	400 S Sepulveda Blvd Manhattan Beach, CA 90266	Unsure	Drop off, mail, I can pick up anywhere in Los Angeles	Manhattan Beach	CA
1491	Kaiser Permanente - South San Francisco	\N	\N	\N	\N	37.6587814	-122.4385597	1200 El Camino Real South San Francisco, 94080	Yes	Emergency Department  ATTN: Ginny Chu  Ginny.C.Chu@kp.org	South San Francisco	CA
1492	URGIMED Urgent Care	\N	\N	\N	\N	40.8642941	-74.5604711	400 Route 10 West Randolph, New Jersey 07869	Unsure	UPS/FedEx /Postal delivery 	Randolph	NJ
1493	Liberty Primary Care	\N	\N	\N	\N	40.0056235	-74.1493654	1749 Hooper Ave Suite 203 Toms River, NJ 08753	Unsure	Mail	Toms River	NJ
1494	Henry Ford Hospital	\N	\N	\N	\N	42.3678016	-83.0854662	2799 W Grand Blvd Detroit, MI 48202	Unsure	Mail or drop off	Detroit	MI
1495	Saint Mary's Hospital	\N	\N	\N	\N	42.7429592	-73.6761879	1300 Massachusetts Ave Troy, NY 12180	Unsure		Troy	NY
1496	Adventist HealthCare Urgent Care	\N	\N	\N	\N	39.0785175	-77.1405619	750 Rockville Pike Rockville, MD 20852	Unsure	Mail/Dropoff open 12-12	Rockville	MD
1497	Memorial Sloan Kettering Cancer Center	\N	\N	\N	\N	40.7663474	-73.95635	1275 York Ave New York, NY 10065	Unknown	Please contact Larisa Storozhenko at storozhl@mskcc.org or 516-330-6123	New York - Manhattan	NY
1498	LG Pediatrics	\N	\N	\N	\N	37.2502088	-121.9542581	15000 Los Gatos Blvd, #4 Los Gatos, CA 95032	No	Please knock on door between 9am to 5pm	Los Gatos	CA
1499	VA Loma Linda Healthcare System	\N	\N	\N	\N	34.0502196	-117.2521291	11201 Benton St Loma Linda, CA 92354	Yes	Drop off at Emergency Room	Loma Linda	CA
1500	Urgent Care 360	\N	\N	\N	\N	34.7510596	-92.3948624	300 S Shackleford Rd Little Rock, AR 72211	Unsure	Mail or Drop off	Little Rock	AR
1501	I & O Medical Center	\N	\N	\N	\N	37.0109075	-76.4034331	593 Aberdeen Rd Hampton, VA 23661	Unsure	Drop off or pick up	Hampton	VA
1502	Baylor Scott & White Medical Center - McKinney	\N	\N	\N	\N	33.221056	-96.682481	5252 W University Dr  Highway 380 at Lake Forest Dr McKinney, TX 75071	Unsure	Yes	McKinney	TX
1503	Eden Medical Center	\N	\N	\N	\N	37.6982685	-122.0903131	20103 Lake Chabot Rd Castro Valley, CA 94546	Yes	Drop off at front lobby. Daytime preferred, evening okay but security will have to call in for access.	Castro Valley	CA
1504	Preferred Medical Group	\N	\N	\N	\N	32.4984868	-85.0415064	3700 S Railroad St Suite A Phenix City, AL 36867	Unsure	In person or by mail	Phenix City	AL
1505	Rockwall Urgent Care	\N	\N	\N	\N	32.9004316	-96.4520916	810 E Ralph Hall Pkwy Rockwall, TX 75032	Unsure	Delivery, local pick up, or mail	Rockwall	TX
1506	East Elm Pediatrics	\N	\N	\N	\N	42.4468083	-73.2456893	426 East St Pittsfield, MA 01201	Unsure	Any. Will travel to pick up.	Pittsfield	MA
1507	ConvenientMD Urgent Care	\N	\N	\N	\N	42.9237433	-72.2903647	351 Winchester St Keene, NH 03431	Unsure		Keene	NH
1508	Brookdale Hospital Medical Center	\N	\N	\N	\N	40.6549132	-73.9126971	1 Brookdale Plaza Brooklyn, NY 11212	Unsure	In person, delivery, mail, anything! Can pickup also. (917) 251-4613. 	New York - Brooklyn	NY
1509	Flower Mound Family Physicians	\N	\N	\N	\N	33.0289866	-97.0690459	2609 Sagebrush Dr Ste 101 Flower Mound, TX 75028	Unsure	Deliver to office or through the mail	Flower Mound	TX
1510	Women & Infants Hospital	\N	\N	\N	\N	41.8108357	-71.4122641	101 Dudley St Providence, RI 02905	Unsure	Pick up/Drop off	Providence	RI
1511	Los Alamitos Medical Center	\N	\N	\N	\N	33.8035307	-118.064817	3851 Katella Ave Los Alamitos, CA 90720	No	Please drop off to ER or lobby, Attn: Dr Lily Mulroy 	Los Alamitos 	CA
1512	Kaiser Permanente - Anaheim Kraemer	\N	\N	\N	\N	33.8531351	-117.8440556	3440 E La Palma Ave Anaheim, CA 92806	No	Email jayliz2015@gmail.com to coordinate. Only brand new in package only.	Anaheim 	CA
1513	Hollywood Presbyterian Medical Center	\N	\N	\N	\N	34.0963187	-118.2903056	1300 N Vermont Ave Los Angeles, CA 90027	Yes	Drop off at Fountain and Vermont Ave.	Los Angeles	CA
1514	Mt. Sinai Hospital	\N	\N	\N	\N	41.8608329	-87.6945942	1500 S Fairfield Ave Chicago, IL 60608	Unsure	Mail	Chicago	IL
1515	Statcare Urgent & Walk-In Medical Care	\N	\N	\N	\N	40.7623035	-73.5293198	232 W Old Country Road Hicksville, NY 11801	Unsure	Delivery, we can also pick up on Long Island or the 5 boroughs (We have 9 locations)	Hicksville	NY
1516	Salem Health Medical Clinic - Independence	\N	\N	\N	\N	44.8515298	-123.2072212	1430 Monmouth St Independence, OR 97351	Unsure	Delivery	Independence	OR
1517	Action Ambulance	\N	\N	\N	\N	42.4436486	-73.2603645	121 West Housatonic Street Pittsfield, MA 01201	Unsure	Mail to: 121 West Housatonic Street, Pittsfield, MA 01201	Pittsfield	MA
1518	Knox Community Hospital	\N	\N	\N	\N	40.3983272	-82.4477769	1330 Coshocton Ave Mt Vernon, OH 43050	Unsure		Mt Vernon	OH
1519	Easy Access Urgent Care	\N	\N	\N	\N	32.6934073	-115.4951032	222 E Cole Blvd Calexico, CA 92231	Unsure	Mail	Calexico	CA
1520	Mercy Hospital & Medical Center	\N	\N	\N	\N	41.8464579	-87.623414	2525 Michigan Ave Chicago, IL 60616	Unsure	Please call cell to discuss: 773-343-8813	Chicago	IL
1521	Malta Med Emergent Care	\N	\N	\N	\N	42.9738332	-73.8054215	6 Medical Park Dr Malta, NY 12020	Unsure	Mail	Malta	NY
1522	ConvenientMD Urgent Care	\N	\N	\N	\N	42.0281344	-71.3104813	86 Taunton St Plainville, MA 02762	Unsure	Drop off or mail	Plainville	MA
1523	ConvenientMD Urgent Care	\N	\N	\N	\N	43.0555116	-70.7689857	599 Lafayette Rd Portsmouth, NH 03801	Unsure		Portsmouth	NH
1524	ChristianaCare Wilmington Hospital	\N	\N	\N	\N	39.7511805	-75.5499168	501 W 14th St Wilmington, DE 19801	Unsure	Mail or drop off	Wilmington	DE
1525	Acadiana Urgent Care Center	\N	\N	\N	\N	30.1465031	-92.0371789	4906 Ambassador Caffery Pkwy, Building C #350 Lafayette, LA 70508	Unsure	Pick up, delivery to us, call to make arrangements	Lafayette	LA
1526	AppleCare Urgent Care	\N	\N	\N	\N	31.9829584	-81.1758048	14089 Abercorn St Savannah, GA 31419	Unsure	Delivery or pick up.	Savannah	GA
1528	Ormond Beach Urgent Care	\N	\N	\N	\N	29.2768261	-81.0831481	126 S Nova Rd Ormond Beach, FL 32174	Unsure		Ormond Beach	FL
1529	Community Options inc 	\N	\N	\N	\N	40.9549426	-74.2110999	506 Hamburg Turnpike Suite 105-107 Wayne, NJ 07470	Yes		Wayne 	NJ
1530	Seven Hills Women's Health Centers	\N	\N	\N	\N	39.009287	-84.629239	6901 Burlington Pike Florence, KY 41042	Unsure	Deliver to office or pick up	Florence	KY
1531	Newberg Urgent Care & Medical Center	\N	\N	\N	\N	45.3032561	-122.9498794	2880 Hayes St Newberg, OR 97132	Unsure	Check with facility	Newberg	OR
1532	Penn Care for Women 	\N	\N	\N	\N	39.9478512	-75.1546211	800 Walnut St 12th Floor Philadelphia, PA 19107	Yes	Please bring to 12th floor front desk 	Philadelphia	PA
1533	SunCrest Home Health	\N	\N	\N	\N	36.2450811	-86.7507379	3443 Dickerson Pike Suite 390 Nashville, TN 37207	Unsure	Drop off, pickup also available	Nashville	TN
1534	Wahiawa General Hospital	\N	\N	\N	\N	21.4990365	-158.0262249	128 Lehua St Wahiawa, HI 96786	Unsure	I will pick it up if needed, can drop off at front lobby	Wahiawa	HI
1535	Med Stop Urgent Care	\N	\N	\N	\N	35.2612831	-120.6762991	283 Madonna Rd San Luis Obispo, CA 93405	Unsure	Mail or drop off	San Luis Obispo	CA
1536	Primary Urgent Care	\N	\N	\N	\N	43.087937	-75.2602567	1904 Genesee St Utica, NY 13502	Unsure		Utica	NY
1537	Front Range Clinic	\N	\N	\N	\N	40.5748591	-105.0567559	1120 E. Elizabeth St. Building G, Suite 2 Fort Collins, CO 80524	Unsure		Fort Collins	CO
1538	Eastern Shore Urgent Care	\N	\N	\N	\N	30.6577148	-87.8513896	29710 Urgent Care Dr Daphne, AL 36526	Unsure	Drop off, mail, UPS, etc	Daphne	AL
1539	St Catherine of Siena Medical Center	\N	\N	\N	\N	40.8679327	-73.2231155	50 Route 25A Smithtown, NY 11787	Yes	Attn: Sarah Swenk Tele 2N	Smithtown	NY
1540	ConvenientMD Urgent Care	\N	\N	\N	\N	42.9418074	-71.5185627	3 Nashua Rd Bedford, NH 03110	Unsure	Any	Bedford	NH
1541	ConvenientMD Urgent Care	\N	\N	\N	\N	42.1146632	-71.4612433	245 Hartford Ave Bellingham, MA 02019	Unsure	Mail	Bellingham	MA
1542	North Shore University Hospital	\N	\N	\N	\N	40.7741973	-73.7006222	300 Community Dr Manhasset, NY 11030	Unsure	Drop off at hospital	Manhasset	NY
1543	UPMC Magee-Women's Hospital - Anesthesia Department	\N	\N	\N	\N	40.4778266	-79.9583085	4840 Harrison St, Apartment 210 Pittsburgh, PA 15201	Unsure	Residential address. FedEx, USPS, UPS. I was the recipient of a small bowel transplant in June of 2019 and am on immunosuppressants. During this time, I work as a nurse anesthetist in the OR, and we have not been given N95 masks.	Pittsburgh	PA
1544	Night Lite Pediatrics Urgent Care John Young FL	\N	\N	\N	\N	28.4734397	-81.4181542	5900 S John Young Pkwy Orlando, FL 32839	Unsure	Mail or pick up, we have 13 locations	Orlando	FL
1545	Kaleida Health Buffalo General Hospital	\N	\N	\N	\N	42.9006514	-78.8656561	100 High St Buffalo, NY 14203	Unsure	Contact via email: CoronaVirusCommandCenter@KaleidaHealth.org	Buffalo	NY
1546	Cabell Huntington Hospital	\N	\N	\N	\N	38.409587	-82.427083	1340 Hal Greer Blvd Huntington, WV 25701	Yes	Keshia Bowen , Edwards Comprehensive Cancer Center,1400 Hal Greer Blvd, Huntington, WV 25701.  304-399-6521	Huntington	WV
1547	AFC Urgent Care	\N	\N	\N	\N	40.9677932	-74.073201	67 E Ridgewood Ave Paramus, NJ 07652	Unused	pick up	Paramus	NJ
1548	ConvenientMD Urgent Care	\N	\N	\N	\N	42.3020867	-71.4048193	236 Cochituate Rd Framingham, MA 01701	Unsure	Delivery or Pick Up	Framingham	MA
1549	ConvenientMD Urgent Care	\N	\N	\N	\N	42.8374175	-71.4963966	2 Dobson Way Merrimack, NH 03054	Unsure	Any- Mail or pickup	Merrimack	NH
1550	HV Family Medicine - Drs. Linden, Linden, Swanholm, and Tilley	\N	\N	\N	\N	33.0724326	-97.0586206	2300 Highland Village Rd # 600 Highland Village, TX 75077	Unsure	mail or local pickup	Highland Village	TX
1551	Robert Wood Johnson University Hospital Hamilton	\N	\N	\N	\N	40.2160069	-74.6716971	1 Hamilton Health Pl Hamilton Township, NJ 08690	Unsure	Delivery please	Hamilton Township	NJ
1552	Mercy Health - St. Vincent Medical Center	\N	\N	\N	\N	41.6686144	-83.5429045	2213 Cherry St Toledo, OH 43608			Toledo	OH
1553	Staten Island Hospital 	\N	\N	\N	\N	40.388332	-74.2830821	28 Surrey Dr Old Bridge, NJ 08857\r 	Yes	Curbside 	Old bridge 	NJ
1554	Medical Associates Clinic	\N	\N	\N	\N	42.4959459	-90.7368716	1500 Associates Dr Dubuque, IA 52002	Unsure		Dubuque	IA
1555	ConvenientMD Urgent Care	\N	\N	\N	\N	43.664129	-70.2610687	191 Marginal Way Suite A Portland, ME 04101	Unsure	Mail or drop off	Portland	ME
1556	LAC+USC Emergency Department	\N	\N	\N	\N	34.0596114	-118.2081288	2051 Marengo St Los Angeles, CA 90033	Yes	ATTN: Angelica Balmes ER nurse (please drop off at emergency department) email: xangelica_silveox@yahoo.com  |  Donateyourppe@gmail.com	Los Angeles	CA
1557	Methodist Hospital	\N	\N	\N	\N	44.9306363	-93.3621119	6500 Excelsior Blvd St Louis Park, MN 55426	Unsure	Mail or drop off	St Louis Park	MN
1558	Destiny Home Health and Hospice Care, Inc	\N	\N	\N	\N	33.9412373	-117.2248262	12364 Perris Blvd Moreno Valley, CA 92557	No	May drop off to front desk, or mail to: PO Box 1000 Moreno Valley, CA 92556	Moreno Valley	CA
1559	Providence St Peter Hospital	\N	\N	\N	\N	47.0529957	-122.8479904	413 Lilly Rd NE Olympia, WA 98506	No	Drop off at main entrance	Olympia	WA
1560	Dr. Robert Ezell Southwest Memorial Herman	\N	\N	\N	\N	29.693489	-95.5214263	7777 Southwest Fwy # 328 Houston, TX 77074	Unsure	Drop off- Pick Up ...	Houston	TX
1561	Erlanger Express Care	\N	\N	\N	\N	35.0207533	-85.161208	 1635 Gunbarrel Rd Suite 110  Chattanooga, TN 37421	Unsure		Chattanooga	TN
1562	MacNeal Hospital Emergency Department	\N	\N	\N	\N	41.8321425	-87.7917155	3249 S Oak Park Ave, Berwyn, IL 60402	Unsure	Email me first and then we will determine method	Berwyn	IL
1563	ConvenientMD Urgent Care	\N	\N	\N	\N	44.8202952	-68.7760044	543 Broadway Bangor, ME 04401	Unsure	Flexible	Bangor	ME
1564	ConvenientMD Urgent Care	\N	\N	\N	\N	42.1710988	-70.9555947	987 Main St Weymouth, MA 02190	Unsure	Pick up, drop off, or mail in ATTN:Practice Manager	Weymouth	MA
1565	Mount Sinai Queens	\N	\N	\N	\N	40.7683849	-73.9248953	25-10 30th Ave Queens, NY 11102	Unsure	Delivery to hospital	New York - Queens	NY
1566	Physicians Immediate Care	\N	\N	\N	\N	42.2675026	-88.9880117	6595 E State St Rockford, IL 61108	Unsure		Rockford	IL
1567	ConvenientMD Urgent Care	\N	\N	\N	\N	42.8073225	-71.2628154	125 Indian Rock Rd Windham, NH 03087	Unsure	Mail or Pick-Up	Windham	NH
1568	NewYork-Presbyterian Queens	\N	\N	\N	\N	40.7471198	-73.8253655	56-45 Main St Flushing, NY 11355	Yes	TBD	New York - Queens	NY
1569	MedStar Franklin Square Medical Center	\N	\N	\N	\N	39.3510975	-76.4778621	9000 Franklin Square Dr Baltimore, MD 21237	Unsure	Mail or pickup	Baltimore	MD
1762	Infinity Rehab	\N	\N	\N	\N	45.3386863	-122.7681029	25117 SW Parkway Avenue, Suite D Wilsonville, OR 97070	Yes		Wilsonville	OR
1570	Jersey Shore University Medical Center	\N	\N	\N	\N	40.2091347	-74.041212	1945 NJ-33 Neptune City, NJ 07753	No	Drive to ER entrance, front is closed to visitors.	Neptune	NJ
1571	Island Doctor	\N	\N	\N	\N	25.9548707	-81.7244154	950 N Collier Blvd # 308 Marco Island, FL 34145	Unsure		Marco Island	FL
1572	The Woman's Health Pavillion	\N	\N	\N	\N	40.7621742	-73.5867873	372 Post Ave Westbury, NY 11590	Unsure	Pick up or mail	Westbury	NY
1573	ConvenientMD Urgent Care	\N	\N	\N	\N	43.220959	-70.8871802	14 Webb Pl Dover, NH 03820	Unsure		Dover	NH
1574	University of South Florida Child Protection Team	\N	\N	\N	\N	28.0638505	-82.4244484	12901 Bruce B. Downs Blvd. Tampa, FL 33612	Unsure	Contact Carol Lilly at cmlilly@usf.edu or at 813-841-7376	Tampa	FL
1575	The Children's Hospital at OU Medicine	\N	\N	\N	\N	35.4812917	-97.4977382	1200 Children's Ave Oklahoma City, OK 73104	Unsure		Oklahoma City	OK
1576	Ocean Medical Center	\N	\N	\N	\N	40.0770273	-74.13152	425 Jack Martin Blvd Brick Township, NJ 08724	Unsure	Any method	Brick Township	NJ
1577	RiteCare Urgent Care Medical Center	\N	\N	\N	\N	25.8670016	-80.3018542	915 W 49th St Hialeah, FL 33012	Unsure		Hialeah	FL
1578	Winfield Fire Protection District	\N	\N	\N	\N	41.8714845	-88.1591369	27W530 High Lake Rd Winfield, IL 60190	Unsure	Any	Winfield	IL
1579	ConvenientMD Urgent Care	\N	\N	\N	\N	42.9919287	-70.9282552	1 Portsmouth Ave Stratham, NH 03885	Unsure	Pick up, drop off or by mail	Stratham	NH
1580	VCU Medical Center Main Hospital	\N	\N	\N	\N	37.540031	-77.4296788	1250 E Marshall St Richmond, VA 23298	Unsure		Richmond	VA
1581	CareWell Urgent Care	\N	\N	\N	\N	42.2133219	-71.7976279	348 Greenwood St Worcester, MA 01607	Unsure	Pick up or drop off. Anyway possible	Worcester	MA
1582	SSM Health St. Anthony Shawnee Hospital	\N	\N	\N	\N	35.3628951	-96.9375193	1102 W. MacArthur St Shawnee, OK 74804	Yes	Bring to ER, Attn: Terri Hudlow 	Shawnee	OK
1583	Douglas T Jacobson State VA Nursing Home	\N	\N	\N	\N	27.0270953	-82.0976853	21281 Grayton Terrace Port Charlotte, FL 33954	Unsure	Call: 941 441 5884	Port Charlotte	FL
1584	ConvenientMD Urgent Care	\N	\N	\N	\N	43.5143135	-71.4900569	77 Daniel Webster Highway Belmont, NH 03220	Unsure		Belmont	NH
1585	St. Barnabas Hospital	\N	\N	\N	\N	40.8536318	-73.890141	4422 3rd Ave (Emergency Room) The Bronx, NY 10457 	Unknown	Drop off in triage area attn: Charge Nurse	New York - Bronx	NY
1586	St. Agnes Hospital	\N	\N	\N	\N	39.2716024	-76.6737365	900 S Caton Ave Baltimore, MD 21229	Unsure	Pick up	Baltimore	MD
1587	Rooks County Health Center	\N	\N	\N	\N	39.2470434	-99.2961252	1210 N Washington St Plainville, KS 67663	Unsure	Mail	Plainville	KS
1588	Mid-South Urgent Care	\N	\N	\N	\N	35.1580947	-89.7259018	1204 N Houston Levee Rd #115 Cordova, TN 38018	Unsure	Drop off or mail	Cordova	TN
1589	Memorial Hospital Pembroke	\N	\N	\N	\N	26.0296956	-80.2455491	7800 Sheridan St Pembroke Pines, FL 33024	Unsure	Mail/In-person	Pembroke Pines	FL
1590	Providence Centralia Hospital	\N	\N	\N	\N	46.7123113	-122.9855393	914 S Scheuber Rd Centralia, WA 98531	No	Drop off at emergency department	Centralia	WA
1591	ConvenientMD Urgent Care	\N	\N	\N	\N	43.6769804	-70.370959	950 Main St Westbrook, ME 04092	Unsure	Delivery or can pick up	Westbrook	ME
1592	South Shore Health	\N	\N	\N	\N	42.1758242	-70.9541227	55 Fogg Rd Weymouth, MA 02190		Drop off at the McKim Lobby Main Entrance	South Weymouth	MA
1593	Harrison Springs Health Campus	\N	\N	\N	\N	38.237712	-86.144413	871 Pacer Dr NW Corydon, IN 47112	Unsure	Please contact Lori Hess 812-738-0317	Corydon	IN
1594	University Orthopaedics	\N	\N	\N	\N	42.9266256	-78.831964	462 Grider Street Buffalo, NY 14228	Yes	Drop off at Erie County Medical Center Attn: Karen Taylor PA-C, UBortho #2	Buffalo	NY
1595	Virginia Cancer Institute	\N	\N	\N	\N	37.6030188	-77.5207442	6605 W Broad St Suite A Richmond, VA 23230	Unsure	Drop off, Mail, whatever works	Richmond	VA
1596	Northern Navajo Medical Center	\N	\N	\N	\N	36.8052353	-108.6914076	PO Box 160 Highway 491 North Shiprock, NM 87420	Unsure	Attn:Dr. Patrick Butsch	Shiprock	NM
1597	Ellis Hospital	\N	\N	\N	\N	42.8201212	-73.9165154	1101 Nott St Schenectady, NY 12308	Unsure	Bring to entrance via garage. Mail delivery, We can also do pick up if needed.	Schenectady	NY
1598	North Georgia Hospital System Barrow Co. Campus	\N	\N	\N	\N	34.0081396	-83.7077726	316 N Broad St, c/o Laboratory Dept Winder, GA 30680	Unsure	Ship to my home or facility is fine..just as long as the laboratory dept receives them. Thank you! Thank you! Thank you!	Winder	GA
1599	Chestnut Hill Lodge Nursing Home	\N	\N	\N	\N	40.0847247	-75.2077483	8833 Stenton Ave Glenside, PA 19038	Unsure	Mail/Drop-off	Glenside	PA
1600	Clayton County Fire & Emergency Services	\N	\N	\N	\N	33.5417386	-84.4157054	7810 GA-85 Riverdale, GA 30274	Unsure		Riverdale	GA
1601	Oak Grove Care Center	\N	\N	\N	\N	44.9642989	-93.265598	1822 Park Ave # 1 Minneapolis, MN 55404	Unsure		Minneapolis	MN
1602	Willow Terrace Nursing and Rehabilitation	\N	\N	\N	\N	40.0396539	-75.1599192	1 Penn Blvd Philadelphia, PA 19144	Unsure		Philadelphia	PA
1603	Emergency One Urgent Care Center	\N	\N	\N	\N	41.9362328	-74.0273573	40 Hurley Ave Kingston, NY 12401	Unsure	Ship to address	Kingston	NY
1604	The Forum at Knightsbridge	\N	\N	\N	\N	40.0533062	-83.0407207	4590 Knightsbridge Blvd Columbus, OH 43214	Unsure	drop off or mailed	Columbus	OH
1605	Stroger Cook County Hospital	\N	\N	\N	\N	41.8727494	-87.6757854	1969 Ogden Ave Chicago, IL 60612	Unsure	Ship to address, Attn: Cardiology	Chicago	IL
1606	PhysicianOne Urgent Care	\N	\N	\N	\N	41.3276576	-73.0846309	78 Pershing Dr Derby, CT 06418	Unsure	Will arrange whatever method necessary	Derby	CT
1607	New York Community Hospital	\N	\N	\N	\N	40.6137918	-73.9483509	2525 Kings Hwy Brooklyn NY 11229	Yes	Please look for Donna Fitzmartin Director	New York - Brooklyn	NY
1609	ConvenientMD Urgent Care	\N	\N	\N	\N	43.2082473	-71.536098	8 Loudon Rd Concord, NH 03301	Unsure	In person, By mail	Concord	NH
1610	St. Joseph Hospital Orange 	\N	\N	\N	\N	33.7820441	-117.8654245	1100 W Stewart Dr Orange, CA 92868	No	Mail to: Central Services - Donations 	Orange 	CA
1611	Cooper Dentistry 	\N	\N	\N	\N	34.009484	-81.0193256	1415 Pine St Columbia, SC 29204	No		Columbia	SC
1612	Barlow Respiratory Hospital	\N	\N	\N	\N	34.0757094	-118.2481853	2000 Stadium Way Los Angeles, CA 90026	Unsure		Los Angeles	CA
1613	Vestal Volunteer Emergency Squad 	\N	\N	\N	\N	42.0957712	-76.0220396	324 Myrtle St Vestal, NY 13850	Yes		Vestal	NY
1614	Kingsbrook Jewish Medical Center	\N	\N	\N	\N	40.6593686	-73.93325	585 Schenectady Avenue Brooklyn, NY 11203	No	Bring to Briger 3 Unit Manager 	New York - Brooklyn	NY
1615	Horizon Home Care	\N	\N	\N	\N	46.860182	-89.2996196	1001 Giesau Dr. Ontonagon, MI 49953	No		Ontonagon	MI
1616	PACE of RI	\N	\N	\N	\N	41.3758556	-71.8304032	5 Union St Westerly, RI 02891	Yes	Doors open M-W-F	Westerly	RI
1617	HopeHealth	\N	\N	\N	\N	41.8498421	-71.4020129	1085 N Main St Providence, RI 02904	No	Items can be left at front door, contact is June Steele	Providence	RI
1618	RIH/ Hasbro/ Miriam Hospital	\N	\N	\N	\N	41.8115308	-71.3866924	179 2nd St East Providence, RI 02914	Yes	Place on or under the rocking chair at the front door.	East Providence 	RI
1619	Brownsburg Health Care Center	\N	\N	\N	\N	39.8301557	-86.3831271	1010 Hornaday Road Brownsburg, IN 46112	No	Drop off at: Maintenance Garage	Brownsburg	IN
1620	SUNY Downstate Medical Center	\N	\N	\N	\N	40.6550034	-73.9442519	445 Lenox Avenue Brooklyn, NY 11203	No	Please contact Daniel Graves (daniel.graves@downstate.edu): Central Supply 	New York - Brooklyn	NY
1621	Friendship Village	\N	\N	\N	\N	42.0290212	-88.0861637	350 West Schaumburg Road Schaumburg, IL 60194	Yes	Please put my name on it. Audrey Owens	Schaumburg	IL
1622	Larkin Community Hospital Palm Springs Campus	\N	\N	\N	\N	25.8690179	-80.3128235	1475 W 49th Pl Hialeah, FL 33012	Yes	ATTN: INTERNAL MEDICINE RESIDENTS	Hialeah	FL
1623	Katy Center for Oral and Facial Surgery	\N	\N	\N	\N	29.7396866	-95.7773075	23922 Cinco Village Center Blvd #111 Katy, TX 77494	Yes	Please call office at dropoff for secure delivery 281-392-1130	Katy	TX
1624	Main Line Ear, Nose, and Throat Doctors	\N	\N	\N	\N	39.9880032	-75.2634923	100 East Lancaster Ave, Suite 650 Wynnewood, PA 19096	Yes	Bring to office, drop off outside	Wynnewood	PA
1625	ConvenientMD	\N	\N	\N	\N	42.1077525	-70.7645629	296 Old Oak St Pembroke, MA 02359	Yes	Curbside or mail with Attn: Lauren Riley	Pembroke	MA
1626	AppleCare Immediate Care	\N	\N	\N	\N	31.5101475	-82.8613281	903 W Ward Street Suite A  Douglas, GA 31533	Yes	Inside or mail to clinic	Douglas 	GA
1627	Jersey Coast Nephrology 	\N	\N	\N	\N	40.0804642	-74.1418421	1541 NJ-88 West, Suite A Brick Township, NJ 08724	Yes	Attn : Katy Samuel	Brick	NJ
1628	Morgan Hill Imaging	\N	\N	\N	\N	37.1201347	-121.6294686	16130 Juan Hernandez Drive, Suite 106 Morgan Hill, CA 95037	Yes	We will accept curbside deliveries , you can call us at 408.465.2555 or by mail.  Thank you!! :))	Morgan Hill	CA
1629	Mayo Clinic	\N	\N	\N	\N	44.0043408	-92.4977879	2210 Baihly Vista Ln SW Rochester, MN 55902 	Prefer a box of masks; no open box if possible. 	Residential. Please leave at mailbox or front door.	Rochester	MN
1630	Rochester Regional Urgent Care	\N	\N	\N	\N	43.0965235	-77.4427407	10 Clinton Pl Fairport, NY 14450	Yes	Mail to Home Address	Fairport	NY
1631	Sentara Healthcare 	\N	\N	\N	\N	36.8504408	-76.1971105	6015 Poplar Hall Dr Norfolk, VA 23502	Yes	Please drop off at front entrance of this building to donate and system will redistribute to hospitals. Or you can drop off at any Sentara hospital.	Norfolk	VA
1632	Fair Acres Geriatric Center	\N	\N	\N	\N	39.9178581	-75.4430376	340 N. Middletown Rd, Media, PA 19063	Yes	Att. Lisa Faraglia Scheduling Dept building 4	Lima  	PA
1633	Trappe Fire Co. EMS	\N	\N	\N	\N	40.1981576	-75.4771981	20 W. 5th Ave. Trappe, PA 19426	Yes	Drop off at Front door and ring doorbell.	Trappe	PA
1634	Dane County Emergency Managment (EMS)	\N	\N	\N	\N	43.0719117	-89.3834434	115 W. Doty St, Rm 2107 Madison, WI 53703	Yes	Contact Courtney at dcems@countyofdane.com or 608-266-5374 to coordinate	Madison	WI
1635	Community Options Inc	\N	\N	\N	\N	39.9532818	-74.9476135	212 Route 38 West, Suite 200 Moorestown, NJ 08057	Yes	20 Group Homes caring for 70 individuals with physical/intellectual disabilities plus our 24/7 staff  Mail packages, attn: Kathryn Bryant Drop off: we are located above the flower shop to the left of the building. 	Moorestown	NJ
1636	Banner Fort Collins Medical Center	\N	\N	\N	\N	40.52139	-105.0085323	4700 Lady Moon Dr Fort Collins, CO 80528	Yes	ER entrance	Fort Collins	CO
1637	Royal Ambulance 	\N	\N	\N	\N	37.6977777	-122.1648039	14472 Wicks Blvd San Leandro, CA 94577	Yes	We are open 24/7	San Leandro	CA
1638	Mercer County Community Options Inc	\N	\N	\N	\N	40.2507432	-74.7416587	2025 Princeton Pike  Lawrence Township, NJ 08648	Yes	Front door	Lawrence 	NJ
1639	Community Options, Inc.	\N	\N	\N	\N	40.5846618	-75.5343572	3710 Broadway, Suite 2 Allentown, PA, 18104	Yes	Drop off at front office (if during normal business hours) or at front of building ATTN: Executive Director	Allentown	PA
1640	Acadian Ambulance Company	\N	\N	\N	\N	30.2338777	-92.0203553	300 Hopkins Street Lafayette, LA 70501	Yes	We are a receiving and distribution warehouse equipped to accept deliveries from 8-5 M-F or as needed during this time of need	Lafayette 	LA
1641	Mt. Hood Hospice	\N	\N	\N	\N	45.3964585	-122.260997	39065 Pioneer Blvd #103 Sandy, OR 97055	Yes	Doors are locked. Call 503-668-5545 for curbside dropoff.	Sandy	OR
1642	Community Options Inc	\N	\N	\N	\N	35.1632984	-101.921972	7470 Golden Pond Place Suite 100 Amarillo, TX 79121	Yes		Amarillo	TX
1643	St. Mary's Health Care System	\N	\N	\N	\N	33.9472661	-83.4058492	1230 Baxter St Athens, GA 30606	No	Attn: Bradford Burgess	Athens	GA
1644	Northeast Louisiana Cancer Institute	\N	\N	\N	\N	32.4994895	-92.1122636	411 Calypso St Monroe, LA 71201	Yes	First floor; attention James Adams	Monroe	LA
1645	Palo Alto Medical Foundation	\N	\N	\N	\N	37.3765268	-122.0651929	701 E El Camino Real Mountain View, CA 94040	Yes	Attn: Kaitlin Thein in Pediatric Urgent Care	Mountain View	CA
1646	Wake Forest Baptist Medical Center	\N	\N	\N	\N	36.090271	-80.2714172	1 Medical Center Blvd Winston-Salem, NC 27157	Yes	At the front or Shipping	Winston-Salem 	NC
1647	Community Options Inc	\N	\N	\N	\N	40.8608219	-79.9007507	403 W Jefferson St Butler, PA 16001	Yes	Curbside or mail	Butler	PA
1648	Keck Medical Center of USC	\N	\N	\N	\N	34.0619943	-118.2012607	1500 San Pablo St Los Angeles, CA 90033	No	Dropoff at concierge desk, 1st Floor. Mailed also acceptable. | Drop off at main entrance please | Attention : Tiffany Vo, 4th Floor Main Operating Room	Los Angeles	CA
1649	Providence Regional Medical Center Everett	\N	\N	\N	\N	47.999898	-122.2074813	1321 Colby Ave Everett, WA 98201	No	Contact DeAnne Okazaki at (425)261-4059 or e-mail deanne.okazaki@providence.org to coordinate	Everett	WA
1650	Samaritan Healthcare & Hospice	\N	\N	\N	\N	39.910875	-74.9326208	5 Eves Drive, Suite 300 Marlton, NJ 08053	Open boxes, yes; but not individual pieces.  Must be sterile.	ATTN:  Joe Boccolini	Marlton	NJ
1651	LifeGuard Urgent Care	\N	\N	\N	\N	28.4421201	-82.5435259	491 Mariner Blvd Spring Hill, FL 34609	Yes		Spring Hill	FL
1943	Berkeley Citizens 	\N	\N	\N	\N	33.1760405	-80.0089946	1301 Old Highway 52 South Moncks Corner, SC 29461	Yes	1301 Old Highway 52 South	Moncks Corner	SC
1652	Community Options Inc.	\N	\N	\N	\N	39.6571782	-74.9589573	2043 S Black Horse Pike Williamstown, NJ 08094	Yes	ATTN: Patrick Charles, Executive Director.	Williamstown	NJ
1653	Temecula Valley Hospital	\N	\N	\N	\N	33.4811362	-117.1060989	31700 Temecula Parkway Temecula, CA 92592	Yes	Emergency Room drop off Dawnelle Anderson	Temecula	CA
1654	Codman Square Health Center	\N	\N	\N	\N	42.289369	-71.0719691	637 Washington Street Boston, MA 02124	Yes, all items will be inspected for quality.	Please make deliveries at the loading dock at 637 Washington Street (accessed via Withington Street), ATTN: Frank Byrne	Boston	MA
1655	St Luke's University Health Network	\N	\N	\N	\N	40.5959853	-75.4930008	1736 Hamilton Street Allentown, PA 18104	Yes		Allentown	PA
1656	WMed Health 	\N	\N	\N	\N	42.2831228	-85.599705	1000 Oakland Drive Kalamazoo, MI 49008	Yes	Mail to Dr. Patel	Kalamazoo 	MI
1657	South Jersey Family Medicine Associates 	\N	\N	\N	\N	39.8405929	-75.1518246	127 N Broad Street  Woodbury, NJ 08096	Yes	Employee entrance or mail 	Woodbury 	NJ
1658	St James Parish Hospital	\N	\N	\N	\N	30.0517405	-90.7037762	1645 Lutcher Ave Lutcher, LA 70071	Yes		Lutcher	LA
1659	Community Options, Inc. Corpus Christi	\N	\N	\N	\N	27.7273363	-97.3769532	700 Everhart Rd. Ste. H1 Corpus Christi, TX 78411	Yes	Please mail ATTN: Executive Director 	Corpus Christi	TX
1660	New York Presbyterian - Cornell	\N	\N	\N	\N	40.7656072	-73.9561557	413 E 69th St New York, NY 10065	No	Label "Attn: Mike Murphy | Emergency Supplies for PO | Room 803." Drop off at Belfer Research Building loading dock M-F 9AM-5PM. Ask for Mike Wallace or check security/front desk if garage closed.	New York - Manhattan	NY
1661	Community Options Inc. 	\N	\N	\N	\N	41.0015817	-76.4338679	1117 Old Berwick Road  Bloomsburg, PA 17815	Yes	curbside dropoff	Bloomsburg 	PA
1662	Care Ambulance	\N	\N	\N	\N	33.9393452	-118.0737676	12160 Mora Dr Santa Fe Springs, CA 90670	Yes	Attn: Lyle Hanson	Santa Fe Springs	CA
1663	North Hill Internal and Integrative Medicine	\N	\N	\N	\N	35.8308946	-78.6096089	1631 Midtown Place, Unit 101 Raleigh, NC 27609	Yes		Raleigh	NC
1664	Regal Medical Group	\N	\N	\N	\N	34.2245502	-118.50145	8510 Balboa Blvd #150 Northridge, CA 91325	Yes	Contact: Ronnique Crider, Safety Officer (818) 810-4628 or rcrider@regalmed.com, I can meet someone at our main entrance. We are in desperate need of all the above for our clinics.	Northridge	CA
1665	KenCrest Services	\N	\N	\N	\N	40.1539052	-75.2851451	960A Harvest Drive, Suite 100 Blue Bell, PA 19422	Yes	Curbside, no contact drop-off; or mail to the ATTN of Barbara Kochard at above address; phone contact 610-825-9360 ext. 1129; barbara.kochard@kencrest.org	Blue Bell	PA
1666	Pottstown Hospital	\N	\N	\N	\N	40.2426719	-75.6121704	1600 E High St Pottstown, PA 19464	Yes	At front desk	Pottstown	PA
1667	Lakeview Specialty Hospital & Rehab	\N	\N	\N	\N	42.7380439	-88.1679921	1701 Sharp Road Waterford, WI 53185	Yes	Please drop off in front lobby 	Waterford	WI
1668	Medical University of South Carolina	\N	\N	\N	\N	32.8654996	-80.0026591	4295 Arco Lane Charleston, SC 29418	unsure		Charleston	SC
1669	Community Options, Inc.	\N	\N	\N	\N	39.10916	-77.15493	7615 Standish Place Derwood, MD 20855	Yes	The donations can be dropped at our office. Knock on door and a staff will confirm we are present to receive the donations.	Derwood	MD
1670	OU medical center 	\N	\N	\N	\N	35.481161	-97.501206	700 NE 13th St Oklahoma City, OK 73104	No		Oklahoma City	OK
1671	AFC Urgent Care Farmingdale	\N	\N	\N	\N	40.7247755	-73.4303137	1037 Fulton Street Farmingdale, NY 11735	No	feel free to walk in or drop it off in front of our door!	Farmingdale	NY
1672	Essential Diabetes and Endocrine Care	\N	\N	\N	\N	29.6511326	-95.1442656	6243 Fairmont Pkwy #104 Pasadena, TX 77505	No	Leave at employee entrance and knock on door	Pasadena	TX
1673	Newport Hospital and Health Services	\N	\N	\N	\N	48.1818221	-117.0565499	714 West Pine Street Newport, WA 99156	Yes	Call 509-447-9300 for arrangements to drop off using our loading dock, or mail to above address	Newport	WA
1674	Spectrum Health	\N	\N	\N	\N	43.019259	-85.720399	2925 Walkent Ct NW #B Grand Rapids, MI 49544	Unknown	TBD	Grand Rapids	MI
1675	Concho County Hospital	\N	\N	\N	\N	31.2213223	-99.8481426	614 Eaker St Eden, TX 76837	Yes	614 Eaker St	Eden	TX
1676	Oroville Hospital 	\N	\N	\N	\N	39.5062597	-121.5410928	2767 Olive Highway Oroville, CA 95966	Yes	Emergency Room	Oroville 	CA
1677	Michigan Avenue Immediate Care	\N	\N	\N	\N	41.8855118	-87.6248445	180 N. Michigan Ave, #1605 Chicago, IL 60601	Yes	16th floor 	Chicago	IL
1678	Saint Francis Memorial Hospital	\N	\N	\N	\N	37.7893799	-122.4167294	900 Hyde St San Francisco, CA 94109	No	Email Avinesh.Maharaj@dignityhealth.org	San Francisco	CA
1679	San Gabriel Valley Medical Center 	\N	\N	\N	\N	34.1023234	-118.1055415	438 W Las Tunas Dr San Gabriel, CA 91776	Yes	Attn: Martha Leon and Dr Tsang Lau  Phone number (626) 570-6575	San Gabriel 	CA
1680	Community Options, Inc. 	\N	\N	\N	\N	41.0213966	-75.9632424	3 East Butler Drive Drums, PA 18222	Yes	attn: Patricia Bart	Drums	PA
1681	Southern Berkshire Volunteer Ambulance Squad, Inc	\N	\N	\N	\N	42.1924199	-73.3721821	31 Lewis Ave Great Barrington, MA 01230	Yes	Curbside.  Please ring doorbell or drop off on bench outside of front door	Great Barrington	MA
1682	Einstein Pediatrics	\N	\N	\N	\N	38.9144443	-77.2350369	8391 Old Courthouse Road, Suite 300 Vienna, VA 22182	Yes	Drop in front of office	Vienna	VA
1683	Onondaga County Medical Society	\N	\N	\N	\N	43.0939075	-76.0962042	6707 Brooklawn Avenue #4  Syracuse, NY 13211	Yes	Call ahead for in person delivery	Syracuse 	NY
1684	Hope Pediatrics	\N	\N	\N	\N	41.3896866	-79.702343	3512 Route 257 Seneca, PA 16346	Yes		Seneca 	PA
1685	University Hospitals Cleveland Medical Center	\N	\N	\N	\N	41.5062405	-81.6053771	11100 Euclid Ave Cleveland, OH 44106	Yes	Main Entrance drop off with call to set up time (216-844-5583)	Cleveland	OH
1686	Renaissance Pediatrics	\N	\N	\N	\N	36.8285749	-76.4083262	4012 Raintree Rd Ste 200A Chesapeake, VA 23321	Yes		Chesapeake	VA
1687	Washington Hospital Healthcare System	\N	\N	\N	\N	37.55726	-121.9797604	2000 Mowry Ave Fremont, CA 94538	Yes	Contact Washington Hospital Healthcare Foundation at 510-818-7350, foundation@whhs.com. Please do not go to ED or other hospital areas without first contacting the Foundation. More details at https://www.whhs.com/COVID-19-Coronavirus-.aspx	Fremont	CA
1688	Children's Hospital of the King's Daughter	\N	\N	\N	\N	36.8621682	-76.3020325	601 Children's Ln Norfolk, VA 23507	No	Emergency Department  OR  2nd floor, ENT dept.  Bring to front desk of hospital and we will come down and pick up	Norfolk	VA
1689	Blount Memorial Hospital	\N	\N	\N	\N	35.7559386	-83.9580382	907 E Lamar Alexander Pkwy Maryville, TN 37804	Yes	attn. JAKE GRAVES	Maryville	TN
1690	Advanced Psychiatric Services of Central Florida	\N	\N	\N	\N	27.466412	-81.4343079	3583 S Highlands Ave Sebring, FL 33870	No	Place next to door or on mailbox	Sebring	FL
1691	Community Option Inc. 	\N	\N	\N	\N	40.3351141	-79.550707	137 Mathews Street, Suite 1500 Greensburg, PA, 15601	Yes	Front of the building drop off is acceptable. Call 724-331-3890 for assistance	Greensburg	PA
1692	Dr. John J. Nguyen, Doctor's Office	\N	\N	\N	\N	29.7277352	-95.5933306	12606 W Houston Ctr. Blvd #170 Houston, TX 77082	Yes	12606 W Houston Ctr. Blvd #170	Houston	TX
1693	Jacobs Medical Center at UC San Diego Health	\N	\N	\N	\N	32.8778851	-117.2255213	9300 Campus Point Dr La Jolla, CA 92037	Unknown	Contact Robbie Jacobs at gjacob@ucsd.edu	La Jolla	CA
1694	Children's Clinic Ltd	\N	\N	\N	\N	37.0365448	-76.4572576	321 Main Street  Newport News, VA 23601	Yes	Give to nurse at front desk	Newport News	VA
1695	Cambria Care Center	\N	\N	\N	\N	40.4885802	-78.7002285	429 Manor Drive Ebensburg, PA 15931	Yes		Ebensburg	PA
1696	Samaritan Pacific Communities Hospital	\N	\N	\N	\N	44.6296823	-124.0590056	930 SW Abbey St Newport, OR 97365	Yes	TBD	Newport	OR
1697	San Marino Pediatric Associates	\N	\N	\N	\N	34.1069973	-118.1352028	375 Huntington Drive, Suite F San Marino, CA 91108	Yes	Can drop off in front of door and ring doorbell.	San Marino	CA
1698	Lakeside Community Healthcare	\N	\N	\N	\N	34.1584395	-118.3290952	191 S Buena Vista St #240 Burbank, CA 91505	No	ATTN: Dr. Rungsima	Burbank	CA
1699	Tanner Clinic - Kaysville	\N	\N	\N	\N	41.0404773	-111.9454955	380 N 400 W Kaysville, UT 84037	No	attn: Gina Espinosa	Kaysville	UT
1700	PM pediatrics	\N	\N	\N	\N	40.0036237	-75.2841243	260 East Lancaster Avenue Wynnewood, PA 19096	Yes	open after 12:00pm	Wynnewood	PA
1701	Community Options, Inc.	\N	\N	\N	\N	40.2223691	-76.9378838	1104 Fernwood Avenue Suite 101 Camp Hill, PA 17011	No	1104 Fernwood Ave Suite 101	Camp Hill	PA
1702	Cornerstone Home Health & Hospice	\N	\N	\N	\N	43.6857468	-116.3337913	1675 E Riverside Drive, Suite 100 Eagle, ID 83616	Yes	You can mail it drop off anytime 9am-5pm M-F	Eagle	ID
1703	ORION Physical Therapy	\N	\N	\N	\N	37.2484659	-121.9519771	270 Penn Way Los Gatos, CA 95032	No	Door step	Los Gatos	CA
1704	North Shore Hospital - Chicago	\N	\N	\N	\N	42.077229	-87.854991	1076 Ironwood Ct Glenview, IL 60025	No	Residential. MD in need for outpatient ophthalmology clinic- curbside is great	Glenview	IL
1705	Merritt Manor	\N	\N	\N	\N	36.222462	-119.3392362	604 East Merritt Ave Tulare, CA 93274	Yes	Front door	Tulare 	CA
1706	Palo Alto Medical Foundation 	\N	\N	\N	\N	37.3683444	-122.0297223	301 Old San Francisco Road Sunnyvale, CA 94086	Yes	Leave at front door with doorperson attention Geriatrics Department . 	Sunnyvale 	CA
1707	Lompoc Valley Medical Center	\N	\N	\N	\N	34.6411375	-120.4395191	1515 E Ocean Ave Lompoc, CA 93436	Yes	Drop off at the loading dock.	Lompoc	CA
1708	Garfield Medical Center	\N	\N	\N	\N	34.0678947	-118.1238043	525 N Garfield Ave Monterey Park, CA 91754	No	ICU | Emergency Room	Monterey Park	CA
1709	Advanced Pediatrics	\N	\N	\N	\N	38.9092933	-77.2549656	100 East Street, Suite 301 Vienna, VA 22180	Yes	Call 703-938-5555 for instructions	Vienna	VA
1710	Anesthesia & Pain Consultants	\N	\N	\N	\N	36.3158929	-82.3911145	1009 Lark St #2 Johnson City, TN 37604	Yes	Contact David Runge davidrungecrna@gmail.com or 423-788-4339	Johnson City	TN
1711	Community Options, Inc. 	\N	\N	\N	\N	40.171876	-80.2473795	90 W Chestnut St #225 Washington, PA 15301	Yes		Washington	PA
1712	Jamaica Hospital Medical Center	\N	\N	\N	\N	40.7022172	-73.8180679	134-20 Jamaica Avenue Jamaica, NY 11418	Yes	Please call 718 -206-7800 upon arrival at this address. A staff member will meet them outside and log it in. Thank you	Jamaica 	NY
1713	Pediatrics of Seven Corners	\N	\N	\N	\N	38.8708786	-77.158318	6404-K, Seven Corners Pl Falls Church, VA 22044	Yes	Mailing or Curbside 	Falls Church	VA
1714	PIH Health - Whittier Campus	\N	\N	\N	\N	33.9690304	-118.0490717	12401 Washington Blvd Whittier, CA 90602	No	Drop off at ED BLS Ambulance Bay. Upon arrival, contact ED charge RN on duty.	Whittier	CA
1715	Virginia Pediatric and Adolescent Medicine. PLC	\N	\N	\N	\N	38.8965908	-77.1348237	5275 Lee Highway, Suite 200 Arlington, Virginia 22207	No	Office delivery	Arlington	VA
1716	Raymore Urgent Care	\N	\N	\N	\N	38.8111286	-94.469234	242 Broadmoor Dr Raymore, MO, 64083	Unsure	Shipping or delivery or pick up within reasonable distance (more details needed)	Raymore	MO
1717	Northridge Hospital Medical Center	\N	\N	\N	\N	34.2205406	-118.5338644	18300 Roscoe Blvd Northridge, CA 91325	Unused product	Drop off in lobby or mail in.	Northridge	CA
1718	Mary Health of the Sick	\N	\N	\N	\N	34.1806008	-118.9380563	2929 Theresa Dr Thousand Oaks, CA 91320	Yes	At the front door	Newbury Park	CA
1719	Horizon Medical Center	\N	\N	\N	\N	36.086632	-87.4146294	111 Hwy 70  Dickson, TN 37055	Yes	Mailing address 	Dickson	TN
1720	Western Loudoun Pediatrics	\N	\N	\N	\N	39.1383761	-77.7059493	201 N Maple Ave #201 Purcellville, VA 20132	Yes	In clinic or by internal front door	Purcellville	VA
1721	Children's Minnesota	\N	\N	\N	\N	44.956335	-93.262145	2525 Chicago Ave  Minneapolis, MN 55404	Yes	Suite 120 - entrance on Chicago Ave	Minneapolis	MN
1722	Holy Family Memorial 	\N	\N	\N	\N	44.0949043	-87.6764511	2300 Western Ave, Manitowoc, WI 54220	Yes	Call ahead	Manitowoc 	WI
1723	Vanderbilt University Medical Center	\N	\N	\N	\N	36.1417684	-86.8007506	1215 21st Ave S Nashville, TN 37232	Yes	Attn: Seth Davis MD, Medical Center East – South Tower, Suite 7209 	Nashville	TN
1724	INTEGRIS Baptist Medical Center 	\N	\N	\N	\N	35.5292451	-97.5756798	3300 Northwest Expy Oklahoma City, OK 73112	Unsure	Dropoff on East Side	Oklahoma City	OK
1725	Anne Arundel Medical Center	\N	\N	\N	\N	38.9893129	-76.5374431	 2000 Medical Parkway Annapolis, MD 21401.	Yes	These items should be delivered curbside to AAMC's Belcher Pavilion Circle, located at 2000 Medical Parkway, Annapolis, MD, 21401. Hours for donation drop off are Wednesday and Friday from 10 am to noon.  A member of the AAMC team will gratefully accept your donation.  If you have questions or would like to get a tax receipt, please email Foundation@aahs.org	Annapolis	MD
1726	One World Center for Autism and One World Pediatrics	\N	\N	\N	\N	38.9912217	-76.8268062	7401 Forbes Blvd A Lanham, MD 20706	Yes	7401 Forbes Blvd Suite A	Lanham	MD
1727	D'Amour Family Medicine	\N	\N	\N	\N	37.0562078	-94.5343273	1801 W. 32nd Street Building B, Suite 102 Joplin, MO 64804	Yes		Joplin	MO
1728	UrgenCare Clinic	\N	\N	\N	\N	33.0242493	-85.0768251	2169 W Point Rd LaGrange, GA 30240	Yes	2169 West Point Road UrgenCare Clinic	LaGrange	GA
1729	Bristol Fire Department/EMA	\N	\N	\N	\N	41.686608	-71.260594	4 Annawamscutt Dr Bristol, RI 02809	Yes	Main Entrance M-F 8 to 4	Bristol	RI
1730	North Seattle Pediatrics	\N	\N	\N	\N	47.7045795	-122.3325383	10330 Meridian Ave N #210 Seattle, WA 98133	Yes	We can meet you at the front door, UW Northwest Outpatient Center Can call 206 368-6055 Backline Contact person is Dr Terri Graham ( pediatrician) 	Seattle 	WA
1731	Anaheim Global Medical Center	\N	\N	\N	\N	33.8196827	-117.9097961	1025 S Anaheim Blvd Anaheim, CA 92805	No	Drop off at ED Ambulance bay. Upon arrival, contact ED registration to notify ED charge RN on duty	Anaheim	CA
1732	The Center for Advanced Rehab at Parkside 	\N	\N	\N	\N	34.943374	-85.265426	110 Park City Rd Rossville, GA 30741	Yes	May mail to address or drop off at front door of address. Thanks!	Rossville	GA
1733	SageWest Health Care	\N	\N	\N	\N	42.8205069	-108.7267758	1320 Bishop Randall Dr Lander, WY 82520	Yes	Maybe try contacting this number: (307) 332-4420. Thank you so much!	Lander	WY
1734	Abington memorial hospital	\N	\N	\N	\N	40.119158	-75.11986	1200 Old York Rd Abington, PA 19001	Yes	Curbside 	Abington 	PA
1735	Hartford Healthcare GoHealth Urgent Care 	\N	\N	\N	\N	41.815292	-72.8641943	385 W Main St. Avon, CT 06001	Unsure	Can pick up or accept delivery at location (more details needed)	Avon	CT
1736	North Seattle Pediatrics	\N	\N	\N	\N	47.6294949	-122.5087739	673 Tiffany Meadows Dr NE Bainbridge Island, WA 98110	Yes	Covered porch.   Terri Graham, MD, FAAP owner North Seattle Pediatrics.   Can drive to my practice in North Seattle epicenter	Bainbridge Island	WA
1737	Kaiser Permanente - Glendale Orange Street Medical Offices	\N	\N	\N	\N	34.1531976	-118.2569564	501 N Orange St. Glendale, CA 91203	Yes	Email rodriguezgutierrezmd@gmail.com to arrange curbside dropoff | Attn: Becky Lim, MD. If you are able to call or text: 310-386-7774 before you drop off that would be ideal. Attn: Becky Lim, ppe donation to address above 	Glendale	CA
1738	Hospital Internists of Texas	\N	\N	\N	\N	30.3531292	-97.749542	7000 North Mopac Expressway Austin, TX 78731	Yes	There is a dropoff box in the lobby on the Mopac service drive side of Plaza 7000 building. Don't park in a spot - just pull into the dropoff circle and the box is inside the door. If you have donation too large for the box there is instructions who to call.	Austin	TX
1739	Newport News Pediatrics	\N	\N	\N	\N	37.0873753	-76.4651166	11760 Rock Landing Dr Newport News, VA 23606	No	Dr Goodwin 	Newport News	VA
1740	Sante Skilled Nursing and Rehabilitation 	\N	\N	\N	\N	33.6455805	-111.8970086	8502 E Princess Dr Ste 200 Scottsdale, AZ 85255	Yes	ATTN: Sante Operations drop off at information desk 	Scottsdale 	AZ
1741	North Bay Cardiology & North Bay Cardiac Imaging	\N	\N	\N	\N	38.4422512	-122.6636382	4740 Hoen Ave Santa Rosa, CA 95405	Yes, anything we can not use will be given directly to hospital nursing staff	Please call the office for delivery instructions at 707-542-2783	Santa Rosa	CA
1742	Einstein Medical Center Montgomery	\N	\N	\N	\N	40.1529948	-75.344529	559 W Germantown Pike East Norriton, PA 19403	No	Call 484-622-7013 to coordinate donation  |  Emergency Department Entrance	East Norriton	PA
1743	Immediate Medical Care MD	\N	\N	\N	\N	41.1431782	-73.8622088	240D S Highland Ave Ossining, NY 10562	Unsure	Any way possible.  Please call (732) 523-5102 to make arrangements.	Ossining	NY
1744	The Children's Clinic	\N	\N	\N	\N	45.5107932	-122.775672	555 SW Barnes Rd Suite 301 Portland, OR 97225	Yes	By the clinic door (3rd floor) and ring bell	Portland 	OR
1745	Willapa Behavioral Health	\N	\N	\N	\N	46.6812857	-123.735879	300 Ocean Avenue Raymond, WA 98577	Yes	Call (360) 942-2303	Raymond	WA
1746	Women's Health Valley Forge OBGYN	\N	\N	\N	\N	40.1240348	-75.516251	799 Gay Street  Phoenixville, PA 19460	At this time we do not have any n95 masks at our office. 	Mail or drop office near front door. (We are OB doctors who deliver ~60 babies a month.)	Phoenixville	PA
1747	Signature Hospice	\N	\N	\N	\N	44.1020895	-123.1313974	2620 River Rd #300 Eugene, OR 97404	Yes	This is our mailing address, please send by mail if possible. If needing to do drop off doors are open Mon-Fri 8-5, we're on the third floor, ring the doorbell or knock on the door with the sign.	Eugene	OR
1748	Legacy Health-GoHealth Urgent Care 	\N	\N	\N	\N	45.4926982	-122.4034142	2850 SE Powell Valley Rd Ste 100 Gresham, OR 97080	Unsure	Will be able to pick up locally or pay for delivery. 	Gresham	OR
1749	Arizona Medicos, Inc	\N	\N	\N	\N	31.8989898	-110.9894565	120 W Calle de Las Tiendas  Green Valley AZ, 85614	Yes		Green Valley	AZ
1750	Huntsville Hospital	\N	\N	\N	\N	34.7212005	-86.5806617	101 Sivley Rd SW Huntsville, AL 35801	Unsure	TBD	Huntsville	AL
1751	Suncoast Urgent Care Centers, LLC	\N	\N	\N	\N	28.1937567	-82.6370424	10730 FL-54 #104 New Port Richey, FL 34655	Unsure	mail/ email for other options (more details needed)	New Port Richey	FL
1752	Willapa Behavioral Health	\N	\N	\N	\N	46.3686897	-124.053367	2204 Pacific Ave Long Beach, WA 98631	Yes	Call (360) 867-0949	Long Beach	WA
1753	SWGA - Southwest Gastroenterology	\N	\N	\N	\N	35.1707408	-106.5884979	7788 Jefferson St NE Albuquerque, NM 87109	unsure need mor info	West entrance, Attn: Kim Ring RN	Albuquerque	NM
1754	NYC Health and Hospitals, Bellevue	\N	\N	\N	\N	40.7390729	-73.9750165	462 1st Avenue  New York, NY 10016	Yes if the items are unused	Attn: Emergency Command Center	New York	NY
1756	Sante Home Health and Hospice 	\N	\N	\N	\N	33.6419963	-111.8957044	17207 N Perimeter Dr Scottsdale, AZ 85255	Yes	ATTN: Sante Operations - Drop off at information desk 	Scottsdale 	AZ
1757	Clinton County Probation Dept.	\N	\N	\N	\N	44.6988591	-73.4536462	34 Court Street Plattsburgh, NY 12901	Yes	34 Court Street, Plattsburgh, NY 12901 Attn:  Director of Probation  Drop Off in lobby.	Plattsburgh	NY
1758	Einstein Medical Center Elkins Park	\N	\N	\N	\N	40.0724039	-75.1052787	60 Township Line Road Elkins Park, PA 19027	Yes	Call 215-456-7200 or drop at Main Entrance, open 24/7  OR  Moss Rehab Main Campus	Elkins Park	PA
1759	Montefiore medical center	\N	\N	\N	\N	40.8807854	-73.8794877	111 E 210th St The Bronx, NY 10467	Unsure 	Call 718-920-5731	New York - Bronx	NY
1760	Vybe Urgent Care	\N	\N	\N	\N	39.9349823	-75.1671013	1217 S Broad St Philadelphia, PA 19147	Unsure	Delivery (more details)	Philadelphia	PA
1761	Highlands Pediatrics	\N	\N	\N	\N	36.7217775	-81.9069632	 26210 Lee Hwy Abingdon, VA 24211	New items, but open boxes on case by case basis	26210 Lee Hwy Abingdon, Va	Abingdon	VA
1763	United Methodist Communities	\N	\N	\N	\N	40.2089208	-74.0701811	3311 State Route 33 Neptune City, NJ 07753	open box as long as the items are secured in a plastic wrap that has not been opened		Neptune	NJ
1764	Vanderbilt University Medical Center	\N	\N	\N	\N	36.1424246	-86.8004397	1211 Medical Center Drive Nashville, TN 37232	Unsure		Nashville	TN
1765	Urgent Care by the Bay	\N	\N	\N	\N	30.5959521	-87.8971314	1208 US-98 Daphne, AL 36526	Unsure	any, will pay postage (details missing)	Daphne	AL
1766	24/7 Care at Home Hospice	\N	\N	\N	\N	33.7617716	-117.9950947	 13800 Arizona St #200 Westminster, CA 92683	Yes	13800 Arizona St., Westminster, CA.  92683 ATTN: Larry Nguyen PLEASE KNOCK IF YOU ARE AT THE BUILDING THERE ARE A FEW PEOPLE IN HERE TO PROVIDE SUPPLIES TO PATIENTS AND NURSES.	Westminster	CA
1767	My Doc Urgent Care	\N	\N	\N	\N	40.8669004	-74.0982331	210 Passaic St Garfield, NJ 07026	Unsure	Mail to our address.	Garfield	NJ
1768	Pomona Valley Hospital Medical Center	\N	\N	\N	\N	34.0768626	-117.7504875	1798 N Garey Ave Pomona, CA 91767	Yes	Drop off at ED trauma/ambulance bay entrance,contact ED security to notify ED charge RN on duty | Main Hospital or 8am to 12pm at 360 West Vinton Avenue	Pomona	CA
1769	The Rivers Grosse Point Skilled Nursing	\N	\N	\N	\N	42.4242825	-82.8968661	900 Cook Rd Grosse Pointe Woods, MI 48236	Yes	Rehab entrance, or security desk	Grosse Pointe Woods	MI
1770	Kaweah Delta Medical Center	\N	\N	\N	\N	36.3382749	-119.3187	1041 N. Woodland Street, Apartment 202 Visalia, CA, 93291	No	Residential. Ship using UPS, FedEx, USPS. ATTN: Dr. Brian Ho	Visalia	CA
1771	San Mateo County Medical Center	\N	\N	\N	\N	37.5775188	-122.356228	1600 Floribunda Avenue Hillsborough CA 94010	Yes	Drop off in front of Hillsborough City Hall, there is a donation box under surveillance by the police departent. Contact: John Jurow at jjurow@smcgov.org or 650-333-5634. Place small goods in a ziplock bag if possible. 	San Mateo	CA
1772	AMITA Resurrection	\N	\N	\N	\N	41.9876791	-87.8142891	7435 W. Talcott Avenue Chicago, IL  60631	Not Sure	Please Contact Patricia Sotos (Patricia.Sotos@amitahealth.org) to arrange delivery and dropoff. If mailing, please write on the box: Attn:  Main Security/COVID PPE Community Donations. 	Chicago	IL
1773	John Muir Concord	\N	\N	\N	\N	37.9827647	-122.0333245	2540 East St Cardiovascular Institute Registration Desk Concord, CA 94520	No	Drop at the Cardiovascular Institute Registration Desk	Concord	CA
1774	Wayne State University	\N	\N	\N	\N	42.3575996	-83.0734615	5285 Anthony Wayne Dr Detroit, MI 48202	Unsure	By shipment or pick up (more details needed). Note: Wasn't sure if this referred to the Campus Health Center or not, but that's what this info is for. 	Detroit	MI
1775	Speight Family Medical 	\N	\N	\N	\N	36.0800336	-87.3776431	403 Henslee Dr Dickson, TN 37055	Yes		Dickson	TN
1776	KidMed Pediatric Urgent Care	\N	\N	\N	\N	37.6372231	-77.3551887	8356 Bell Creek Rd.  Mechanicsville, VA 23116	Yes	Attn: Noelle Edwards	Mechanicsville	VA
1777	Community Health Alliance	\N	\N	\N	\N	39.5024226	-119.7619213	680 S Rock Blvd Reno, NV 89502	Yes	ATTN:  Joseph Mazzucotelli, COO	Reno	NV
1778	Cypress Creek Hospital	\N	\N	\N	\N	30.0243435	-95.4455237	17750 Cali Dr Houston, TX 77090	No	Attn: Ben Gonzales	Houston	TX
1779	Valley Allergy & Asthma Clinic	\N	\N	\N	\N	45.4339223	-122.55815	10365 SE Sunnyside Rd #245 Clackamas, OR 97015	Yes	Suite 245	Clackamas	OR
1780	Regency Manor Healthcare Center	\N	\N	\N	\N	31.1058854	-97.3738987	3011 W Adams Ave Temple, TX 76504	No	Front door. Call when dropping off 254-773-1626	Temple	TX
1781	Brunswick Urgent Care	\N	\N	\N	\N	40.4344736	-74.545367	3185 NJ-27 Franklin Park, NJ 08823	Unsure	Shipped or possible p/u (more details needed)	Franklin Park	NJ
1782	Torrance Memorial Medical Center	\N	\N	\N	\N	33.8118946	-118.3435467	3330 Lomita Blvd Torrance, CA 90505	Yes	In front of emergency room, drop off to nurse or security guard.	Torrance	CA
1783	NYU Langone Medical Center	\N	\N	\N	\N	40.7428097	-73.9737947	570 1st Avenue New York, NY 10016	Yes if items are unused	Attn: Emergency Department, Camille Scribner MD	New York	NY
1784	VitalMed Urgent Care	\N	\N	\N	\N	27.5524321	-99.4801395	5711 McPherson Rd, Suite 103 Laredo, TX, 78041	Unsure	Ship to 5711 McPherson rd suite 103 LAREDO Texas 78041.	Laredo	TX
1785	White Bear Lake Endodontics	\N	\N	\N	\N	45.0870213	-93.0096283	4801 Highway 61 N, Suite 200 White Bear Lake, MN 55110	No	Attn: Dr. Olga Ivett Castro	White Bear Lake	MN
1787	AnMed Health	\N	\N	\N	\N	34.5115744	-82.6464874	800 N Fant St Anderson, SC 29621	Yes		Anderson	SC
1788	Einstein Medical Center Philadelphia	\N	\N	\N	\N	40.0367216	-75.1431823	5501 Old York Road Philadelphia, PA 19141	Yes	Please give to the Emergency Department or drop at Main Entrance - open 24/7  OR  Call 215-456-7200   OR  Call 267-971-7869 (Susan Snyder) 	Philadelphia	PA
1789	Plattsburgh Family Health	\N	\N	\N	\N	44.7020765	-73.4978927	87 Plaza Blvd Plattsburgh, NY 12901	No		Plattsburgh	NY
1790	Apicha Community Health Center	\N	\N	\N	\N	40.7186242	-74.0022234	400 Broadway New York, NY 10013	Yes	You can drop it off in the 2nd floor front desk.	New York	NY
1791	Sutter Pacific Medical Foundation - Respiratory Clinic	\N	\N	\N	\N	37.7871096	-122.455564	3801 Sacramento Street San Francisco, CA 94118	No	Curbside on Mon-Fri 9am-6pm, for mailing: ATTN: Respiratory Clinic 3rd floor	San Francisco	CA
1792	Champlain Family Health	\N	\N	\N	\N	44.9791946	-73.4399261	828 State Rte 11 Champlain, NY 12919	No	Mailing Address Attn: Melissa Gooley	Champlain	NY
1793	Affinity Urgent Care	\N	\N	\N	\N	29.3999524	-95.2476228	3128 Hwy 35 Alvin, TX 77511	Yes	You may come inside and drop off at the front desk if you like, but you may also drop at the door and call 281-886-8964 to let us know about the drop off.  You can also mail it to us, attn Dani Kennedy	Alvin	TX
1825	Midwest Express Clinic	\N	\N	\N	\N	41.4944525	-87.4715952	1500 US-41 Schererville, IN 46375	Yes	Stay in your vehicle and call us at 219-440-7373, we will pick up curbside - thank you! 	Schererville	IN
1826	Preferred Choice Home Healthcare	\N	\N	\N	\N	42.5204497	-83.1718298	3526 Elmhurst Ave Royal Oak, MI 48073	No	Please leave on front step. I am the owner of a home healthcare company, and welcome any PPE donations that I can disburse to my nurses and therapists as supplies arrive. 	Royal Oak	MI
1795	Hospice Care of the Lowcountry 	\N	\N	\N	\N	32.2704055	-80.8665443	7 Plantation Park Dr, Unit 4 Bluffton, SC 29910	Yes		Bluffton 	SC
1796	Community Health Center Network	\N	\N	\N	\N	37.7257016	-122.1561995	101 Callan Avenue, Suite 300 San Leandro, CA 94577	Yes	Can mail items or drop off in 3rd floor lobby if no one is at front desk. Contact Megan Crowley for assistance: 510-297-0425. We can distribute to 8 member health centers serving 150,000+ patients in Alameda County.  	San Leandro	CA
1797	Baptist Jacksonville	\N	\N	\N	\N	30.315687	-81.6637016	800 Prudential Drive Jacksonville, FL 32207	Yes		Jacksonville	FL
1798	Behavioral Health Services North, Inc.	\N	\N	\N	\N	44.6967992	-73.5356896	2155 State Route 22B Morrisonville, NY 12962	Yes	Bring to front door and follow instruction to get in touch with someone inside.	Morrisonville	NY
1799	Plattsburgh City School District	\N	\N	\N	\N	44.6867111	-73.4709187	1 Clifford Drive Plattsburgh, NY 12901	Yes	Attention Norbert Neiderer, (518) 726-6721, Curbside or Mail to Address	Plattsburgh	NY
1800	Fletcher Physical Therapy	\N	\N	\N	\N	39.9875772	-75.2909923	605 Beechwood Drive  Havertown, PA 19083	Yes	House is on a cliff driveway at 609 	Havertown 	PA
1801	Cass Regional Medical Center	\N	\N	\N	\N	38.6650857	-94.3774077	2800 E. Rock Haven Road Harrisonville, MO 64701	Preferred sealed for safety purposes	Dock in back of hospital by large Air Gas Tank.  Ring bell	Harrisonville	MO
1802	Piedmont Athens Regional Medical Center	\N	\N	\N	\N	33.9636508	-83.4256788	1500 Oglethorpe Avenue Suite 600E Athens, GA 30606	Yes	Charles L Braucher Jr. 	Athens	GA
1803	Beth Israel Deaconess Medical Center (BIDMC)	\N	\N	\N	\N	42.3398798	-71.1045583	330 Brookline Ave  Boston, MA 02215	Yes	Email smahone4@bidmc.harvard.edu with detailed information including the brand and the quantity of the items you wish to donate. Visit bilh.org/donations for more information.	Boston	MA
1804	Chester Pediatrics	\N	\N	\N	\N	37.3522142	-77.4518658	4704 Buckingham Ct. Chester, VA 23831		Mailing address	Chester	VA
1805	Midwest Express Clinic - West Loop	\N	\N	\N	\N	41.8789317	-87.6470536	779 W Adams St. Chicago, IL 60661	Yes	Stay in your vehicle and call us at 312-752-4466, we will pick up curbside - thank you! 	Chicago	IL
1806	TPG Pediatrics	\N	\N	\N	\N	38.7648409	-77.1525148	7015-C Manchester Blvd Alexandria, VA 22310	Yes		Alexandria	VA
1807	Kaiser Permanente - San Leandro	\N	\N	\N	\N	37.7064867	-122.1647052	2500 Merced St San Leandro, CA 94577		Accepting donations at the front of the hospital M-F from 9 am - 3 pm	San Leandro	CA
1808	Falck Rocky Mountain	\N	\N	\N	\N	39.6635101	-104.8634307	10703 E. Bethany Dr.  Aurora, CO 80014	Yes	Front Door	Aurora	CO
1809	Meadowbrook Rehab Hospital	\N	\N	\N	\N	38.8099496	-94.937933	427 W Main St Gardner, KS 66030	Yes	Drop off at reception at the main entrance	Gardner	KS
1810	Saint John's Health Center Foundation	\N	\N	\N	\N	34.0307723	-118.4779644	2221 Santa Monica Blvd. Santa Monica, CA 90404	Unused	Drive-Thru donation drop site at Saint John's Foundation Office at 2221 Santa Monica Blvd located at the northwest corner of 23rd and Santa Monica Blvd.  Please enter on 23rd street.  The hours of operation are Monday – Friday from 10 a.m. to 4 p.m. Thanks for being our community partner in battling the COVID-19 virus. 	Santa Monica	CA
1811	Sentara Leigh Hospital	\N	\N	\N	\N	36.850608	-76.1903378	830 Kempsville Road Norfolk, VA 23502	Yes	Curbside procedure	Norfolk	VA
1812	Midwest Express Clinic - Blue Island	\N	\N	\N	\N	41.6714384	-87.680996	12200 Western Ave. #100 Blue Island, IL 60406	Yes	Stay in your vehicle and call us at 708-631-2781, we will pick up curbside - thank you! 	Blue Island	IL
1813	Midwest Express Clinic	\N	\N	\N	\N	41.6202965	-87.5236852	31 E Sibley St. Suite A Hammond, IN 46320	Yes	Stay in your vehicle and call us at 219-802-8800, we will pick up curbside - thank you! 	Hammond	IN
1814	University of Chicago Medicine	\N	\N	\N	\N	41.7916469	-87.6034081	900 E 57th St Chicago, IL 60637	Yes	Drop off at UCM  - BSD PPE Donation Center,  Point of contact Dan Tiberi 773 702-8865, dtiberi@bsd.uchicago.edu  OR  Knapp Center for Biomedical Discovery (KCDB): Drop off hours 8a-4p  External Drop off: Loading Dock in rear of building.   Internal Drop Off:  Room 1220	Chicago 	IL
1815	Reston Hospital	\N	\N	\N	\N	38.9626797	-77.363936	1850 Town Center Pkwy Reston, VA 20190	Yes	Main Hospital entrance. Tell receptionist or guard that you have donations	Reston	VA
1816	Midwest Express Clinic	\N	\N	\N	\N	41.4932345	-87.5068746	875 Joliet St Dyer, IN 46311	Yes	Stay in your vehicle and call us at 219-440-7340, we will pick up curbside - thank you! 	Dyer	IN
1817	Midwest Express Clinic - Wicker Park	\N	\N	\N	\N	41.9090324	-87.6777701	1520 N Damen Ave Chicago, IL 60622	Yes	Stay in your vehicle and call us at 312-283-5560, we will pick up curbside - thank you! 	Chicago	IL
1818	Palo Alto Medical Foundation Santa Cruz Chanticleer Center	\N	\N	\N	\N	36.9877256	-121.9786693	2907 Chanticleer Ave. Santa Cruz, CA 95065	No	Drop off curbside with call to 831-477-2377, attn: OBGYN department	Santa Cruz	CA
1819	Midwest Express Clinic - River North	\N	\N	\N	\N	41.8963515	-87.6350968	219 W Chicago Ave Chicago, IL 60654	Yes	Stay in your vehicle and call us at 312-878-1945, we will pick up curbside - thank you! 	Chicago	IL
1820	Henry Ford Hospital	\N	\N	\N	\N	42.3635633	-83.0750856	1 Ford Pl Detroit, MI 48202	As long as they are unused 	Currently running a community PPE collection drive 	Detroit	MI
1821	Midwest Express Clinic	\N	\N	\N	\N	41.4704226	-87.2758594	5043 E 81st Ave Merrillville, IN 46410	Yes	Stay in your vehicle and call us at 219-707-5276, we will pick up curbside - thank you! 	Merrillville	IN
1822	Atoka County Medical Center	\N	\N	\N	\N	34.3933742	-96.1544251	1590 W Liberty Road Atoka, OK 74525	Unsure	1590 W Liberty Road, Atoka OK 74525	Atoka	OK
1823	New Life Medical Center	\N	\N	\N	\N	45.598073	-122.8231096	14126 NW Dunbar Lane Portland, OR 97231	Yes	Residential address. Please leave in back porch as we have had some items stolen already 	Portland 	OR
1824	Beverly Hospital	\N	\N	\N	\N	42.5640529	-70.8757261	85 Herrick St Beverly, MA 01915	No	Attn: CCU Manager, or contact Mike Colancecco, critical care physician, to arrange drop off-781-901-4622	Beverly	MA
1827	Prince Edward Volunteer Rescue Squad	\N	\N	\N	\N	37.3020258	-78.3803564	500 Doswell St Farmville, VA 23901	Yes	500 Doswell St	Farmville	VA
1828	UC Davis Medical Center	\N	\N	\N	\N	38.5549492	-121.4546344	2315 Stockton Blvd Sacramento, CA 95817	Yes	Contact UC Davis Head of Supply Jita Buno jpbuno@ucdavis.edu | Residential dropoff/mail: ATTN: Donation Zongyin Hao, 5116 Infinity Ct, Carmichael, CA 95608	Sacramento	CA
1829	Rhode Island Hospital	\N	\N	\N	\N	41.8125272	-71.4076285	593 Eddy St Providence, RI 02903		Contact- supplychaininfo@lifespan.org	Providence	RI
1830	Kings County Hospital Center	\N	\N	\N	\N	40.6749969	-73.9555069	635 Prospect Place, Apt 1 Brooklyn, NY 11216	Yes	Residential. Thank you for your support! Please call 818-618-0746 or email christianna.sim@downstate.edu to make arrangements. Mailing is acceptable. Alternatively we can pick up if local/within distance pending schedule. For monetary donations, go to https://nychhc.networkforgood.com/	New York - Brooklyn	NY
1831	Sacred Peaks Health Center	\N	\N	\N	\N	35.238197	-111.571285	6300 N, US-89 Flagstaff, AZ 86004	Yes but must be unused	Drop off with triage desk for Dr. Anne	Flagstaff 	AZ
1832	Mid Coast Hospital 	\N	\N	\N	\N	43.9060845	-69.8904322	123 Medical Center Drive Brunswick, ME 04011 	No	Mid Coast Hospital  PPE Attn: Dr. Brady Colleen Mullin 123 Medical Center Drive Brunswick, ME 04011 	Brunswick	ME
1833	Morton Bakar Center	\N	\N	\N	\N	37.67883	-122.1040261	494 Blossom Way Hayward, CA 94541	Yes	494 Blossom Way Hayward, CA 94541	Hayward	CA
1834	Kaiser Permanente - San Jose	\N	\N	\N	\N	37.2398041	-121.8002512	250 Hospital Pkwy San Jose, CA  95119	Yes	Mail to Dr. Balaji Venkat Attn: Gina Kortz at the provided address. Only new or unused masks (even if expired). Call 669-333-2684 if you have questions.	San Jose 	CA
1835	New Hanover Regional Medical Center	\N	\N	\N	\N	34.206006	-77.9219862	2131 S 17th St Wilmington, NC 28401	No	Emergency department 	Wilmington	NC
1836	Asante Health System - Grants Pass	\N	\N	\N	\N	42.4211806	-123.3426466	500 SW Ramsey Ave Grants Pass, OR 97527	Yes	Loading dock	Grants Pass	OR
1837	Jefferson Health- New Jersey	\N	\N	\N	\N	39.7311223	-75.0595176	367 Hurffville-Crosskeys Rd. Sewell, NJ 08080	No	https://www.jeffersonhealth.org/coronavirus-covid-19/medical-supply-donation.html	Sewell	NJ
1838	CarePoint Health - Christ Hospital	\N	\N	\N	\N	40.7342585	-74.0498006	176 Palisade Ave Jersey City, NJ 07306	No	Bring to lobby and ask receptionist to call Marie Duffy or Dr. Woods 	Jersey City	NJ
1839	Inspira Medical Center Vineland	\N	\N	\N	\N	39.44534	-75.0584681	1505 West Sherman Ave. Vineland, NJ 08360	No	Main entrance, ED entrance 	Vineland 	NJ
1840	Hospice of the Fisher Home	\N	\N	\N	\N	42.4093551	-72.5296797	1165 North Pleasant Street Amherst, MA 01002			Amherst	MA
1841	OSF Saint Francis Medical Center 	\N	\N	\N	\N	40.6907755	-89.4840536	320 S Summit Dr Washington, IL 6157	Yes	Please mail! ATTN: Teresa Riech 	Washington	IL
1842	Community Health Center of Yavapai	\N	\N	\N	\N	34.6086454	-112.4610971	1090 Commerce Drive Prescott, AZ 86305	Yes	Call 928-442-5612 to arrange drop off or pick up	Prescott	AZ
1843	Aspen Infusion	\N	\N	\N	\N	33.2901788	-111.880194	2227 West Pecos Road Suite # 12 Chandler, AZ 85224	Yes		Chandler	AZ
1844	Healthy Living Network, LLC	\N	\N	\N	\N	38.6443888	-121.1258531	2365 Iron Point Rd #270 Folsom, CA 95630	Yes	Mail to: 7860 Olive St, Fair Oaks, CA 95630	Folsom	CA
1845	Garden Silver Town	\N	\N	\N	\N	34.0565207	-118.2874171	2830 Francis Ave. Los Angeles, CA 90005	Yes	2830 Francis Ave.	Los Angeles	CA
1846	Buffalo Hospital-Allina	\N	\N	\N	\N	45.1932288	-93.8713418	303 Catlin St Buffalo, MN 55313	Yes	Manufactured N95s, surgical masks, and hand sewn ear loop masks.  Tent located in main parking lot March 22nd-April 5th 9am-1pm 	Buffalo	MN
1847	Asante Health System	\N	\N	\N	\N	42.206032	-122.7250341	280 Maple St Ashland, OR 97520	Yes	Loading Dock	Ashland	OR
1848	Ali'i Health Center	\N	\N	\N	\N	19.5717098	-155.9623497	78-6831 Alii Dr #418 Kailua-Kona, HI 96740	No	78-6831 Alii Drive Suite 418	Kailua-Kona	HI
1849	Buncombe County Rescue Squad	\N	\N	\N	\N	35.5926984	-82.583836	116 Hansel Ave Asheville, NC 28806	Yes	Drop off or mail	Asheville	NC
1850	George Washington University Hospital	\N	\N	\N	\N	38.901261	-77.0507412	900 23rd St NW Washington, DC 20037	Yes	Drop off at front main entrance 	Washington	DC
1851	Imaging Center for Women	\N	\N	\N	\N	38.3076804	-77.4872184	1300 Hospital Dr #100 Fredericksburg, VA 22401	Yes	attn: Dr. Talukdar 	Fredericksburg	VA
1852	Harrison Hospital 	\N	\N	\N	\N	47.5829409	-122.6251543	2520 Cherry Ave Bremerton, WA  98310	Yes	ER enterance  	Bremerton 	WA
1853	Loma Linda University Health - Murrieta	\N	\N	\N	\N	33.6145875	-117.1691492	28062 Baxter Rd Murrieta, CA 92563	Yes	ATTN: COVID UNIT 	Murrieta	CA
1854	Hospital HIMA San Pablo Caguas	\N	\N	\N	\N	18.2178783	-66.0301092	100 Luis Munoz Marin Avenue Caguas, 00725, Puerto Rico	No	Enter property on side/delivery entrance and report to Warehouse. ATTN: Heidi Rodriguez	Caguas	PR
1855	Stonerise Healthcare	\N	\N	\N	\N	39.6580821	-79.9489688	30 Mon General Drive Morgantown, WV 26505	Yes	Building #2 Attention: Jessica Davis	Morgantown	WV
1856	Asante Health System - Rogue Regional Medical Center	\N	\N	\N	\N	42.3174845	-122.8311596	2825 E. Barnett Rd Medford, OR 97504	Yes	Loading dock	Medford	OR
1857	Adventist Health, Saint Helena	\N	\N	\N	\N	38.5425501	-122.4748268	10 Woodland Rd St Helena, CA 94574	Yes	Attn: Tim Lyons, MD	Saint Helena	CA
1858	Fitzgibbon Hospital	\N	\N	\N	\N	39.091782	-93.212758	2305 US-65 Marshall, MO 65340		Call (660)831-3261 to arrange a time for pickup. (You will be met in a facility parking lot at a pre-arranged time.)	Marshall	MO
1859	Kaiser Permanente - Redwood City	\N	\N	\N	\N	37.4893313	-122.223976	1100 Veterans Blvd Redwood City, CA 94063	New packaged equipment only 	Please deliver only new items from 6 am to 2:30 pm to the following location:  At the corner of 1100 Veterans Blvd, turn south on to Walnut Street Go to the loading dock of Supply Chain (off of Walnut Street, behind the Emergency Dept.)	Redwood City	CA
1860	Swedish Medical Center	\N	\N	\N	\N	39.6543242	-104.9811769	501 E Hampden Ave  Englewood, CO 80113	No		Englewood	CO
1861	Roane General Hospital	\N	\N	\N	\N	38.8157318	-81.3679449	200 Hospital Drive Spencer, WV 25276	Yes	ATTN: Doug Bentz or Nurses Station	Spencer	WV
1862	El Camino Health	\N	\N	\N	\N	37.3706448	-122.0786846	2400 Grant Road Mountain View, CA 94040	No	Mailing address is 2500 Grant Road, Mountain View, CA 94040, ATTN: DONATION To schedule a drop off, please contact the Foundation at foundation@elcaminohealth.org	Mountain View	CA
1863	Avamere Health Services	\N	\N	\N	\N	45.3386155	-122.7673044	25115 SW Parkway Ave. Suite B Wilsonville, OR 97070	Yes	Suite B: Kelsey Margheim 	Wilsonville	OR
1864	NorthShore University HealthSystem - Skokie Medical Office Building	\N	\N	\N	\N	42.056443	-87.7403913	9669 Kenton Ave Skokie, IL 60076	No	Donation Box in Valet Parking Lot	Skokie	IL
1865	Comfort Keepers InHome Care for the Elderly 	\N	\N	\N	\N	35.9372509	-86.8112856	6300 Tower Circle Franklin, TN 37067 	Yes	Attn: Tricia McConnell. Please call 614-787-5100 so I can arrange to meet you.	Franklin	TN
1866	University Medical Center	\N	\N	\N	\N	36.1597177	-115.1657104	1800 West Charleston Blvd Las Vegas, NV 89102	Yes	ATTN: Dinah Luy (Nurse Practitioner)	Las Vegas	NV
1867	Medical X-Ray Consultants 	\N	\N	\N	\N	44.8226101	-91.546324	2715 W Frank St Eau Claire, WI 54703	Yes		Eau Claire 	WI
1868	Malibu Urgent Care	\N	\N	\N	\N	34.034222	-118.6903244	23656 Pacific Coast Highway Malibu, CA 90265	Yes		Malibu	CA
1869	Mammoth Hospital	\N	\N	\N	\N	37.6441165	-118.9635535	85 Sierra Park Rd Mammoth Lakes, CA 93546	Yes		Mammoth Lakes	CA
1870	Kaiser Permanente - Los Angeles	\N	\N	\N	\N	34.0983524	-118.2948016	4867 W. Sunset Blvd Los Angeles, CA 90027	Yes	supply loading dock 	Los Angeles	CA
1871	Mantachie Rural Health Center	\N	\N	\N	\N	34.3232007	-88.4904036	5681 Hwy 363 Mantachie, MS 38855	Yes	Amy Floyd	Mantachie 	MS
1872	St. Peters Hospital	\N	\N	\N	\N	42.656158	-73.8034993	315 S Manning Boulevard Albany, NY 12208	Yes		Albany	NY
1873	St. Benedict's Nursing and Rehab Center	\N	\N	\N	\N	42.0133924	-87.8002115	6930 W Touhy Ave Niles, IL 60714	Yes		Niles 	IL
1874	Kaiser Permanente - Riverside	\N	\N	\N	\N	33.9049187	-117.4693433	10800 Magnolia Ave Riverside, CA 92505	No		Riverside	CA
1875	Liberty Shores Assisted Living	\N	\N	\N	\N	47.7387404	-122.6579616	19360 Viking Ave NW Poulsbo, WA 98370	Yes		Poulsbo	WA
1876	Kaiser Permanente - Oakland 	\N	\N	\N	\N	37.8244471	-122.2576787	280 W MacArthur Blvd Oakland, CA 94611	No	Command Center on 1st floor 	Oakland	CA
1877	Rochester General Hospital	\N	\N	\N	\N	43.1927407	-77.5855935	1425 Portland Ave Rochester, NY 14621	Yes	ATTN: Dr. Brian Greenburg Rochester General Hospital Emergency Department   OR   Email richardecoiamd@gmail.com	Rochester	NY
1878	Western Missouri Medical Center	\N	\N	\N	\N	38.765869	-93.7224074	403 Burkarth Rd Warrensburg, MO 64093	No	M-F Outpatient Entrance, weekends Emergency Department	Warrensburg	MO
1879	Apria Healthcare	\N	\N	\N	\N	34.2146151	-118.4971086	7929 Ruffner Ave Van Nuys, CA 91406	Yes	ATTN: Sean Nahm	Van Nuys	CA
1880	Portsmouth Ambulance	\N	\N	\N	\N	40.8146643	-82.9753153	606 N. Sandusky Ave. Bucyrus, OH 44820	Yes	Knock on front door.	Bucyrus	OH
1881	Scripps Health	\N	\N	\N	\N	N/A	N/A	For details please email supplychainmanagement@scrippshealth.org	No	See https://www.scripps.org/news_items/6882-what-is-coronavirus-who-is-affected - If planning to donate, please contact email supplychainmanagement@scrippshealth.org first.	San Diego	CA
1882	MemorialCare Orange Coast Medical Center	\N	\N	\N	\N	33.7004664	-117.9557452	18111 Brookhurst St Fountain Valley, CA 92708	No	Curbside on the street of Cashew/Foster at the Emergency Department. Attn: Efren Grospe under Kathy Dang (RN)'s request. Thank you! 	Fountain Valley	CA
1883	Burbank Pediatrics	\N	\N	\N	\N	34.1755451	-118.3496419	1411 N Hollywood Way Burbank, CA 91505	Yes	Walk in or call	Burbank 	CA
1884	Thomas Jefferson University Hospital	\N	\N	\N	\N	39.9477365	-75.156955	233 South 10th Street Philadelphia, PA 19107	No	Bluemle Life Sciences Building (loading dock) https://www.jeffersonhealth.org/coronavirus-covid-19/medical-supply-donation.html	Philadelphia	PA
1885	Cape Abilities Inc	\N	\N	\N	\N	41.6825367	-70.2824074	895 Mary Dunn Rd Hyannis, MA 02601	Yes	Front door drop off	Hyannis 	MA
1886	Franciscan Health East	\N	\N	\N	\N	40.386364	-86.839481	3001 S Creasy Lane, Suite 100B Lafayette, IN 47905	Yes	Attention: Craig Voll at the above address; phone number 765-420-5812	Lafayette	IN
1887	Unity Hospital 	\N	\N	\N	\N	43.1924954	-77.7052439	1555 Long Pond Rd Rochester, NY 14626	Yes	All the above 	Rochester 	NY
1888	Capital Home Health Agency, Inc. 	\N	\N	\N	\N	34.0326722	-118.368771	 5751 W Adams Blvd Los Angeles, CA 90016	Yes	Drop off at front door and call (323) 930-7809. We send out Registered Nurses and caregivers in the field to take care of sick people. 	Los Angeles	CA
1889	Reading Hospital - Tower Health	\N	\N	\N	\N	40.3298163	-75.9493335	420 S 5th Ave West Reading, PA 19611	Yes	Front desk Interventional Radiology	West Reading	PA
1890	Sholom Home West	\N	\N	\N	\N	44.938297	-93.3952609	3620 Phillips Pkwy Minneapolis, MN 55426	Yes	Front desk/reception	St. Louis Park	MN
1891	Marshfield Medical Center ED	\N	\N	\N	\N	45.5065323	-91.7595124	1700 W Stout St Rice Lake, WI 54868	Yes	Drop off at ED entrance 	Rice Lake	WI
1892	Ashe Memorial Hospital	\N	\N	\N	\N	36.4234821	-81.4577703	200 Hospital Ave Jefferson, NC 28640	Yes	ATTN: Dr. Brian Sachs	Jefferson	NC
1893	TMS & Brain Health	\N	\N	\N	\N	34.0378628	-118.4682088	3200 Santa Monica Blvd., Suite 204 Santa Monica, CA 90404	Yes	Please call (833) 867-2329	Santa Monica	CA
1894	Legacy Health	\N	\N	\N	\N	45.543319	-122.670705	501 N. Graham Street Portland, OR 97227	Yes	Main office building by valet parking - or email giving@lhs.org	Portland	OR
1895	Municipality of Anchorage	\N	\N	\N	\N	61.137909	-149.8624687	9191 Old Seward Highway Anchorage, AK 99515	Yes	The following PPE is needed immediately: Please do not give expired goods  Nitrile exam gloves (NO LATEX GLOVES) N95 masks Surgical masks Medical Gowns Face Shields which protect eyes  Please take Personal Protective Equipment to: CrossFit Alaska 9191 Old Seward Highway Entrance faces Scooter Ave   Hours of donation: 9:00 AM- 5:00 PM 7 days a week. For questions, please email covid-19@anchorageak.gov or call 907-343-4019	Anchorage	AK
1896	GW Operational Medicine	\N	\N	\N	\N	38.9034801	-77.0475413	2120 L St NW Washington, DC 20037	Open boxes, sealed items.	ATTN: Alex Cullen	Washington	DC
1897	Rush Copley Cardiovascular Consultants 	\N	\N	\N	\N	41.7302622	-88.2655085	2088 Ogden Ave #140 Aurora, IL 60504	No	Dr Christy	Aurora	IL
1898	University Pediatric Dentistry (for Emergency Dental Care	\N	\N	\N	\N	42.9037253	-78.8691528	1100 Main St Buffalo, NY 14209	No	 Mail to: University Pediatric Dentistry    1100 Main Street    Buffalo, NY  14209 or curbside drop off call 716-861-3510 Monday-Friday 9-4:00	Buffalo	NY
1899	Aventura at Prospect 	\N	\N	\N	\N	39.8824581	-75.3073715	815 Chester Pike Prospect Park, PA 19076	No	Drop off at reception desk	Prospect Park	PA
1900	Jefferson Torresdale Hospital	\N	\N	\N	\N	40.0716695	-74.9832205	10800 Knights Rd Philadelphia, PA 19114	No	Main Lobby	Philadelphia	PA
1901	BridgePoint Hospital National Harbor 	\N	\N	\N	\N	38.8250714	-77.0132852	4601 Martin Luther King Jr Ave SW Washington, DC 20032	Yes	Nena Bussey	DC	DC
1902	The Family Health Centers PA	\N	\N	\N	\N	35.586815	-82.5558221	206 Asheland Ave Asheville, NC 28801	Yes		Asheville	NC
1903	Family Health Center	\N	\N	\N	\N	42.2592467	-71.8149758	26 Queen St Worcester, MA 01610	Yes	Best to mail: attention Joann Ford	Worcester	MA
1904	Alta Bates Summit Medical Center 	\N	\N	\N	\N	37.822071	-122.2627788	357 34th St Oakland, CA 94609	Yes	Bring to ER entrance and speak to security to call charge RN to accept	Oakland 	CA
1905	The University of Kansas Health System St Francis Campus	\N	\N	\N	\N	39.0565558	-95.69591	1700 SW 7th Street Topeka, KS 66606	No	By entrance C, attention Material Management	Topeka	KS
1906	CentraState Medical Center	\N	\N	\N	\N	40.2376248	-74.3125855	901 W Main St Freehold Township, NJ 07728	unknown	Attn: Medical staff office, main entrance	Freehold	NJ
1907	Clements University Hospital (UT Southwestern Medical Center) 	\N	\N	\N	\N	32.8193657	-96.8488409	6201 Harry Hines Blvd Dallas, TX 75235	Yes	Drop off at main hospital entrance. Contact info: giving@utsouthwestern.edu 	Dallas	TX
1908	Mercy Hospital Emergency Department	\N	\N	\N	\N	25.7400049	-80.213526	3663 S Miami Ave Miami, FL 33133	Yes	Care of Dr. David Sack, Director of Emergency Medicine	Miami 	FL
1909	Swedish Mill Creek Emergency Department	\N	\N	\N	\N	47.8785543	-122.2343383	13020 Meridian Ave S Everett, WA 98208	Yes	Go to the front desk of the Emergency Department- if no one can accept donations there ask them to get one of the ER doctors.	Everett	WA
1910	Guthrie Robert Packer Hospital	\N	\N	\N	\N	41.9803903	-76.5199915	1 Guthrie Square Sayre, PA 18840	Yes	ATTN Shaylyn Beck LDRP	Sayre	PA
1911	Marshall Medical Center 	\N	\N	\N	\N	38.72467	-120.7916501	1100 Marshall Way Placerville, CA 95667	Yes	Drop off to ED or North II	Placerville 	CA
1912	Holy Family Manor 	\N	\N	\N	\N	40.5087166	-80.0431232	301 Nazareth Way Pittsburgh, PA 15229	No	Front door- Attn Maura	Pittsburgh 	PA
1913	Institute for Orthopaedic Surgery	\N	\N	\N	\N	40.6971707	-84.0875888	801 Medical Dr, Suite B Lima, OH 45804	Yes	ATTN: Charlotte Alt	Lima 	OH
1914	Occupational Medical Care	\N	\N	\N	\N	29.641633	-95.1610461	4500E. Sam Houston Pkwy S.  Suite 135 Pasadena, TX 77505	Yes	Suite 135  Attention: Bob Puig	Pasadena	TX
1915	CareOne at Holmdel 	\N	\N	\N	\N	40.3542196	-74.1961498	188 NJ-34 Holmdel, NJ 07733	Yes	ATTN Diana in rehab	Holmdel 	NJ
1916	Milford Regional Laboratory	\N	\N	\N	\N	42.1221817	-71.5308508	117 Water St Suite 205 Hopedale, MA 01747	Yes	Attn: Dr. Bakowitz, Milford Anesthesia Associates	Milford	MA
1917	St. Luke's Hospital Bethlehem Campus	\N	\N	\N	\N	40.6089201	-75.3937008	801 Ostrum St Bethlehem, PA 18015	Yes		Bethlehem 	PA
1918	Burgess Square Healthcare & Rehab Centre	\N	\N	\N	\N	41.7822318	-87.9729106	5801 S Cass Ave Westmont, IL 60559	Yes	Front lobby please	Westmont	IL
1919	Durham Fire Department	\N	\N	\N	\N	36.0259349	-78.859992	2008 E Club Blvd Durham, NC 27704	Yes	Attn: Chief Tina Hamlin	Durham	NC
1920	ENT and Allergy Associates 	\N	\N	\N	\N	41.0598012	-73.8347386	660 White Plains Rd #400 Tarrytown, NY 10591	No		Tarrytown 	NY
1921	Swedish Redmond Emergency Department	\N	\N	\N	\N	47.6763693	-122.0990518	18100 NE Union Hill Rd Redmond, WA 98052	Yes	Go to the front desk of the Emergency Department- if no one can accept donations there ask them to get one of the ER doctors.	Redmond	WA
1922	Satellite Healthcare	\N	\N	\N	\N	37.2454173	-121.8921395	1450 Kooser Rd San Jose, CA 95118	No	Front Lobby	San Jose	CA
1923	Chicago Women's Health Group - Northwestern Memorial Hospital 	\N	\N	\N	\N	41.8964793	-87.6226895	211 East Chicago Avenue Suite 1200 Chicago, IL 60611	Yes	Call 312-961-0399 and I will come down and get it- thank you	Chicago	IL
1924	Swedish Edmonds	\N	\N	\N	\N	47.8033141	-122.3344445	21601 76th Ave W Edmonds, WA 98026	Yes	First Floor Main Entrance off of Highway 99	Edmonds	WA
1925	Parkland Hospital	\N	\N	\N	\N	32.8128222	-96.8356763	5200 Harry Hines Blvd Dallas, TX 75235	Yes	Drop off at main entrance. Contact info: giving@utsouthwestern.edu	Dallas	TX
1926	St Joseph's University Medical Center	\N	\N	\N	\N	40.9022582	-74.1661378	703 Main St Paterson, NJ 07503	Yes		Paterson 	NJ
1927	Lee's Summit Medical Center	\N	\N	\N	\N	38.90359	-94.3330751	2100 SE Blue Pkwy Lee's Summit, MO 64063	No	ATTN: Trevor Adkins	Lee's Summit	MO
1928	Jennifer Young DO	\N	\N	\N	\N	34.207294	-118.8848929	2100 Lynn Rd #215 Thousand Oaks, CA 91360	Yes	Attn Tanya	Thousand Oaks	CA
1929	HCA Houston Healthcare Medical Center	\N	\N	\N	\N	29.72272	-95.3875429	1313 Hermann Dr Houston, TX 77004	Yes		Houston	TX
1930	Metropolitan Hospital Center 	\N	\N	\N	\N	40.7852328	-73.945029	1901 1st Avenue New York, NY 10029	Yes	Attention: Werlinda Suberbi, head nurse 3B clinic	New York	NY
1931	Kaiser Permanente - Falls Church	\N	\N	\N	\N	38.8838358	-77.1700053	201 N Washington St Falls Church, VA 22046	No	Attn: Kaiser, Falls Church. Desperately need N95 masks for nurses etc. running out of equipment.  Nurse: Siluna Neou or ER 	Falls Church	VA
1932	University of Louisville Hospital -- Emergency Dept	\N	\N	\N	\N	38.2480611	-85.744415	530 S Jackson Street Louisville, KY 40202	Yes	Andrew Odom, RN	Louisville	KY
1933	Moffett Drug	\N	\N	\N	\N	39.8289429	-99.8892251	102 S State Street  Norton, KS 67654	No	Mail attn: Abby Rice	Norton	KS
1934	Summa Barberton Hospital	\N	\N	\N	\N	41.0148045	-81.5894562	155 5th Street NE Barberton, OH 44203	Yes	Main entrance	Barberton	OH
1935	Harford Memorial Hospital 	\N	\N	\N	\N	39.5429695	-76.0908574	501 S. Union Avenue Havre De Grace, MD 21078	Yes	To Emergency Dept. Ask registration to call ED charge nurse.	Havre de Grace	MD
1936	Highland Hospital - Fairmont Campus	\N	\N	\N	\N	37.7081595	-122.1198168	15400 Foothill Blvd San Leandro, CA 94578	Email is: AHSF.admin@alamedahealthsystem.org. No homemade masks, please.	Donations must be dropped off at the Fairmont Campus - Central Supply Service located at 15400 Foothill Blvd in San Leandro.    Hours are 8am-4pm Monday-Friday.​  Central Supply is between E building and cafeteria.  Follow donation signage to Receiving dock	Oakland	CA
1937	Triven Health	\N	\N	\N	\N	40.1389662	-82.9252388	109 Commerce Park Dr Westerville, OH 43082	Yes	home address: 983 Clubview Blvd S	Columbus	OH
1938	Amy L Davis, DO, MS, FACP, FAAHPM, FASAM	\N	\N	\N	\N	40.0218748	-75.3175763	16 N Bryn Mawr Ave, #386 Bryn Mawr, PA 19010	Yes	Residential. Must be mailed or drop off w pre-arranged time. Thank you. Closed packages, even if very expired dates, preferred to open, but we'll take and use with gratitude whatever we can get. 	Bryn Mawr	PA
1939	In Home Recovery	\N	\N	\N	\N	37.9480066	-121.9549322	5512 Arizona Dr Concord, CA 94521	Yes		Concord	CA
1940	Dallas VA Medical Center	\N	\N	\N	\N	32.693296	-96.7915235	4500 S Lancaster Rd Dallas, TX 75216	Yes	Main entrance drop off. Can also contact giving@utsouthwestern.edu	Dallas	TX
1941	Pacific Coast Hospice	\N	\N	\N	\N	33.3627038	-111.6340944	2919 S Ellsworth Rd Ste 129 Mesa, AZ 85212	Yes	Please leave with Front Desk	Mesa	AZ
1942	Great Lakes Physicians	\N	\N	\N	\N	43.6551466	-84.2313462	414 W Wackerly Midland, MI 48640	Yes	ATTN Shay Raleigh	Midland	MI
1944	One Community Health	\N	\N	\N	\N	38.5705016	-121.4813674	1500 21st Street Sacramento, CA 95811	Yes	Drop at parking lot entrance 	Sacramento 	CA
1945	Chicago Lakeshore Hospital	\N	\N	\N	\N	41.9702524	-87.650596	4840 N Marine Dr Chicago, IL 60640	Yes	Leave at front desk with receptionist attn: Dr. Jutovsky	Chicago	IL
1946	Childrens Hospital, Minneapolis	\N	\N	\N	\N	45.0584723	-93.50513	17752 58th Circle North Plymouth, MN 55446	Yes		Plymouth	MN
1947	St Anthony's 	\N	\N	\N	\N	47.3644245	-122.6134684	11567 Canterwood Blvd Gig Harbor, WA 98332	Yes	Attention PPE donations CC Sara Chacon Diagnostic imaging  11567 Canterwood Blvd  Gig Harbor Wa 98332	Gig Harbor 	WA
1948	Kaiser Permanente - Panorama City	\N	\N	\N	\N	34.2174157	-118.4297275	13652 Willard St  Panorama City, CA 91402	Yes	Attn: Anesthesia Dept Robert Lineses	Panorama City	CA
1949	Millcreek Community Hospital 	\N	\N	\N	\N	42.0776722	-80.0926455	5515 Peach St Erie, PA 16509	Yes	Loading dock attention Bill	Erie	PA
1950	South Madison Community Foundation	\N	\N	\N	\N	40.0000546	-85.7470964	233 S. Main St. Pendleton, IN 46064	Please call the following number 765-778-8444 and see if they except open boxes/bags	Please call the following number 765-778-8444 before dropping off items. The United Way of Madison County will distribute to local area hospitals. 	Pendleton 	IN
1951	Digestive Health Associates of Texas	\N	\N	\N	\N	32.7903447	-96.7813167	3417 Gaston Ave Ste. 790 Dallas, TX 75246	Yes	Contact: Sarita Gayle.  Call me at 5127969916 if delivery does not want to come in building	Dallas	TX
1952	WakeMed Raleigh Campus	\N	\N	\N	\N	35.7861875	-78.5875089	3024 New Bern Ave, Suite G03 Raleigh, NC 27610	Yes		Raleigh	NC
1953	Synergy HomeCare Roseville	\N	\N	\N	\N	38.7884042	-121.334751	316 Chelmsford Ct Roseville, CA 95747	Yes	front porch	Roseville	CA
1954	Ascentist Ear Nose and Throat	\N	\N	\N	\N	39.0044175	-94.6925582	6815 E Frontage Rd Ste B Overland Park, KS 66204	Yes	6815 E. Frontage Rd	Merriam	KS
1955	Total Health Care	\N	\N	\N	\N	39.3032246	-76.6316142	1501 Division St  Baltimore, MD 21217	Yes	Attn Dr Marceé White 	Baltimore 	MD
1956	Consultants and Cardiology and Electrophysiology	\N	\N	\N	\N	41.7202804	-87.7105046	3545 95th St Evergreen Park, IL 60805	No	Can be dropped off in the office Monday through Friday 9 to 5	Evergreen Park	IL
1957	Central Texas Community Health Centers	\N	\N	\N	\N	30.3890723	-97.7126604	2115 Kramer Ln #100 Austin, TX 78758	Yes	CommUnityCare Central Central Warehouse, Tiahra Kellar	Austin	TX
1958	Air Methods Corporation	\N	\N	\N	\N	39.6160447	-104.903024	5500 S Quebec St Greenwood Village, CO 80111	Yes	Attn. Paul Williams	Greenwood Village	CO
1959	Dignity Health California Hospital	\N	\N	\N	\N	34.0374888	-118.2661449	1401 S Grand Ave Los Angeles, CA 90015	Yes		Los Angeles	CA
1960	Catholic Eldercare	\N	\N	\N	\N	44.9975183	-93.2654374	909 NE Main St Minneapolis, MN 55413	Yes	Main Street Lodge, attn: Stephanie	Minneapolis	MN
1961	MJ Medical Group	\N	\N	\N	\N	41.9961259	-87.717309	6326 N Lincoln Ave Chicago, IL 60659	Yes	Drop off at front desk or send to attn: Dr. Jutovsky	Chicago	IL
1962	Harbor-UCLA Medical Center	\N	\N	\N	\N	33.8308433	-118.2924099	1000 W Carson St. Torrance, CA 90502	Unsure	Contact Volunteer Department	Torrance	CA
1963	Treasure Valley Midwives	\N	\N	\N	\N	43.6158651	-116.1932735	207 W Washington St Boise, ID 83702	Yes	Mailing address: ATTN: Metta, Treasure Valley Midwives 207 W Washington St Boise ID 83702 If dropping off, there is a back door, downstairs (visible from the back parking lot). Items can be left in front of the downstairs door any time. 	Boise	ID
1964	Nexus Specialty Hospital	\N	\N	\N	\N	30.1888066	-95.4603347	123 Vision Park Blvd Shenandoah, TX 77384	Yes	ATTN: ALVIN CASTRO	Shenandoah	TX
1965	Saint Luke's South	\N	\N	\N	\N	38.9037578	-94.6699882	12300 Metcalf Ave Overland Park, KS 66213	Yes	SLS RNs	Overland Park	KS
1966	Oakland Heights Nursing and Rehabilitation	\N	\N	\N	\N	37.794724	-122.2251041	2361 E. 29th Street Oakland, CA 94606	Yes	2361 E. 29th Street	Oakland	CA
1967	Springhill Medical Group 	\N	\N	\N	\N	38.0070008	-121.8663853	2220 Gladstone Dr # 3 Pittsburg, CA 94565	Yes	Curbside ok, please call (619)944-1087 first	Pittsburg	CA
1968	Paratech Ambulance Service	\N	\N	\N	\N	43.1351604	-87.9916182	6471 N Industrial Rd Milwaukee, WI 53223	Yes	Donations can be dropped off Monday through Friday from 8am to 4 pm.  Please call 414-358-2040 if you have questions.	Milwaukee	WI
1969	Delaware County Memorial Hospital (DCMH)	\N	\N	\N	\N	39.9546974	-75.283626	501 N Lansdowne Ave Drexel Hill, PA 19026	Yes	Curbside	Drexel Hill	PA
1970	American Health Communities	\N	\N	\N	\N	35.9177445	-86.8437984	201 Jordan Rd #200 Franklin, TN 37067	Yes	This is our corporate office; please put Attn: Brad Brandt	Franklin	TN
1971	Open System Imaging	\N	\N	\N	\N	39.7308276	-121.8092396	1555 Springfield Dr Chico, CA 95928	Yes	Curbside weekdays	Chico	CA
1972	United Way	\N	\N	\N	\N	40.1049326	-85.682111	205 W 11th St Anderson, IN 46016	 Please call the following number 765-643-7493 to see if they will except open boxes/bags	Please call the following number 765-643-7493 before dropping off items. The  The United Way of Madison County will distribute to local area hospitals. 	Anderson	IN
1973	Visiting Angels 	\N	\N	\N	\N	30.6371177	-97.6767489	707 S Main St, #201 Georgetown, TX 78626	Yes	Can leave at the door and notify 512-922-8979 when delivered for pick up 	Georgetown 	TX
1974	Stonebrook Health and Rehabilitation 	\N	\N	\N	\N	37.2448457	-121.9470107	350 De Soto Dr Los Gatos, CA 95032	Yes	350 De Soto Dr, Los Gatos, CA 95032	Los Gatos 	CA
1975	UCSF Fresno	\N	\N	\N	\N	36.7436852	-119.782252	155 N Fresno St, Suite 307 Fresno, CA 93701	Yes	At the security desk please	Fresno	CA
1976	Mount Sinai Hospital	\N	\N	\N	\N	40.7901407	-73.9527505	1468 Madison Ave. New York, NY 10029	Yes	See contacts and info at https://www.mountsinai.org/about/covid19/donations-supplies	New York - Manhattan	NY
1977	Hospice of the South Coast, LLC	\N	\N	\N	\N	32.8955807	-117.213916	10251 Vista Sorrento Pkwy, Suite 270 San Diego, CA 92121	Yes	10251 Vista Sorrento Pkwy, Ste 270	San Diego	CA
1978	Great Lakes Eye Care	\N	\N	\N	\N	42.0659755	-86.4689285	2848 Niles Rd St Joseph, MI 49085	Yes	Attn: Shelby Weaver 	St Joseph 	MI
1979	Menorah Park Home Health	\N	\N	\N	\N	41.4980039	-81.4855624	27100 Cedar Rd Beachwood, OH 44122	Yes	ATTN Menorah Park Home Health	Beachwood 	OH
1980	Watsonville Health Center	\N	\N	\N	\N	36.9272604	-121.7647447	1430 Freedom Blvd, Suite D Watsonville, CA 95076	No	Suite D Attention: Walter Espinoza	Watsonville	CA
1981	Plattsburgh Medical Care	\N	\N	\N	\N	44.694822	-73.513491	675 Route 3/NY-3 Plattsburgh, NY 12901	Yes	675 route 3 inside office	Plattsburgh	NY
1982	Birchwood Terrace Rehab and Healthcare	\N	\N	\N	\N	44.5158719	-73.2600333	43 Starr Farm Rd Burlington, VT 05408	Yes	Receiving	Burlington 	VT
1983	Whitmarsh House 	\N	\N	\N	\N	41.8493304	-71.403103	1055 N Main St Providence, RI 02904	Yes	Att: Laura Hay (leave at back door) 	Providence 	RI
1984	St. Jude Renal Care Facility, Inc.	\N	\N	\N	\N	15.1630474	145.7217235	Kulot Di Rosa Dr, Chalan Kiya, Saipan Northern Mariana Islands, GU 96950	No	In front of Saipan Health Clinic, P.O. Box 502878, Kulot Di Rosa Dr.	Northern Mariana Islands	GU
1985	Oyuna Hospice Inc	\N	\N	\N	\N	36.8097046	-119.7794719	5067 N. Mariposa St. Suite 104 Fresno, CA 93710	Yes	Drop off anytime with advance notice, or during normal business hours M-F 9-5. Contact # 559-374-2726, any staff can assist.	Fresno	CA
1986	Rolling Hills Fire Department 	\N	\N	\N	\N	36.1592392	-95.7542574	40 S 200th E Ave Tulsa, OK 74108	Yes	40 S. 200th E. Ave.	Tulsa	OK
1988	Virtua Our Lady of Lourdes Hospital	\N	\N	\N	\N	39.9279261	-75.0949231	1600 Haddon Ave Camden, NJ 08103	Yes		Camden	NJ
1989	Mercy Health - Anderson Hospital	\N	\N	\N	\N	39.0856971	-84.348906	7500 State Rd Cincinnati, OH 45255	Yes	Drop off at front entrance	Cincinnati	OH
1990	Davita Evanston	\N	\N	\N	\N	42.0410863	-87.7000853	1922 Dempster Street Evanston, IL 60202	As long as masks are clean/sterile	Ok to drop off in front office. “Front” door is actually located off the back corner parking lot adjacent to the Goodwill drop off. Leave for Courtney.  Or preferably, can call 847-877-7388, and we can come outside entrance for pickup. 	Evanston	IL
1991	Valleywise Health Medical Center	\N	\N	\N	\N	33.4577349	-112.0283148	2601 E Roosevelt St Phoenix, AZ 85008	No	ATTN ER, drop off at information desk.	Phoenix	AZ
1992	Ear, Nose, & Throat Clinics of Oahu	\N	\N	\N	\N	21.3835987	-157.9382973	98-1079 Moanalua Rd, #660 Aiea, HI 96701	Yes	Aiea	Aiea	HI
1993	Mission Hospice and Home Care	\N	\N	\N	\N	37.5590634	-122.3028677	1670 S Amphlett Blvd, Suite 300 San Mateo, CA 94402	No	Please contact Laurie Hill at lhill@missionhospice.org she is accepting donations Monday through Friday 8-5pm.	San Mateo 	CA
1994	Memorial Hospital at Gulfport 	\N	\N	\N	\N	30.367334	-89.1169184	1340 Broad Ave Gulfport, MS 39501	Yes	Main entrance for delivery to 7th floor MedSurge Telemetry in a sealed box written in marker for MEDSURGE TELEMETRY 7TH FLOOR	Gulfport 	MS
1995	The United Way of Madison County	\N	\N	\N	\N	40.275642	-85.8422651	208 S. Anderson St. Elwood, IN 46036	Please call the following number 765-778-8444 to see if they except open boxes/bags 	Please call the following number 765-778-8444 before dropping off items. The United Way of Madison County will distribute to local area hospitals. 	Elwood 	IN
1996	Redwood Interventional Radiology	\N	\N	\N	\N	38.4422133	-122.7018128	121 Sotoyome St Santa Rosa, CA 95405	Yes	ATTN: Lesley Field, PA-C or Dianne Davis	Santa Rosa	CA
1997	Palo Alto Medical Foundation	\N	\N	\N	\N	37.5155162	-122.2606032	301 Industrial Rd San Carlos, CA 94070	Yes	First Floor Parking Garage, Respiratory Clinic	San Carlos	CA
1998	Rapid Med Urgent Care	\N	\N	\N	\N	33.0734202	-97.123959	8501 Justin Road/FM 407 Highland Village, TX 75077	Yes		Highland Village	TX
1999	Circare	\N	\N	\N	\N	43.0493438	-76.1646459	620 Erie Blvd W, #302 Syracuse, NY 13204	Yes	Call 315-472-7363 ext 145, and we will send people down.  OR  Mailing: ATTN: Danielle Tongue  	Syracuse	NY
2000	MDHHS Kalamazoo County CPS	\N	\N	\N	\N	42.2775425	-85.5829537	22 E Stockbridge Ave Kalamazoo, MI 49001	Yes	Go to back and ring the doorbell	Kalamazoo	MI
2001	Hospice Cleveland County 	\N	\N	\N	\N	35.3107442	-81.518926	951 Wendover Heights Dr Shelby, NC 28150	Yes	Front door	Shelby 	NC
2002	Surgical Care Affiliates 	\N	\N	\N	\N	28.0888565	-80.619622	Bulldog Blvd #104 Melbourne, FL 32901	Yes	Attn: Mike Norton	Melbourne	FL
2003	Bertha Volunteer Ambulance Service 	\N	\N	\N	\N	46.2680659	-95.065543	127 2nd Ave NW Bertha, MN 56437	Yes	Atta Chief VanDenheuvel 	Bertha 	MN
2004	Dallas Regional Medical Center 	\N	\N	\N	\N	32.7784533	-96.6004473	1011 N Galloway Ave Mesquite, TX 75149	No	Attention: Lisa Fox	Mesquite 	TX
2005	Merit Health River Oaks	\N	\N	\N	\N	32.3254871	-90.1053085	1030 River Oaks Dr Flowood, MS 39232	Yes		Flowood	MS
2006	Sutton Hill Center	\N	\N	\N	\N	42.6356072	-71.0770295	1801 Turnpike St North Andover, MA 01845	Yes	Drop off in vestibule to receptionist	North Andover	MA
2007	Inova Alexandria Hospital Labor and Delivery 	\N	\N	\N	\N	38.82245	-77.1049983	4320 Seminary Rd Alexandria, VA 22304	Yes	Please directly mail to the labor and delivery department 	Alexandria 	VA
2008	Bassett Medical Center	\N	\N	\N	\N	42.695726	-74.9233609	1 Atwell Rd Cooperstown, NY 13326	No		Cooperstown	NY
2009	Dr. Jack M Matheny II	\N	\N	\N	\N	29.6414788	-81.694321	700 Zeagler Drive Suite 10 Palatka, FL 32177	Yes		Palatka 	FL
2010	North Hawaii Community Hospital	\N	\N	\N	\N	20.0223959	-155.6644356	67-1123 Mamalahoa Hwy Kamuela, HI  96743	Yes	Attn: BarbraRose; Family Birthing Unit	Kamuela 	HI
2011	Chicago Center for Women's Health	\N	\N	\N	\N	41.7568722	-87.7440689	7456 S State Rd Suite 303 Bedford Park, IL 60638	Yes	Call 312-626-2244 for someone to meet at entrance	Chicago	IL
2012	Seattle Children's	\N	\N	\N	\N	47.6784012	-122.2642546	6901 Sand Point Way NE Seattle, WA 98115	No	Curbside dropoff M-F 9AM-3PM at Seattle Children's Guild Association Office. For questions contact guildassociation@seattlechildrens.org or call 206-987-2153. More information at https://m.facebook.com/story.php?story_fbid=10157320680637061&id=14517117060	Seattle	WA
2013	Rheumatology Consultants 	\N	\N	\N	\N	40.6352222	-73.7038289	1157 Broadway Hewlett, NY 11557	Yes		Hewlett	NY
2014	Health Plus Management 	\N	\N	\N	\N	40.7225368	-73.6023822	50 Charles Lindbergh Blvd Suite 103 Uniondale, NY 11553	No	Salvatore Passanisi 	Uniondale 	NY
2015	Seattle Children's Bellevue Clinic	\N	\N	\N	\N	47.6242737	-122.1848377	1500 116th Ave. NE Bellevue, WA 98004	No	Curbside dropoff M-F 9AM-3PM. Contact guildassociation@seattlechildrens.org or call 206-987-2153. More information https://m.facebook.com/story.php?story_fbid=10157320680637061&id=14517117060	Bellevue	WA
2016	Baltimore Washington Medical Center	\N	\N	\N	\N	39.1376872	-76.6228375	301 Hospital Dr Glen Burnie, MD 21061	Yes	To ER front desk 	Glen Burnie	MD
2017	Grand River Medical Group	\N	\N	\N	\N	42.4976383	-90.6864231	1515 Delhi St #100 Dubuque, IA 52001	Yes	Drop off or mail to above address. Attention: Kayla Hopson, COO	Dubuque	IA
2018	Allergy & Asthma Centers Woodbridge 	\N	\N	\N	\N	38.6334929	-77.2795359	2200 Opitz Blvd Suite 230 Woodbridge, VA 22191	Yes	ATTN: Jay Won Bartlett, NP	Woodbridge 	VA
2019	Sunrise Senior Living	\N	\N	\N	\N	38.8741132	-77.1348092	5910 Wilson Blvd Arlington, VA 22205	No	ATTN: Rob McAndrews	Arlington	VA
2020	FDNY Academy	\N	\N	\N	\N	40.7915557	-73.7743762	EMS Academy, Bldg. 325 Fort Totten Bayside, NY 11359	Yes	Drop off in building. Notify Security booth.	New York - Queens	NY
2021	Rapid Med Urgent Care	\N	\N	\N	\N	33.0715678	-97.0884051	8501 FM 407 Highland Village, TX 75077	Yes		Double Oak	TX
2022	NYS Veterans Home at Montrose 	\N	\N	\N	\N	41.379253	-73.857161	9 Hilltop Dr Putnam Valley, NY 10579	Yes	Residence. Mailing address ATTN: Gina Esterly 	Putnam Valley 	NY
2023	San Luis Valley Health	\N	\N	\N	\N	37.4724787	-105.882886	106 Blanca Ave. Alamosa CO 81101	Clean only		Alamosa	CO
2024	Addison Pointe Healthcare and Rehab 	\N	\N	\N	\N	41.6015398	-87.0403439	780 Dickinson Rd Chesterton, IN 46304	No	Leave with receptionist 	Chesterton	IN
2025	Carefirst Rehab	\N	\N	\N	\N	38.3718276	-85.7708443	7225 Nova's Landing Dr Sellersburg, IN 47172	Yes	Curbside drop off - in front of office	Sellersburg	IN
\.


--
-- Name: organizations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.organizations_id_seq', 2025, true);


--
-- Name: organizations organizations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organizations
    ADD CONSTRAINT organizations_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

