DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuarioID INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd_musicas INT;
SELECT COUNT(*) FROM SpotifyClone.historico_reproducoes AS hr
WHERE hr.usuario_id = usuarioID INTO qtd_musicas;
RETURN qtd_musicas;
END$$
DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
