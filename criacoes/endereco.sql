-- Table: public.Endereco

-- DROP TABLE IF EXISTS public."Endereco";

CREATE TABLE IF NOT EXISTS public."Endereco"
(
    endereco_id integer NOT NULL DEFAULT nextval('endereco_id_seq'::regclass),
    rua character varying(255) COLLATE pg_catalog."default" NOT NULL,
    bairro character varying(255) COLLATE pg_catalog."default" NOT NULL,
    numero integer NOT NULL,
    latitude double precision,
    longitude double precision,
    CONSTRAINT "Endereco_endereco_id_key" UNIQUE (endereco_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Endereco"
    OWNER to postgres;