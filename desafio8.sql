DELIMITER $$ 
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.users
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.history_reproduction hr
WHERE OLD.user_id = hr.user_id;
DELETE FROM SpotifyClone.following_artists fa
WHERE OLD.user_id = fa.user_id;
END $$
DELIMITER ;
