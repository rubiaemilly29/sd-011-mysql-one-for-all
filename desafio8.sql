DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.Usuario
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.Historico_Reproducao WHERE Usuario_ID = OLD.Usuario_ID;
DELETE FROM SpotifyClone.Seguidores_Artistas WHERE Usuario_ID = OLD.Usuario_ID;
END $$

DELIMITER ;
