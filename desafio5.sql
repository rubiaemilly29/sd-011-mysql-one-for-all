CREATE VIEW top_2_hits_do_momento AS
SELECT
s.song_title AS 'cancao',
COUNT(ph.song_id) AS 'reproducoes'
FROM SpotifyClone.songs s
INNER JOIN SpotifyClone.play_history ph
ON s.song_id = ph.song_id
GROUP BY s.song_id
ORDER BY 2 DESC, 1
LIMIT 2;
