USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    AFTER DELETE ON user
    FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.user WHERE user_id = user_id;
    DELETE FROM SpotifyClone.reproduction_history WHERE user_id = user_id;
    DELETE FROM SpotifyClone.artists_following WHERE user_id = user_id;    
END $$
DELIMITER ; 
