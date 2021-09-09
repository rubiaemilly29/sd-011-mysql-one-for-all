DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.historico_reproducoes
WHERE OLD.usuario_id = usuario_id;
DELETE FROM SpotifyClone.seguindo_artistas
WHERE OLD.usuario_id = usuario_id;
END $$
DELIMITER ;
