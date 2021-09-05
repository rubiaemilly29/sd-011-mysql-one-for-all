USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(255))
BEGIN
SELECT
CONCAT(first_name, ' ', last_name) AS 'artista',
`Ab`.album_name AS 'album'
FROM SpotifyClone.artists `At`
INNER JOIN SpotifyClone.albuns as `Ab`
ON `Ab`.artist_id = `At`.artist_id
WHERE CONCAT(first_name, ' ', last_name) = nome_artista;
END $$;
DELIMITER ;
