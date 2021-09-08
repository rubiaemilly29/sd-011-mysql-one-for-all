CREATE VIEW faturamento_atual AS
SELECT MIN(P.price) faturamento_minimo,
MAX(P.price) faturamento_maximo,
ROUND(AVG(P.price), 2) faturamento_medio,
SUM(P.price) faturamento_total
FROM SpotifyClone.user_info U
INNER JOIN SpotifyClone.plans P
ON P.plan_id = U.plan_id;
