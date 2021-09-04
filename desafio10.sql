DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd_musicas INT;
SELECT COUNT(H.usuario_id)
FROM SpotifyClone.historico_reproducoes AS H
WHERE usuario_id = id INTO qtd_musicas;
RETURN qtd_musicas;
END $$

DELIMITER ;
