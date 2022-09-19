-- Table: public.Pessoa

-- DROP TABLE IF EXISTS public."Pessoa";

CREATE TABLE IF NOT EXISTS public."Pessoa"
(
    pessoa_id integer NOT NULL DEFAULT nextval('pessoa_id_seq'::regclass),
    nome character varying(255) COLLATE pg_catalog."default" NOT NULL,
    cpf_cnpj character varying(20) COLLATE pg_catalog."default" NOT NULL,
    rg character varying(20) COLLATE pg_catalog."default",
    telefone character varying(20) COLLATE pg_catalog."default",
    celular character varying(20) COLLATE pg_catalog."default",
    CONSTRAINT pk_pessoa_id PRIMARY KEY (pessoa_id),
    CONSTRAINT unique_pessoa_id UNIQUE (pessoa_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Pessoa"
    OWNER to postgres;