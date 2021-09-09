DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artistName VARCHAR(50))
BEGIN
SELECT
art.nome AS 'artista',
alb.album AS 'album'
FROM
SpotifyClone.Artista AS art
INNER JOIN
SpotifyClone.Album AS alb ON art.id = alb.artista_id
WHERE
artistName = art.nome
ORDER BY `artista`;
END $$
DELIMITER ;
