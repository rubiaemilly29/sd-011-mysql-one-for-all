CREATE VIEW top_2_hits_do_momento AS SELECT
(SELECT nome_cancao FROM SpotifyClone.cancoes WHERE id_cancao=t1.id_cancao) AS `cancao`,
COUNT(t1.id_cancao) AS `reproducoes`
FROM SpotifyClone.historico AS t1
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;
