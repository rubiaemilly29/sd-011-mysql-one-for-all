DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artistaIn VARCHAR(100))
BEGIN
SELECT a.artista AS artista, b.album AS album FROM artistas AS a
INNER JOIN albuns AS b
ON a.artistaId = b.artistaId
WHERE a.artista = artistaIn
ORDER BY album;
END $$
DELIMITER ;
