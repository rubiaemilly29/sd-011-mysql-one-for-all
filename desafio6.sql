CREATE VIEW faturamento_atual AS
SELECT
(SELECT MIN(valor) FROM SpotifyClone.plano) AS 'faturamento_minimo',
(SELECT MAX(valor) FROM SpotifyClone.plano) AS 'faturamento_maximo',
ROUND(AVG(P.valor), 2) AS 'faturamento_medio',
ROUND(SUM(P.valor), 2) AS 'faturamento_total'
FROM SpotifyClone.usuario AS U
LEFT JOIN SpotifyClone.plano AS P
ON U.plano_id = P.plano_Id;
