USE SpotifyClone;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario_id int)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total_reproducoes INT;
    SELECT COUNT(usuario_id)
    FROM SpotifyClone.historico_reproducao
    WHERE SpotifyClone.historico_reproducao.usuario_id = usuario_id INTO total_reproducoes;
    RETURN total_reproducoes;
END $$

DELIMITER ;
