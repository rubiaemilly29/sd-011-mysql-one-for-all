DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN art_nome VARCHAR(100))
BEGIN
SELECT
Sa.artista,
Sal.album
FROM SpotifyClone.artista AS Sa
INNER JOIN SpotifyClone.album AS Sal
ON Sa.artista_id = Sal.artista_id
WHERE Sa.artista = art_nome; 
END $$
