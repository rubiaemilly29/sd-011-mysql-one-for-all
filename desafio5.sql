CREATE VIEW top_2_hits_do_momento AS
SELECT 
C.nome_cancao AS cancao,
COUNT(H.cancao_id) AS reproducoes
FROM
cancoes AS C
INNER JOIN
historico_reproducoes AS H ON H.cancao_id = C.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
