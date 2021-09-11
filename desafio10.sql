DELIMITER $$ 
CREATE FUNCTION quantidade_musicas_no_historico(userID INT)
RETURNS INT READS SQL DATA BEGIN
DECLARE total INT;
SELECT COUNT(hs.user_id)
FROM SpotifyClone.history AS hs
WHERE hs.user_id = userID INTO total;
RETURN total;
END $$
DELIMITER;
