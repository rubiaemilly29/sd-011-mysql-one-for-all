DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(50))
BEGIN
SELECT
ar.artist_name AS 'artista',
a.album_name AS 'album'
    FROM SpotifyClone.album AS a
    INNER JOIN SpotifyClone.artist AS ar ON a.artist_id = ar.artist_id
    WHERE ar.artist_name = artist;
END $$

DELIMITER ;
