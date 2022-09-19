-- Table: public.Servico

-- DROP TABLE IF EXISTS public."Servico";

CREATE TABLE IF NOT EXISTS public."Servico"
(
    servico_id integer NOT NULL DEFAULT nextval('servico_id_seq'::regclass),
    ordem_de_servico integer NOT NULL,
    descricao character varying(255) COLLATE pg_catalog."default" NOT NULL,
    valor money NOT NULL,
    status character varying(32) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Servico_pkey" PRIMARY KEY (servico_id),
    CONSTRAINT fk_ordem_de_servico FOREIGN KEY (ordem_de_servico)
        REFERENCES public."OrdemDeServico" (ordem_de_servico_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Servico"
    OWNER to postgres;