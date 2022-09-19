-- Table: public.Item

-- DROP TABLE IF EXISTS public."Item";

CREATE TABLE IF NOT EXISTS public."Item"
(
    item_id integer NOT NULL DEFAULT nextval('item_id_seq'::regclass),
    servico integer NOT NULL,
    funcionario integer NOT NULL,
    item_consulta integer NOT NULL,
    status character varying(32) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Item_pkey" PRIMARY KEY (item_id),
    CONSTRAINT fk_funcionario FOREIGN KEY (funcionario)
        REFERENCES public."Funcionario" (funcionario_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_item_consulta FOREIGN KEY (item_consulta)
        REFERENCES public."ItemConsulta" (item_consulta_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_servico FOREIGN KEY (servico)
        REFERENCES public."Servico" (servico_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Item"
    OWNER to postgres;