USE SpotifyClone;
DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
DELETE FROM follow
WHERE OLD.user_id =	user_id;
DELETE FROM `history`
WHERE OLD.user_id =	user_id;
END $$
DELIMITER ;
