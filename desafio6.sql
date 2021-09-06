CREATE VIEW faturamento_atual AS
SELECT FORMAT(MIN(Valor), 2) AS 'faturamento_minimo',
CONVERT(MAX(Valor), CHAR) AS 'faturamento_maximo',
(SELECT FORMAT(AVG(p.Valor), 2) FROM SpotifyClone.Planos AS p
INNER JOIN SpotifyClone.Usuarios AS u
ON p.PlanoID = u.PlanoID) AS 'faturamento_medio',
CONVERT(SUM(Valor), CHAR) AS 'faturamento_total'
FROM SpotifyClone.Planos;
