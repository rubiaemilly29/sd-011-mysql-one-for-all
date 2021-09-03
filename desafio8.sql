DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.Historico_Reproducoes WHERE usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.Historico_Seguidores WHERE usuario_id = OLD.usuario_id;
END $$
DELIMITER $$ ;
