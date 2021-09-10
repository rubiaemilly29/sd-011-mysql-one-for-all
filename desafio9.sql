DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN nome_artista VARCHAR(100))
BEGIN
SELECT A.artista, B.album
FROM SpotifyClone.Artistas A
INNER JOIN SpotifyClone.Albuns B
ON A.artista_id = B.artista_id
WHERE A.artista = nome_artista
ORDER BY B.album;
END $$
DELIMITER ;
