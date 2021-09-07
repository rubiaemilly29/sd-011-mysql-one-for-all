CREATE VIEW faturamento_atual AS
SELECT
ROUND(MIN(valor), 2) AS 'faturamento_minimo',
ROUND(MAX(valor), 2) AS 'faturamento_maximo',
ROUND(AVG(valor), 2) AS 'faturamento_medio',
ROUND(SUM(valor), 2) AS 'faturamento_total'
FROM
(SELECT U.usuario_id, P.valor FROM SpotifyClone.usuario AS U 
INNER JOIN SpotifyClone.plano AS P
ON P.plano_id = U.plano_id) AS faturamento;
