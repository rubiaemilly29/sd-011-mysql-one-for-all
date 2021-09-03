DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(40))
BEGIN
SELECT ar.name AS 'artista', al.name AS 'album'
FROM SpotifyClone.artists ar
INNER JOIN SpotifyClone.albuns al
ON ar.artist_id = al.artist_id
WHERE ar.name = artist;
END $$
DELIMITER ;
