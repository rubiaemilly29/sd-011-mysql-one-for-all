USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
  DELETE FROM SpotifyClone.historico_reproducoes AS hr
  WHERE OLD.usuario_id = hr.usuario_id;
  DELETE FROM SpotifyClone.seguindo_artistas AS sa
  WHERE OLD.usuario_id = sa.usuario_id;
END $$

DELIMITER ;
