DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN 
DECLARE total_musicas INT;
SELECT COUNT(h.usuario_id)
FROM SpotifyClone.historicos AS h
INNER JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = h.usuario_id
WHERE h.usuario_id = id INTO total_musicas;
RETURN total_musicas;
END $$
DELIMITER ;
-- SELECT quantidade_musicas_no_historico(3);
