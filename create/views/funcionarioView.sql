-- View: public.FuncionarioView

-- DROP VIEW public."FuncionarioView";

CREATE OR REPLACE VIEW public."FuncionarioView"
 AS
 SELECT "Funcionario".pessoa_id,
    "Funcionario".nome,
    "Funcionario".cpf_cnpj,
    "Funcionario".rg,
    "Funcionario".telefone,
    "Funcionario".celular,
    "Funcionario".data_de_admissao,
    "Funcionario".salario,
    "Funcionario".especialidade
   FROM "Funcionario";

ALTER TABLE public."FuncionarioView"
    OWNER TO postgres;

