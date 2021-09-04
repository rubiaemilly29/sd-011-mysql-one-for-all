CREATE VIEW faturamento_atual AS
SELECT MIN(p.plano_valor) AS faturamento_minimo,
MAX(p.plano_valor) AS faturamento_maximo,
ROUND(AVG(p.plano_valor), 2) AS faturamento_medio,
SUM(p.plano_valor) AS faturamento_total
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.planos AS p
ON u.id_plano = p.id_plano
WHERE u.id_plano IN (1, 2, 3);
 