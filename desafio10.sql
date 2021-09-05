DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(recived_user_id int)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE music_total INT;
    SELECT COUNT(song_id)
		FROM SpotifyClone.history_reproduction sh
		WHERE sh.user_id = recived_user_id
		INTO music_total;
    RETURN music_total;
END $$

DELIMITER ;
