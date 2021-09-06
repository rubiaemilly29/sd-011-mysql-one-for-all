DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (
id_usuario INT )
RETURNS INT READS SQL DATA
BEGIN
DECLARE contador INT;

SELECT
COUNT(A.id_usuario)
FROM SpotifyClone.Reproducoes A 
WHERE A.id = id_usuario
INTO contador;

RETURN contador;
END $$

DELIMITER ;
