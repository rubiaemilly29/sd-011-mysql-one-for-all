CREATE VIEW top_3_artistas AS (
  SELECT
    a.artista AS artista,
    (
      SELECT COUNT(*) FROM SpotifyClone.seguindo_artistas AS sa
      WHERE a.artista_id = sa.artista_id
      GROUP BY sa.artista_id
      ORDER BY COUNT(*) DESC
    ) AS seguidores
  FROM SpotifyClone.artistas AS a
  ORDER BY seguidores DESC, artista ASC
  LIMIT 3);
