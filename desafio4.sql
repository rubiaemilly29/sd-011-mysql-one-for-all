CREATE VIEW top_3_artistas AS
SELECT
  A.artist_name AS artista,
  COUNT(*) AS seguidores
FROM
  SpotifyClone.followup AS F
  INNER JOIN SpotifyClone.artists AS A ON F.artist_id = A.artist_id
GROUP BY
  A.artist_id
HAVING
  COUNT(*) > 1
ORDER BY
  COUNT(*) DESC,
  A.artist_name ASC;
