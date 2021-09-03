CREATE VIEW historico_reproducao_usuarios AS
SELECT 
U.usuario_nome AS usuario,
C.nome_cancao AS nome
FROM
usuario AS U
INNER JOIN historico_reproducoes AS H
ON U.usuario_id = H.usuario_id
INNER JOIN cancoes AS C
ON C.cancao_id = H.cancao_id
ORDER BY usuario ASC, nome ASC;
