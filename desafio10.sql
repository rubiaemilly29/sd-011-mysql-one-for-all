USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id SMALLINT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE music_total INT;
    SELECT COUNT(music_id) AS quantidade_de_musicas_no_historico
    FROM SpotifyClone.reproduction_history
    WHERE user_id = id
    INTO music_total;
    RETURN music_total;
END $$

DELIMITER ;
