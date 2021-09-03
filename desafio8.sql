DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.reproducoes RP
WHERE RP.usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.seguindo S
WHERE S.usuario_id = OLD.usuario_id;
END $$
DELIMITER ;

--  SequelizeDatabaseError: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'RP WHERE RP.usuario_id = OLD.usuario_id;
--     DELETE FROM SpotifyClone.seguindo S WHE' at line 2