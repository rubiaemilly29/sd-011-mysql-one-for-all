DELIMITER $$

CREATE FUNCTION SpotifyClone.quantidade_musicas_no_historico
(@id_user)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total_songs INT;
    SELECT COUNT(song_id) FROM SpotifyClone.history
    WHERE user_id = @id_user
    RETURN resultado_a_ser_retornado
    INTO total_songs;
    RETURN total_songs;
END $$

DELIMITER ;
