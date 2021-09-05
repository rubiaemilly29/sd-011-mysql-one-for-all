CREATE VIEW historico_reproducao_usuarios AS SELECT
usuario.user_name AS usuario,
song.song_name AS nome
FROM SpotifyClone.users AS usuario
INNER JOIN
SpotifyClone.reproduction_history AS hist ON hist.user_id = usuario.user_id
INNER JOIN
SpotifyClone.songs AS song ON song.song_id = hist.song_id
ORDER BY usuario, nome;
