DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
    DELETE FROM SpotifyClone.seguindo_artistas AS sa
    WHERE sa.usuario_id = old.usuario_id;
    DELETE FROM SpotifyClone.historico_de_reproducoes AS hr
    WHERE hr.usuario_id = old.usuario_id;
END $$

DELIMITER ;
