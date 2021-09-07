CREATE VIEW faturamento_atual AS
SELECT
MIN(valor_plano) AS 'faturamento_minimo',
MAX(valor_plano) AS 'faturamento_maximo',
ROUND(AVG(valor_plano), 2) AS 'faturamento_medio',
ROUND(SUM(valor_plano), 2) AS 'faturamento_total'
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.plano AS p
ON u.plano_id = p.plano_id;
