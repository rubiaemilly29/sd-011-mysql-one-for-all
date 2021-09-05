DELIMITER $$

CREATE PROCEDURE SpotifyClone.albuns_do_artista(IN artist_name VARCHAR(25))
BEGIN
SELECT art.art_name AS `artista`,
alb.album_name AS `album`
FROM SpotifyClone.albums AS alb
INNER JOIN SpotifyClone.artists AS art
ON alb.art_id = art.art_id
WHERE art.art_name = artist_name
ORDER BY `album`;
END $$

DELIMITER ;
