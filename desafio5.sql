CREATE VIEW top_2_hits_do_momento AS (
SELECT c.nome_cancao AS cancao, COUNT(h.id_cancao) AS reproducoes
FROM SpotifyClone.historico_de_reproducoes AS h
INNER JOIN SpotifyClone.cancao AS c ON h.id_cancao = c.id_cancao
GROUP BY h.id_cancao
ORDER BY reproducoes DESC, cancao ASC LIMIT 2
);
