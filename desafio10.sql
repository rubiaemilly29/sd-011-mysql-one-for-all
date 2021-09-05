DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historicousuarios(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE cancoes_historico INT;
SELECT COUNT(*)
FROM SpotifyClone.historico
WHERE SpotifyClone.historico.usuario_id = id INTO cancoes_historico;
RETURN cancoes_historico;
END $$
DELIMITER ;
