DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(100))
BEGIN
SELECT
sar.artista,
sal.album
FROM SpotifyClone.artista AS sar
INNER JOIN SpotifyClone.album AS sal
ON sar.artista_id = sal.artista_id
WHERE sar.artista = artista;
END $$
