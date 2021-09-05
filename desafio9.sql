DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(200))
BEGIN
SELECT ar.nome AS artista, al.nome AS album FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albums AS al ON al.artista_id = ar.artista_id
WHERE ar.nome LIKE artista
ORDER BY album;
END $$

DELIMITER ;
