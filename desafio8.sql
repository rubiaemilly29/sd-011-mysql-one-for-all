DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE
ON SpotifyClone.usuario
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.seguindoartistas WHERE usuarioID = OLD.usuarioId;
DELETE FROM SpotifyClone.historico WHERE usuarioId = OLD.usuarioId;
END $$
DELIMITER ;
