DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE response INT;
SELECT 
COUNT(song_id)
FROM user_history
GROUP BY user_id
HAVING user_id = id
INTO response ;
RETURN response;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
