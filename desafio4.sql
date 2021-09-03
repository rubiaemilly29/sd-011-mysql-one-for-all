CREATE VIEW `top_3_artistas` AS
SELECT
  A.artista AS `artista`,
  count(*) AS `seguidores`
FROM
  Usuario_Artista AS UA
  INNER JOIN Artistas AS A ON UA.artista_id = A.artista_id
GROUP BY
  UA.artista_id
ORDER BY
  `seguidores` DESC,
  `artista`
LIMIT
  3;
