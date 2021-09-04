DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nameartist VARCHAR(50))
BEGIN 
SELECT
t1.name_artist AS "artista",
t2.name_album AS "album"
FROM SpotifyClone.artists AS t1
INNER JOIN SpotifyClone.album AS t2
ON t1.artist_id = t2.artist_id
WHERE t1.name_artist = nameartist
ORDER BY `album`;
END $$
DELIMITER ;
