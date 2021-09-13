USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(codigoUsuario CHAR(10))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT; 
SELECT COUNT(H.usuario_id)
FROM historico AS H
INNER JOIN usuarios AS A
ON H.usuario_id = A.usuario_id
WHERE A.usuario = codigoUsuario
INTO quantidade;
RETURN quantidade;
END $$

DELIMITER ;
