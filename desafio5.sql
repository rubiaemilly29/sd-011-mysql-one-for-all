CREATE VIEW top_2_hits_do_momento AS SELECT
  musica_nome AS cancao, COUNT(usuario_id) AS reproducoes
FROM SpotifyClone.musicas AS cacoes
INNER JOIN SpotifyClone.historico_reproducoes AS historico
ON cacoes.musica_id = historico.musica_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao LIMIT 2;
