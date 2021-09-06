DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE contador INT;
SELECT COUNT(*)
FROM SpotifyClone.Reproducao  
WHERE id_usuario = id INTO contador;
RETURN contador;
END $$

DELIMITER ;
