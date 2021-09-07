CREATE VIEW historico_reproducao_usuarios AS
SELECT U.usuario AS usuario, C.cancao AS nome
FROM usuarios AS U
INNER JOIN usuarios_cancoes AS UC
ON U.id_usuarios = UC.id_usuarios
INNER JOIN cancoes AS C
ON C.id_cancoes = UC.id_cancoes
ORDER BY usuario, nome;
