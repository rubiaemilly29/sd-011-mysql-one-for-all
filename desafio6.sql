CREATE VIEW faturamento_atual AS
SELECT CAST(ROUND(MIN(P.valor_plano), 2) AS DECIMAL(10, 2)) AS faturamento_minimo,
ROUND(MAX(P.valor_plano), 2) AS faturamento_maximo,
CAST(ROUND(AVG(P.valor_plano), 2) AS DECIMAL(10, 2)) AS faturamento_medio,
CAST(ROUND(SUM(P.valor_plano), 2) AS DECIMAL(10, 2)) AS faturamento_total
FROM planos P
INNER JOIN usuarios U ON U.plano_id = P.plano_id;
