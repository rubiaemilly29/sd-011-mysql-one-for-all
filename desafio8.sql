DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.user_info
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.history
WHERE user_id = :old.user_id;
DELETE FROM SpotifyClone.user_following
WHERE user_id = :old.user_id;
END $$

DELIMITER ;
