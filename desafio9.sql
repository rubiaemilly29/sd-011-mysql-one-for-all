DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artistName VARCHAR(20))
BEGIN
	SELECT sa.name AS `artista`,
	sal.name AS `album`
    FROM SpotifyClone.artists sa
    INNER JOIN SpotifyClone.albuns sal ON sa.artist_id = sal.artist_id
    WHERE sa.name = artistName
    ORDER BY `album`;
END $$

DELIMITER ;
