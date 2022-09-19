-- Table: public.Funcionario

-- DROP TABLE IF EXISTS public."Funcionario";

CREATE TABLE IF NOT EXISTS public."Funcionario"
(
    -- Inherited from table public."Pessoa": pessoa_id integer NOT NULL DEFAULT nextval('pessoa_id_seq'::regclass),
    -- Inherited from table public."Pessoa": nome character varying(255) COLLATE pg_catalog."default" NOT NULL,
    -- Inherited from table public."Pessoa": cpf_cnpj character varying(20) COLLATE pg_catalog."default" NOT NULL,
    -- Inherited from table public."Pessoa": rg character varying(20) COLLATE pg_catalog."default",
    -- Inherited from table public."Pessoa": telefone character varying(20) COLLATE pg_catalog."default",
    -- Inherited from table public."Pessoa": celular character varying(20) COLLATE pg_catalog."default",
    data_de_admissao date NOT NULL,
    salario money NOT NULL,
    especialidade character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT "Funcionario_pkey" PRIMARY KEY (pessoa_id)
)
    INHERITS (public."Pessoa")
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Funcionario"
    OWNER to postgres;