DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT 
COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_de_reproducoes AS h
WHERE usuario = h.usuario_id
INTO total;
RETURN total;
END $$

DELIMITER 
