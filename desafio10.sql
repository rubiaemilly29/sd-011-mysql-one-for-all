DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE totais_reprducoes INT;
    SELECT COUNT(*)
    FROM SpotifyClone.Historico_reproducoes
    WHERE user_id = id INTO totais_reprducoes;
    RETURN totais_reprducoes;
END $$

DELIMITER ;
SELECT
quantidade_musicas_no_historico(1)