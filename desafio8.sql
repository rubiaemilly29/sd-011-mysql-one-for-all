DELIMITER $$
CREATE TRIGGER SpotifyClone.trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.Artists_Followers
WHERE user_id = OLD.user_id;
DELETE FROM SpotifyClone.History
WHERE user_id = OLD.user_id;
END $$
DELIMITER ;
