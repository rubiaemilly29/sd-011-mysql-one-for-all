USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id_artista VARCHAR(50))
  RETURNS INT READS SQL DATA
  BEGIN
    DECLARE quantidade INT;
    SELECT COUNT(hr.musica_id)
    FROM SpotifyClone.historico_reproducoes AS hr
    INNER JOIN SpotifyClone.usuarios AS u
    ON hr.usuario_id = u.usuario_id
    WHERE u.usuario_id = id_artista
    INTO quantidade;
    RETURN quantidade;
  END $$

DELIMITER ;
