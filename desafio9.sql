USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50))
BEGIN
SELECT
AR.nome AS 'artista',
AL.album AS 'album'
FROM SpotifyClone.artistas AS AR
INNER JOIN SpotifyClone.albums AS AL
ON AR.artista_id = AL.artista_id
WHERE a.nome = artista;
END $$

DELIMITER ;
