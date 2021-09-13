DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE historico INT;
SELECT COUNT(*) FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON u.usuario_id = h.usuario_id
WHERE u.usuario_id = id
INTO historico;
RETURN historico;
END $$

DELIMITER ;
