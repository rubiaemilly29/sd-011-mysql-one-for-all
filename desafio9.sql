DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(50))
BEGIN
SELECT A.artista AS artista, Al.album AS album
FROM Artistas AS A
INNER JOIN Albuns AS Al
  ON Al.artista_id = A.artista_id
WHERE nome = A.artista
ORDER BY album;
END $$
DELIMITER ;
