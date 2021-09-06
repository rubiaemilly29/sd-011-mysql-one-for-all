CREATE VIEW top_2_hits_do_momento AS SELECT
song.song_name AS cancao,
COUNT(*) AS reproducoes
FROM SpotifyClone.songs AS song
INNER JOIN
SpotifyClone.reproduction_history AS repr ON repr.song_id = song.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC LIMIT 2;
