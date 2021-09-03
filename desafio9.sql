DELIMITER $$ 

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(30))
BEGIN
SELECT art.artista_name 'artista', a.album_name 'album'
FROM SpotifyClone.artistas art
INNER JOIN SpotifyClone.albuns a
ON art.artista_id = a.artista_id
WHERE art.artista_name = artista
ORDER BY album;
END $$

DELIMITER ;
