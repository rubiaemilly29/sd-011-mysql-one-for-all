DELIMITER $$

CREATE TRIGGER `trigger_usuario_delete`
BEFORE  DELETE ON SpotifyClone.Usuarios
FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.Historico AS H
    WHERE H.usuario_id = OLD.usuario_id;
    DELETE FROM SpotifyClone.Usuario_Artista AS U_A
    WHERE U_A.usuario_id = OLD.usuario_id;
END $$

DELIMITER ;
