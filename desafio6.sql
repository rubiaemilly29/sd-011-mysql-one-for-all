CREATE VIEW faturamento_atual AS
SELECT
MIN(Plano.valor) AS `faturamento_minimo`,
MAX(Plano.valor) AS `faturamento_maximo`,
CAST(AVG(Plano.valor) AS DECIMAL(5, 2)) AS `faturamento_medio`,
SUM(Plano.valor) AS `faturamento_total`
FROM SpotifyClone.Usuario Usuario
INNER JOIN SpotifyClone.Plano Plano
ON Usuario.plano_id = Plano.plano_id;
