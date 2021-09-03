USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN person VARCHAR(100))
BEGIN
SELECT 
ar.artista_name AS 'artista',
al.album_nome AS 'album'
FROM SpotifyClone.artistas ar
INNER JOIN SpotifyClone.albuns al
ON ar.artista_id = al.artista_id
WHERE ar.artista_name LIKE person;
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
--