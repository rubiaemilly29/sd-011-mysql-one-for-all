DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON Usuarios
FOR EACH ROW
BEGIN
DELETE FROM Seguindo_Artistas
WHERE usuario_id = OLD.usuario_id;
DELETE FROM Historico_de_Reproducoes
WHERE usuario_id = OLD.usuario_id;
END $$
DELIMITER ;
