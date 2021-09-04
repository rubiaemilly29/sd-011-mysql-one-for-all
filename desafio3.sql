CREATE VIEW historico_reproducao_usuarios AS
SELECT U.usuario AS usuario,
C.cancao AS nome
FROM SpotifyClone.historico AS H
INNER JOIN SpotifyClone.usuarios AS U
INNER JOIN SpotifyClone.cancoes AS C
ON H.usuario_id = U.usuario_id AND H.cancao_id = C.cancao_id
ORDER BY usuario, nome;
