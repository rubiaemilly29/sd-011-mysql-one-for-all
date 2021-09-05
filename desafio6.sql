CREATE VIEW faturamento_atual AS
SELECT ROUND(MIN(plan.plan_value), 2) AS faturamento_minimo,
       ROUND(MAX(plan.plan_value), 2) AS faturamento_maximo,
       ROUND(AVG(plan.plan_value), 2) AS faturamento_medio,
       ROUND(SUM(plan.plan_value), 2) AS faturamento_total
FROM user AS user
INNER JOIN plan AS plan
ON user.plan_id = plan.plan_id;
