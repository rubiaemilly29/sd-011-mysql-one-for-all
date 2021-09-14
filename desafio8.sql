DELIMITER $$

CREATE TRIGGER SpotifyClone.trigger_usuario_delete
AFTER DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.followers
    WHERE OLD.user_id = user_id;
    DELETE FROM SpotifyClone.history
    WHERE OLD.user_id = user_id;
END $$

DELIMITER ;
