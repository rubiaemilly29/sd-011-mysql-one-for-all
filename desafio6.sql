CREATE VIEW faturamento_atual AS
SELECT CAST(MIN(p.valor_plano) AS DECIMAL(5,2)) AS faturamento_minimo,
CAST(MAX(p.valor_plano) AS DECIMAL(5,2)) AS faturamento_maximo,
(
SELECT CAST(AVG(pp.valor_plano) AS DECIMAL(5,2)) FROM SpotifyClone.planos AS pp
RIGHT JOIN SpotifyClone.usuarios AS u
ON u.plano_id = pp.plano_id
)AS faturamento_medio,
CAST(SUM(p.valor_plano) AS DECIMAL(5,2)) AS faturamento_total
FROM SpotifyClone.planos AS p;
