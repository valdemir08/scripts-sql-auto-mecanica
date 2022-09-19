-- View: public.ClienteView

-- DROP VIEW public."ClienteView";

CREATE OR REPLACE VIEW public."ClienteView"
 AS
 SELECT "Cliente".pessoa_id,
    "Cliente".nome,
    "Cliente".cpf_cnpj,
    "Cliente".rg,
    "Cliente".telefone,
    "Cliente".celular,
    "Cliente".endereco,
    "Cliente".tipo,
    "Endereco".endereco_id,
    "Endereco".rua,
    "Endereco".bairro,
    "Endereco".numero,
    "Endereco".latitude,
    "Endereco".longitude
   FROM "Cliente",
    "Endereco"
  WHERE "Cliente".endereco = "Endereco".endereco_id;

ALTER TABLE public."ClienteView"
    OWNER TO postgres;

