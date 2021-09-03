DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(user_code_in INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE songs_amount INT;
SELECT COUNT(*) quantidade_musicas_no_historico
FROM SpotifyClone.reproducoes RP
WHERE RP.usuario_id = user_code_in
INTO songs_amount;
RETURN songs_amount;
END $$
DELIMITER ;
