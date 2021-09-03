DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Usuario
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.Usuario WHERE usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.Historico_reproducoes WHERE usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.Seguidores WHERE usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
