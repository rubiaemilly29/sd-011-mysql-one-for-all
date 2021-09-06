DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (
id INT )
RETURNS INT READS SQL DATA
BEGIN
DECLARE contador INT;
SELECT COUNT(*)
FROM SpotifyClone.Reproducoes A 
WHERE A.id_usuario = id
INTO contador;

RETURN contador;
END $$

DELIMITER ;
