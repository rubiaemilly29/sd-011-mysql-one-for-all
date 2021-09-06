DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE totals_reproduction INT;
    SELECT COUNT(*)
    FROM SpotifyClone.reproduction_history
    WHERE user_id = id INTO totals_reproduction;
    RETURN totals_reproduction;
END $$

DELIMITER ;
