DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE totals_reproduction INT;
    SELECT COUNT(*)
    FROM SpotifyClone.reproduction_history AS hist
    INNER JOIN SpotifyClone.users AS userr ON userr.user_id = hist.user_id
    WHERE userr.user_name = usuario INTO totals_reproduction;
    RETURN totals_reproduction;
END $$

DELIMITER ;
