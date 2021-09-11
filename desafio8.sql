DELIMITER $$

CREATE TRIGGER trigger_on_user_delete
BEFORE  DELETE ON SpotifyClone.users
FOR EACH ROW

BEGIN
DELETE FROM SpotifyClone.history
WHERE
user_id = OLD.user_id;

DELETE FROM SpotifyClone.following_list
WHERE
user_id = OLD.user_id;
END $$

DELIMITER ;