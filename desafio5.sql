CREATE VIEW top_2_hits_do_momento AS
SELECT C.cancao AS cancao, COUNT(HR.usuario_id) AS reproducoes
FROM Cancoes AS C
INNER JOIN Historico_de_Reproducoes AS HR
  ON HR.cancao_id = C.cancao_id
GROUP BY HR.cancao_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
