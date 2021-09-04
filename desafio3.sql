USE SpotifyClone;
CREATE VIEW `historico_reproducao_usuarios` AS
SELECT u.name AS 'usuario', s.name AS 'nome'
FROM History AS h
INNER JOIN Users AS u
ON u.user_id = h.user_id
INNER JOIN Songs AS s
ON s.song_id = h.song_id
ORDER BY
u.name ASC,
s.name ASC;
