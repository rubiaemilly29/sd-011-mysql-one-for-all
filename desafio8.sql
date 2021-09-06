USE SpotifyClone;
DELIMITER $$

CREATE TRIGGER trigger_usuario_delete BEFORE DELETE ON Usuario
FOR EACH ROW
BEGIN
DELETE FROM Seguidores WHERE id_usuario = OLD.id;
DELETE FROM Reproducao WHERE id_usuario = OLD.id;

END $$

DELIMITER ;
