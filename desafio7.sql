CREATE VIEW SpotifyClone.perfil_artistas AS
SELECT
  A.artist_name AS artista,
  AB.album_name AS album,
  (
    SELECT COUNT(AF.artist_id) FROM SpotifyClone.artists_followers AS AF
    WHERE AF.artist_id = A.artist_id
  ) AS seguidores
FROM SpotifyClone.albuns AS AB
INNER JOIN SpotifyClone.artists AS A
  ON A.artist_id = AB.artist_id
ORDER BY seguidores DESC, artista, album;
