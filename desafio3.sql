CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario,
m.nome_musica AS nome
FROM spotifyclone.usuarios AS u
LEFT JOIN spotifyclone.historico AS h
ON h.usuario_id = u.usuario_id
INNER JOIN spotifyclone.musicas AS m
ON h.musica_id = m.musica_id
ORDER BY u.usuario ASC, m.nome_musica ASC;
