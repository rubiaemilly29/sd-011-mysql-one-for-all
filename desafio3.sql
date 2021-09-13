CREATE VIEW historico_reproducao_usuarios AS
SELECT U.usuario AS usuario,
C.cancao AS nome
FROM Usuarios AS U
INNER JOIN Historico_de_Reproducoes AS H
ON H.usuario_id = U.usuario_id
INNER JOIN Cancoes AS C
ON C.cancao_id = H.cancao_id
ORDER BY usuario, nome;
