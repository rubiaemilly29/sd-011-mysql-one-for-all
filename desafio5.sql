CREATE VIEW top_2_hits_do_momento AS
SELECT C.cancao AS cancao,
COUNT(*) AS reproducoes
FROM SpotifyClone.cancoes AS C
INNER JOIN SpotifyClone.historico AS H
ON C.cancao_id = H.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
