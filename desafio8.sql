DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.historico_de_reproducoes hr
WHERE OLD.usuario_id = hr.usuario_id;
DELETE FROM SpotifyClone.seguindo_artistas s
WHERE OLD.usuario_id = s.usuario_id;
END $$

DELIMITER ;
