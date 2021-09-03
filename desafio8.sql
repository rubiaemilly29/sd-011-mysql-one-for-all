DELIMITER $$

CREATE TRIGGER SpotifyClone.trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.play_history
WHERE OLD.user_id = user_id;
DELETE FROM SpotifyClone.user_follows_artist
WHERE OLD.user_id = user_id;
END $$

DELIMITER ;
