USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(codigoUsuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT; 
SELECT COUNT(usuario_id)
FROM historico
WHERE usuario_id = codigoUsuario
INTO quantidade;
RETURN quantidade;
END $$

DELIMITER ;
