CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao AS cancao, 
(SELECT COUNT(h.cancao_id) 
FROM SpotifyClone.historico AS h
WHERE c.cancao_id = h.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
ORDER BY reproducoes DESC, cancao
LIMIT 2;
