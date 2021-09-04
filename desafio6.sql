CREATE VIEW faturamento_atual AS
SELECT FORMAT(MIN(plan_price), 2) AS faturamento_minimo,
FORMAT(MAX(plan_price), 2) AS faturamento_maximo,
FORMAT(AVG(CEIL(plan_price)), 2) AS faturamento_medio,
ROUND(SUM(plan_price), 2) AS faturamento_total
FROM plans AS P
INNER JOIN users AS U ON U.plan_id = P.plan_id;
