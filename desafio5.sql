CREATE VIEW top_2_hits_do_momento AS
SELECT m.music_name AS cancao,
COUNT(*) AS reproducoes
FROM SpotifyClone.music AS m
INNER JOIN SpotifyClone.reproduction_history AS r
ON m.music_id = r.music_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
