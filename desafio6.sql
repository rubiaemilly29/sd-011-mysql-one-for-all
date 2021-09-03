CREATE VIEW faturamento_atual AS
SELECT 
MIN(p.valor_plano) AS 'faturamento_minimo',
MAX(p.valor_plano) AS 'faturamento_maximo',
FORMAT(AVG(p.valor_plano), 2) AS 'faturamento_medio',
CONVERT(SUM(p.valor_plano), CHAR) AS 'faturamento_total'
FROM SpotifyClone.plano AS p
INNER JOIN SpotifyClone.user AS u
ON p.plano_id = u.plano_id;