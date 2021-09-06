CREATE VIEW `top_2_hits_do_momento` AS
SELECT s.song_name AS `cancao`, COUNT(*) AS `reproducoes`
FROM SpotifyClone.history_play h
INNER JOIN SpotifyClone.songs s
ON s.song_id = h.song_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
