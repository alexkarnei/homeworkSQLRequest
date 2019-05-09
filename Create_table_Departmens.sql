-- Table: public."Departments"

-- DROP TABLE public."Departments";

CREATE TABLE public."Departments"
(
    id integer NOT NULL DEFAULT nextval('"Departments_id_seq"'::regclass) ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    financing money NOT NULL DEFAULT 0,
    name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Departments_pkey" PRIMARY KEY (id),
    CONSTRAINT departments_name_unique UNIQUE (name)
,
    CONSTRAINT check_departments_name_not_empty CHECK (name::text <> ' '::text),
    CONSTRAINT check_financing_valid CHECK (financing >= 0::money) NOT VALID
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Departments"
    OWNER to postgres;