DELIMITER $$
CREATE TRIGGER SpotifyClone.trigger_usuario_delete
BEFORE DELETE ON Usuario
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.Historico_reproducoes WHERE usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.Seguidores WHERE usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
