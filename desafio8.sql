DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.historico h
WHERE OLD.usuario_id = h.usuario_id;
DELETE FROM SpotifyClone.seguindo s
WHERE OLD.usuario_id = s.usuario_id;
END $$

DELIMITER ;
