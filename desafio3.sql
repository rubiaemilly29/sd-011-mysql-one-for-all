CREATE VIEW historico_reproducao_usuarios AS 
SELECT u.nome_usuario AS usuario, 
m.nome_musica AS nome
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_de_reproducoes AS hdr 
INNER JOIN SpotifyClone.musicas AS m
ON hdr.usuario_id = u.usuario_id
and hdr.musica_id = m.musica_id
ORDER BY usuario, nome;
