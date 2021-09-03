USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
  BEFORE DELETE ON users
  FOR EACH ROW
BEGIN
  DELETE FROM artists_followers WHERE artists_followers.user_id IN(OLD.user_id);
  DELETE FROM songs_playback_history WHERE songs_playback_history.user_id IN(OLD.user_id);
END $$

DELIMITER ;
