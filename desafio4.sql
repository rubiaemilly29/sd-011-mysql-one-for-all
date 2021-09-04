CREATE VIEW top_3_artistas AS
  SELECT (
    SELECT artista_nome
    FROM SpotifyClone.artistas AS a
    WHERE sa.artista_id = a.artista_id
  ) AS `artista`,
  COUNT(user_id) AS `seguidores`
  FROM SpotifyClone.seguindo_artistas AS sa
  GROUP BY artista_id
  ORDER BY `seguidores` DESC, `artista`
  LIMIT 3;
