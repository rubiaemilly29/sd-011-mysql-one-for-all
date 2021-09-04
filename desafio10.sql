DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id_user INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity_musics INT;
SELECT * AS quantidade_musicas_no_historico
FROM SpotifyClone.musics_history
WHERE user_id = id_user
INTO quantity_musics;
RETURN quantity_musics;
END $$
DELIMITER ;
