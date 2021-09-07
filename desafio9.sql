DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artistName VARCHAR(100))
BEGIN
SELECT
art.artist_name AS 'artista',
a.album_name AS 'album'
FROM album AS a
INNER JOIN artist AS art ON a.artist_id = art.artist_id
WHERE art.artist_name = artistName;
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');

