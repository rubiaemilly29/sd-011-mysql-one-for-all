DELIMITER $$

CREATE FUNCTION SpotifyClone.quantidade_musicas_no_historico(selected_user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE history_lenght INT;
SELECT COUNT(*)
FROM SpotifyClone.play_history
WHERE user_id = selected_user_id
INTO history_lenght;
RETURN history_lenght;
END $$

DELIMITER ;
