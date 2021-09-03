CREATE VIEW top_2_hits_do_momento AS
SELECT
b.nome_cancao AS cancao, 
COUNT(a.cancao_id) AS reproducoes
FROM SpotifyClone.Historico_Reproducoes AS a
INNER JOIN SpotifyClone.Cancoes AS b
ON a.cancao_id = b.cancao_id
GROUP BY a.cancao_id
ORDER BY COUNT(a.cancao_id) DESC, b.nome_cancao
LIMIT 2;
