DELIMITER //
CREATE FUNCTION quantidade_musicas_no_historico(username VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
DECLARE contagem INT;
SELECT COUNT(hr.usuario_id) AS quantidade_musicas_no_historico
FROM historico_reproducoes hr
INNER JOIN usuarios u
ON u.usuario_id = hr.usuario_id
WHERE username = u.usuario
INTO contagem;
RETURN contagem;
END //
DELIMITER ;
