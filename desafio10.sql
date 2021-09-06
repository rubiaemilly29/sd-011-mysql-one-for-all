DELIMITER //
CREATE FUNCTION quantidade_musicas_no_historico(username VARCHAR(20))
RETURNS VARCHAR(50) READS SQL DATA
BEGIN
DECLARE contagem INT;
SELECT COUNT(hr.usuario_id)
FROM historico_reproducoes hr
INNER JOIN usuarios u
ON u.usuario_id = hr.usuario_id
WHERE username = u.usuario
INTO contagem;
RETURN contagem;
END //
DELIMITER ;
