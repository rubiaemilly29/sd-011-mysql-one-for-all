DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(actor_name VARCHAR(100))
RETURNS VARCHAR(100) READS SQL DATA
BEGIN
    DECLARE total INT;
    SELECT COUNT(H.fk_id_user) AS quantidade_musicas_no_historico
	FROM t_h_reproductions AS H
	INNER JOIN t_users AS U
	ON U.id_user = H.fk_id_user
    WHERE U.c_user = actor_name INTO total ;
    RETURN total;
END $$
DELIMITER ;

SELECT * FROM t_users;
SELECT * FROM t_h_reproductions;

