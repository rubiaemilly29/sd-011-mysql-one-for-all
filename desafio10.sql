DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE history_total INT;
SELECT COUNT(hr.cancao_id)
FROM SpotifyClone.historico_de_reproducoes hr
INNER JOIN SpotifyClone.usuarios u ON u.usuario_id = hr.usuario_id
WHERE u.usuario_id = id INTO history_total;
RETURN history_total;
END $$

DELIMITER ;

SELECT quantidade_musicas_no_historico(3);
