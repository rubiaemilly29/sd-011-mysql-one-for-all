DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE cancoes_historico INT;
SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico
WHERE SpotifyClone.historico.usuario_id = id INTO cancoes_historico;
RETURN cancoes_historico;
END $$
DELIMITER ;
