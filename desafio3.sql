USE SpotifyClone;

CREATE VIEW historico_reproducao_usuarios AS
SELECT usuario AS usuario, cancao AS nome
FROM usuarios AS U
INNER JOIN historico AS H
ON U.usuario_id =  H.usuario_id
INNER JOIN cancoes AS C
ON C.cancoes_id = H.cancoes_id
ORDER BY usuario, nome;
