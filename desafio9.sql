USE SpotifyClone;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(50))
BEGIN
SELECT nome_artista AS artista, b.album AS album
FROM SpotifyClone.album AS b
INNER JOIN SpotifyClone.artistas AS a
ON b.artista_id = a.artista_id
WHERE a.nome_artista = artist
ORDER BY 2;
END $$
DELIMITER ;
