CREATE VIEW historico_reproducao_usuarios AS
SELECT u.user_name AS usuario,
m.music_name AS nome
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.reproduction_history AS r
ON r.user_id = u.user_id
INNER JOIN SpotifyClone.music AS m
ON r.music_id = m.music_id
ORDER BY u.user_name, m.music_name;
