USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN person varchar(45))
BEGIN
SELECT 
a.artist_name as artista,
alb.album_name as album
FROM SpotifyClone.ALBUMS alb
INNER JOIN SpotifyClone.ARTISTS a
ON alb.artist_id = a.artist_id
WHERE a.artist_name = person;
END $$
DELIMITER ;