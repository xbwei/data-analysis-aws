-- create a table

CREATE TABLE public.student
(
    s_id integer NOT NULL,
    s_name character varying(50) ,
    s_major character varying(20) ,
    s_year integer,
    CONSTRAINT student_pkey PRIMARY KEY (s_id)
)

-- adding data

insert into public.student (s_id,s_name,s_major,s_year)
values ('1','s1','GS','2020');

insert into public.student (s_id,s_name,s_major,s_year)
values ('2','s2','IA','2020');

insert into public.student (s_id,s_name,s_major,s_year)
values ('3','s3','CS','2019');

insert into public.student (s_id,s_name,s_major,s_year)
values ('4','s4','GS','2019');

insert into public.student (s_id,s_name,s_major,s_year)
values ('5','s5','GS','2019');
