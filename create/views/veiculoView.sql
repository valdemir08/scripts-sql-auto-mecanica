-- View: public.VeiculoView

-- DROP VIEW public."VeiculoView";

CREATE OR REPLACE VIEW public."VeiculoView"
 AS
 SELECT "Veiculo".veiculo_id,
    "Cliente".nome AS cliente,
    "Veiculo".tipo,
    "Veiculo".placa,
    "Veiculo".marca,
    "Veiculo".modelo
   FROM "Cliente",
    "Veiculo"
  WHERE "Veiculo".cliente = "Cliente".pessoa_id;

ALTER TABLE public."VeiculoView"
    OWNER TO postgres;

