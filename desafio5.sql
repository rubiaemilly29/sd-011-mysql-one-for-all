CREATE VIEW top_2_hits_do_momento AS 
SELECT 
A.cancoes AS cancao,
COUNT(C.cancoes_id) AS reproducoes
FROM SpotifyClone.Cancoes A
INNER JOIN SpotifyClone.Historico_reproducoes C ON C.cancoes_id = A.cancoes_id
GROUP BY A.cancoes
ORDER BY COUNT(C.cancoes_id) DESC, A.cancoes
LIMIT 2;
