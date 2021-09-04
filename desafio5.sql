CREATE VIEW top_2_hits_do_momento AS
SELECT m.musica_nome AS cancao,
COUNT(*) AS reproducoes
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historico_reproducoes AS hr
ON hr.musica_id = m.musica_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
