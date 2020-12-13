CREATE TABLE public.student
(
    s_id integer NOT NULL,
    s_name character varying(50) ,
    s_major character varying(20) ,
    s_year integer,
    CONSTRAINT student_pkey PRIMARY KEY (s_id)
)

