DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(50))
BEGIN
SELECT at.artista AS artista, ab.album AS album
FROM SpotifyClone.artista AS at
INNER JOIN SpotifyClone.album AS ab
ON at.artista_id = ab.artista_id
WHERE at.artista = nome
ORDER BY album;
END $$
DELIMITER ;
