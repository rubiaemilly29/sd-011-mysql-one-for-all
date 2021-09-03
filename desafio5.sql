CREATE VIEW top_2_hits_do_momento AS
SELECT
C.cancao AS `cancao`,
COUNT(HR.cancao_id) AS `reproducoes`
FROM SpotifyClone.Historico_reproducoes AS HR
INNER JOIN SpotifyClone.Cancoes AS C
ON HR.cancao_id = C.cancao_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;
