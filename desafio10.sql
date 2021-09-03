DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userId INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE songs_total INT;
SELECT COUNT(hr.user_id)
FROM SpotifyClone.history_reproduction hr
WHERE hr.user_id = 4
INTO songs_total;
RETURN songs_total;
END $$

DELIMITER ;
