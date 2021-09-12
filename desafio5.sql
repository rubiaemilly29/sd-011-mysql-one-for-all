CREATE VIEW top_2_hits_do_momento AS
SELECT cancao AS cancao, COUNT(H.usuario_id) AS reproducoes
FROM SpotifyClone.cancoes AS C
INNER JOIN SpotifyClone.historico AS H
ON C.cancoes_id = H.cancoes_id
GROUP BY H.cancoes_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
