CREATE VIEW faturamento_atual AS
SELECT
(SELECT MIN(valor_plano) FROM SpotifyClone.Planos) AS `faturamento_minimo`,
(SELECT MAX(valor_plano) FROM SpotifyClone.Planos) AS `faturamento_maximo`,
ROUND(AVG(P.valor_plano), 2) AS `faturamento_medio`,
ROUND(AVG(P.valor_plano) * COUNT(U.usuario_id), 2) AS `faturamento_total` 
FROM SpotifyClone.Usuario AS U
INNER JOIN SpotifyClone.Planos AS P
ON U.plano_id = P.plano_id;
