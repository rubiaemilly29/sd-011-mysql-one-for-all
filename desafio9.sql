DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(30))
BEGIN
SELECT A.artist_name AS artista, AB.album_name AS album
FROM SpotifyClone.artists AS A JOIN SpotifyClone.albums AS AB ON A.artist_id = AB.artist_id
WHERE A.artist_name = artista ORDER BY album;
END $$

DELIMITER ;
