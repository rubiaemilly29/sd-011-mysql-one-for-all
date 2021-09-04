DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN artist VARCHAR(50))
BEGIN
SELECT a.name AS 'artista',
ab.title AS 'album'
FROM Artist a
INNER JOIN Album ab
ON a.artist_id = ab.artist_id;
END $$
DELIMITER ;
