-- View: public.OrdemDeServicoView

-- DROP VIEW public."OrdemDeServicoView";

CREATE OR REPLACE VIEW public."OrdemDeServicoView"
 AS
 SELECT "OrdemDeServico".ordem_de_servico_id,
    "Pessoa".pessoa_id,
    "Pessoa".nome,
    "Pessoa".cpf_cnpj,
    "Cliente".cliente_id
   FROM "OrdemDeServico",
    "Pessoa",
    "Cliente"
  WHERE "OrdemDeServico".cliente = "Pessoa".pessoa_id AND "Cliente".cliente_id = "Pessoa".pessoa_id;

ALTER TABLE public."OrdemDeServicoView"
    OWNER TO postgres;

