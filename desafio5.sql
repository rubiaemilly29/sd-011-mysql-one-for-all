CREATE VIEW top_2_hits_do_momento AS
SELECT
c.nome_cancoes AS cancao,
count(h.usuario_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico AS h
ON c.cancoes_id = h.cancoes_id
GROUP BY h.cancoes_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
