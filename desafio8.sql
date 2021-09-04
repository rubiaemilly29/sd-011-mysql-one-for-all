USE SpotifyClone;

DELIMITER $$
CREATE TRIGGER trigger_usuario_delete 
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM seguindo_artistas WHERE user_id = OLD.user_id;
DELETE FROM historico_de_reproducoes WHERE user_id = OLD.user_id;
END $
DELIMITER ;
