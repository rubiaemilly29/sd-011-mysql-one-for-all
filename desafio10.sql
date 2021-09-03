
USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(user VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_amount INT;
SELECT COUNT(*) FROM SpotifyClone.LISTENING_HISTORY WHERE user_id = user INTO total_amount;
RETURN total_amount;
END $$
DELIMITER ;
