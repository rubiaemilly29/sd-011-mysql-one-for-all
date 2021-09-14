CREATE VIEW top_2_hits_do_momento AS
SELECT so.nome_cancao AS cancao,
  COUNT(hs.id_cancoes) AS reproducoes
FROM SpotifyClone.historico_reproducoes AS hs
  INNER JOIN SpotifyClone.cancoes AS so ON hs.id_cancoes = so.id_cancoes
GROUP BY hs.id_cancoes
ORDER BY reproducoes DESC,
  cancao ASC
LIMIT 2;
