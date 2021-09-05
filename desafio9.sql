DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(100))
BEGIN
    SELECT
    ar.artista AS `artista`,
    al.album AS `album`
    FROM SpotifyClone.Albuns AS al
    INNER JOIN SpotifyClone.Artistas AS ar ON al.artista_id = ar.artista_id
    WHERE ar.artista = nome_artista
    ORDER BY `album` ASC;
END $$
DELIMITER ;
