DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(hr.cancao_id)
FROM historico_reproducoes AS hr
INNER JOIN usuarios AS u
ON hr.usuario_id = u.usuario_id
WHERE u.usuario_id = id
INTO total;
RETURN total;
END$$
DELIMITER ;
