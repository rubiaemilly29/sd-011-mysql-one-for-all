USE SpotifyClone;
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.USERS
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.LISTENING_HISTORY WHERE user_id = old.user_id;
DELETE FROM SpotifyClone.FOLLOWING_ARTISTS WHERE user_id = old.user_id;
END $$
DELIMITER $$;
