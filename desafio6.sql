CREATE VIEW faturamento_atual AS
SELECT FORMAT(MIN(plan_price), 2) AS faturamento_minimo,
FORMAT(MAX(plan_price), 2) AS faturamento_maximo,
FORMAT(AVG(CEIL(plan_price)), 2) AS faturamento_medio,
FORMAT(SUM(plan_price), 2) AS faturamento_total
FROM plans AS p
INNER JOIN users AS u ON u.plan_id = p.plan_id;
