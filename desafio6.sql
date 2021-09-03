CREATE VIEW faturamento_atual AS
SELECT 
MIN(p.plano_valor) AS 'faturamento_minimo',
MAX(p.plano_valor) AS 'faturamento_minimo',
ROUND(AVG(p.plano_valor), 2) AS 'faturamento_medio',
SUM(p.plano_valor) AS 'faturamento_total'
FROM SpotifyClone.planos p
INNER JOIN SpotifyClone.usuarios us
ON p.plano_id = us.plano_id;