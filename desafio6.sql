CREATE VIEW faturamento_atual AS
SELECT 
MIN(P.valor) AS faturamento_minimo,
MAX(P.valor) AS faturamento_maximo,
ROUND(AVG(P.valor), 2) AS faturamento_medio,
SUM(P.valor) AS faturamento_total
FROM SpotifyClone.Usuarios AS U
INNER JOIN SpotifyClone.Planos AS P
ON U.plano_id = P.plano_id;
