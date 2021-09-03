USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM seguidores
WHERE OLD.usuario_id = usuario_id;
DELETE FROM historico
WHERE OLD.usuario_id = usuario_id;
END $$
DELIMITER ;
