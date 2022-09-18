-- Table: public.Cliente

-- DROP TABLE IF EXISTS public."Cliente";

CREATE TABLE IF NOT EXISTS public."Cliente"
(
    cliente_id integer NOT NULL,
    endereco integer,
    tipo character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Cliente_pkey" PRIMARY KEY (cliente_id),
    CONSTRAINT "Cliente_cliente_id_key" UNIQUE (cliente_id),
    CONSTRAINT fk_cliente FOREIGN KEY (cliente_id)
        REFERENCES public."Pessoa" (pessoa_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT fk_endereco FOREIGN KEY (endereco)
        REFERENCES public."Endereco" (endereco_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Cliente"
    OWNER to postgres;