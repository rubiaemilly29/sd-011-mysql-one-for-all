DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE
ON `user`
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.musics_history WHERE musics_history.user_id = OLD.user_id;
DELETE FROM SpotifyClone.following_artists WHERE following_artists.user_id = OLD.user_id;
END $$
DELIMITER ;
