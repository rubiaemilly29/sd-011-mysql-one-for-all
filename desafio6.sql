CREATE VIEW faturamento_atual AS
SELECT MIN(p.price) faturamento_minimo, MAX(p.price) faturamento_maximo,
ROUND(AVG(p.price), 2) faturamento_medio, SUM(p.price) faturamento_total
FROM SpotifyClone.plans p
INNER JOIN SpotifyClone.users u
ON u.plan_id = p.plan_id;
