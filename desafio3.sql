CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome_usuario AS usuario,
m.nome_musica AS nome
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.usuarios as u
ON h.id_usuario = u.id_usuario
INNER JOIN SpotifyClone.musicas AS m
ON h.id_musica = m.id_musica
ORDER BY usuario, nome;
