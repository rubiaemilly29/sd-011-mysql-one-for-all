USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.Followed_Performers
WHERE OLD.user_id = SpotifyClone.Followed_Performers.user_id;
DELETE FROM SpotifyClone.Songs_Historic
WHERE OLD.user_id = SpotifyClone.Songs_Historic.user_id;
END $$

DELIMITER ;
