USE `SpotifyClone`;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(30))
BEGIN
SELECT ar.artista AS 'artista', a.album AS 'album'
FROM SpotifyClone.albuns AS a
INNER JOIN SpotifyClone.artistas AS ar
ON ar.id = a.artista_id
WHERE ar.artista = artista
ORDER BY `album`;
END $$

DELIMITER ;
