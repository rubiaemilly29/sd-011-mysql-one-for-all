USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (
id_usuario INT )
RETURNS INT DETERMINISTIC
BEGIN
DECLARE contador INT;

SELECT
COUNT(A.id_usuario)
FROM Reproducoes A 
WHERE A.id = id_usuario
INTO contador;

RETURN contador;
END $$

DELIMITER ;
