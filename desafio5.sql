CREATE VIEW top_2_hits_do_momento AS
SELECT 
sc.cancao,
COUNT(sh.cancao_id) AS reproducoes
FROM SpotifyClone.cancao AS sc
INNER JOIN SpotifyClone.historico_de_reproducoes AS sh
ON sc.cancao_id = sh.cancao_id
GROUP BY sh.cancao_id
ORDER BY COUNT(sh.cancao_id) DESC, sc.cancao
LIMIT 2;
