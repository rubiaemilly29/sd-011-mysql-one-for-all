DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico (codigo_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_cancoes INT;
SELECT COUNT(*) FROM SpotifyClone.Historico_reproducoes WHERE usuario_id = codigo_usuario
INTO quantidade_cancoes;
RETURN quantidade_cancoes;
END $$
DELIMITER ;
