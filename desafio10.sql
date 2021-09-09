DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(userID INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_songs INT;
SELECT
COUNT(*)
FROM
SpotifyClone.Historico_De_Reproducoes AS h_d_r
WHERE
userID = h_d_r.usuario_id INTO total_songs;
RETURN total_songs;
END $$
DELIMITER ;
