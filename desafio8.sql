DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON Usuarios
FOR EACH ROW
BEGIN
DELETE FROM Historico_reproducoes WHERE usuario_id = OLD.usuario_id;
DELETE FROM Seguindo_artistas WHERE usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
