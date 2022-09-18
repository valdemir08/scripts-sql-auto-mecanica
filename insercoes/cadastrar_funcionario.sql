-- FUNCTION: public.cadastrar_funcionario(character, character, character, character, character, character, character, character)

-- DROP FUNCTION IF EXISTS public.cadastrar_funcionario(character, character, character, character, character, character, character, character);

CREATE OR REPLACE FUNCTION public.cadastrar_funcionario(
	cadastrar_nome character,
	cadastrar_cpf_cnpj character,
	cadastrar_rg character,
	cadastrar_telefone character,
	cadastrar_celular character,
	cadastrar_data_de_admissao character,
	cadastrar_salario character,
	cadastrar_especialidade character)
    RETURNS integer
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
 	cadastrar_pessoa_id integer;
    	cadastrar_endereco_id integer;
	cadastrar_funcionario_id integer;
BEGIN

    	INSERT INTO "Pessoa" (nome, cpf_cnpj, rg, telefone, celular)
    	VALUES (cadastrar_nome, cadastrar_cpf_cnpj, cadastrar_rg, cadastrar_telefone, cadastrar_celular) RETURNING pessoa_id INTO cadastrar_pessoa_id;
	
	INSERT INTO "Funcionario" (funcionario_id, data_de_admissao, salario, especialidade)
    	VALUES (cadastrar_pessoa_id, 
			TO_DATE(cadastrar_data_de_admissao, 'YYYY-MM-DD'), 
			to_number(cadastrar_salario, regexp_replace(replace(cadastrar_salario,',','G') , '[0-9]' ,'9','g')), 
			cadastrar_especialidade) 
			RETURNING funcionario_id INTO cadastrar_funcionario_id;
	
	RETURN cadastrar_funcionario_id;
	
END
$BODY$;

ALTER FUNCTION public.cadastrar_funcionario(character, character, character, character, character, character, character, character)
    OWNER TO postgres;
