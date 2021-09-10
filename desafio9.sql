DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50))

BEGIN
  
  SELECT a.artista AS artista, alb.album AS album
  FROM artistas AS a
  INNER JOIN albuns AS alb
  ON a.artista_id = alb.artista_id
  WHERE a.artista = artista
  ORDER BY album;
  
END $$

DELIMITER ;