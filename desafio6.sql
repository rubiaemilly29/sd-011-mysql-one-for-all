CREATE VIEW `faturamento_atual` AS
SELECT MIN(plans.plan_price) AS `faturamento_minimo`,
MAX(plans.plan_price) AS `faturamento_maximo`,
ROUND(AVG(plans.plan_price), 2) AS `faturamento_medio`,
SUM(plans.plan_price) AS `faturamento_total`
FROM SpotifyClone.plan plans
INNER JOIN SpotifyClone.users u
ON plans.plan_id = u.plan_id;
