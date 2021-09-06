CREATE VIEW faturamento_atual AS SELECT
MIN(plan.plan_value) AS faturamento_minimo,
MAX(plan.plan_value) AS faturamento_maximo,
ROUND(AVG(plan.plan_value), 2) AS faturamento_medio,
SUM(plan.plan_value) AS faturamento_total
FROM SpotifyClone.membership_plan AS plan
INNER JOIN
SpotifyClone.users AS userr ON userr.plan_id = plan.plan_id;
