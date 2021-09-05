CREATE VIEW historico_reproducao_usuarios AS
SELECT U.usuario AS usuario, C.cancao AS nome
FROM SpotifyClone.cancoes AS C
INNER JOIN SpotifyClone.usuarios_cancoes AS UC
ON C.id_cancoes = UC.id_cancoes
INNER JOIN SpotifyClone.usuarios AS U
ON U.id_usuarios = UC.id_usuarios
ORDER BY usuario, nome;
