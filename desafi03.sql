CREATE VIEW historico_reproducao_usuarios AS
SELECT u.name AS usuario,
s.song_name AS nome
FROM users AS u
INNER JOIN historic AS h
ON h.user_id = u.user_id
INNER JOIN songs AS s
ON s.song_id = h.song_id
ORDER BY usuario, nome;
