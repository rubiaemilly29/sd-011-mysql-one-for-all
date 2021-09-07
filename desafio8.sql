DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM usuarios_cancoes WHERE id_usuarios = OLD.id_usuarios;
DELETE FROM usuario_seguidor WHERE id_usuarios = OLD.id_usuarios;
END $$
DELIMITER ;
