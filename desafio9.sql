DELIMITER $$
CREATE PROCEDURE albuns_do_artista(
IN artistName VARCHAR(150)
)
BEGIN
SELECT A.artist_name AS artista,
AB.album AS album
FROM artist AS A
INNER JOIN albums AS AB ON AB.artist_id = A.artist_id
WHERE artistName = A.artist_name
ORDER BY artista;
END $$
DELIMITER ;
