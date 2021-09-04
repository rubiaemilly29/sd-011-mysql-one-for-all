DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN singer VARCHAR(30))
BEGIN
SELECT s.first_name AS artista, a.album_name AS album
FROM SpotifyClone.Album AS a
INNER JOIN SpotifyClone.Singer AS s ON s.singer_id= a.singer_id
WHERE s.first_name = singer
ORDER BY album;
END $$

DELIMITER ;
