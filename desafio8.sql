DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE
ON userSpotify
FOR EACH ROW
BEGIN
DELETE FROM musics_history WHERE user_id = OLD.user_id;
DELETE FROM following_artists WHERE user_id = OLD.user_id;
END $$
DELIMITER ;
