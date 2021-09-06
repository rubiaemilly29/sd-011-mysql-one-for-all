CREATE VIEW historico_reproducao_usuarios AS (
SELECT users.`user` AS usuario,
musics.music AS nome
FROM SpotifyClone.history AS `history`
INNER JOIN SpotifyClone.musics AS musics ON musics.music_id = `history`.music_id
INNER JOIN SpotifyClone.users AS users ON users.user_id = `history`.user_id
ORDER BY usuario ASC, nome ASC
);
