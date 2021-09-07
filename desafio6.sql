CREATE VIEW SpotifyClone.faturamento_atual AS
SELECT ROUND(MIN(valor), 2) AS 'faturamento_minimo',
ROUND(MAX(valor), 2) AS 'faturamento_maximo',
ROUND(AVG(valor), 2) AS 'faturamento_medio',
ROUND(SUM(valor), 2) AS 'faturamento_total'
FROM (
SELECT p.valor,
u.usuario
FROM SpotifyClone.Usuario AS u
INNER JOIN SpotifyClone.Planos AS p ON u.plano_id = p.plano_id
) AS faturamento;
