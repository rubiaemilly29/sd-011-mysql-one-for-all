DELIMITER $
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.Historico_reproducoes
WHERE UsuarioID = OLD.UsuarioID;
DELETE FROM SpotifyClone.Seguindo_artistas
WHERE UsuarioID = OLD.UsuarioID;
END$
DELIMITER ;
