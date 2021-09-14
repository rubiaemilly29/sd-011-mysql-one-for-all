CREATE VIEW SpotifyClone.perfil_artistas AS
  SELECT ar.artist_name AS artista, al.album_name AS album, COUNT(fo.artist_id) AS seguidores FROM SpotifyClone.artists AS ar
  INNER JOIN SpotifyClone.albums AS al ON ar.artist_id = al.artist_id
  INNER JOIN SpotifyClone.followers AS fo ON fo.artist_id = ar.artist_id
  GROUP BY fo.artist_id, ar.artist_name,  al.album_name
  ORDER BY seguidores DESC, artista, album;
