-- Table: public.OrdemDeServico

-- DROP TABLE IF EXISTS public."OrdemDeServico";

CREATE TABLE IF NOT EXISTS public."OrdemDeServico"
(
    ordem_de_servico_id integer NOT NULL DEFAULT nextval('ordem_de_servico_id_seq'::regclass),
    cliente integer NOT NULL,
    veiculo integer NOT NULL,
    funcionario integer NOT NULL,
    entrada timestamp(6) without time zone[] NOT NULL,
    saida timestamp(6) without time zone,
    valor money NOT NULL DEFAULT 0,
    status character varying(32) COLLATE pg_catalog."default" NOT NULL DEFAULT 'pendente'::character varying,
    CONSTRAINT "OrdemDeServico_pkey" PRIMARY KEY (ordem_de_servico_id),
    CONSTRAINT fk_cliente FOREIGN KEY (cliente)
        REFERENCES public."Cliente" (cliente_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT fk_funcionario FOREIGN KEY (funcionario)
        REFERENCES public."Funcionario" (funcionario_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT fk_veiculo FOREIGN KEY (veiculo)
        REFERENCES public."Veiculo" (veiculo_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."OrdemDeServico"
    OWNER to postgres;