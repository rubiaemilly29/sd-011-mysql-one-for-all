DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(h.usuario_id)
FROM SpotifyClone.historico as h
WHERE h.usuario_id = id
INTO total;
RETURN total;
END $$

DELIMITER ;
