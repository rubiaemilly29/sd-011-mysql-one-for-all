CREATE VIEW faturamento_atual AS
SELECT
ROUND(MIN(plano_valor), 2) AS "faturamento_minimo",
ROUND(MAX(plano_valor), 2) AS "faturamento_maximo",
ROUND(AVG(plano_valor), 2) AS "faturamento_medio",
ROUND(SUM(plano_valor), 2) AS "faturamento_total"
FROM (
SELECT
p.plano_valor,
u.nome_usuario
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.planos AS p
ON u.plano_id = p.plano_id
)
AS faturamento;
