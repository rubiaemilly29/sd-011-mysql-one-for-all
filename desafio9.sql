DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50))
BEGIN
SELECT 
b.nome_artista AS artista,
a.nome_album AS album
FROM SpotifyClone.Albuns AS a
INNER JOIN SpotifyClone.Artistas AS b
ON a.artista_id = b.artista_id
WHERE b.nome_artista = artista;
END $$
DELIMITER ;
