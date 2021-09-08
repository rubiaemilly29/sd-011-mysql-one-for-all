DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM seguindo_artistas
WHERE usuario_id = OLD.id;
DELETE FROM reproducoes
WHERE usuario_id = OLD.id;
END $$
DELIMITER ;
