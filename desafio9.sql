DELIMITER $$ 
CREATE PROCEDURE albuns_do_artista (IN artist varchar(75)) BEGIN
SELECT ar.name AS artista,
  ab.title AS album
FROM SpotifyClone.artists AS ar
  INNER JOIN SpotifyClone.albums AS ab
  ON ar.artist_id = ab.artist_id
WHERE ar.name = artist
ORDER BY album;
END $$ 
DELIMITER;
