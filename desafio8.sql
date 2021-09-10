DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE
ON users FOR EACH ROW
BEGIN

DELETE FROM artist_followers WHERE artist_followers.user_id = OLD.user_id;
DELETE FROM reproduction_history WHERE reproduction_history.user_id = OLD.user_id;

END
DELIMITER $$

-- Helper articles: https://dev.mysql.com/doc/refman/8.0/en/create-trigger.html
-- https://www.mysqltutorial.org/create-the-first-trigger-in-mysql.aspx
