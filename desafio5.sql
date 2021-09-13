CREATE VIEW top_2_hits_do_momento AS
SELECT cancao AS cancao,
COUNT(H.usuario_id) AS reproducoes
FROM Cancoes AS C
INNER JOIN Historico_de_Reproducoes AS H
ON H.cancao_id = C.cancao_id
GROUP BY H.cancao_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
