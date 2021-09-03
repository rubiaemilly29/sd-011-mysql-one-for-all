DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(*) AS `quantidade_musicas_no_historico`
FROM SpotifyClone.Historico
WHERE usuario_id = id INTO total;
RETURN total;
END $$

DELIMITER ;
