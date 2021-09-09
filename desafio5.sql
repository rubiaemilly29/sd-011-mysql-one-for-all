CREATE VIEW top_2_hits_do_momento  AS
SELECT S.song_name AS cancao, COUNT(US.song_id) AS reproducoes
FROM SpotifyClone.songs AS S
INNER JOIN SpotifyClone.users_songs_history AS US
ON US.song_id = S.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
