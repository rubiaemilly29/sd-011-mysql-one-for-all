CREATE VIEW top_2_hits_do_momento AS
SELECT m.nome_musica AS cancao,
COUNT(*) AS reproducoes
FROM musicas AS m
INNER JOIN historico AS h
ON m.id_musica = h.id_musica
GROUP BY cancao
ORDER BY reproducoes DESC, cancao LIMIT 2;
