CREATE VIEW `top_2_hits_do_momento` AS
SELECT s.song_name AS `cancao`, COUNT(*) AS `reproducoes`
FROM spotifyclone.history_play h
INNER JOIN spotifyclone.songs s
ON s.song_id = h.song_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
