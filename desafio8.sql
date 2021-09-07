DELIMITER $
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.Historico_reproducoes AS hr
WHERE hr.UsuarioID = OLD.UsuarioID;
DELETE FROM SpotifyClone.Seguindo_artistas AS sa
WHERE sa.UsuarioID = OLD.UsuarioID;
END$
DELIMITER ;
