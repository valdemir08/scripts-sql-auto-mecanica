-- Table: public.Veiculo

-- DROP TABLE IF EXISTS public."Veiculo";

CREATE TABLE IF NOT EXISTS public."Veiculo"
(
    veiculo_id integer NOT NULL DEFAULT nextval('veiculo_id_seq'::regclass),
    cliente integer NOT NULL,
    tipo character varying(32) COLLATE pg_catalog."default" NOT NULL,
    placa character varying(32) COLLATE pg_catalog."default" NOT NULL,
    marca character varying(32) COLLATE pg_catalog."default" NOT NULL,
    modelo character varying(32) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Veiculo_pkey" PRIMARY KEY (veiculo_id),
    CONSTRAINT fk_cliente FOREIGN KEY (cliente)
        REFERENCES public."Cliente" (cliente_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Veiculo"
    OWNER to postgres;