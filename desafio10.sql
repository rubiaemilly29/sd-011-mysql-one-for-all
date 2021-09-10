DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(cod_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_cancoes INT;
SELECT COUNT(usuario_id)
FROM SpotifyClone.Historico_reproducoes
WHERE Historico_reproducoes.usuario_id = cod_usuario INTO quantidade_cancoes;
RETURN quantidade_cancoes;
END $$
DELIMITER ;
