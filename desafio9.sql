USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista( IN nome_artista VARCHAR(300))
BEGIN
SELECT
CONCAT(first_name, ' ', last_name) AS artista,
name AS album
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albuns AS al
ON al.artist_id = a.artist_id
WHERE CONCAT(first_name, ' ', last_name) = nome_artista;
END $$

DELIMITER ;
