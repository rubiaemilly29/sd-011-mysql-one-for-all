DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(ammountUser_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE ammount INT;
SELECT COUNT(user_id)
FROM SpotifyClone.history_play
WHERE user_id = ammountUser_id INTO ammount;
RETURN ammount;
END $$
DELIMITER ;
