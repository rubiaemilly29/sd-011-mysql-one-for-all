USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON SpotifyClone.users
    FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.following
    WHERE UserID = OLD.ID;
    DELETE FROM SpotifyClone.history
    WHERE UserID = OLD.ID;
END $$
DELIMITER ;
