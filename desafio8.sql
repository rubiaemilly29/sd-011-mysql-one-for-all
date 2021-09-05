-- Reference: https://docs.oracle.com/cd/E17781_01/appdev.112/e18147/tdddg_triggers.htm#TDDDG99934

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE
ON SpotifyClone.usuarios
FOR EACH ROW

BEGIN
DELETE FROM SpotifyClone.artistas_seguindo
WHERE usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.historico_reproducoes
WHERE usuario_id = OLD.usuario_id;
END $$

DELIMITER ;
