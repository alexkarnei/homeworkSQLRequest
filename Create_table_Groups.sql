-- Table: public."Faculties"

-- DROP TABLE public."Faculties";

CREATE TABLE public."Faculties"
(
    id integer NOT NULL DEFAULT nextval('"Faculties_id_seq"'::regclass) ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    dean character varying(10485760) COLLATE pg_catalog."default" NOT NULL,
    name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Faculties_pkey" PRIMARY KEY (id),
    CONSTRAINT check_name_unique UNIQUE (name)
,
    CONSTRAINT check_dean CHECK (dean::text <> ' '::text)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Faculties"
    OWNER to postgres;