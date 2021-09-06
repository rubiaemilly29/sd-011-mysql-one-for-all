USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(70))
BEGIN
    SELECT artist_name AS artista,
    album_name AS album
    FROM SpotifyClone.artist AS a
    INNER JOIN SpotifyClone.album AS al
    ON a.artist_id = al.artist_id
    WHERE a.artist_name = artist_name
    ORDER BY album;
END $$

DELIMITER ;
