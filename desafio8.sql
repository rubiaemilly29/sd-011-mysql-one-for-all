DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON user
FOR EACH ROW
BEGIN
DELETE FROM user_history 
WHERE OLD.user_id = user_id;
DELETE FROM user_follow 
WHERE OLD.user_id = user_id;
END $$
DELIMITER ;
