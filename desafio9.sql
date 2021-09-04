DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(50))
BEGIN
    SELECT Ar.artista AS `artista`,
    Al.album AS `album`
    FROM SpotifyClone.Artistas AS Ar
    INNER JOIN  SpotifyClone.Albuns AS Al ON Ar.artista_id = Al.artista_id
    WHERE first_name = nome_artista
    ORDER BY `album`; 
END $$

DELIMITER ;
