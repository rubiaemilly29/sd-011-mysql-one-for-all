DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE  DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.historico_reproducoes
WHERE
id_usuarios = OLD.id_usuarios;
DELETE FROM SpotifyClone.seguindo_artistas
WHERE
id_usuarios = OLD.id_usuarios;
END $$
DELIMITER ;
