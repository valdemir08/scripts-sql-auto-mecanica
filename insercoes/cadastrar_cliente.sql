-- FUNCTION: public.cadastrar_cliente(character, character, character, character, character, character, character, character, integer)

-- DROP FUNCTION IF EXISTS public.cadastrar_cliente(character, character, character, character, character, character, character, character, integer);

CREATE OR REPLACE FUNCTION public.cadastrar_cliente(
	cadastrar_nome character,
	cadastrar_cpf_cnpj character,
	cadastrar_rg character,
	cadastrar_telefone character,
	cadastrar_celular character,
	cadastrar_tipo character,
	cadastrar_rua character,
	cadastrar_bairro character,
	cadastrar_numero integer)
    RETURNS integer
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
 	cadastrar_pessoa_id integer;
    	cadastrar_endereco_id integer;
	cadastrar_cliente_id integer;
BEGIN

    	INSERT INTO "Pessoa" (nome, cpf_cnpj, rg, telefone, celular)
    	VALUES (cadastrar_nome, cadastrar_cpf_cnpj, cadastrar_rg, cadastrar_telefone, cadastrar_celular) RETURNING pessoa_id INTO cadastrar_pessoa_id;
	
	INSERT INTO "Endereco" (rua, bairro, numero)
    	VALUES (cadastrar_rua, cadastrar_bairro, cadastrar_numero) RETURNING endereco_id INTO cadastrar_endereco_id;
	
	INSERT INTO "Cliente" (cliente_id, endereco, tipo)
    	VALUES (cadastrar_pessoa_id, cadastrar_endereco_id, cadastrar_tipo) RETURNING cliente_id INTO cadastrar_cliente_id;
	
	RETURN cadastrar_cliente_id;
	
END
$BODY$;

ALTER FUNCTION public.cadastrar_cliente(character, character, character, character, character, character, character, character, integer)
    OWNER TO postgres;
