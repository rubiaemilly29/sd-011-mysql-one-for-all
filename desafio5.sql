CREATE VIEW top_2_hits_do_momento AS
SELECT
C.title cancao,
COUNT(H.cancao_id) reproducoes
FROM SpotifyClone.Cancoes C
INNER JOIN SpotifyClone.Historico_reproducoes H
ON C.cancao_id = H.cancao_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
