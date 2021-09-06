DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(100))
BEGIN
SELECT
ar.artist_name AS artista,
al.album_title AS album
FROM SpotifyClone.artists ar
INNER JOIN SpotifyClone.albums al
ON ar.artist_id = al.artist_id
WHERE ar.artist_name = artista
ORDER BY 2;
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
