CREATE VIEW top_2_hits_do_momento AS
SELECT t1.cancao AS 'cancao',
COUNT(t2.cancao_id) AS 'reproducoes' 
FROM SpotifyClone.cancoes AS t1
INNER JOIN SpotifyClone.historico_de_reproducoes AS t2
ON t1.cancao_id = t2.cancao_id
GROUP BY t1.cancao
ORDER BY `reproducoes` DESC, t1.cancao ASC 
LIMIT 2;
