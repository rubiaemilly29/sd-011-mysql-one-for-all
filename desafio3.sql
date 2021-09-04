CREATE VIEW historico_reprocucao_usuario AS
SELECT U.nome AS usuario, C.cancao AS nome
FROM Usuarios AS U
INNER JOIN Historico_de_Reproducoes AS HR
  ON HR.usuario_id = U.usuario_id
INNER JOIN Cancoes AS C
  ON C.cancao_id = HR.cancao_id
ORDER BY usuario, nome;
