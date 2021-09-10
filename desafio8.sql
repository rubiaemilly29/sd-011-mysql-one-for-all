DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW

BEGIN

DELETE FROM seguidores
WHERE usuario_id = OLD.usuario_id;
DELETE FROM historico_de_reproducao
WHERE usuario_id = OLD.usuario_id;

END $$

DELIMITER ;
