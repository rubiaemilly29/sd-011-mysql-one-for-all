DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT COUNT(*) FROM SpotifyClone.historico_reproducao AS hr
INNER JOIN SpotifyClone.usuarios AS u ON u.usuario_id = hr.usuario_id
WHERE u.usuario_id = usuario INTO quantidade;
RETURN quantidade;
END $$

DELIMITER ;
