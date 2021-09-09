CREATE VIEW top_3_artistas AS SELECT
  artistas AS artista,
  COUNT(usuario_id) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.seguidores AS s
ON a.artista_id = s.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artistas LIMIT 3;
