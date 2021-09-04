USE SpotifyClone;
CREATE VIEW `historico_reproducao_usuarios` AS
SELECT
u.name as usuario,
s.name as nome
FROM History as h
INNER JOIN Users as u
ON u.user_id = h.user_id
INNER JOIN Songs as s
ON s.song_id = h.song_id
ORDER BY
u.name ASC,
s.name ASC;
