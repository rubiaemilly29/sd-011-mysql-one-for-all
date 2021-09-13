USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nomeArtista VARCHAR(50))
BEGIN
SELECT CONCAT(A.first_name,' ', A.last_name) AS artista, album AS album 
FROM artistas AS A
INNER JOIN albuns AS AL
ON A.artista_id = AL.artista_id
WHERE CONCAT(A.first_name,' ', A.last_name) = nomeArtista
ORDER BY album;

END $$

DELIMITER ;
