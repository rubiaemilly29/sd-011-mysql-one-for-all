DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quant INT;
SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico
WHERE usuario_id = id INTO quant;
RETURN quant;
END $$

DELIMITER ;
