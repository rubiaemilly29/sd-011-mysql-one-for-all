CREATE VIEW top_3_artistas AS
  SELECT
    a.nome_artistico AS 'artista',
    (
      SELECT
        COUNT(*)
      FROM
        SpotifyClone.usuario_seguindo_artista AS usa
      WHERE
        usa.artista_id = a.artista_id
    ) AS 'seguidores'
  FROM
    SpotifyClone.artista AS a
  ORDER BY
    2 DESC,
    1 ASC
  LIMIT 3;
