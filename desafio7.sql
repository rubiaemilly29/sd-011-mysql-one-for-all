CREATE VIEW perfil_artistas AS
SELECT ar.name AS artista,
  ab.title AS album,
  COUNT(fl.artist_id) AS seguidores
FROM SpotifyClone.albums AS ab
  INNER JOIN SpotifyClone.artists AS ar ON ab.artist_id = ar.artist_id
  INNER JOIN SpotifyClone.following_list AS fl ON ab.artist_id = fl.artist_id
GROUP BY ab.album_id
ORDER BY seguidores DESC,
  artista ASC,
  album ASC;
