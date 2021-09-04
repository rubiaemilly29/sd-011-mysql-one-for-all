DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(*) AS quantidade_musicas_no_historico FROM historic
GROUP BY user_id HAVING user_id = id INTO total;
RETURN total;
END $$
DELIMITER ;
