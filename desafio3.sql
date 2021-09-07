CREATE VIEW historico_reproducao_usuarios AS 
SELECT u.nome_usuario AS usuario, 
m.nome_musica AS nome
FROM SpotifyClone.usuarios u
INNER JOIN SpotifyClone.historico_de_reproducoes AS hdr 
INNER JOIN SpotifyClone.musicas AS m
ON hdr.musica_id = m.musica_id AND u.usuario_id = hdr.usuario_id
ORDER BY usuario, nome;
