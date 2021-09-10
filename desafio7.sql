CREATE VIEW perfil_artistas AS
SELECT
artist.artist_name AS 'artista',
    album.album_name AS 'album',
    (SELECT COUNT(artist_id) FROM SpotifyClone.follow WHERE artist_id = artist.artist_id) AS 'seguidores'
FROM SpotifyClone.album AS album
INNER JOIN SpotifyClone.artist AS artist ON album.artist_id = artist.artist_id
  ORDER BY 3 DESC, 1, 2;
