USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(hr.user_id)
FROM SpotifyClone.reproduction_history AS hr
WHERE hr.user_id = 4
INTO total;
RETURN total;
END $$

DELIMITER ;
