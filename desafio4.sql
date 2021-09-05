CREATE VIEW top_3_artistas AS
  SELECT a.nome_artista AS artista, COUNT(sa.usuario_id) AS seguidores
  FROM SpotifyClone.artistas AS a
  INNER JOIN SpotifyClone.seguindo_artistas AS sa
  ON a.artista_id = sa.artista_id
  GROUP BY `artista`
  ORDER BY `seguidores` DESC, `artista`
  LIMIT 3;
