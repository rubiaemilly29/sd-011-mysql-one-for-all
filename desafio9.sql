DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nameartist VARCHAR(50))
BEGIN 
SELECT
t1.artist AS "artista",
t2.album_name AS "album"
FROM SpotifyClone.Artists AS t1
INNER JOIN SpotifyClone.Album AS t2
ON t1.artist_id = t2.artist_id
WHERE t1.artista = nameartist;
END $$
DELIMITER ;
CALL albuns_do_artista('Walter Phoenix');
