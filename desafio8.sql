DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON user
FOR EACH ROW
BEGIN
DELETE FROM user_history 
WHERE user_history.user_id = old.user_id;
DELETE FROM user_follow 
WHERE user_follow.user_id = old.user_id;
END $$
DELIMITER ;
