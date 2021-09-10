CREATE VIEW faturamento_atual AS
SELECT 
MIN(sp.valor_plano) AS faturamento_minimo,
MAX(sp.valor_plano) AS faturamento_maximo,
ROUND(AVG(sp.valor_plano), 2) AS faturamento_medio,
SUM(sp.valor_plano) AS faturamento_total
FROM SpotifyClone.plano AS sp
INNER JOIN SpotifyClone.usuario AS su
ON sp.plano_id = su.plano_id;
