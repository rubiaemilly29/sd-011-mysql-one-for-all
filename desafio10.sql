DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (identifier INT)
RETURNS INT READS SQL DATA

BEGIN DECLARE listeningHistoryCount INT;
SELECT
    COUNT(*)
FROM
    SpotifyClone.listeningHistory AS `history`
WHERE
    `history`.userId = identifier INTO listeningHistoryCount;
RETURN listeningHistoryCount;
END $$

DELIMITER ;
