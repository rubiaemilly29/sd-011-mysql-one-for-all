CREATE VIEW faturamento_atual AS SELECT
MIN(pl.plano_valor) AS `faturamento_minimo`,
MAX(pl.plano_valor) AS `faturamento_maximo`,
ROUND(AVG(pl.plano_valor), 2) AS `faturamento_medio`,
SUM(pl.plano_valor) AS `faturamento_total`
FROM SpotifyClone.planos AS pl
INNER JOIN SpotifyClone.usuarios AS usr
ON pl.plano_id = usr.plano_id;