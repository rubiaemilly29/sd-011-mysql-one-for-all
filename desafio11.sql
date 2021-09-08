CREATE VIEW cancoes_premium AS
SELECT C.cancao AS nome, COUNT(HR.cancao_id) AS reproducoes
FROM Cancoes AS C
INNER JOIN Historico_de_Reproducoes AS HR
  ON HR.cancao_id = C.cancao_id
INNER JOIN Usuarios AS U
  ON U.usuario_id = HR.usuario_id
WHERE U.plano_id = 2 OR U.plano_id = 3
GROUP BY nome
ORDER BY nome;
