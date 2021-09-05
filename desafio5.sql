CREATE VIEW top_2_hits_do_momento AS
SELECT cc.cancao AS cancao,
COUNT(hm.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS cc
INNER JOIN SpotifyClone.historico_reproducoes AS hm
ON cc.cancao_id = hm.cancao_id
GROUP BY cc.cancao_id
ORDER BY COUNT(hm.cancao_id) DESC, cc.cancao ASC
LIMIT 2;
