DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(us_id VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(*)
FROM SpotifyClone.historico_reproducao AS Sh
WHERE us_id = Sh.usuario_id INTO total;
RETURN total;
END $$

DELIMITER ;
