CREATE VIEW historico_reproducao_usuarios AS 
SELECT U.user_name AS usuario, M.music_name AS nome
FROM SpotifyClone.users AS U
JOIN SpotifyClone.history AS H JOIN SpotifyClone.musics AS M 
ON U.user_id = H.user_id AND H.music_id = M.music_id
ORDER BY usuario, nome;
