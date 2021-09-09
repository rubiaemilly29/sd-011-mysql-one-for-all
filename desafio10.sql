USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id_user INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE amount INT;
  SELECT COUNT(*)
  FROM history
  WHERE UserID = id_user INTO amount;
  RETURN amount;    
END $$
DELIMITER ;
