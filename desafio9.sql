DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(80))
BEGIN
SELECT a.Artista AS 'artista',
ab.Album AS 'album'
FROM SpotifyClone.Artistas AS a
INNER JOIN SpotifyClone.Albuns AS ab
ON a.ArtistaID = ab.ArtistaID
WHERE a.Artista = nome;
END$$
DELIMITER ;
