DELIMITER $$

CREATE PROCEDURE SpotifyClone.albuns_do_artista(IN `name` VARCHAR(100))
BEGIN
    SELECT ar.artist_name AS artista, al.album_name AS album FROM SpotifyClone.albums AS al INNER JOIN SpotifyClone.artists AS ar ON ar.artist_id = al.artist_id WHERE ar.artist_name = `name` ORDER BY artista;
END $$

DELIMITER ;
