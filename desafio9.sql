DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(30))
BEGIN
SELECT ar.artista AS 'artista',
al.album AS 'album'
FROM SpotifyClone.artista AS ar
INNER JOIN SpotifyClone.album AS al ON al.artista_id = ar.id
WHERE ar.artista = artista
ORDER BY `album`;
END $$

DELIMITER ;
