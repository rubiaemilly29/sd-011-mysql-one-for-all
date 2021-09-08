DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (nome_usuario VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_musicas INT;
SELECT COUNT(*)
FROM SpotifyClone.Historico AS h
INNER JOIN SpotifyClone.Usuario AS u ON h.usuario_id = u.usuario_id
WHERE u.usuario = nome_usuario INTO total_musicas;
RETURN total_musicas;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico('Bill');
