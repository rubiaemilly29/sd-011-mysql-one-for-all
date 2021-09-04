CREATE VIEW faturamento_atual AS
SELECT MIN(p.plano_valor) AS 'faturamento_minimo',
MAX(p.plano_valor) AS 'faturamento_maximo',
ROUND((SUM(p.plano_valor) / COUNT(u.usuario_id)),2) AS 'faturamento_medio',
SUM(p.plano_valor) AS 'faturamento_total'
FROM SpotifyClone.planos AS p
INNER JOIN SpotifyClone.usuarios AS u
ON p.plano_id = u.plano_id;
