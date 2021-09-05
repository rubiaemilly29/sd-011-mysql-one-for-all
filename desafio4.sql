CREATE VIEW top_3_artistas AS
  SELECT a.nome_artista AS 'artista',
    (
      SELECT COUNT(*)
      FROM SpotifyClone.artistas_seguidos AS f
      WHERE f.artista_id = a.artista_id
    ) AS seguidores
  FROM
    SpotifyClone.artistas AS a
  ORDER BY
    seguidores ASC,
    a.nome_artista DESC
  LIMIT 3;