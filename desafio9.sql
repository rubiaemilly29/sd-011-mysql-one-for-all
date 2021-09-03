DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN nome_do_artista VARCHAR(50))
BEGIN
SELECT A.artista AS `artista`, ALB.album AS `album`
FROM SpotifyClone.Artista AS A
INNER JOIN SpotifyClone.Album AS ALB
ON A.artista_id = ALB.artista_id
WHERE `artista` = nome_do_artista;
END $$
DELIMITER ;
