DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON assinantes
FOR EACH ROW
BEGIN
DELETE FROM historico_reproducoes
WHERE OLD.id_assinante = id_assinante;
DELETE FROM seguindo
WHERE OLD.id_assinante = id_assinante;
END $$
DELIMITER ;
