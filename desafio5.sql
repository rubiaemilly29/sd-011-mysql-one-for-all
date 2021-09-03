CREATE VIEW `top_2_hits_do_momento` AS
SELECT
  M.musica AS `cancao`,
  count(*) AS `reproducoes`
FROM
  Historico AS H
  INNER JOIN Musicas AS M ON H.musica_id = M.musica_id
GROUP BY
  H.musica_id
ORDER BY
  `reproducoes` DESC,
  `cancao`
LIMIT
  2;
