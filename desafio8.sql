DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Usuario
FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.Seguindo_Artista
  WHERE usuario_id = OLD.id;
  DELETE FROM SpotifyClone.Historico_De_Reproducoes
  WHERE usuario_id = OLD.id;
END $$
DELIMITER ;
