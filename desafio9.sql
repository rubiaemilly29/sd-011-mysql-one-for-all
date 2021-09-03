USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(50))
BEGIN
  SELECT A.artist_name AS artista, AB.album_name AS album FROM albuns AS AB
  INNER JOIN artists AS A
  ON A.artist_id = AB.artist_id
  HAVING artista = artist_name
  ORDER BY album;
END $$

DELIMITER ;
