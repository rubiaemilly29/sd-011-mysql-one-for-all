DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total_musicas INT;
    SELECT COUNT(*)
    FROM SpotifyClone.Usuarios AS U
    INNER JOIN  SpotifyClone.Historico AS H ON U.usuario_id = H.usuario_id
    WHERE U.usuario = usuario INTO total_musicas;
    RETURN total_musicas;
END $$

DELIMITER;
