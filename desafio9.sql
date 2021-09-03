USE SpotifyClone;
DELIMITER $$ 
CREATE PROCEDURE albuns_do_artista(IN artist_name varchar(45)) BEGIN
SELECT
  AR.artist_name AS artista,
  AL.album_name AS album
FROM
  artists AS AR
  INNER JOIN albums AS AL ON AL.artist_id = AR.artist_id
  WHERE AR.artist_name = artist_name
ORDER BY
  AL.album_name ASC;
END $$ 
DELIMITER ;
