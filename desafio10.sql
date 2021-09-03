USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(search_user_id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade_musicas_no_historico INT;
  SELECT
    COUNT(user_id)
  FROM songs_playback_history
  WHERE user_id = search_user_id INTO quantidade_musicas_no_historico;
  RETURN quantidade_musicas_no_historico;
END $$

DELIMITER ;
