DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Usuario
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.Historico_De_Reproducao WHERE Usuario_ID = OLD.Usuario_ID;
DELETE FROM SpotifyClone.Seguindo_Artistas WHERE Usuario_ID = OLD.Usuario_ID;
END $$

DELIMITER ;
