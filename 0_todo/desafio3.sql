CREATE VIEW historico_reproducao_usuarios AS
SELECT U.User usuario,
ALS.Songs nome
FROM SpotifyClone.Users U
INNER JOIN SpotifyClone.Songs_history SH
ON U.User_id = SH.User_id
INNER JOIN SpotifyClone.AllSongs ALS
ON SH.Songs_id = ALS.Songs_id
ORDER BY usuario, nome;
