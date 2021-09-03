CREATE VIEW cancoes_premium AS
SELECT songs.name AS nome, COUNT(ush.song_id) AS reproducoes
FROM SpotifyClone.songs AS songs
INNER JOIN SpotifyClone.users_songs_history AS ush
ON songs.song_id = ush.song_id
INNER JOIN SpotifyClone.users AS `user`
ON `user`.user_id = ush.user_id
WHERE `user`.plan_id IN (2, 3)
GROUP BY nome
ORDER BY nome;
