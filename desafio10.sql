USE SpotifyClone;
DELIMITER $$ 
CREATE FUNCTION quantidade_musicas_no_historico(id int) 
RETURNS INT READS SQL DATA 
BEGIN 
DECLARE total INT;
SELECT
  COUNT(RH.song_id)
FROM
  reproduction_history AS RH
WHERE
  RH.user_id = id INTO total;
RETURN total;
END $$ 
DELIMITER ;
