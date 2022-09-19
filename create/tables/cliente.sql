-- Table: public.Cliente

-- DROP TABLE IF EXISTS public."Cliente";

CREATE TABLE IF NOT EXISTS public."Cliente"
(
    -- Inherited from table public."Pessoa": pessoa_id integer NOT NULL DEFAULT nextval('pessoa_id_seq'::regclass),
    -- Inherited from table public."Pessoa": nome character varying(255) COLLATE pg_catalog."default" NOT NULL,
    -- Inherited from table public."Pessoa": cpf_cnpj character varying(20) COLLATE pg_catalog."default" NOT NULL,
    -- Inherited from table public."Pessoa": rg character varying(20) COLLATE pg_catalog."default",
    -- Inherited from table public."Pessoa": telefone character varying(20) COLLATE pg_catalog."default",
    -- Inherited from table public."Pessoa": celular character varying(20) COLLATE pg_catalog."default",
    endereco integer NOT NULL,
    tipo character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT "Cliente_pkey" PRIMARY KEY (pessoa_id),
    CONSTRAINT fk_endereco FOREIGN KEY (endereco)
        REFERENCES public."Endereco" (endereco_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)
    INHERITS (public."Pessoa")
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Cliente"
    OWNER to postgres;