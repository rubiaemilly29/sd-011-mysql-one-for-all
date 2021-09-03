USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50))
BEGIN
SELECT
AR.artista_nome AS 'artista',
AL.album_nome AS 'album'
FROM SpotifyClone.artistas AS AR
INNER JOIN SpotifyClone.albuns AS AL
ON AR.artista_id = AL.artista_id
WHERE AR.artista_nome = artista;
END $$

DELIMITER ;
