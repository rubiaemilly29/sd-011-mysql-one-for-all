DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON users
FOR EACH ROW
BEGIN
DELETE FROM historic
WHERE user_id = OLD.users.id;
DELETE FROM followers
WHERE user_id = OLD.users.id;
END $$
DELIMITER ;
