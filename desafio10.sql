DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE music_total INT;
SELECT COUNT(*)
FROM SpotifyClone.Historico_Reproducoes
WHERE usuario_id = usuario INTO music_total;
RETURN music_total;
END $$
DELIMITER ;
