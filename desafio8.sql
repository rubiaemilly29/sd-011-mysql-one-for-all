USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    AFTER DELETE ON users
    FOR EACH ROW
BEGIN
    DELETE FROM following
    WHERE UserID = OLD.ID;
    DELETE FROM history
    WHERE UserID = OLD.ID;
END $$
DELIMITER ;
