DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuario
FOR EACH ROW
BEGIN
DELETE FROM usuario_artista
WHERE usuario_id = OLD.usuario_id;
DELETE FROM usuario_cancao
WHERE usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
