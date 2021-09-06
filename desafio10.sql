USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(*)
FROM SpotifyClone.reproduction_history
WHERE user_id = user_id
INTO total;
RETURN total;
END $$

DELIMITER ;
