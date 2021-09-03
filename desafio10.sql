DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(userName VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
DECLARE songs_total INT;
SELECT COUNT(hr.user_id)
FROM SpotifyClone.users u
INNER JOIN SpotifyClone.history_reproduction hr
ON hr.user_id = u.user_id
WHERE u.name = userName
INTO songs_total;
RETURN songs_total;
END $$

DELIMITER ;
