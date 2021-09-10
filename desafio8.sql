DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON users
FOR EACH ROW
BEGIN
DELETE FROM historic
WHERE id = OLD.user_id;
DELETE FROM followers
WHERE id = OLD.user_id;
END $$
DELIMITER ;
