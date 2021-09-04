CREATE VIEW faturamento_atual AS
SELECT ROUND(MIN(p.preco), 2) as 'faturamento_minimo',
ROUND(MAX(p.preco), 2) as 'faturamento_maximo',
ROUND(AVG(p.preco), 2) as 'faturamento_medio',
ROUND(SUM(p.preco), 2) as 'faturamento_total'
FROM SpotifyClone.plano AS p
INNER JOIN SpotifyClone.usuario AS u ON u.planoId = p.planoId;
