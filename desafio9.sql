USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_artista(IN name_artist VARCHAR(50))
BEGIN
  SELECT art.ArtistName AS artista,
  alb.AlbumName AS album
  FROM artists AS art
  INNER JOIN albuns AS alb
  ON art.ID = alb.ArtistID
  WHERE art.ArtistName = name_artist;
END $$
DELIMITER ;
