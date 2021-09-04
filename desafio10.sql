DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(H.fk_id_user) AS quantidade_musicas_no_historico
FROM t_h_reproductions AS H
INNER JOIN t_users AS U
ON U.id_user = H.fk_id_user
WHERE U.id_user = id INTO total ;
RETURN total;
END $$
DELIMITER ;
