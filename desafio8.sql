DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
DELETE FROM following_singers
WHERE OLD.user_id = user_id;
DELETE FROM history
WHERE OLD.user_id = user_id;
END $$

DELIMITER ;
