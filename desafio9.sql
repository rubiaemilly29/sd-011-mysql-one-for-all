DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artistaNome VARCHAR(50))
BEGIN
SELECT
a.artista,
b.album
FROM artistas AS a
INNER JOIN albuns AS b
ON a.artista_id = b.artista_id
WHERE(artista = artistaNome)
ORDER BY b.album;
END $$

DELIMITER ;
