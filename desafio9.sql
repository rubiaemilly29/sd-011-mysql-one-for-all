DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(200))
BEGIN
SELECT A.artista AS artista,
AB.album AS album
FROM SpotifyClone.artistas AS A
INNER JOIN SpotifyClone.albuns AS AB
ON A.artista_id = AB.artista_id
WHERE A.artista_id = artista
ORDER BY album;
END $$
DELIMITER ;
