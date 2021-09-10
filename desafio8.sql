USE SpotifyClone;
DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
	DELETE FROM SpotifyClone.follow WHERE usuario_id = OLD.usuario_id;
  DELETE FROM SpotifyClone.history WHERE usuario_id = OLD.usuario_id;
END $$

DELIMITER ;
