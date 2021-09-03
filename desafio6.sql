CREATE VIEW faturamento_atual AS SELECT
MIN(t2.valor_plano) AS 'faturamento_minimo',
MAX(t2.valor_plano) AS 'faturamento_maximo',
ROUND(AVG(t2.valor_plano), 2) AS 'faturamento_medio',
SUM(t2.valor_plano) AS 'faturamento_total'
FROM SpotifyClone.usuarios AS t1
INNER JOIN SpotifyClone.planos AS t2
ON t1.id_plano = t2.id_plano;
