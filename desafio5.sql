CREATE VIEW top_2_hits_do_momento AS
SELECT m.nome_musica AS cancao,
COUNT(*) AS reproducoes
FROM SpotifyClone.musicas m
INNER JOIN SpotifyClone.historico_de_reproducoes hdr
ON hdr.musica_id  = m.musica_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
