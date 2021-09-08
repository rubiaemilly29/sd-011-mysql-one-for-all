CREATE VIEW top_2_hits_do_momento AS
SELECT
Sc.cancao,
COUNT(Sh.cancao_id) AS reproducoes
FROM SpotifyClone.cancao AS Sc
INNER JOIN SpotifyClone.historico_reproducao AS Sh
ON Sc.cancao_id = Sh.cancao_id
GROUP BY Sh.cancao_id
ORDER BY COUNT(Sh.cancao_id) DESC, Sc.cancao
LIMIT 2;
