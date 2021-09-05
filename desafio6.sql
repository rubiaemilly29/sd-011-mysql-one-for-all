CREATE VIEW faturamento_atual AS
SELECT MIN(sp.price) AS `faturamento_minimo`,
MAX(sp.price) AS `faturamento_maximo`,
ROUND(AVG(sp.price), 2) AS `faturamento_medio`,
SUM(sp.price) AS `faturamento_total`
FROM SpotifyClone.payment_plans sp
INNER JOIN SpotifyClone.users su ON su.plan_id = sp.plan_id;
