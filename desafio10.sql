USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(name_user VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE amount INT;
  SELECT COUNT(*)
  FROM SpotifyClone.history AS his
  INNER JOIN SpotifyClone.users AS us
  ON us.ID = his.UserID
  WHERE us.UserName = name_user INTO amount;
  RETURN amount;    
END $$
DELIMITER ;
