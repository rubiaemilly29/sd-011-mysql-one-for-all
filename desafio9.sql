USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50))
BEGIN
SELECT
a.nome AS 'artista',
alb.album AS 'album'
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.albums AS alb
ON alb.artista_id = a.artista_id
WHERE a.nome = artista;
END $$

DELIMITER ;
