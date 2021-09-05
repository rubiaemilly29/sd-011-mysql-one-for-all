DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(nomeUsuario VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
DECLARE history_total INT;
SELECT COUNT(hr.cancao_id)
FROM SpotifyClone.historico_de_reproducoes hr
INNER JOIN SpotifyClone.usuarios u ON u.usuario_id = hr.usuario_id
WHERE u.nome = nomeUsuario INTO history_total;
RETURN history_total;
END $$

DELIMITER ;
