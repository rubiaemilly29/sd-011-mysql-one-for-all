CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario_nome AS usuario,
m.musica_nome AS nome
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.usuarios as u
ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.musicas AS m
ON h.musica_id = m.musica_id
ORDER BY usuario, nome;
