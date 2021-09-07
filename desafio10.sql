DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd_cancoes INT;
SELECT count(cancoes_id)
FROM SpotifyClone.historico
WHERE SpotifyClone.historico.usuario_id = id INTO qtd_cancoes;
RETURN qtd_cancoes;
END $$

DELIMITER ;
