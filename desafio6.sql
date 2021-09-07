CREATE VIEW faturamento_atual AS
SELECT MIN(valor)  AS faturamento_minimo,
MAX(valor) AS faturamento_maximo,
ROUND(AVG(CEIL (valor)), 2) AS faturamento_medio,
ROUND(SUM(valor), 2) AS faturamento_total
FROM planos AS P
INNER JOIN  usuarios AS U 
ON P.id_planos = U.id_planos;
