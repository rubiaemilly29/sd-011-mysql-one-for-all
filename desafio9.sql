USE SpotifyClone; 
DELIMITER $$ 

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50))

BEGIN 
SELECT a.artista_nome AS 'artista',
b.album_nome AS album
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albums AS b
ON a.artista_id = b.artista_id
WHERE a.artista_nome = artista
ORDER BY 2 ASC;

END $$

DELIMITER ;
