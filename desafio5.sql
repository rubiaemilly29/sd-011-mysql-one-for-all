CREATE VIEW top_2_hits_do_momento  AS
SELECT songs.name AS cancao, COUNT(ush.song_id) AS reproducoes
FROM SpotifyClone.songs AS songs
INNER JOIN SpotifyClone.users_songs_history AS ush
ON ush.song_id = songs.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
