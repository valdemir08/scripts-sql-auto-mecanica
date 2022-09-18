-- Table: public.ItemConsulta

-- DROP TABLE IF EXISTS public."ItemConsulta";

CREATE TABLE IF NOT EXISTS public."ItemConsulta"
(
    item_consulta_id integer NOT NULL DEFAULT nextval('item_consulta_id_seq'::regclass),
    descricao character varying(255) COLLATE pg_catalog."default" NOT NULL,
    valor money NOT NULL,
    CONSTRAINT "ItemConsulta_pkey" PRIMARY KEY (item_consulta_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."ItemConsulta"
    OWNER to postgres;