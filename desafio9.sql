DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(50))
BEGIN
SELECT A.artista AS artista, AL.album AS album
FROM SpotifyClone.artistas AS A
INNER JOIN SpotifyClone.albuns AS AL
ON A.artista_id = AL.artista_id
WHERE artista = nome_artista;
END $$
DELIMITER ;
