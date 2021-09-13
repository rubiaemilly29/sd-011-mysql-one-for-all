DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.listeningHistory
WHERE userId = OLD.userId;
DELETE FROM SpotifyClone.followedArtists 
WHERE userId = OLD.userId;
END $$

DELIMITER ;
