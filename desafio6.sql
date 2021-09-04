SELECT MIN(plan_price) AS faturamento_minimo,
MAX(plan_price) AS faturamento_maximo,
ROUND(AVG(CEIL(plan_price)), 2) AS faturamento_medio,
ROUND(SUM(plan_price), 2) AS faturamento_total
FROM plans AS P
INNER JOIN users AS U ON U.plan_id = P.plan_id;
