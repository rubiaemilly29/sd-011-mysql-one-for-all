DELIMITER $$ 
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.history_reproduction
WHERE OLD.user_id = OLD.user_id;
DELETE FROM SpotifyClone.following_artists
WHERE OLD.user_id = OLD.user_id;
END $$
DELIMITER ;
