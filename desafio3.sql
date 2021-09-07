CREATE VIEW historico_reproducao_usuarios AS 
SELECT u.nome_usuario AS usuario, 
m.nome_musica AS nome
FROM SpotifyClone.usuarios u
INNER JOIN SpotifyClone.historico_de_reproducoes AS hdr 
INNER JOIN SpotifyClone.musicas AS m
ON hdr.musica_id = m.musica_id AND hdr.usuario_id = u.usuario_id;
ORDER BY usuario, nome;

SELECT * FROM historico_reproducao_usuarios;

CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario_nome AS usuario,
m.musica_nome AS nome
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_reproducoes AS hr
INNER JOIN SpotifyClone.musicas AS m
ON hr.musica_id = m.musica_id
AND hr.usuario_id = u.usuario_id
ORDER BY usuario, nome;