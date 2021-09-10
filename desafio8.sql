DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.following_singers fs
WHERE OLD.user_id = fs.user_id;
DELETE FROM SpotifyClone.history h
WHERE OLD.user_id = h.user_id;
END $$

DELIMITER ;