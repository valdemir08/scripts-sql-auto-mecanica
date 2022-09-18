-- FUNCTION: public.cadastrar_veiculo(character, character, character, character, integer)

-- DROP FUNCTION IF EXISTS public.cadastrar_veiculo(character, character, character, character, integer);

CREATE OR REPLACE FUNCTION public.cadastrar_veiculo(
	cadastrar_tipo character,
	cadastrar_placa character,
	cadastrar_marca character,
	cadastrar_modelo character,
	cadastrar_cliente integer)
    RETURNS integer
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
 	cadastrar_veiculo_id integer;
BEGIN

    INSERT INTO "Veiculo" (cliente, tipo, placa, marca, modelo)
    VALUES (cadastrar_cliente, cadastrar_tipo, cadastrar_placa, cadastrar_marca, cadastrar_modelo) RETURNING veiculo_id INTO cadastrar_veiculo_id;
	
	RETURN cadastrar_veiculo_id;
	
END
$BODY$;

ALTER FUNCTION public.cadastrar_veiculo(character, character, character, character, integer)
    OWNER TO postgres;
