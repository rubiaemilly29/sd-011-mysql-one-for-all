CREATE VIEW top_2_hits_do_momento  AS
SELECT songs.name AS cancao, COUNT(ush.song_id) AS reproducoes
FROM spotifyclone.songs AS songs
INNER JOIN spotifyclone.users_songs_history AS ush
ON ush.song_id = songs.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
