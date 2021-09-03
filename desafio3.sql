CREATE VIEW historico_reproducao_usuarios AS
SELECT U.username AS usuario,
S.song AS nome
FROM SpotifyClone.listened_history AS H
INNER JOIN SpotifyClone.users AS U
ON H.user_id = U.user_id
INNER JOIN SpotifyClone.songs AS S
ON H.song_id = S.song_id
ORDER BY usuario, nome;
