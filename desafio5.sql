CREATE VIEW top_2_hits_do_momento AS
SELECT
musica_nome AS cancao, COUNT(*) AS reproducoes
FROM SpotifyClone.musicas AS musicas
INNER JOIN SpotifyClone.historico_reproducoes AS historico
ON musicas.musica_id = historico.musica_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
