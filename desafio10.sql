USE SpotifyClone; -- obrigatório para criar a função no banco correto
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE reproduction_history_total INT;
SELECT COUNT(*) FROM SpotifyClone.reproduction_history as hist
WHERE user_id = hist.user_id INTO reproduction_history_total;
    RETURN reproduction_history_total;
END $$

DELIMITER ;

-- cool article: https://www.mysqltutorial.org/mysql-stored-function/
