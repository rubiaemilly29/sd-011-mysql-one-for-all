CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario_nome AS usuario, m.musica_nome AS nome
FROM spotifyclone.historico AS h
INNER JOIN spotifyclone.usuarios AS u
INNER JOIN spotifyclone.musicas AS m
ON h.usuario_id = u.usuario_id AND h.musica_id = m.musica_id
ORDER BY usuario, nome;
