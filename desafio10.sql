DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuarioIdIn int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_reproductions INT;
SELECT COUNT(*)
FROM historico
WHERE usuarioId = usuarioIdIn INTO total_reproductions;
RETURN total_reproductions;
END $$
DELIMITER ;
