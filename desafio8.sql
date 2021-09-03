USE SpotifyClone;
DELIMITER $$

CREATE TRIGGER SpotifyClone.trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.play_history AS ph
WHERE ph.user_id = OLD.user_id;
DELETE FROM SpotifyClone.user_follows_artist AS ufa
WHERE ufa.user_id = OLD.user_id;
END $$

DELIMITER ;
