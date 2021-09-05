USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(ids INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE songs_history INT;
SELECT COUNT(songs_id)
FROM reproduction_history
WHERE user_id = ids INTO songs_history;
RETURN songs_history;
END $$
DELIMITER ;
