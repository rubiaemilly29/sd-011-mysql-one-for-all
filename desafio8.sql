DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
DELETE FROM users_songs_history
WHERE OLD.user_id = user_id;
DELETE FROM users_follow_artists
WHERE OLD.user_id = user_id;
END $$

DELIMITER ;
