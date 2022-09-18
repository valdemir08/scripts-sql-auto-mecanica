-- View: public.ClienteView

-- DROP VIEW public."ClienteView";

CREATE OR REPLACE VIEW public."ClienteView"
 AS
 SELECT "Pessoa".pessoa_id,
    "Pessoa".nome,
    "Pessoa".cpf_cnpj,
    "Pessoa".rg,
    "Pessoa".telefone,
    "Pessoa".celular,
    "Cliente".cliente_id,
    "Cliente".endereco,
    "Cliente".tipo,
    "Endereco".endereco_id,
    "Endereco".rua,
    "Endereco".bairro,
    "Endereco".numero,
    "Endereco".latitude,
    "Endereco".longitude
   FROM "Pessoa",
    "Cliente",
    "Endereco"
  WHERE "Cliente".cliente_id = "Pessoa".pessoa_id AND "Cliente".endereco = "Endereco".endereco_id;

ALTER TABLE public."ClienteView"
    OWNER TO postgres;

