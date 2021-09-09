CREATE VIEW top_2_hits_do_momento AS
SELECT c.titulo AS cancao, COUNT(h.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes c
INNER JOIN SpotifyClone.historico_de_reproducao h
ON h.cancao_id = c.cancao_id
GROUP BY h.cancao_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
