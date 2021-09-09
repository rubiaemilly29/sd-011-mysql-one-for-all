CREATE VIEW top_2_hits_do_momento AS
SELECT s.title AS cancao, COUNT(h.song_id) AS reproducoes
FROM SpotifyClone.songs s
INNER JOIN SpotifyClone.history h
ON h.song_id = s.song_id
GROUP BY s.title
ORDER BY reproducoes DESC, s.title
LIMIT 2;
