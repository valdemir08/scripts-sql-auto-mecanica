-- SEQUENCE: public.endereco_id_seq

-- DROP SEQUENCE IF EXISTS public.endereco_id_seq;

CREATE SEQUENCE IF NOT EXISTS public.endereco_id_seq
    CYCLE
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.endereco_id_seq
    OWNER TO postgres;