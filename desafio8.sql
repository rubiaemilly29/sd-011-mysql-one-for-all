DELIMITER $$
CREATE TRIGGER trigger_usuario_delete 
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.seguindo_artistas
WHERE user_id = OLD.user_id;
DELETE FROM SpotifyClone.historico_de_reproducoes
WHERE user_id = OLD.user_id;
END $
DELIMITER ;
