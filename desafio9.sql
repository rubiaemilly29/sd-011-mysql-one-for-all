DELIMITER //
CREATE PROCEDURE albuns_do_artista(IN nomeArtista VARCHAR(20))
BEGIN
SELECT a.artista, ab.album
FROM artistas a
INNER JOIN albuns ab
ON a.artista_id = ab.artista_id
WHERE nomeArtista = a.artista
ORDER BY ab.album;
END //
DELIMITER ;
