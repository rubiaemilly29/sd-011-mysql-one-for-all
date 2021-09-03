CREATE VIEW top_2_hits_do_momento AS
SELECT s.song_name AS 'cancao',
COUNT(s.song_name) AS 'reproducoes'
FROM songs AS s
INNER JOIN user_history as uh ON s.song_id = uh.song_id
GROUP BY s.song_name
ORDER BY COUNT(s.song_name) DESC, s.song_name
LIMIT 2;