DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(50))
BEGIN
SELECT a.artista AS 'artista',
al.Album AS 'album'
FROM artistas AS a
INNER JOIN albuns AS al
ON a.artista_id = al.artista_id
WHERE a.artista = nome;
END$$
DELIMITER ;
