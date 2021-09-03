CREATE VIEW faturamento_atual AS
SELECT COUNT(*) * p.valor_plano AS faturamento_minimo,
(
SELECT COUNT(*) * p.valor_plano
FROM SpotifyClone.planos AS p
INNER JOIN SpotifyClone.usuarios AS u
ON p.plano_id = u.plano_id
AND p.plano_id = 3
GROUP BY p.plano_id
) AS faturamento_maximo,
(
SELECT ROUND(SUM(valor_plano)/COUNT(*), 2) FROM SpotifyClone.planos AS p
INNER JOIN SpotifyClone.usuarios AS u
ON p.plano_id = u.plano_id
) AS faturamento_medio,
(
SELECT SUM(valor_plano) FROM SpotifyClone.planos AS p
INNER JOIN SpotifyClone.usuarios AS u
ON p.plano_id = u.plano_id
) AS faturamento_total
FROM SpotifyClone.planos AS p
INNER JOIN SpotifyClone.usuarios AS u
ON p.plano_id = u.plano_id
AND p.plano_id = 1
GROUP BY p.plano_id;
