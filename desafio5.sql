CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
SELECT s.song_name AS `cancao`,
COUNT(*) AS `reproducoes`
FROM SpotifyClone.play_history AS ph
INNER JOIN SpotifyClone.songs AS s
ON ph.song_id = s.song_id
GROUP BY ph.song_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
