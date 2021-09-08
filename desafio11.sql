CREATE VIEW cancoes_premium AS
SELECT
Sc.cancao AS nome,
COUNT(Sh.cancao_id) AS reproducoes
FROM SpotifyClone.cancao AS Sc
INNER JOIN SpotifyClone.historico_reproducao AS Sh
ON Sc.cancao_id = Sh.cancao_id
INNER JOIN SpotifyClone.usuario AS Su
ON Su.usuario_id = Sh.usuario_id 
WHERE Su.plano_id IN (2, 3)
GROUP BY Sh.cancao_id
ORDER BY Sc.cancao;
