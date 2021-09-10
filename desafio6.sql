CREATE VIEW faturamento_atual AS
SELECT
ROUND(MIN(valor), 2) 'faturamento_minimo',
ROUND(MAX(valor), 2) 'faturamento_maximo',
( 
SELECT ROUND(AVG(P.valor), 2)
FROM SpotifyClone.Planos P
INNER JOIN SpotifyClone.Usuarios U ON P.plano_id = U.plano_id
) 'faturamento_medio',
( 
SELECT ROUND(SUM(P.valor), 2)
FROM SpotifyClone.Planos P
INNER JOIN SpotifyClone.Usuarios U ON P.plano_id = U.plano_id
) 'faturamento_total'
FROM SpotifyClone.Planos;
