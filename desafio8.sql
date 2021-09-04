DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
    BEFORE DELETE ON t_users
    FOR EACH ROW
BEGIN
    DELETE FROM t_h_reproductions WHERE fk_id_user = OLD.id_user;
    DELETE FROM t_follow_artists WHERE fk_id_user = OLD.id_user;
END $$
DELIMITER ;
