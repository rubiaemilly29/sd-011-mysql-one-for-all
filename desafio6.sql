CREATE VIEW faturamento_atual AS
SELECT
FORMAT(MIN(valor_plano),2) AS faturamento_minimo,
FORMAT(MAX(valor_plano),2) AS faturamento_maximo,
FORMAT(AVG(valor_plano),2) AS faturamento_medio,
FORMAT(SUM(valor_plano),2) AS faturamento_total
FROM planos AS a
INNER JOIN usuarios AS b
ON a.plano_id = b.plano_id;
