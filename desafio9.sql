DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN artist VARCHAR(50))
BEGIN
SELECT ar.artista_name AS artista, al.album_name AS album 
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al 
ON ar.artista_id = al.artista_id
WHERE ar.artista_name = artist;
END $$

DELIMITER ;
