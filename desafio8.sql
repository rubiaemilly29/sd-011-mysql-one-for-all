DELIMITER $$

CREATE TRIGGER `trigger_usuario_delete`
AFTER DELETE ON SpotifyClone.Usuarios
FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.Historico 
    WHERE usuario_id = OLD.usuario_id;
    DELETE FROM SpotifyClone.Usuario_Artista 
    WHERE usuario_id = OLD.usuario_id;
END $$

DELIMITER;
