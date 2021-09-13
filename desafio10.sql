DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_musicas INT;
SELECT COUNT(HISTORICO.usuario)
FROM SpotifyClone.HISTORICO
WHERE HISTORICO.usuario = 3
INTO total_musicas;
RETURN total_musicas;
END $$
DELIMITER ;
