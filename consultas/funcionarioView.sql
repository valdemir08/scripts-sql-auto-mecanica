-- View: public.FuncionarioView

-- DROP VIEW public."FuncionarioView";

CREATE OR REPLACE VIEW public."FuncionarioView"
 AS
 SELECT "Pessoa".pessoa_id,
    "Pessoa".nome,
    "Pessoa".cpf_cnpj,
    "Pessoa".rg,
    "Pessoa".telefone,
    "Pessoa".celular,
    "Funcionario".funcionario_id,
    "Funcionario".data_de_admissao,
    "Funcionario".salario,
    "Funcionario".especialidade
   FROM "Pessoa",
    "Funcionario"
  WHERE "Funcionario".funcionario_id = "Pessoa".pessoa_id;

ALTER TABLE public."FuncionarioView"
    OWNER TO postgres;

