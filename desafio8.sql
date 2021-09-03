DELIMITER $$
CREATE TRIGGER SpotifyClone.trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
	DELETE FROM SpotifyClone.usuario_seguindo_artista WHERE usuario_id = OLD.usuario_id;
    DELETE FROM SpotifyClone.usuario_musica WHERE usuario_id = OLD.usuario_id;
END $$
DELIMITER ;