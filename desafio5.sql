CREATE VIEW top_2_hits_do_momento AS
SELECT titulo AS `cancao`,
(SELECT COUNT(*) FROM SpotifyClone.historico_de_reproducoes AS hr
WHERE c.cancao_id = hr.cancao_id) AS `reproducoes`
FROM SpotifyClone.cancoes AS c
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
