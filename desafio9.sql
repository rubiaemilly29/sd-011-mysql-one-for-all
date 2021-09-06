USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(100))
BEGIN
SELECT artists.artist AS artista,
albums.album AS album
FROM SpotifyClone.albums AS albums
INNER JOIN SpotifyClone.artists AS artists
ON albums.artist_id = artists.artist_id
WHERE artists.artist = artist_name
ORDER BY album;
END $$
DELIMITER ;
