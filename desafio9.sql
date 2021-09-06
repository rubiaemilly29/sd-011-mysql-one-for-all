DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN artista VARCHAR(35))
BEGIN
SELECT
art.artista_nome AS `artista`,
alb.album_nome AS `album`
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albums AS alb
ON art.artista_nome = artista AND art.artista_id = alb.artista_id
ORDER BY `album` ASC;
END $$
DELIMITER ;