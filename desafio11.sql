CREATE VIEW cancoes_premium AS
SELECT S.song_name AS nome, COUNT(US.song_id) AS reproducoes
FROM SpotifyClone.songs AS S
INNER JOIN SpotifyClone.users_songs_history AS US
ON S.song_id = US.song_id
INNER JOIN SpotifyClone.users AS `user`
ON `user`.user_id = US.user_id
WHERE `user`.plan_id IN (2, 3)
GROUP BY nome
ORDER BY nome;
