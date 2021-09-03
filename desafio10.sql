USE `SpotifyClone`;
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(usuario VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_musicas INT;
SELECT COUNT(hr.cancao_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_reproducoes AS hr
INNER JOIN SpotifyClone.usuarios AS u
ON u.id = hr.usuario_id
WHERE u.usuario = usuario INTO total_musicas;
RETURN total_musicas;
END $$

DELIMITER ;
