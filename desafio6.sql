CREATE VIEW faturamento_atual AS
SELECT MIN(P.price) AS faturamento_minimo,
MAX(P.price) AS faturamento_maximo,
ROUND(AVG(P.price), 2) AS faturamento_medio,
SUM(P.price) AS faturamento_total
FROM SpotifyClone.users AS U
INNER JOIN SpotifyClone.plans AS P
ON U.plan_id = P.plan_id
WHERE U.plan_id IN (1, 2, 3);
