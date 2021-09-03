CREATE VIEW SpotifyClone.top_3_artistas AS
SELECT
  A.artist_name AS artista,
  COUNT(AF.artist_id) AS seguidores
FROM SpotifyClone.artists_followers AS AF
INNER JOIN SpotifyClone.artists AS A
  ON A.artist_id = AF.artist_id
GROUP BY AF.artist_id
ORDER BY seguidores DESC, artista
LIMIT 3;
