DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
  BEGIN
    DECLARE quantity_music INT;
    SELECT COUNT(*)
    FROM SpotifyClone.historico_reproducoes
    WHERE usuario_id = id INTO quantity_music;
    RETURN quantity_music;
  END $$
  
DELIMITER ;
