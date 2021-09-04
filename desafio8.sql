DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON User
FOR EACH ROW
BEGIN
DELETE FROM Artist_followers WHERE user_id = OLD.user_id;
DELETE FROM Reproduction_history WHERE user_id = OLD.user_id;
END $$
DELIMITER ;
