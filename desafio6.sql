CREATE VIEW faturamento_atual AS
SELECT FORMAT(MIN(plan.plan_value), 2) AS faturamento_minimo,
        FORMAT(MAX(plan.plan_value), 2) AS faturamento_maximo,
        FORMAT(AVG(CEIL(plan.plan_value)), 2) AS faturamento_medio,
        FORMAT(SUM(plan.plan_value), 2) AS faturamento_total
FROM user AS user
INNER JOIN plan AS plan
ON user.plan_id = plan.plan_id;
