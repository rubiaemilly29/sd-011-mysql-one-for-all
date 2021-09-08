DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd_musicas INT;
    SELECT COUNT(h.Usuario_ID)
    FROM SpotifyClone.Historico_Reproducao AS h
    WHERE Usuario_ID = id INTO qtd_musicas;
RETURN qtd_musicas;
END $$

DELIMITER ;
