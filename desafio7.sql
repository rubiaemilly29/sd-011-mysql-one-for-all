CREATE VIEW perfil_artistas AS
SELECT
  AR.artist_name AS artista,
  AL.album_name AS album,
  COUNT(*) AS seguidores
FROM
  SpotifyClone.followup AS F
  INNER JOIN SpotifyClone.artists AS AR ON F.artist_id = AR.artist_id
  INNER JOIN SpotifyClone.albums AS AL ON F.artist_id = AL.artist_id
GROUP BY
  AR.artist_name, AL.album_name
ORDER BY
  COUNT(*) DESC,
  AR.artist_name ASC,
  AL.album_name ASC;

  SELECT * FROM perfil_artistas;

  DROP VIEW perfil_artistas;