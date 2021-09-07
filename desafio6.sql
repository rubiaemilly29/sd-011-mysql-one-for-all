CREATE VIEW faturamento_atual AS
SELECT FORMAT(MIN(valor), 2) AS faturamento_minimo,
FORMAT(MAX(valor), 2) AS faturamento_maximo,
FORMAT(AVG(CEIL (valor)), 2) AS faturamento_medio,
FORMAT(SUM(valor), 2) AS faturamento_total
FROM planos AS P
INNER JOIN  usuarios AS U 
ON P.id_planos = U.id_planos;
