DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE
ON SpotifyClone.usuario
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.seguindoartistas WHERE usuario = 'Thati';
DELETE FROM SpotifyClone.historico WHERE usuarioId = usuario;
END $$
DELIMITER ;
