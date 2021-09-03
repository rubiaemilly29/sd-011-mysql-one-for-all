DELIMITER $$

CREATE TRIGGER trigger_usuario_delet
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.seguidores WHERE usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.Historico WHERE usuario_id = OLD.usuario_id;
END $$

DELIMITER ;
