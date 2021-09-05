  SELECT a.artista_nome AS artista,
    (
      SELECT COUNT(*)
      FROM spotifyclone.artistas_seguidos AS f
      WHERE f.artista_id = a.artista_id
    ) AS seguidores
  FROM spotifyclone.artistas AS a
  ORDER BY seguidores ASC, a.artista_nome DESC
  LIMIT 3;
