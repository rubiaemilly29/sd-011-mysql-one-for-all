USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
SELECT a.artista AS 'artista',
al.album AS 'album'
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al
ON a.artista_id = al.artista_id
WHERE artista = nome
ORDER BY `album`;
END $$
DELIMITER ;
