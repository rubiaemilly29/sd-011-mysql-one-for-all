DELIMITER $$ 
CREATE FUNCTION quantidade_musicas_no_historico(userID INT)
RETURNS INT READS SQL DATA BEGIN
DECLARE total INT;
SELECT COUNT(hs.id_usuarios)
FROM SpotifyClone.historico_reproducoes AS hs
WHERE hs.id_usuarios = userID INTO total;
RETURN total;
END $$
DELIMITER;
