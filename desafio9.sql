DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(50))
BEGIN
SELECT A.artista AS artista,
Ab.album AS album
FROM Artistas AS A
INNER JOIN Albuns AS Ab
ON A.artista_id = Ab.artista_id
WHERE nome = A.artista
ORDER BY album;
END $$
DELIMITER ;
