CREATE VIEW historico_reproducao_usuarios AS
SELECT U.user usuario,
S.song nome
FROM SpotifyClone.history H
INNER JOIN SpotifyClone.user_info U
ON U.user_id = H.user_id
INNER JOIN SpotifyClone.songs S
ON S.song_id = H.song_id
ORDER BY usuario, nome;
