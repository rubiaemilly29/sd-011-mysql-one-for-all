DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id SMALLINT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT 
COUNT(cancao_id) AS quantidade_musicas_no_historico
FROM historico WHERE (usuario_id = id)
INTO total;
RETURN total;
END $$

DELIMITER ;
