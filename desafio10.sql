DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (userId INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE number INT;
SELECT COUNT(*) FROM historico_de_reproducao
WHERE usuario_id = userId
INTO number;
RETURN number;
END $$

DELIMITER ;
