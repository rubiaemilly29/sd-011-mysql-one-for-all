DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM seguindo WHERE old.usuarioId = usuarioId;
DELETE FROM historico WHERE old.usuarioId = usuarioId;
END $$
DELIMITER ;
