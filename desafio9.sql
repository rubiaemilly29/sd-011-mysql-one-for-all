DELIMITER $$
CREATE PROCEDURE albuns_do_artista(
IN artistName VARCHAR(150))
BEGIN
SELECT a.artist_name AS artista,
al.album AS album
FROM artist AS a
INNER JOIN albums AS al ON al.artist_id = a.artist_id
WHERE artistName = a.artist_name
ORDER BY artista;
END $$
DELIMITER ;
