CREATE VIEW historico_reproducao_usuarios AS
SELECT usuario AS usuario, cancao AS nome
FROM SpotifyClone.usuarios AS U
INNER JOIN SpotifyClone.historico AS H
ON U.usuario_id =  H.usuario_id
INNER JOIN SpotifyClone.cancoes AS C
ON C.cancoes_id = H.cancoes_id
ORDER BY usuario, nome;
