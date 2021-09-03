DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.reproducoes RP
WHERE RP.usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.seguindo S
WHERE S.usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
