CREATE VIEW faturamento_atual AS
SELECT MIN(P.plano_valor) AS faturamento_minimo,
MAX(P.plano_valor) AS faturamento_maximo,
ROUND(AVG(P.plano_valor), 2) AS faturamento_medio,
SUM(P.plano_valor) AS faturamento_total
FROM SpotifyClone.usuarios AS U
INNER JOIN SpotifyClone.planos AS P
ON U.plano_id = P.plano_id
WHERE U.plano_id IN (1, 2, 3);
