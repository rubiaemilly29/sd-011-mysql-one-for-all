DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
AFTER DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM historico_de_reproducoes
WHERE OLD.usuario_id = usuario_id;
DELETE FROM seguindo_artistas
WHERE OLD.usuario_id = usuario_id;
END $$

DELIMITER ;
