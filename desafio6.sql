CREATE VIEW faturamento_atual AS SELECT
CAST(MIN(P.valor) AS DECIMAL(10, 2)) AS faturamento_minimo,
CAST(MAX(P.valor) AS DECIMAL(10, 2)) AS faturamento_maximo,
CAST(ROUND(AVG(P.valor), 2) AS DECIMAL(10, 2)) AS faturamento_medio,
CAST(SUM(P.valor) AS DECIMAL(10, 2)) AS faturamento_total
FROM SpotifyClone.usuarios U
INNER JOIN SpotifyClone.planos P ON P.plano_id = U.plano_id;