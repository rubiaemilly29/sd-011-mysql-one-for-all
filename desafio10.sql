DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_name VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE music_quantities INT;
    SELECT COUNT(*)
    FROM SpotifyClone.Historico_De_Reproducao AS HDR
    INNER JOIN SpotifyClone.Usuario AS US
    ON US.Usuario_ID = HDR.Usuario_ID
    WHERE US.Nome = user_name
    GROUP BY HDR.Usuario_ID
    INTO music_quantities;
    RETURN music_quantities;
END $$

DELIMITER ;
