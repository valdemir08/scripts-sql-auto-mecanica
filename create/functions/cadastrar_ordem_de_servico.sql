-- FUNCTION: public.cadastrar_ordem_de_servico(integer, integer, integer, character)

-- DROP FUNCTION IF EXISTS public.cadastrar_ordem_de_servico(integer, integer, integer, character);

CREATE OR REPLACE FUNCTION public.cadastrar_ordem_de_servico(
	cadastrar_cliente integer,
	cadastrar_veiculo integer,
	cadastrar_funcionario integer,
	cadastrar_entrada character)
    RETURNS integer
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
 	cadastrar_ordem_de_servico_id integer;
BEGIN

    INSERT INTO "OrdemDeServico" (cliente, veiculo, funcionario, entrada)
    VALUES (cadastrar_cliente, cadastrar_veiculo, cadastrar_funcionario, cadastrar_entrada) RETURNING ordem_de_servico_id INTO cadastrar_ordem_de_servico_id;
	
	RETURN cadastrar_ordem_de_servico_id;
	
END
$BODY$;

ALTER FUNCTION public.cadastrar_ordem_de_servico(integer, integer, integer, character)
    OWNER TO postgres;
