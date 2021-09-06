DELIMITER $$
CREATE PROCEDURE SpotifyClone.albuns_do_artista(IN name VARCHAR(45))
BEGIN
SELECT Ar.name AS artista, Al.name AS album
FROM SpotifyClone.Artists AS Ar
INNER JOIN SpotifyClone.Albums AS Al
ON Ar.artist_id = Al.artist_id
ORDER BY album;
END $$
DELIMITER ;
