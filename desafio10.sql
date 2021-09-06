DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_songs_in_history INT;
SELECT
COUNT(*)
FROM SpotifyClone.play_history ph
WHERE ph.user_id = user_id INTO total_songs_in_history;
RETURN total_songs_in_history;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
