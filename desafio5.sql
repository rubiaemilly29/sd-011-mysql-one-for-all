CREATE VIEW top_2_hits_do_momento AS
  SELECT (
    SELECT nome
    FROM SpotifyClone.cancoes AS c
    WHERE hist.cancao_id = c.cancao_id
  ) AS `cancao`,
  COUNT(user_id) AS `reproducoes`
  FROM SpotifyClone.historico_de_reproducoes AS hist
  GROUP BY cancao_id
  ORDER BY `reproducoes` DESC, `cancao`
  LIMIT 2;
