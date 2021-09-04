DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM historico
WHERE id_usuario = id INTO total;
RETURN total;
END $$

DELIMITER ;
