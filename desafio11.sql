CREATE VIEW cancoes_premium AS
SELECT C.cancao AS nome, COUNT(HR.cancao_id) AS reproducoes
FROM Cancoes AS C
INNER JOIN Historico_de_Reproducoes AS HR
  ON C.cancao_id = HR.cancao_id
INNER JOIN Usuarios AS U
  ON U.usuario_id = HR.usuario_id AND U.usuario_id IN (2, 3)
GROUP BY nome
ORDER BY nome;
