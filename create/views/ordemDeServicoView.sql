-- View: public.OrdemDeServicoView

-- DROP VIEW public."OrdemDeServicoView";

CREATE OR REPLACE VIEW public."OrdemDeServicoView"
 AS
 SELECT "OrdemDeServico".ordem_de_servico_id,
    "Cliente".nome AS cliente,
    "Veiculo".tipo,
    "Veiculo".marca,
    "Veiculo".modelo,
    "Funcionario".cpf_cnpj AS responsavel_cpf_cnpj,
    "Funcionario".nome AS responsavel,
    "OrdemDeServico".entrada,
    "OrdemDeServico".saida,
    "OrdemDeServico".valor,
    "OrdemDeServico".status
   FROM "OrdemDeServico",
    "Cliente",
    "Veiculo",
    "Funcionario"
  WHERE "OrdemDeServico".cliente = "Cliente".pessoa_id AND "OrdemDeServico".veiculo = "Veiculo".veiculo_id AND "OrdemDeServico".funcionario = "Funcionario".pessoa_id;

ALTER TABLE public."OrdemDeServicoView"
    OWNER TO postgres;

