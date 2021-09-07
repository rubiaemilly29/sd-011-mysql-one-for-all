DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(45))
BEGIN
SELECT
(SELECT A.artista ) AS artista,
(SELECT AB.album ) AS album
FROM albuns AS AB
INNER JOIN artistas AS A
ON A.id_artista = AB.id_artista
WHERE artista = A.artista
ORDER BY album;
END $$
DELIMITER ;
