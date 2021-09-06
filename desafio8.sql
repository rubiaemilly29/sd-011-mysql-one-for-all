USE SpotifyClone;
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON users
FOR EACH ROW
BEGIN
DELETE FROM follow
WHERE user_id =	OLD.user_id;
DELETE FROM `history`
WHERE user_id =	OLD.user_id;
END $$
DELIMITER ;
