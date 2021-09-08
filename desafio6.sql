CREATE VIEW faturamento_atual AS
SELECT
MIN(Sp.valor_plano) AS faturamento_minimo,
MAX(Sp.valor_plano) AS faturamento_maximo,
ROUND(AVG(Sp.valor_plano), 2) AS faturamento_medio,
SUM(Sp.valor_plano) AS faturamento_total
FROM SpotifyClone.plano AS Sp
INNER JOIN SpotifyClone.usuario AS Su
ON Sp.plano_id = Su.plano_id;
