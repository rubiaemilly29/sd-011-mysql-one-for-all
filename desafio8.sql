DELIMITER $$
CREATE TRIGGER trigger_usuario_delete 
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.historico_de_reproducao
WHERE OLD.usuario_id = usuario_id;
DELETE FROM SpotifyClone.seguindoartistas
WHERE OLD.usuario_id = usuario_id;
END $$
DELIMITER ;
