DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuario
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.seguindo_artistas WHERE usuario_id = 'Thati';
DELETE FROM SpotifyClone.historico_de_reproducoes WHERE usuario_id = usuario;
END $$
DELIMITER ;
