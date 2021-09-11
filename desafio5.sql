CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao AS cancao, COUNT(h.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico AS h
ON c.cancao_id = h.cancao_id
GROUP BY h.cancao_id
ORDER BY 2 DESC, 1 ASC
LIMIT 2;
