DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN nome VARCHAR(100))
BEGIN
SELECT artist.name AS artista, album.name AS album
FROM SpotifyClone.artists AS artist
INNER JOIN SpotifyClone.albuns AS album
ON artist.artist_id = album.artist_id
WHERE artist.name = nome
ORDER BY album;
END $$
DELIMITER ;
