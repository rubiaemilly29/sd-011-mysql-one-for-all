DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id_user INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity_songs INT;
SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM musics_history
WHERE user_id = id_user
INTO quantity_songs;
RETURN quantity_songs;
END $$
DELIMITER ;
