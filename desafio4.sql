CREATE VIEW top_3_artistas AS
SELECT ar.name AS artista,
  COUNT(fl.artist_id) AS seguidores
FROM SpotifyClone.following_list AS fl
  INNER JOIN SpotifyClone.artists AS ar ON fl.artist_id = ar.artist_id
GROUP BY fl.artist_id
ORDER BY seguidores DESC,
  artista ASC
LIMIT 3;
