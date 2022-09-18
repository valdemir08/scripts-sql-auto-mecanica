-- Table: public.Funcionario

-- DROP TABLE IF EXISTS public."Funcionario";

CREATE TABLE IF NOT EXISTS public."Funcionario"
(
    funcionario_id integer NOT NULL,
    data_de_admissao date NOT NULL,
    salario money NOT NULL,
    especialidade character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Funcionario_pkey" PRIMARY KEY (funcionario_id),
    CONSTRAINT fk_funcionario_id FOREIGN KEY (funcionario_id)
        REFERENCES public."Pessoa" (pessoa_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Funcionario"
    OWNER to postgres;