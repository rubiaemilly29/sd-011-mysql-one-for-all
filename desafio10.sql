DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE cancao_total INT;
SELECT 
COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_reproducoes AS his
WHERE usuario = his.usuario_id
INTO cancao_total;
RETURN cancao_total;
END $$
DELIMITER ;
