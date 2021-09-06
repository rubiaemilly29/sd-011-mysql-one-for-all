USE SpotifyClone;
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON user
    FOR EACH ROW
BEGIN
	DELETE FROM reproduction_history WHERE user_id = old.user_id;
    DELETE FROM artists_following WHERE user_id = old.user_id;
END $$
DELIMITER ; 
