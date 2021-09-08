DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE totais_reproducoes INT;
    SELECT COUNT(*)
    FROM SpotifyClone.Historico_reproducoes
    WHERE usuario_id = id INTO totais_reproducoes;
    RETURN totais_reproducoes;
END $$

DELIMITER ;
