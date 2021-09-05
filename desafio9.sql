DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN nomeArtista VARCHAR(100))
BEGIN
SELECT A.artista AS artista,
AB.album AS album
FROM artistas A
INNER JOIN albuns AB ON AB.artista_id = A.artista_id
WHERE nomeArtista = A.artista_id;
END $$
DELIMITER ;
