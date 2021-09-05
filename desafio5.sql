CREATE VIEW top_2_hits_do_momento AS
  SELECT m.nome_musica AS cancao, COUNT(hr.usuario_id) AS reproducoes
  FROM SpotifyClone.musicas AS m
  INNER JOIN SpotifyClone.historico_de_reproducoes AS hr
  ON m.musica_id = hr.musica_id
  GROUP BY `cancao`
  ORDER BY `reproducoes` DESC, `cancao`
  LIMIT 2;
  