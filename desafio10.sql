DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id VARCHAR(80))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(hr.CancaoID)
FROM SpotifyClone.Historico_reproducoes AS hr
INNER JOIN SpotifyClone.Usuarios AS u
ON hr.UsuarioID = u.UsuarioID
WHERE u.UsuarioID = id
INTO total;
RETURN total;
END$$
DELIMITER ;
