DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id_user INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd_musicas INT;
SELECT COUNT(*)
FROM SpotifyClone.historico_de_reproducoes
WHERE id_user = usuario_id INTO qtd_musicas;
RETURN qtd_musicas;
END $$

DELIMITER ;
