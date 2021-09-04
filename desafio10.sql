DELIMITER $$

CREATE FUNCTION SpotifyClone.quantidade_musicas_no_historico (user_id INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE qtd_musicas_historico INT;
    SELECT COUNT(*) AS `quantidade_musicas_no_historico`
    FROM SpotifyClone.Historico AS hist 
    INNER JOIN SpotifyClone.Usuario AS usr ON hist.usuario_id = usr.usuario_id
    WHERE usr.usuario_id = user_id
    INTO qtd_musicas_historico;
    RETURN qtd_musicas_historico;
END $$
DELIMITER ;
