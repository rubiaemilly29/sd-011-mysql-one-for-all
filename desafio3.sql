CREATE VIEW historico_reproducao_usuarios AS
SELECT u.name AS usuario, s.title AS nome
FROM SpotifyClone.users u
INNER JOIN SpotifyClone.history h
ON u.user_id = h.user_id
INNER JOIN SpotifyClone.songs s
ON s.song_id = h.song_id
ORDER BY u.name, s.title;
